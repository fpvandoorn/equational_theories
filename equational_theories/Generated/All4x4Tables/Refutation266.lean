import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,2,3,1],[2,0,1,3],[3,1,0,2],[1,3,2,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,2,3,1],[2,0,1,3],[3,1,0,2],[1,3,2,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,2,3,1],[2,0,1,3],[3,1,0,2],[1,3,2,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,2,3,1],[2,0,1,3],[3,1,0,2],[1,3,2,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [50,73,118,125,211,222,229,274,280] [127,151,160,170,177,179,212,231,281,283,614,615,620,622,623,624,1832,2441,2466,2530,3253,3862,3887,4276,4290,4320,4362,4364,4369,4389,4396,4433,4473,4480,4512,4515,4525,4541,4591,4598,4605,4673,4679,4684] :=
    ⟨Fin 4, «FinitePoly [[0,2,3,1],[2,0,1,3],[3,1,0,2],[1,3,2,0]]», by decideFin!⟩
