{-# OPTIONS_GHC -w #-}
module Parser where
import Evaluator (Stmt(..), Expr(..), Value(..), Op(..), UnaryOp(..))
import Lexer (Token(..))
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,287) ([35776,28682,2017,43196,5888,49278,2699,57712,49159,65047,256,0,0,0,0,0,0,0,0,0,0,0,35776,20490,2017,43196,5376,49278,2699,57680,48135,168,32277,35776,20490,2017,16,0,0,1,0,48128,168,32277,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,48128,168,32279,0,0,0,6080,16638,0,0,128,0,0,8,31744,4065,4,6080,255,0,58748,15,0,0,0,28672,1,0,43196,5376,49278,2699,57680,48135,168,32277,35776,20490,2017,43196,5376,49278,2699,57680,48135,168,32277,35776,20490,2017,43196,5376,49278,2699,57680,48135,168,32277,35776,20490,2017,43196,5376,126,0,0,49152,65047,0,31744,4065,0,6080,254,0,57724,15,49152,65047,0,31744,33,0,6080,0,0,64,0,0,4,0,16384,0,0,1024,0,0,368,0,0,23,0,0,0,0,0,0,49152,2699,57680,48135,168,32277,35776,20490,2017,43196,5376,126,57724,2063,49152,65047,32,31744,4065,16,6080,33022,49152,2699,57680,7,0,0,35776,20490,2017,43196,5376,126,57724,15,0,0,0,31744,4065,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Statement","Expr","'integer'","'real'","'var'","'string'","'+'","'-'","'*'","'/'","'^'","'sqrt'","'%'","'['","']'","'('","')'","'and'","'or'","'='","'<'","'>'","'leq'","'geq'","'sup'","'hearye'","'oi'","'is'","'ifz'","'for'","'then'","'else'","'innit'","'fee'","'pie'","'phi'","'mole'","'ace'","'rank'","%eof"]
        bit_start = st Prelude.* 44
        bit_end = (st Prelude.+ 1) Prelude.* 44
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..43]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (12) = happyShift action_8
action_0 (16) = happyShift action_9
action_0 (18) = happyShift action_10
action_0 (20) = happyShift action_11
action_0 (29) = happyShift action_12
action_0 (30) = happyShift action_13
action_0 (31) = happyShift action_14
action_0 (33) = happyShift action_15
action_0 (38) = happyShift action_16
action_0 (39) = happyShift action_17
action_0 (40) = happyShift action_18
action_0 (41) = happyShift action_19
action_0 (42) = happyShift action_20
action_0 (43) = happyShift action_21
action_0 (4) = happyGoto action_22
action_0 (5) = happyGoto action_23
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (9) = happyShift action_6
action_1 (10) = happyShift action_7
action_1 (12) = happyShift action_8
action_1 (16) = happyShift action_9
action_1 (18) = happyShift action_10
action_1 (20) = happyShift action_11
action_1 (29) = happyShift action_12
action_1 (30) = happyShift action_13
action_1 (31) = happyShift action_14
action_1 (33) = happyShift action_15
action_1 (38) = happyShift action_16
action_1 (39) = happyShift action_17
action_1 (40) = happyShift action_18
action_1 (41) = happyShift action_19
action_1 (42) = happyShift action_20
action_1 (43) = happyShift action_21
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_4
action_2 (8) = happyShift action_5
action_2 (9) = happyShift action_6
action_2 (10) = happyShift action_7
action_2 (12) = happyShift action_8
action_2 (16) = happyShift action_9
action_2 (18) = happyShift action_10
action_2 (20) = happyShift action_11
action_2 (29) = happyShift action_12
action_2 (30) = happyShift action_13
action_2 (31) = happyShift action_14
action_2 (33) = happyShift action_15
action_2 (38) = happyShift action_16
action_2 (39) = happyShift action_17
action_2 (40) = happyShift action_18
action_2 (41) = happyShift action_19
action_2 (42) = happyShift action_20
action_2 (43) = happyShift action_21
action_2 (4) = happyGoto action_24
action_2 (5) = happyGoto action_23
action_2 (6) = happyGoto action_3
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_33
action_3 (12) = happyShift action_34
action_3 (13) = happyShift action_35
action_3 (14) = happyShift action_36
action_3 (15) = happyShift action_37
action_3 (17) = happyShift action_38
action_3 (22) = happyShift action_39
action_3 (23) = happyShift action_40
action_3 (24) = happyShift action_41
action_3 (25) = happyShift action_42
action_3 (26) = happyShift action_43
action_3 (27) = happyShift action_44
action_3 (28) = happyShift action_45
action_3 (37) = happyShift action_46
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_5

action_5 _ = happyReduce_6

action_6 _ = happyReduce_8

action_7 _ = happyReduce_7

action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (9) = happyShift action_6
action_8 (10) = happyShift action_7
action_8 (12) = happyShift action_8
action_8 (16) = happyShift action_9
action_8 (18) = happyShift action_10
action_8 (20) = happyShift action_11
action_8 (29) = happyShift action_12
action_8 (31) = happyShift action_14
action_8 (33) = happyShift action_15
action_8 (38) = happyShift action_16
action_8 (39) = happyShift action_17
action_8 (40) = happyShift action_18
action_8 (41) = happyShift action_19
action_8 (42) = happyShift action_20
action_8 (43) = happyShift action_21
action_8 (6) = happyGoto action_32
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (10) = happyShift action_7
action_9 (12) = happyShift action_8
action_9 (16) = happyShift action_9
action_9 (18) = happyShift action_10
action_9 (20) = happyShift action_11
action_9 (29) = happyShift action_12
action_9 (31) = happyShift action_14
action_9 (33) = happyShift action_15
action_9 (38) = happyShift action_16
action_9 (39) = happyShift action_17
action_9 (40) = happyShift action_18
action_9 (41) = happyShift action_19
action_9 (42) = happyShift action_20
action_9 (43) = happyShift action_21
action_9 (6) = happyGoto action_31
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (12) = happyShift action_8
action_10 (16) = happyShift action_9
action_10 (18) = happyShift action_10
action_10 (20) = happyShift action_11
action_10 (29) = happyShift action_12
action_10 (31) = happyShift action_14
action_10 (33) = happyShift action_15
action_10 (38) = happyShift action_16
action_10 (39) = happyShift action_17
action_10 (40) = happyShift action_18
action_10 (41) = happyShift action_19
action_10 (42) = happyShift action_20
action_10 (43) = happyShift action_21
action_10 (6) = happyGoto action_30
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (12) = happyShift action_8
action_11 (16) = happyShift action_9
action_11 (18) = happyShift action_10
action_11 (20) = happyShift action_11
action_11 (29) = happyShift action_12
action_11 (31) = happyShift action_14
action_11 (33) = happyShift action_15
action_11 (38) = happyShift action_16
action_11 (39) = happyShift action_17
action_11 (40) = happyShift action_18
action_11 (41) = happyShift action_19
action_11 (42) = happyShift action_20
action_11 (43) = happyShift action_21
action_11 (6) = happyGoto action_29
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (12) = happyShift action_8
action_12 (16) = happyShift action_9
action_12 (18) = happyShift action_10
action_12 (20) = happyShift action_11
action_12 (29) = happyShift action_12
action_12 (31) = happyShift action_14
action_12 (33) = happyShift action_15
action_12 (38) = happyShift action_16
action_12 (39) = happyShift action_17
action_12 (40) = happyShift action_18
action_12 (41) = happyShift action_19
action_12 (42) = happyShift action_20
action_12 (43) = happyShift action_21
action_12 (6) = happyGoto action_28
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (9) = happyShift action_27
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (9) = happyShift action_26
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (9) = happyShift action_6
action_15 (10) = happyShift action_7
action_15 (12) = happyShift action_8
action_15 (16) = happyShift action_9
action_15 (18) = happyShift action_10
action_15 (20) = happyShift action_11
action_15 (29) = happyShift action_12
action_15 (31) = happyShift action_14
action_15 (33) = happyShift action_15
action_15 (38) = happyShift action_16
action_15 (39) = happyShift action_17
action_15 (40) = happyShift action_18
action_15 (41) = happyShift action_19
action_15 (42) = happyShift action_20
action_15 (43) = happyShift action_21
action_15 (6) = happyGoto action_25
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_11

action_17 _ = happyReduce_12

action_18 _ = happyReduce_13

action_19 _ = happyReduce_14

action_20 _ = happyReduce_9

action_21 _ = happyReduce_10

action_22 (44) = happyAccept
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (12) = happyShift action_8
action_23 (16) = happyShift action_9
action_23 (18) = happyShift action_10
action_23 (20) = happyShift action_11
action_23 (29) = happyShift action_12
action_23 (30) = happyShift action_13
action_23 (31) = happyShift action_14
action_23 (33) = happyShift action_15
action_23 (38) = happyShift action_16
action_23 (39) = happyShift action_17
action_23 (40) = happyShift action_18
action_23 (41) = happyShift action_19
action_23 (42) = happyShift action_20
action_23 (43) = happyShift action_21
action_23 (4) = happyGoto action_24
action_23 (5) = happyGoto action_23
action_23 (6) = happyGoto action_3
action_23 _ = happyReduce_2

action_24 _ = happyReduce_1

action_25 (11) = happyShift action_33
action_25 (12) = happyShift action_34
action_25 (13) = happyShift action_35
action_25 (14) = happyShift action_36
action_25 (15) = happyShift action_37
action_25 (17) = happyShift action_38
action_25 (22) = happyShift action_39
action_25 (23) = happyShift action_40
action_25 (24) = happyShift action_41
action_25 (25) = happyShift action_42
action_25 (26) = happyShift action_43
action_25 (27) = happyShift action_44
action_25 (28) = happyShift action_45
action_25 (35) = happyShift action_65
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (32) = happyShift action_64
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (32) = happyShift action_63
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_33
action_28 (12) = happyShift action_34
action_28 (13) = happyShift action_35
action_28 (14) = happyShift action_36
action_28 (15) = happyShift action_37
action_28 (17) = happyShift action_38
action_28 (22) = happyShift action_39
action_28 (23) = happyShift action_40
action_28 (24) = happyShift action_41
action_28 (25) = happyShift action_42
action_28 (26) = happyShift action_43
action_28 (27) = happyShift action_44
action_28 (28) = happyShift action_45
action_28 (35) = happyShift action_62
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_33
action_29 (12) = happyShift action_34
action_29 (13) = happyShift action_35
action_29 (14) = happyShift action_36
action_29 (15) = happyShift action_37
action_29 (17) = happyShift action_38
action_29 (21) = happyShift action_61
action_29 (22) = happyShift action_39
action_29 (23) = happyShift action_40
action_29 (24) = happyShift action_41
action_29 (25) = happyShift action_42
action_29 (26) = happyShift action_43
action_29 (27) = happyShift action_44
action_29 (28) = happyShift action_45
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_33
action_30 (12) = happyShift action_34
action_30 (13) = happyShift action_35
action_30 (14) = happyShift action_36
action_30 (15) = happyShift action_37
action_30 (17) = happyShift action_38
action_30 (19) = happyShift action_60
action_30 (22) = happyShift action_39
action_30 (23) = happyShift action_40
action_30 (24) = happyShift action_41
action_30 (25) = happyShift action_42
action_30 (26) = happyShift action_43
action_30 (27) = happyShift action_44
action_30 (28) = happyShift action_45
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_30

action_32 (13) = happyShift action_35
action_32 (14) = happyShift action_36
action_32 (15) = happyShift action_37
action_32 (17) = happyShift action_38
action_32 _ = happyReduce_28

action_33 (7) = happyShift action_4
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (10) = happyShift action_7
action_33 (12) = happyShift action_8
action_33 (16) = happyShift action_9
action_33 (18) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (29) = happyShift action_12
action_33 (31) = happyShift action_14
action_33 (33) = happyShift action_15
action_33 (38) = happyShift action_16
action_33 (39) = happyShift action_17
action_33 (40) = happyShift action_18
action_33 (41) = happyShift action_19
action_33 (42) = happyShift action_20
action_33 (43) = happyShift action_21
action_33 (6) = happyGoto action_59
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_6
action_34 (10) = happyShift action_7
action_34 (12) = happyShift action_8
action_34 (16) = happyShift action_9
action_34 (18) = happyShift action_10
action_34 (20) = happyShift action_11
action_34 (29) = happyShift action_12
action_34 (31) = happyShift action_14
action_34 (33) = happyShift action_15
action_34 (38) = happyShift action_16
action_34 (39) = happyShift action_17
action_34 (40) = happyShift action_18
action_34 (41) = happyShift action_19
action_34 (42) = happyShift action_20
action_34 (43) = happyShift action_21
action_34 (6) = happyGoto action_58
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (9) = happyShift action_6
action_35 (10) = happyShift action_7
action_35 (12) = happyShift action_8
action_35 (16) = happyShift action_9
action_35 (18) = happyShift action_10
action_35 (20) = happyShift action_11
action_35 (29) = happyShift action_12
action_35 (31) = happyShift action_14
action_35 (33) = happyShift action_15
action_35 (38) = happyShift action_16
action_35 (39) = happyShift action_17
action_35 (40) = happyShift action_18
action_35 (41) = happyShift action_19
action_35 (42) = happyShift action_20
action_35 (43) = happyShift action_21
action_35 (6) = happyGoto action_57
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_6
action_36 (10) = happyShift action_7
action_36 (12) = happyShift action_8
action_36 (16) = happyShift action_9
action_36 (18) = happyShift action_10
action_36 (20) = happyShift action_11
action_36 (29) = happyShift action_12
action_36 (31) = happyShift action_14
action_36 (33) = happyShift action_15
action_36 (38) = happyShift action_16
action_36 (39) = happyShift action_17
action_36 (40) = happyShift action_18
action_36 (41) = happyShift action_19
action_36 (42) = happyShift action_20
action_36 (43) = happyShift action_21
action_36 (6) = happyGoto action_56
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (9) = happyShift action_6
action_37 (10) = happyShift action_7
action_37 (12) = happyShift action_8
action_37 (16) = happyShift action_9
action_37 (18) = happyShift action_10
action_37 (20) = happyShift action_11
action_37 (29) = happyShift action_12
action_37 (31) = happyShift action_14
action_37 (33) = happyShift action_15
action_37 (38) = happyShift action_16
action_37 (39) = happyShift action_17
action_37 (40) = happyShift action_18
action_37 (41) = happyShift action_19
action_37 (42) = happyShift action_20
action_37 (43) = happyShift action_21
action_37 (6) = happyGoto action_55
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_5
action_38 (9) = happyShift action_6
action_38 (10) = happyShift action_7
action_38 (12) = happyShift action_8
action_38 (16) = happyShift action_9
action_38 (18) = happyShift action_10
action_38 (20) = happyShift action_11
action_38 (29) = happyShift action_12
action_38 (31) = happyShift action_14
action_38 (33) = happyShift action_15
action_38 (38) = happyShift action_16
action_38 (39) = happyShift action_17
action_38 (40) = happyShift action_18
action_38 (41) = happyShift action_19
action_38 (42) = happyShift action_20
action_38 (43) = happyShift action_21
action_38 (6) = happyGoto action_54
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_5
action_39 (9) = happyShift action_6
action_39 (10) = happyShift action_7
action_39 (12) = happyShift action_8
action_39 (16) = happyShift action_9
action_39 (18) = happyShift action_10
action_39 (20) = happyShift action_11
action_39 (29) = happyShift action_12
action_39 (31) = happyShift action_14
action_39 (33) = happyShift action_15
action_39 (38) = happyShift action_16
action_39 (39) = happyShift action_17
action_39 (40) = happyShift action_18
action_39 (41) = happyShift action_19
action_39 (42) = happyShift action_20
action_39 (43) = happyShift action_21
action_39 (6) = happyGoto action_53
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (9) = happyShift action_6
action_40 (10) = happyShift action_7
action_40 (12) = happyShift action_8
action_40 (16) = happyShift action_9
action_40 (18) = happyShift action_10
action_40 (20) = happyShift action_11
action_40 (29) = happyShift action_12
action_40 (31) = happyShift action_14
action_40 (33) = happyShift action_15
action_40 (38) = happyShift action_16
action_40 (39) = happyShift action_17
action_40 (40) = happyShift action_18
action_40 (41) = happyShift action_19
action_40 (42) = happyShift action_20
action_40 (43) = happyShift action_21
action_40 (6) = happyGoto action_52
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_4
action_41 (8) = happyShift action_5
action_41 (9) = happyShift action_6
action_41 (10) = happyShift action_7
action_41 (12) = happyShift action_8
action_41 (16) = happyShift action_9
action_41 (18) = happyShift action_10
action_41 (20) = happyShift action_11
action_41 (29) = happyShift action_12
action_41 (31) = happyShift action_14
action_41 (33) = happyShift action_15
action_41 (38) = happyShift action_16
action_41 (39) = happyShift action_17
action_41 (40) = happyShift action_18
action_41 (41) = happyShift action_19
action_41 (42) = happyShift action_20
action_41 (43) = happyShift action_21
action_41 (6) = happyGoto action_51
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (9) = happyShift action_6
action_42 (10) = happyShift action_7
action_42 (12) = happyShift action_8
action_42 (16) = happyShift action_9
action_42 (18) = happyShift action_10
action_42 (20) = happyShift action_11
action_42 (29) = happyShift action_12
action_42 (31) = happyShift action_14
action_42 (33) = happyShift action_15
action_42 (38) = happyShift action_16
action_42 (39) = happyShift action_17
action_42 (40) = happyShift action_18
action_42 (41) = happyShift action_19
action_42 (42) = happyShift action_20
action_42 (43) = happyShift action_21
action_42 (6) = happyGoto action_50
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_4
action_43 (8) = happyShift action_5
action_43 (9) = happyShift action_6
action_43 (10) = happyShift action_7
action_43 (12) = happyShift action_8
action_43 (16) = happyShift action_9
action_43 (18) = happyShift action_10
action_43 (20) = happyShift action_11
action_43 (29) = happyShift action_12
action_43 (31) = happyShift action_14
action_43 (33) = happyShift action_15
action_43 (38) = happyShift action_16
action_43 (39) = happyShift action_17
action_43 (40) = happyShift action_18
action_43 (41) = happyShift action_19
action_43 (42) = happyShift action_20
action_43 (43) = happyShift action_21
action_43 (6) = happyGoto action_49
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_4
action_44 (8) = happyShift action_5
action_44 (9) = happyShift action_6
action_44 (10) = happyShift action_7
action_44 (12) = happyShift action_8
action_44 (16) = happyShift action_9
action_44 (18) = happyShift action_10
action_44 (20) = happyShift action_11
action_44 (29) = happyShift action_12
action_44 (31) = happyShift action_14
action_44 (33) = happyShift action_15
action_44 (38) = happyShift action_16
action_44 (39) = happyShift action_17
action_44 (40) = happyShift action_18
action_44 (41) = happyShift action_19
action_44 (42) = happyShift action_20
action_44 (43) = happyShift action_21
action_44 (6) = happyGoto action_48
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_4
action_45 (8) = happyShift action_5
action_45 (9) = happyShift action_6
action_45 (10) = happyShift action_7
action_45 (12) = happyShift action_8
action_45 (16) = happyShift action_9
action_45 (18) = happyShift action_10
action_45 (20) = happyShift action_11
action_45 (29) = happyShift action_12
action_45 (31) = happyShift action_14
action_45 (33) = happyShift action_15
action_45 (38) = happyShift action_16
action_45 (39) = happyShift action_17
action_45 (40) = happyShift action_18
action_45 (41) = happyShift action_19
action_45 (42) = happyShift action_20
action_45 (43) = happyShift action_21
action_45 (6) = happyGoto action_47
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_3

action_47 (11) = happyShift action_33
action_47 (12) = happyShift action_34
action_47 (13) = happyShift action_35
action_47 (14) = happyShift action_36
action_47 (15) = happyShift action_37
action_47 (17) = happyShift action_38
action_47 (22) = happyShift action_39
action_47 (23) = happyShift action_40
action_47 (24) = happyShift action_41
action_47 (25) = happyShift action_42
action_47 (26) = happyShift action_43
action_47 (27) = happyShift action_44
action_47 (28) = happyShift action_45
action_47 _ = happyReduce_24

action_48 (11) = happyShift action_33
action_48 (12) = happyShift action_34
action_48 (13) = happyShift action_35
action_48 (14) = happyShift action_36
action_48 (15) = happyShift action_37
action_48 (17) = happyShift action_38
action_48 (22) = happyShift action_39
action_48 (23) = happyShift action_40
action_48 (24) = happyShift action_41
action_48 (25) = happyShift action_42
action_48 (26) = happyShift action_43
action_48 (27) = happyShift action_44
action_48 (28) = happyShift action_45
action_48 _ = happyReduce_23

action_49 (11) = happyShift action_33
action_49 (12) = happyShift action_34
action_49 (13) = happyShift action_35
action_49 (14) = happyShift action_36
action_49 (15) = happyShift action_37
action_49 (17) = happyShift action_38
action_49 (22) = happyShift action_39
action_49 (23) = happyShift action_40
action_49 (24) = happyShift action_41
action_49 (25) = happyShift action_42
action_49 (26) = happyShift action_43
action_49 (27) = happyShift action_44
action_49 (28) = happyShift action_45
action_49 _ = happyReduce_26

action_50 (11) = happyShift action_33
action_50 (12) = happyShift action_34
action_50 (13) = happyShift action_35
action_50 (14) = happyShift action_36
action_50 (15) = happyShift action_37
action_50 (17) = happyShift action_38
action_50 (22) = happyShift action_39
action_50 (23) = happyShift action_40
action_50 (24) = happyShift action_41
action_50 (25) = happyShift action_42
action_50 (26) = happyShift action_43
action_50 (27) = happyShift action_44
action_50 (28) = happyShift action_45
action_50 _ = happyReduce_25

action_51 (11) = happyShift action_33
action_51 (12) = happyShift action_34
action_51 (13) = happyShift action_35
action_51 (14) = happyShift action_36
action_51 (15) = happyShift action_37
action_51 (17) = happyShift action_38
action_51 (22) = happyShift action_39
action_51 (23) = happyShift action_40
action_51 (24) = happyShift action_41
action_51 (25) = happyShift action_42
action_51 (26) = happyShift action_43
action_51 (27) = happyShift action_44
action_51 (28) = happyShift action_45
action_51 _ = happyReduce_27

action_52 (11) = happyShift action_33
action_52 (12) = happyShift action_34
action_52 (13) = happyShift action_35
action_52 (14) = happyShift action_36
action_52 (15) = happyShift action_37
action_52 (17) = happyShift action_38
action_52 (22) = happyShift action_39
action_52 _ = happyReduce_22

action_53 (11) = happyShift action_33
action_53 (12) = happyShift action_34
action_53 (13) = happyShift action_35
action_53 (14) = happyShift action_36
action_53 (15) = happyShift action_37
action_53 (17) = happyShift action_38
action_53 _ = happyReduce_21

action_54 (15) = happyShift action_37
action_54 _ = happyReduce_20

action_55 (15) = happyShift action_37
action_55 _ = happyReduce_19

action_56 (15) = happyShift action_37
action_56 _ = happyReduce_18

action_57 (15) = happyShift action_37
action_57 _ = happyReduce_17

action_58 (13) = happyShift action_35
action_58 (14) = happyShift action_36
action_58 (15) = happyShift action_37
action_58 (17) = happyShift action_38
action_58 _ = happyReduce_16

action_59 (13) = happyShift action_35
action_59 (14) = happyShift action_36
action_59 (15) = happyShift action_37
action_59 (17) = happyShift action_38
action_59 _ = happyReduce_15

action_60 _ = happyReduce_29

action_61 _ = happyReduce_33

action_62 (7) = happyShift action_4
action_62 (8) = happyShift action_5
action_62 (9) = happyShift action_6
action_62 (10) = happyShift action_7
action_62 (12) = happyShift action_8
action_62 (16) = happyShift action_9
action_62 (18) = happyShift action_10
action_62 (20) = happyShift action_11
action_62 (29) = happyShift action_12
action_62 (31) = happyShift action_14
action_62 (33) = happyShift action_15
action_62 (38) = happyShift action_16
action_62 (39) = happyShift action_17
action_62 (40) = happyShift action_18
action_62 (41) = happyShift action_19
action_62 (42) = happyShift action_20
action_62 (43) = happyShift action_21
action_62 (6) = happyGoto action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_4
action_63 (8) = happyShift action_5
action_63 (9) = happyShift action_6
action_63 (10) = happyShift action_7
action_63 (12) = happyShift action_8
action_63 (16) = happyShift action_9
action_63 (18) = happyShift action_10
action_63 (20) = happyShift action_11
action_63 (29) = happyShift action_12
action_63 (31) = happyShift action_14
action_63 (33) = happyShift action_15
action_63 (38) = happyShift action_16
action_63 (39) = happyShift action_17
action_63 (40) = happyShift action_18
action_63 (41) = happyShift action_19
action_63 (42) = happyShift action_20
action_63 (43) = happyShift action_21
action_63 (6) = happyGoto action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_4
action_64 (8) = happyShift action_5
action_64 (9) = happyShift action_6
action_64 (10) = happyShift action_7
action_64 (12) = happyShift action_8
action_64 (16) = happyShift action_9
action_64 (18) = happyShift action_10
action_64 (20) = happyShift action_11
action_64 (29) = happyShift action_12
action_64 (31) = happyShift action_14
action_64 (33) = happyShift action_15
action_64 (38) = happyShift action_16
action_64 (39) = happyShift action_17
action_64 (40) = happyShift action_18
action_64 (41) = happyShift action_19
action_64 (42) = happyShift action_20
action_64 (43) = happyShift action_21
action_64 (6) = happyGoto action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (7) = happyShift action_4
action_65 (8) = happyShift action_5
action_65 (9) = happyShift action_6
action_65 (10) = happyShift action_7
action_65 (12) = happyShift action_8
action_65 (16) = happyShift action_9
action_65 (18) = happyShift action_10
action_65 (20) = happyShift action_11
action_65 (29) = happyShift action_12
action_65 (31) = happyShift action_14
action_65 (33) = happyShift action_15
action_65 (38) = happyShift action_16
action_65 (39) = happyShift action_17
action_65 (40) = happyShift action_18
action_65 (41) = happyShift action_19
action_65 (42) = happyShift action_20
action_65 (43) = happyShift action_21
action_65 (6) = happyGoto action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (11) = happyShift action_33
action_66 (12) = happyShift action_34
action_66 (13) = happyShift action_35
action_66 (14) = happyShift action_36
action_66 (15) = happyShift action_37
action_66 (17) = happyShift action_38
action_66 (22) = happyShift action_39
action_66 (23) = happyShift action_40
action_66 (24) = happyShift action_41
action_66 (25) = happyShift action_42
action_66 (26) = happyShift action_43
action_66 (27) = happyShift action_44
action_66 (28) = happyShift action_45
action_66 (36) = happyShift action_73
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (11) = happyShift action_33
action_67 (12) = happyShift action_34
action_67 (13) = happyShift action_35
action_67 (14) = happyShift action_36
action_67 (15) = happyShift action_37
action_67 (17) = happyShift action_38
action_67 (22) = happyShift action_39
action_67 (23) = happyShift action_40
action_67 (24) = happyShift action_41
action_67 (25) = happyShift action_42
action_67 (26) = happyShift action_43
action_67 (27) = happyShift action_44
action_67 (28) = happyShift action_45
action_67 (34) = happyShift action_72
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (11) = happyShift action_33
action_68 (12) = happyShift action_34
action_68 (13) = happyShift action_35
action_68 (14) = happyShift action_36
action_68 (15) = happyShift action_37
action_68 (17) = happyShift action_38
action_68 (22) = happyShift action_39
action_68 (23) = happyShift action_40
action_68 (24) = happyShift action_41
action_68 (25) = happyShift action_42
action_68 (26) = happyShift action_43
action_68 (27) = happyShift action_44
action_68 (28) = happyShift action_45
action_68 (37) = happyShift action_71
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (11) = happyShift action_33
action_69 (12) = happyShift action_34
action_69 (13) = happyShift action_35
action_69 (14) = happyShift action_36
action_69 (15) = happyShift action_37
action_69 (17) = happyShift action_38
action_69 (22) = happyShift action_39
action_69 (23) = happyShift action_40
action_69 (24) = happyShift action_41
action_69 (25) = happyShift action_42
action_69 (26) = happyShift action_43
action_69 (27) = happyShift action_44
action_69 (28) = happyShift action_45
action_69 (36) = happyShift action_70
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (7) = happyShift action_4
action_70 (8) = happyShift action_5
action_70 (9) = happyShift action_6
action_70 (10) = happyShift action_7
action_70 (12) = happyShift action_8
action_70 (16) = happyShift action_9
action_70 (18) = happyShift action_10
action_70 (20) = happyShift action_11
action_70 (29) = happyShift action_12
action_70 (31) = happyShift action_14
action_70 (33) = happyShift action_15
action_70 (38) = happyShift action_16
action_70 (39) = happyShift action_17
action_70 (40) = happyShift action_18
action_70 (41) = happyShift action_19
action_70 (42) = happyShift action_20
action_70 (43) = happyShift action_21
action_70 (6) = happyGoto action_76
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_4

action_72 (7) = happyShift action_4
action_72 (8) = happyShift action_5
action_72 (9) = happyShift action_6
action_72 (10) = happyShift action_7
action_72 (12) = happyShift action_8
action_72 (16) = happyShift action_9
action_72 (18) = happyShift action_10
action_72 (20) = happyShift action_11
action_72 (29) = happyShift action_12
action_72 (31) = happyShift action_14
action_72 (33) = happyShift action_15
action_72 (38) = happyShift action_16
action_72 (39) = happyShift action_17
action_72 (40) = happyShift action_18
action_72 (41) = happyShift action_19
action_72 (42) = happyShift action_20
action_72 (43) = happyShift action_21
action_72 (6) = happyGoto action_75
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (7) = happyShift action_4
action_73 (8) = happyShift action_5
action_73 (9) = happyShift action_6
action_73 (10) = happyShift action_7
action_73 (12) = happyShift action_8
action_73 (16) = happyShift action_9
action_73 (18) = happyShift action_10
action_73 (20) = happyShift action_11
action_73 (29) = happyShift action_12
action_73 (31) = happyShift action_14
action_73 (33) = happyShift action_15
action_73 (38) = happyShift action_16
action_73 (39) = happyShift action_17
action_73 (40) = happyShift action_18
action_73 (41) = happyShift action_19
action_73 (42) = happyShift action_20
action_73 (43) = happyShift action_21
action_73 (6) = happyGoto action_74
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (11) = happyShift action_33
action_74 (12) = happyShift action_34
action_74 (13) = happyShift action_35
action_74 (14) = happyShift action_36
action_74 (15) = happyShift action_37
action_74 (17) = happyShift action_38
action_74 (22) = happyShift action_39
action_74 (23) = happyShift action_40
action_74 (24) = happyShift action_41
action_74 (25) = happyShift action_42
action_74 (26) = happyShift action_43
action_74 (27) = happyShift action_44
action_74 (28) = happyShift action_45
action_74 _ = happyReduce_31

action_75 (11) = happyShift action_33
action_75 (12) = happyShift action_34
action_75 (13) = happyShift action_35
action_75 (14) = happyShift action_36
action_75 (15) = happyShift action_37
action_75 (17) = happyShift action_38
action_75 (22) = happyShift action_39
action_75 (23) = happyShift action_40
action_75 (24) = happyShift action_41
action_75 (25) = happyShift action_42
action_75 (26) = happyShift action_43
action_75 (27) = happyShift action_44
action_75 (28) = happyShift action_45
action_75 _ = happyReduce_34

action_76 (11) = happyShift action_33
action_76 (12) = happyShift action_34
action_76 (13) = happyShift action_35
action_76 (14) = happyShift action_36
action_76 (15) = happyShift action_37
action_76 (17) = happyShift action_38
action_76 (22) = happyShift action_39
action_76 (23) = happyShift action_40
action_76 (24) = happyShift action_41
action_76 (25) = happyShift action_42
action_76 (26) = happyShift action_43
action_76 (27) = happyShift action_44
action_76 (28) = happyShift action_45
action_76 _ = happyReduce_32

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Stmt happy_var_1
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 5 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AssignStmt (Variable happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyTerminal (IntTok happy_var_1))
	 =  HappyAbsSyn6
		 (IntLit happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyTerminal (RealTok happy_var_1))
	 =  HappyAbsSyn6
		 (RealLit happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyTerminal (StringTok happy_var_1))
	 =  HappyAbsSyn6
		 (StringLit happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyTerminal (VarTok happy_var_1))
	 =  HappyAbsSyn6
		 (Variable happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn6
		 (Const "true"
	)

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn6
		 (Const "false"
	)

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn6
		 (Const "fee"
	)

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn6
		 (Const "pie"
	)

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn6
		 (Const "phi"
	)

happyReduce_14 = happySpecReduce_1  6 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn6
		 (Const "mole"
	)

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Add happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Sub happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Mul happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Div happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Pow happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Mod happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp And happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Or happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Leq happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Geq happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp LessThan happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp GreaterThan happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Equals happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (UnaryOp Negate happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (UnaryOp Negate happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (UnaryOp Sqrt happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 6 6 happyReduction_31
happyReduction_31 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Ifz happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 6 6 happyReduction_32
happyReduction_32 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Supposing happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 6 6 happyReduction_34
happyReduction_34 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Oi (Variable happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	IntTok happy_dollar_dollar -> cont 7;
	RealTok happy_dollar_dollar -> cont 8;
	VarTok happy_dollar_dollar -> cont 9;
	StringTok happy_dollar_dollar -> cont 10;
	AddTok -> cont 11;
	SubTok -> cont 12;
	MulTok -> cont 13;
	DivTok -> cont 14;
	PowTok -> cont 15;
	SqrtTok -> cont 16;
	ModTok -> cont 17;
	LBrakTok -> cont 18;
	RBrakTok -> cont 19;
	LParenTok -> cont 20;
	RParenTok -> cont 21;
	AndTok -> cont 22;
	OrTok -> cont 23;
	EqTok -> cont 24;
	LessTok -> cont 25;
	GreaterTok -> cont 26;
	LeqTok -> cont 27;
	GeqTok -> cont 28;
	SupTok -> cont 29;
	HearyeTok -> cont 30;
	OiTok -> cont 31;
	IsTok -> cont 32;
	IfzTok -> cont 33;
	ForTok -> cont 34;
	ThenTok -> cont 35;
	ElseTok -> cont 36;
	EolTok -> cont 37;
	FeeTok -> cont 38;
	PieTok -> cont 39;
	PhiTok -> cont 40;
	MoleTok -> cont 41;
	TrueTok -> cont 42;
	FalseTok -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError tokens = error $ "Parse error at tokens: " ++ show tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
