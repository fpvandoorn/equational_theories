import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[1,3,0,1],[2,1,3,1],[1,1,1,2],[2,3,3,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[1,3,0,1],[2,1,3,1],[1,1,1,2],[2,3,3,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[1,3,0,1],[2,1,3,1],[1,1,1,2],[2,3,3,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[1,3,0,1],[2,1,3,1],[1,1,1,2],[2,3,3,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1051] [1223,1225,1228,1241,1248,1251,1254,1262] :=
    ⟨Fin 4, «FinitePoly [[1,3,0,1],[2,1,3,1],[1,1,1,2],[2,3,3,3]]», by decideFin!⟩
