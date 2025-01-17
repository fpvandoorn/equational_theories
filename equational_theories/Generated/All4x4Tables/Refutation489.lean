import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,1,2,4,3],[2,3,4,1,0],[3,4,1,0,2],[4,0,3,2,1],[1,2,0,3,4]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,1,2,4,3],[2,3,4,1,0],[3,4,1,0,2],[4,0,3,2,1],[1,2,0,3,4]]» : Magma (Fin 5) where
  op := memoFinOp fun x y => [[0,1,2,4,3],[2,3,4,1,0],[3,4,1,0,2],[4,0,3,2,1],[1,2,0,3,4]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,1,2,4,3],[2,3,4,1,0],[3,4,1,0,2],[4,0,3,2,1],[1,2,0,3,4]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1888] [1629,1719] :=
    ⟨Fin 5, «FinitePoly [[0,1,2,4,3],[2,3,4,1,0],[3,4,1,0,2],[4,0,3,2,1],[1,2,0,3,4]]», by decideFin!⟩
