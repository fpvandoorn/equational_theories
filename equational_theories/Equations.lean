import equational_theories.Magma

/-! List of equational laws being studied -/

/-
This files contains a small list of selected Equations. This way this file can be conveniently
viewed and edited, without having to open a very large files.

See `AllEquations.lean` for the remaining ones. Feel free to move individual equations here if
you do manual proofs about them and you want to import just this file. But don't forget to comment out the corresponding copy of the equatoins in `AllEquations.lean` if you do so?

The equations are marked as `abbrev` so that tactics like `decide` will look through the definition.
-/

universe u

/-- The reflexive law -/
abbrev Equation1 (G: Type u) [Magma G] := ∀ x : G, x = x

/-- The singleton law -/
abbrev Equation2 (G: Type u) [Magma G] := ∀ x y : G, x = y

/-- The idempotence law -/
abbrev Equation3 (G: Type u) [Magma G] := ∀ x : G, x = x ∘ x

/-- The left absorption law -/
abbrev Equation4 (G: Type u) [Magma G] := ∀ x y : G, x = x ∘ y

/-- The right absorption law -/
abbrev Equation5 (G: Type u) [Magma G] := ∀ x y : G, x = y ∘ x

@[inherit_doc Equation2]
abbrev Equation6 (G: Type u) [Magma G] := ∀ x y : G, x = y ∘ y

@[inherit_doc Equation2]
abbrev Equation7 (G: Type u) [Magma G] := ∀ x y z : G, x = y ∘ z

/-- dual of 23 -/
abbrev Equation8 (G: Type u) [Magma G] := ∀ x : G, x = x ∘ (x ∘ x)

abbrev Equation14 (G : Type u) [Magma G] := ∀ x y : G, x = y ∘ (x ∘ y)

/-- dual of 8 -/
abbrev Equation23 (G: Type u) [Magma G] := ∀ x : G, x = (x ∘ x) ∘ x

abbrev Equation29 (G : Type u) [Magma G] := ∀ x y : G, x = (y ∘ x) ∘ y

/-- value of multiplication is independent of right argument -/
abbrev Equation38 (G: Type u) [Magma G] := ∀ x y : G, x ∘ x = x ∘ y

/-- value of multiplication is independent of left argument; dual of 38 -/
abbrev Equation39 (G: Type u) [Magma G] := ∀ x y : G, x ∘ x = y ∘ x

/-- all squares are the same -/
abbrev Equation40 (G: Type u) [Magma G] := ∀ x y : G, x ∘ x = y ∘ y

/-- all products are the same -/
abbrev Equation41 (G: Type u) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ z

@[inherit_doc Equation38]
abbrev Equation42 (G: Type u) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ z

/-- The commutative law -/
abbrev Equation43 (G: Type u) [Magma G] := ∀ x y : G, x ∘ y = y ∘ x

@[inherit_doc Equation39]
abbrev Equation45 (G: Type u) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ y

/-- The constant law -/
abbrev Equation46 (G: Type u) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ w

/-- The central groupoid law -/
abbrev Equation168 (G: Type u) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (x ∘ z)

/-- From Putnam 1978, Problem A4, part (b) -/
abbrev Equation381 (G: Type u) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ y

abbrev Equation387 (G: Type u) [Magma G] := ∀ x y : G, x ∘ y = (y ∘ y) ∘ x

/-- From Putnam 1978, Problem A4, part (a) -/
abbrev Equation3722 (G : Type u) [Magma G] := ∀ x y : G, x ∘ y = (x ∘ y) ∘ (x ∘ y)

/-- Putnam 1978, Problem A4 calls this a "bypass operation" -/
abbrev Equation3744 (G : Type u) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (w ∘ y)

/-- The associative law -/
abbrev Equation4512 (G: Type u) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (x ∘ y) ∘ z

/-- dual of 4564 -/
abbrev Equation4513 (G: Type u) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ y) ∘ w

/-- dual of 4579 -/
abbrev Equation4522 (G: Type u) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (x ∘ w) ∘ u

/-- dual of 4513 -/
abbrev Equation4564 (G: Type u) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ y) ∘ z

/-- dual of 4522 -/
abbrev Equation4579 (G: Type u) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ z

/-- all products of three values are the same, regardless bracketing -/
abbrev Equation4582 (G: Type u) [Magma G] := ∀ x y z w u v: G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
