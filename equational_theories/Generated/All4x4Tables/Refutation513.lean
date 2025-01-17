import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,3,4,6,1,2,7,5],[4,2,0,1,6,3,5,7],[5,6,7,3,2,1,4,0],[1,7,6,4,0,5,3,2],[2,4,3,7,5,0,6,1],[7,1,5,2,3,6,0,4],[3,0,2,5,7,4,1,6],[6,5,1,0,4,7,2,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,3,4,6,1,2,7,5],[4,2,0,1,6,3,5,7],[5,6,7,3,2,1,4,0],[1,7,6,4,0,5,3,2],[2,4,3,7,5,0,6,1],[7,1,5,2,3,6,0,4],[3,0,2,5,7,4,1,6],[6,5,1,0,4,7,2,3]]» : Magma (Fin 8) where
  op := memoFinOp fun x y => [[0,3,4,6,1,2,7,5],[4,2,0,1,6,3,5,7],[5,6,7,3,2,1,4,0],[1,7,6,4,0,5,3,2],[2,4,3,7,5,0,6,1],[7,1,5,2,3,6,0,4],[3,0,2,5,7,4,1,6],[6,5,1,0,4,7,2,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,3,4,6,1,2,7,5],[4,2,0,1,6,3,5,7],[5,6,7,3,2,1,4,0],[1,7,6,4,0,5,3,2],[2,4,3,7,5,0,6,1],[7,1,5,2,3,6,0,4],[3,0,2,5,7,4,1,6],[6,5,1,0,4,7,2,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1083,1085] [8,16,255,264,271,283,411,419,429,436,466,473,500,513,528,562,575,1029,1039,1045,1075,1110,1122,1184,1629,1638,1647,1655,1685,1691,1719,1731,1780,1832,1840,1851,1858,1888,1895,1921,1934,1949,3253,3261,3271,3278,3306,3319,3334,3346,3353,3388,3414,3862,3871,3881,3887,3915,3927,3954,3962,4023,4275,4307,4320,4362,4591,4608,4636,4658] :=
    ⟨Fin 8, «FinitePoly [[0,3,4,6,1,2,7,5],[4,2,0,1,6,3,5,7],[5,6,7,3,2,1,4,0],[1,7,6,4,0,5,3,2],[2,4,3,7,5,0,6,1],[7,1,5,2,3,6,0,4],[3,0,2,5,7,4,1,6],[6,5,1,0,4,7,2,3]]», by decideFin!⟩
