import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,1,1,3],[3,1,3,3],[3,1,3,3],[0,1,2,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,1,1,3],[3,1,3,3],[3,1,3,3],[0,1,2,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,1,1,3],[3,1,3,3],[3,1,3,3],[0,1,2,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,1,1,3],[3,1,3,3],[3,1,3,3],[0,1,2,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [2364,3529] [2466,2706,3139,3458,3464,3467,3525,3537,3662,3665,3668,3672,4068,4090,4269,4270,4314,4316,4318,4341] :=
    ⟨Fin 4, «FinitePoly [[0,1,1,3],[3,1,3,3],[3,1,3,3],[0,1,2,3]]», by decideFin!⟩
