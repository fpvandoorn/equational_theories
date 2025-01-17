import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[1,0,1,3],[2,3,0,1],[1,2,1,3],[3,1,3,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[1,0,1,3],[2,3,0,1],[1,2,1,3],[3,1,3,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[1,0,1,3],[2,3,0,1],[1,2,1,3],[3,1,3,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[1,0,1,3],[2,3,0,1],[1,2,1,3],[3,1,3,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [430,617,620,630,1226,1249] [99,104,105,107,108,359,817,832,833,835,836,843,846,1224,1225,1228,1238,1248,1250,1251,1254,1258,3659] :=
    ⟨Fin 4, «FinitePoly [[1,0,1,3],[2,3,0,1],[1,2,1,3],[3,1,3,0]]», by decideFin!⟩
