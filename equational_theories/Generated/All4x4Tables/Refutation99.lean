import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,2,0,1],[3,2,1,1],[2,2,2,2],[2,2,3,3]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,2,0,1],[3,2,1,1],[2,2,2,2],[2,2,3,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,2,0,1],[3,2,1,1],[2,2,2,2],[2,2,3,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,2,0,1],[3,2,1,1],[2,2,2,2],[2,2,3,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1259] [1225,1234,1238,1240,1244,1245,1246,1247,1248,1251,1258,1260,1261,1266,1270,1834,1847,1850,1853,3316,3322,3726,3727,3935] :=
    ⟨Fin 4, «FinitePoly [[0,2,0,1],[3,2,1,1],[2,2,2,2],[2,2,3,3]]», by decideFin!⟩
