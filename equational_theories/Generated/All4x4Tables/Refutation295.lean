import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,3,0,3],[3,2,2,3],[0,2,2,3],[3,3,3,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,3,0,3],[3,2,2,3],[0,2,2,3],[3,3,3,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,3,0,3],[3,2,2,3],[0,2,2,3],[3,3,3,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,3,0,3],[3,2,2,3],[0,2,2,3],[3,3,3,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [3346,3558,3951,4120,4165] [3319,3522,3915,4118,4290,4320,4369] :=
    ⟨Fin 4, «FinitePoly [[0,3,0,3],[3,2,2,3],[0,2,2,3],[3,3,3,3]]», by decideFin!⟩
