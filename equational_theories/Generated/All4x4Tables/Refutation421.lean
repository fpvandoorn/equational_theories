import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,1,0,1],[2,2,1,2],[2,2,2,2],[2,3,3,2]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,1,0,1],[2,2,1,2],[2,2,2,2],[2,3,3,2]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,1,0,1],[2,2,1,2],[2,2,2,2],[2,3,3,2]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,1,0,1],[2,2,1,2],[2,2,2,2],[2,3,3,2]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1052,1239,1243,1245,1251,1255,1263] [818,845,847,1248,3253] :=
    ⟨Fin 4, «FinitePoly [[3,1,0,1],[2,2,1,2],[2,2,2,2],[2,3,3,2]]», by decideFin!⟩
