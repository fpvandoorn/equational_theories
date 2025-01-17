import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,2,2,3],[2,3,3,2],[3,2,2,3],[2,3,3,2]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,2,2,3],[2,3,3,2],[3,2,2,3],[2,3,3,2]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,2,2,3],[2,3,3,2],[3,2,2,3],[2,3,3,2]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,2,2,3],[2,3,3,2],[3,2,2,3],[2,3,3,2]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [3346,3388,4120,4143] [3456,3459,3518,3522,3526,3862,3887,3915,3962,4023] :=
    ⟨Fin 4, «FinitePoly [[3,2,2,3],[2,3,3,2],[3,2,2,3],[2,3,3,2]]», by decideFin!⟩
