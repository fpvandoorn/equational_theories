import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[1,1,2,1],[3,3,2,3],[0,1,2,3],[0,0,2,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[1,1,2,1],[3,3,2,3],[0,1,2,3],[0,0,2,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[1,1,2,1],[3,3,2,3],[0,1,2,3],[0,0,2,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[1,1,2,1],[3,3,2,3],[0,1,2,3],[0,0,2,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [2683,2890,3529] [260,266,326,2659,2665,2669,2675,2679,2687,2691,2852,2858,2872,2878,2882,2886,2894,3522,3659,4584,4631] :=
    ⟨Fin 4, «FinitePoly [[1,1,2,1],[3,3,2,3],[0,1,2,3],[0,0,2,0]]», by decideFin!⟩
