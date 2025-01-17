import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,0,3,3],[2,3,2,2],[1,1,2,3],[0,0,2,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,0,3,3],[2,3,2,2],[1,1,2,3],[0,0,2,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,0,3,3],[2,3,2,2],[1,1,2,3],[0,0,2,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,0,3,3],[2,3,2,2],[1,1,2,3],[0,0,2,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [205,211,2238,2240,2243,2246,2249,2253,2256,2259,2266,2277,2441,2443,2456,2459,2462,2469] [23,24,25,26,27,38,42,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,204,208,214,307,309,310,323,1629,1631,1637,1644,1647,1650,1657,1672,2263,2269,2273,2281,2285,2446,2449,2452,2466,2472,2476,2480,2484,2488,2644,2646,2652,2659,2662,2665,2672,2687,3050,3052,3058,3065,3068,3071,3078,3093,3253,3255,3256,3258,3259,3261,3262,3264,3265,3266,3306,3456,3458,3459,3461,3464,3467,3509,3519,3522,3525,3529,3537,3659,3662,3664,3665,3668,3672,3712,4065,4068,4070,4118,4128,4131,4138,4269,4270,4314,4316,4318,4320,4341,4362,4584,4631] :=
    ⟨Fin 4, «FinitePoly [[0,0,3,3],[2,3,2,2],[1,1,2,3],[0,0,2,0]]», by decideFin!⟩
