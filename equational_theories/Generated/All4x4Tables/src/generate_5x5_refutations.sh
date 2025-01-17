#!/bin/bash

# Usage: just run with ./generate_5x5_refutations.sh
# Final output will be in the lean_output folder.
#
# This script:
# 1. uses Mace4 to generate a list of all 5x5 cancellative magmas up to iso,
# 2. takes the `refutations.txt obtained by enumerating 4x4 magmas,
# 3. and a hand-curated list of larger cancellative magmas
# then uses the Haskell tools in `finite_magma_tools` to combine them into a
# short list of finite magma refutations which optimally cover the same set
# of counterexamples as all of these.

# Requirements: a working cabal installation and a working Prover9/Mace4
# suite. Set MACE4HOME to point to the latter if not in your path.

# check for cabal
if ! command -v cabal &> /dev/null; then
  echo "cabal is not installed or not on the PATH."
  echo "Please install cabal or make sure it's on your PATH."
  exit 1
fi

# check for Prover9/Mace4
if command -v mace4 >/dev/null 2>&1; then
    # If found, set MACE4HOME to the location of the executable
    MACE4HOME=$(dirname "$(command -v mace4)")
else
    # Step 2: Check if MACE4HOME is set and 'mace4' exists in that path
    if [[ -z "$MACE4HOME" || ! -x "$MACE4HOME/mace4" ]]; then
        echo "mace4 not found in PATH, and MACE4HOME not set."
        echo "Please obtain Prover9/Mace4 and set MACE4HOME to its bin directory."
        exit 1
    fi
fi

# find the repository root (or current working directory if not in git land)
REPOROOT=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
REPODIR="$REPOROOT/equational_theories/Generated/All4x4Tables"
CABALHOME="$REPODIR/src/finite_magma_tools/bin"

# start build finite_magma_tools
echo "Checking if finite_magma_tools needs to be built..."
cd "$REPODIR/src/finite_magma_tools/" || exit
cabal build
EXECUTABLES=$(find "./dist-newstyle/build" -type f -executable)
if [ -z "$EXECUTABLES" ]; then
    echo "FAILED"
    exit 1
fi
for exe in $EXECUTABLES; do
    cp "$exe" "./bin"
done
cd -
# end build finite_magma_tools

# find 5x5 cancellative magmas using Mace4
if [[ ! -f "$REPODIR/data/cancellative-5x5.out" ]]; then
  echo "Finding 5x5 cancellative magmas..."
  "$MACE4HOME/mace4" -f cancellative-5x5.in | "$MACE4HOME/get_interps" | "$MACE4HOME/isofilter" > "$REPODIR/data/cancellative-5x5.out"
fi
if [[ ! -f "$REPODIR/data/cancellative-5x5.out" ]]; then
  echo "FAILED"
  exit 1
fi

# find satisfied equations using finite_magma_tools
if [[ ! -f "$REPODIR/data/cancellative-5x5.txt" ]]; then
  echo "Finding all equations satisfied in 5x5 magmas..."
  "$CABALHOME/parse-mace4" -c "$REPOROOT/data/equations.txt" < "$REPODIR/data/cancellative-5x5.out" > "$REPODIR/data/cancellative-5x5.txt"
fi
if [[ ! -f "$REPODIR/data/cancellative-5x5.txt" ]]; then
  echo "FAILED"
  exit 1
fi

# merge with refutations.txt and cancellative-manual.txt
if [[ ! -f "$REPODIR/data/refutations-5x5.txt" ]]; then
  echo "Merging 4x4 refutations and cancellative 5x5 refutations..."
  cat "$REPODIR/data/cancellative-5x5.txt" "$REPODIR/data/refutations.txt" "$REPODIR/data/cancellative-manual.txt" > "$REPODIR/data/refutations-5x5.txt"
fi
if [[ ! -f "$REPODIR/data/refutations-5x5.txt" ]]; then
  echo "FAILED"
  exit 1
fi

# find a short plan using finite_magma_tools and generate lean (this takes a while)
if [[ ! -f "$REPODIR/data/plan-5x5.txt" ]]; then
  echo "Optimizing proof plan (might take a while)..."
  "$CABALHOME/make-plan" < "$REPODIR/data/refutations-5x5.txt" > "$REPODIR/data/plan-5x5.txt"
fi
echo "Generating refutations in ./lean_output/..."
"$CABALHOME/gen-refutations" < "$REPODIR/data/plan-5x5.txt"
mkdir -p "lean_output"
mv Refutation*.lean lean_output
echo "ALL OK"
