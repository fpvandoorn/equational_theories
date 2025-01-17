import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,0,1,3],[3,0,0,2],[0,2,3,1],[1,3,2,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,0,1,3],[3,0,0,2],[0,2,3,1],[1,3,2,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,0,1,3],[3,0,0,2],[0,2,3,1],[1,3,2,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,0,1,3],[3,0,0,2],[0,2,3,1],[1,3,2,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1838,1897,1922] [23,26,47,56,63,75,1629,1632,1654,1658,1662,1692,1694,1719,1721,2441,3050,3079,3456,3518,3522,4118] :=
    ⟨Fin 4, «FinitePoly [[2,0,1,3],[3,0,0,2],[0,2,3,1],[1,3,2,0]]», by decideFin!⟩
