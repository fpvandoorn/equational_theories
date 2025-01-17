import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,3,1,1],[3,3,1,1],[3,1,1,1],[1,1,1,1]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,3,1,1],[3,3,1,1],[3,1,1,1],[1,1,1,1]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,3,1,1],[3,3,1,1],[3,1,1,1],[1,1,1,1]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,3,1,1],[3,3,1,1],[3,1,1,1],[1,1,1,1]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [4531] [4283,4290,4320,4358,4362,4364,4369,4396,4405,4433,4435,4473,4480,4512,4515,4525,4541,4544,4598,4605,4635,4673,4677,4679,4684] :=
    ⟨Fin 4, «FinitePoly [[3,3,1,1],[3,3,1,1],[3,1,1,1],[1,1,1,1]]», by decideFin!⟩
