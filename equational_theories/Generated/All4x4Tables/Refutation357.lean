import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,3,1,1],[3,2,1,0],[1,0,1,1],[1,0,1,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,3,1,1],[3,2,1,0],[1,0,1,1],[1,0,1,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,3,1,1],[3,2,1,0],[1,0,1,1],[1,0,1,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,3,1,1],[3,2,1,0],[1,0,1,1],[1,0,1,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [153,1631,1640,1684,1694,1705,2053,2169] [156,1426,1428,1444,1481,1647,1654,1657,1660,1668,1697,1832,1837,1840,1847,1850,1857,1860,1867,1871,1875,1931,2134,2165,3261,3456,3546,3549,3556,3880,3887,3890,4065,4067,4073,4083,4093,4121,4131,4380,4435,4442,4445,4599] :=
    ⟨Fin 4, «FinitePoly [[3,3,1,1],[3,2,1,0],[1,0,1,1],[1,0,1,0]]», by decideFin!⟩
