import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,2,0,1],[3,3,1,0],[2,3,0,0],[3,2,1,1]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,2,0,1],[3,3,1,0],[2,3,0,0],[3,2,1,1]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,2,0,1],[3,3,1,0],[2,3,0,0],[3,2,1,1]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,2,0,1],[3,3,1,0],[2,3,0,0],[3,2,1,1]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1887] [1109,1137,1248,1278,1387,1515,1857,1996,2124,2152,3725,4380,4388] :=
    ⟨Fin 4, «FinitePoly [[2,2,0,1],[3,3,1,0],[2,3,0,0],[3,2,1,1]]», by decideFin!⟩
