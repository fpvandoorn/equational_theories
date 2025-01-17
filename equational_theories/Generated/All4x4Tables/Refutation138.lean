import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,2,3,3],[3,2,1,3],[2,2,3,3],[3,2,3,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,2,3,3],[3,2,1,3],[2,2,3,3],[3,2,3,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,2,3,3],[3,2,1,3],[2,2,3,3],[3,2,3,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,2,3,3],[3,2,1,3],[2,2,3,3],[3,2,3,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [3268] [3258,3278,3288,3306,4155,4272,4351] :=
    ⟨Fin 4, «FinitePoly [[3,2,3,3],[3,2,1,3],[2,2,3,3],[3,2,3,3]]», by decideFin!⟩
