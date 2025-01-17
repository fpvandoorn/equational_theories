import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,3,0,3],[2,2,1,1],[2,2,1,1],[0,3,0,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,3,0,3],[2,2,1,1],[2,2,1,1],[0,3,0,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,3,0,3],[2,2,1,1],[2,2,1,1],[0,3,0,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,3,0,3],[2,2,1,1],[2,2,1,1],[0,3,0,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [162,381,450,1668,1676,1875,1879,2046,2066,2070,2074,2082] [419,422,436,442,446,454,458,3261,3264,3309,3312,3330,3334,3338,4284,4287,4340,4360] :=
    ⟨Fin 4, «FinitePoly [[0,3,0,3],[2,2,1,1],[2,2,1,1],[0,3,0,3]]», by decideFin!⟩
