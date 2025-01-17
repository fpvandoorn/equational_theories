import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,2,1,1],[3,3,0,0],[3,1,1,1],[0,2,0,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,2,1,1],[3,3,0,0],[3,1,1,1],[0,2,0,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,2,1,1],[3,3,0,0],[3,1,1,1],[0,2,0,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,2,1,1],[3,3,0,0],[3,1,1,1],[0,2,0,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [2056] [3255,3261,3264,3309,4269,4316] :=
    ⟨Fin 4, «FinitePoly [[2,2,1,1],[3,3,0,0],[3,1,1,1],[0,2,0,0]]», by decideFin!⟩
