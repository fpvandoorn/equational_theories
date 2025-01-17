import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,0,0,1],[3,1,1,2],[1,2,2,2],[2,2,3,2]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,0,0,1],[3,1,1,2],[1,2,2,2],[2,2,3,2]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,0,0,1],[3,1,1,2],[1,2,2,2],[2,2,3,2]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,0,0,1],[3,1,1,2],[1,2,2,2],[2,2,3,2]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [818,836,1225,1228,1242] [1020,1022,1023,1025,1028,1031,1035,1038,1039,1041,1042,1043,1045,1046,1048,1049,1051,1052,1053,1055,1056,1059,1060,1063,1064,1067,1068,1224,1226,1227,1229,1230,1231,1234,1238,1239,1240,1241,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1270,1271,1834,1835,1847,1850,1851,1853,1855,1857,1860,1863,1865,3253,3255,3256,3306,3315,3316,3318,3321,3322,3323,3659,3660,3661,3662,3663,3665,3721,3724,3725,3726,3727,3729,3864,3865,3867,3873,3925,3928,3931,3935,3943,4066,4067,4068,4069,4070,4071,4072,4076,4131,4269,4270,4314,4316,4318,4341,4583,4584,4597,4598,4601,4631,4673] :=
    ⟨Fin 4, «FinitePoly [[3,0,0,1],[3,1,1,2],[1,2,2,2],[2,2,3,2]]», by decideFin!⟩
