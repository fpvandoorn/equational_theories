import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,1,0,3],[2,1,0,3],[1,1,0,3],[1,2,0,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,1,0,3],[2,1,0,3],[1,1,0,3],[1,2,0,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,1,0,3],[2,1,0,3],[1,1,0,3],[1,2,0,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,1,0,3],[2,1,0,3],[1,1,0,3],[1,2,0,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [3972] [3887] :=
    ⟨Fin 4, «FinitePoly [[2,1,0,3],[2,1,0,3],[1,1,0,3],[1,2,0,3]]», by decideFin!⟩
