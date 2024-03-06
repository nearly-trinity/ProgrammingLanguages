{-# OPTIONS_GHC -w #-}
module Parser where
import Evaluator (Stmt(..), Expr(..), Op(..), UnaryOp(..))
import Lexer (Token(..))
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,288) ([17888,47109,2032,21598,2688,63,61630,2055,0,0,0,0,0,0,0,0,0,0,0,24064,32852,16138,17888,43013,1008,21598,2688,57407,1349,61608,24067,32852,16138,128,0,0,21598,2688,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,4,48640,2032,2,0,1024,0,61630,519,57344,32651,0,48640,2034,0,0,0,0,184,0,24064,32852,16138,17888,43013,1008,21598,2688,57407,1349,61608,24067,32852,16138,17888,43013,1008,21598,2688,57407,1349,61608,24067,32852,16138,17888,43013,1008,21598,2688,57407,1349,61608,24067,32852,16138,0,0,0,3040,127,0,61630,7,57344,32523,0,48640,2032,0,3040,127,0,4286,0,57344,11,0,8192,0,0,512,0,0,32,0,0,2,0,47104,0,0,2944,0,0,0,0,0,0,0,17888,43013,1008,21598,2688,57407,1349,61608,24067,32852,16138,48640,2032,8,3040,16511,0,61630,263,57344,32523,64,17888,43013,1008,21598,2688,57407,1349,61608,3,0,0,48640,2032,0,0,0,0,61630,7,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Statement","Expr","'integer'","'real'","'var'","'string'","'+'","'-'","'*'","'/'","'^'","'sqrt'","'%'","'['","']'","'('","')'","'and'","'or'","'='","'<'","'>'","'leq'","'geq'","'sup'","'hearye'","'oi'","'is'","'ifz'","'for'","'then'","'else'","'innit'","'fee'","'pie'","'phi'","'mole'","'ace'","'rank'","'comment'","%eof"]
        bit_start = st Prelude.* 44
        bit_end = (st Prelude.+ 1) Prelude.* 44
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..43]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_3
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (11) = happyShift action_7
action_0 (15) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (29) = happyShift action_21
action_0 (30) = happyShift action_12
action_0 (32) = happyShift action_13
action_0 (37) = happyShift action_14
action_0 (38) = happyShift action_15
action_0 (39) = happyShift action_16
action_0 (40) = happyShift action_17
action_0 (41) = happyShift action_18
action_0 (42) = happyShift action_19
action_0 (43) = happyShift action_22
action_0 (4) = happyGoto action_20
action_0 (5) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_3
action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (9) = happyShift action_6
action_1 (11) = happyShift action_7
action_1 (15) = happyShift action_8
action_1 (17) = happyShift action_9
action_1 (19) = happyShift action_10
action_1 (28) = happyShift action_11
action_1 (30) = happyShift action_12
action_1 (32) = happyShift action_13
action_1 (37) = happyShift action_14
action_1 (38) = happyShift action_15
action_1 (39) = happyShift action_16
action_1 (40) = happyShift action_17
action_1 (41) = happyShift action_18
action_1 (42) = happyShift action_19
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (10) = happyShift action_31
action_2 (11) = happyShift action_32
action_2 (12) = happyShift action_33
action_2 (13) = happyShift action_34
action_2 (14) = happyShift action_35
action_2 (16) = happyShift action_36
action_2 (21) = happyShift action_37
action_2 (22) = happyShift action_38
action_2 (23) = happyShift action_39
action_2 (24) = happyShift action_40
action_2 (25) = happyShift action_41
action_2 (26) = happyShift action_42
action_2 (27) = happyShift action_43
action_2 (36) = happyShift action_44
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_4

action_4 _ = happyReduce_5

action_5 _ = happyReduce_7

action_6 _ = happyReduce_6

action_7 (6) = happyShift action_3
action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (9) = happyShift action_6
action_7 (11) = happyShift action_7
action_7 (15) = happyShift action_8
action_7 (17) = happyShift action_9
action_7 (19) = happyShift action_10
action_7 (28) = happyShift action_11
action_7 (30) = happyShift action_12
action_7 (32) = happyShift action_13
action_7 (37) = happyShift action_14
action_7 (38) = happyShift action_15
action_7 (39) = happyShift action_16
action_7 (40) = happyShift action_17
action_7 (41) = happyShift action_18
action_7 (42) = happyShift action_19
action_7 (5) = happyGoto action_30
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_3
action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (9) = happyShift action_6
action_8 (11) = happyShift action_7
action_8 (15) = happyShift action_8
action_8 (17) = happyShift action_9
action_8 (19) = happyShift action_10
action_8 (28) = happyShift action_11
action_8 (30) = happyShift action_12
action_8 (32) = happyShift action_13
action_8 (37) = happyShift action_14
action_8 (38) = happyShift action_15
action_8 (39) = happyShift action_16
action_8 (40) = happyShift action_17
action_8 (41) = happyShift action_18
action_8 (42) = happyShift action_19
action_8 (5) = happyGoto action_29
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_3
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (11) = happyShift action_7
action_9 (15) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (19) = happyShift action_10
action_9 (28) = happyShift action_11
action_9 (30) = happyShift action_12
action_9 (32) = happyShift action_13
action_9 (37) = happyShift action_14
action_9 (38) = happyShift action_15
action_9 (39) = happyShift action_16
action_9 (40) = happyShift action_17
action_9 (41) = happyShift action_18
action_9 (42) = happyShift action_19
action_9 (5) = happyGoto action_28
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_3
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (11) = happyShift action_7
action_10 (15) = happyShift action_8
action_10 (17) = happyShift action_9
action_10 (19) = happyShift action_10
action_10 (28) = happyShift action_11
action_10 (30) = happyShift action_12
action_10 (32) = happyShift action_13
action_10 (37) = happyShift action_14
action_10 (38) = happyShift action_15
action_10 (39) = happyShift action_16
action_10 (40) = happyShift action_17
action_10 (41) = happyShift action_18
action_10 (42) = happyShift action_19
action_10 (5) = happyGoto action_27
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_3
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (11) = happyShift action_7
action_11 (15) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (19) = happyShift action_10
action_11 (28) = happyShift action_11
action_11 (30) = happyShift action_12
action_11 (32) = happyShift action_13
action_11 (37) = happyShift action_14
action_11 (38) = happyShift action_15
action_11 (39) = happyShift action_16
action_11 (40) = happyShift action_17
action_11 (41) = happyShift action_18
action_11 (42) = happyShift action_19
action_11 (5) = happyGoto action_26
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_25
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_3
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_6
action_13 (11) = happyShift action_7
action_13 (15) = happyShift action_8
action_13 (17) = happyShift action_9
action_13 (19) = happyShift action_10
action_13 (28) = happyShift action_11
action_13 (30) = happyShift action_12
action_13 (32) = happyShift action_13
action_13 (37) = happyShift action_14
action_13 (38) = happyShift action_15
action_13 (39) = happyShift action_16
action_13 (40) = happyShift action_17
action_13 (41) = happyShift action_18
action_13 (42) = happyShift action_19
action_13 (5) = happyGoto action_24
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_10

action_15 _ = happyReduce_11

action_16 _ = happyReduce_12

action_17 _ = happyReduce_13

action_18 _ = happyReduce_8

action_19 _ = happyReduce_9

action_20 (44) = happyAccept
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_3

action_23 (31) = happyShift action_63
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (10) = happyShift action_31
action_24 (11) = happyShift action_32
action_24 (12) = happyShift action_33
action_24 (13) = happyShift action_34
action_24 (14) = happyShift action_35
action_24 (16) = happyShift action_36
action_24 (21) = happyShift action_37
action_24 (22) = happyShift action_38
action_24 (23) = happyShift action_39
action_24 (24) = happyShift action_40
action_24 (25) = happyShift action_41
action_24 (26) = happyShift action_42
action_24 (27) = happyShift action_43
action_24 (34) = happyShift action_62
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (31) = happyShift action_61
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_31
action_26 (11) = happyShift action_32
action_26 (12) = happyShift action_33
action_26 (13) = happyShift action_34
action_26 (14) = happyShift action_35
action_26 (16) = happyShift action_36
action_26 (21) = happyShift action_37
action_26 (22) = happyShift action_38
action_26 (23) = happyShift action_39
action_26 (24) = happyShift action_40
action_26 (25) = happyShift action_41
action_26 (26) = happyShift action_42
action_26 (27) = happyShift action_43
action_26 (34) = happyShift action_60
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_31
action_27 (11) = happyShift action_32
action_27 (12) = happyShift action_33
action_27 (13) = happyShift action_34
action_27 (14) = happyShift action_35
action_27 (16) = happyShift action_36
action_27 (20) = happyShift action_59
action_27 (21) = happyShift action_37
action_27 (22) = happyShift action_38
action_27 (23) = happyShift action_39
action_27 (24) = happyShift action_40
action_27 (25) = happyShift action_41
action_27 (26) = happyShift action_42
action_27 (27) = happyShift action_43
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_31
action_28 (11) = happyShift action_32
action_28 (12) = happyShift action_33
action_28 (13) = happyShift action_34
action_28 (14) = happyShift action_35
action_28 (16) = happyShift action_36
action_28 (18) = happyShift action_58
action_28 (21) = happyShift action_37
action_28 (22) = happyShift action_38
action_28 (23) = happyShift action_39
action_28 (24) = happyShift action_40
action_28 (25) = happyShift action_41
action_28 (26) = happyShift action_42
action_28 (27) = happyShift action_43
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_29

action_30 (12) = happyShift action_33
action_30 (13) = happyShift action_34
action_30 (14) = happyShift action_35
action_30 (16) = happyShift action_36
action_30 _ = happyReduce_27

action_31 (6) = happyShift action_3
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (9) = happyShift action_6
action_31 (11) = happyShift action_7
action_31 (15) = happyShift action_8
action_31 (17) = happyShift action_9
action_31 (19) = happyShift action_10
action_31 (28) = happyShift action_11
action_31 (30) = happyShift action_12
action_31 (32) = happyShift action_13
action_31 (37) = happyShift action_14
action_31 (38) = happyShift action_15
action_31 (39) = happyShift action_16
action_31 (40) = happyShift action_17
action_31 (41) = happyShift action_18
action_31 (42) = happyShift action_19
action_31 (5) = happyGoto action_57
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_3
action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (9) = happyShift action_6
action_32 (11) = happyShift action_7
action_32 (15) = happyShift action_8
action_32 (17) = happyShift action_9
action_32 (19) = happyShift action_10
action_32 (28) = happyShift action_11
action_32 (30) = happyShift action_12
action_32 (32) = happyShift action_13
action_32 (37) = happyShift action_14
action_32 (38) = happyShift action_15
action_32 (39) = happyShift action_16
action_32 (40) = happyShift action_17
action_32 (41) = happyShift action_18
action_32 (42) = happyShift action_19
action_32 (5) = happyGoto action_56
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_3
action_33 (7) = happyShift action_4
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (11) = happyShift action_7
action_33 (15) = happyShift action_8
action_33 (17) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (28) = happyShift action_11
action_33 (30) = happyShift action_12
action_33 (32) = happyShift action_13
action_33 (37) = happyShift action_14
action_33 (38) = happyShift action_15
action_33 (39) = happyShift action_16
action_33 (40) = happyShift action_17
action_33 (41) = happyShift action_18
action_33 (42) = happyShift action_19
action_33 (5) = happyGoto action_55
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_3
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_6
action_34 (11) = happyShift action_7
action_34 (15) = happyShift action_8
action_34 (17) = happyShift action_9
action_34 (19) = happyShift action_10
action_34 (28) = happyShift action_11
action_34 (30) = happyShift action_12
action_34 (32) = happyShift action_13
action_34 (37) = happyShift action_14
action_34 (38) = happyShift action_15
action_34 (39) = happyShift action_16
action_34 (40) = happyShift action_17
action_34 (41) = happyShift action_18
action_34 (42) = happyShift action_19
action_34 (5) = happyGoto action_54
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_3
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (9) = happyShift action_6
action_35 (11) = happyShift action_7
action_35 (15) = happyShift action_8
action_35 (17) = happyShift action_9
action_35 (19) = happyShift action_10
action_35 (28) = happyShift action_11
action_35 (30) = happyShift action_12
action_35 (32) = happyShift action_13
action_35 (37) = happyShift action_14
action_35 (38) = happyShift action_15
action_35 (39) = happyShift action_16
action_35 (40) = happyShift action_17
action_35 (41) = happyShift action_18
action_35 (42) = happyShift action_19
action_35 (5) = happyGoto action_53
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_3
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_6
action_36 (11) = happyShift action_7
action_36 (15) = happyShift action_8
action_36 (17) = happyShift action_9
action_36 (19) = happyShift action_10
action_36 (28) = happyShift action_11
action_36 (30) = happyShift action_12
action_36 (32) = happyShift action_13
action_36 (37) = happyShift action_14
action_36 (38) = happyShift action_15
action_36 (39) = happyShift action_16
action_36 (40) = happyShift action_17
action_36 (41) = happyShift action_18
action_36 (42) = happyShift action_19
action_36 (5) = happyGoto action_52
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_3
action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (9) = happyShift action_6
action_37 (11) = happyShift action_7
action_37 (15) = happyShift action_8
action_37 (17) = happyShift action_9
action_37 (19) = happyShift action_10
action_37 (28) = happyShift action_11
action_37 (30) = happyShift action_12
action_37 (32) = happyShift action_13
action_37 (37) = happyShift action_14
action_37 (38) = happyShift action_15
action_37 (39) = happyShift action_16
action_37 (40) = happyShift action_17
action_37 (41) = happyShift action_18
action_37 (42) = happyShift action_19
action_37 (5) = happyGoto action_51
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (6) = happyShift action_3
action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_5
action_38 (9) = happyShift action_6
action_38 (11) = happyShift action_7
action_38 (15) = happyShift action_8
action_38 (17) = happyShift action_9
action_38 (19) = happyShift action_10
action_38 (28) = happyShift action_11
action_38 (30) = happyShift action_12
action_38 (32) = happyShift action_13
action_38 (37) = happyShift action_14
action_38 (38) = happyShift action_15
action_38 (39) = happyShift action_16
action_38 (40) = happyShift action_17
action_38 (41) = happyShift action_18
action_38 (42) = happyShift action_19
action_38 (5) = happyGoto action_50
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (6) = happyShift action_3
action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_5
action_39 (9) = happyShift action_6
action_39 (11) = happyShift action_7
action_39 (15) = happyShift action_8
action_39 (17) = happyShift action_9
action_39 (19) = happyShift action_10
action_39 (28) = happyShift action_11
action_39 (30) = happyShift action_12
action_39 (32) = happyShift action_13
action_39 (37) = happyShift action_14
action_39 (38) = happyShift action_15
action_39 (39) = happyShift action_16
action_39 (40) = happyShift action_17
action_39 (41) = happyShift action_18
action_39 (42) = happyShift action_19
action_39 (5) = happyGoto action_49
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_3
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (9) = happyShift action_6
action_40 (11) = happyShift action_7
action_40 (15) = happyShift action_8
action_40 (17) = happyShift action_9
action_40 (19) = happyShift action_10
action_40 (28) = happyShift action_11
action_40 (30) = happyShift action_12
action_40 (32) = happyShift action_13
action_40 (37) = happyShift action_14
action_40 (38) = happyShift action_15
action_40 (39) = happyShift action_16
action_40 (40) = happyShift action_17
action_40 (41) = happyShift action_18
action_40 (42) = happyShift action_19
action_40 (5) = happyGoto action_48
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_3
action_41 (7) = happyShift action_4
action_41 (8) = happyShift action_5
action_41 (9) = happyShift action_6
action_41 (11) = happyShift action_7
action_41 (15) = happyShift action_8
action_41 (17) = happyShift action_9
action_41 (19) = happyShift action_10
action_41 (28) = happyShift action_11
action_41 (30) = happyShift action_12
action_41 (32) = happyShift action_13
action_41 (37) = happyShift action_14
action_41 (38) = happyShift action_15
action_41 (39) = happyShift action_16
action_41 (40) = happyShift action_17
action_41 (41) = happyShift action_18
action_41 (42) = happyShift action_19
action_41 (5) = happyGoto action_47
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_3
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (9) = happyShift action_6
action_42 (11) = happyShift action_7
action_42 (15) = happyShift action_8
action_42 (17) = happyShift action_9
action_42 (19) = happyShift action_10
action_42 (28) = happyShift action_11
action_42 (30) = happyShift action_12
action_42 (32) = happyShift action_13
action_42 (37) = happyShift action_14
action_42 (38) = happyShift action_15
action_42 (39) = happyShift action_16
action_42 (40) = happyShift action_17
action_42 (41) = happyShift action_18
action_42 (42) = happyShift action_19
action_42 (5) = happyGoto action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_3
action_43 (7) = happyShift action_4
action_43 (8) = happyShift action_5
action_43 (9) = happyShift action_6
action_43 (11) = happyShift action_7
action_43 (15) = happyShift action_8
action_43 (17) = happyShift action_9
action_43 (19) = happyShift action_10
action_43 (28) = happyShift action_11
action_43 (30) = happyShift action_12
action_43 (32) = happyShift action_13
action_43 (37) = happyShift action_14
action_43 (38) = happyShift action_15
action_43 (39) = happyShift action_16
action_43 (40) = happyShift action_17
action_43 (41) = happyShift action_18
action_43 (42) = happyShift action_19
action_43 (5) = happyGoto action_45
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_1

action_45 (10) = happyShift action_31
action_45 (11) = happyShift action_32
action_45 (12) = happyShift action_33
action_45 (13) = happyShift action_34
action_45 (14) = happyShift action_35
action_45 (16) = happyShift action_36
action_45 (21) = happyShift action_37
action_45 (22) = happyShift action_38
action_45 (23) = happyShift action_39
action_45 (24) = happyShift action_40
action_45 (25) = happyShift action_41
action_45 (26) = happyShift action_42
action_45 (27) = happyShift action_43
action_45 _ = happyReduce_23

action_46 (10) = happyShift action_31
action_46 (11) = happyShift action_32
action_46 (12) = happyShift action_33
action_46 (13) = happyShift action_34
action_46 (14) = happyShift action_35
action_46 (16) = happyShift action_36
action_46 (21) = happyShift action_37
action_46 (22) = happyShift action_38
action_46 (23) = happyShift action_39
action_46 (24) = happyShift action_40
action_46 (25) = happyShift action_41
action_46 (26) = happyShift action_42
action_46 (27) = happyShift action_43
action_46 _ = happyReduce_22

action_47 (10) = happyShift action_31
action_47 (11) = happyShift action_32
action_47 (12) = happyShift action_33
action_47 (13) = happyShift action_34
action_47 (14) = happyShift action_35
action_47 (16) = happyShift action_36
action_47 (21) = happyShift action_37
action_47 (22) = happyShift action_38
action_47 (23) = happyShift action_39
action_47 (24) = happyShift action_40
action_47 (25) = happyShift action_41
action_47 (26) = happyShift action_42
action_47 (27) = happyShift action_43
action_47 _ = happyReduce_25

action_48 (10) = happyShift action_31
action_48 (11) = happyShift action_32
action_48 (12) = happyShift action_33
action_48 (13) = happyShift action_34
action_48 (14) = happyShift action_35
action_48 (16) = happyShift action_36
action_48 (21) = happyShift action_37
action_48 (22) = happyShift action_38
action_48 (23) = happyShift action_39
action_48 (24) = happyShift action_40
action_48 (25) = happyShift action_41
action_48 (26) = happyShift action_42
action_48 (27) = happyShift action_43
action_48 _ = happyReduce_24

action_49 (10) = happyShift action_31
action_49 (11) = happyShift action_32
action_49 (12) = happyShift action_33
action_49 (13) = happyShift action_34
action_49 (14) = happyShift action_35
action_49 (16) = happyShift action_36
action_49 (21) = happyShift action_37
action_49 (22) = happyShift action_38
action_49 (23) = happyShift action_39
action_49 (24) = happyShift action_40
action_49 (25) = happyShift action_41
action_49 (26) = happyShift action_42
action_49 (27) = happyShift action_43
action_49 _ = happyReduce_26

action_50 (10) = happyShift action_31
action_50 (11) = happyShift action_32
action_50 (12) = happyShift action_33
action_50 (13) = happyShift action_34
action_50 (14) = happyShift action_35
action_50 (16) = happyShift action_36
action_50 (21) = happyShift action_37
action_50 _ = happyReduce_21

action_51 (10) = happyShift action_31
action_51 (11) = happyShift action_32
action_51 (12) = happyShift action_33
action_51 (13) = happyShift action_34
action_51 (14) = happyShift action_35
action_51 (16) = happyShift action_36
action_51 _ = happyReduce_20

action_52 (14) = happyShift action_35
action_52 _ = happyReduce_19

action_53 (14) = happyShift action_35
action_53 _ = happyReduce_18

action_54 (14) = happyShift action_35
action_54 _ = happyReduce_17

action_55 (14) = happyShift action_35
action_55 _ = happyReduce_16

action_56 (12) = happyShift action_33
action_56 (13) = happyShift action_34
action_56 (14) = happyShift action_35
action_56 (16) = happyShift action_36
action_56 _ = happyReduce_15

action_57 (12) = happyShift action_33
action_57 (13) = happyShift action_34
action_57 (14) = happyShift action_35
action_57 (16) = happyShift action_36
action_57 _ = happyReduce_14

action_58 _ = happyReduce_28

action_59 _ = happyReduce_32

action_60 (6) = happyShift action_3
action_60 (7) = happyShift action_4
action_60 (8) = happyShift action_5
action_60 (9) = happyShift action_6
action_60 (11) = happyShift action_7
action_60 (15) = happyShift action_8
action_60 (17) = happyShift action_9
action_60 (19) = happyShift action_10
action_60 (28) = happyShift action_11
action_60 (30) = happyShift action_12
action_60 (32) = happyShift action_13
action_60 (37) = happyShift action_14
action_60 (38) = happyShift action_15
action_60 (39) = happyShift action_16
action_60 (40) = happyShift action_17
action_60 (41) = happyShift action_18
action_60 (42) = happyShift action_19
action_60 (5) = happyGoto action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_3
action_61 (7) = happyShift action_4
action_61 (8) = happyShift action_5
action_61 (9) = happyShift action_6
action_61 (11) = happyShift action_7
action_61 (15) = happyShift action_8
action_61 (17) = happyShift action_9
action_61 (19) = happyShift action_10
action_61 (28) = happyShift action_11
action_61 (30) = happyShift action_12
action_61 (32) = happyShift action_13
action_61 (37) = happyShift action_14
action_61 (38) = happyShift action_15
action_61 (39) = happyShift action_16
action_61 (40) = happyShift action_17
action_61 (41) = happyShift action_18
action_61 (42) = happyShift action_19
action_61 (5) = happyGoto action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_3
action_62 (7) = happyShift action_4
action_62 (8) = happyShift action_5
action_62 (9) = happyShift action_6
action_62 (11) = happyShift action_7
action_62 (15) = happyShift action_8
action_62 (17) = happyShift action_9
action_62 (19) = happyShift action_10
action_62 (28) = happyShift action_11
action_62 (30) = happyShift action_12
action_62 (32) = happyShift action_13
action_62 (37) = happyShift action_14
action_62 (38) = happyShift action_15
action_62 (39) = happyShift action_16
action_62 (40) = happyShift action_17
action_62 (41) = happyShift action_18
action_62 (42) = happyShift action_19
action_62 (5) = happyGoto action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_3
action_63 (7) = happyShift action_4
action_63 (8) = happyShift action_5
action_63 (9) = happyShift action_6
action_63 (11) = happyShift action_7
action_63 (15) = happyShift action_8
action_63 (17) = happyShift action_9
action_63 (19) = happyShift action_10
action_63 (28) = happyShift action_11
action_63 (30) = happyShift action_12
action_63 (32) = happyShift action_13
action_63 (37) = happyShift action_14
action_63 (38) = happyShift action_15
action_63 (39) = happyShift action_16
action_63 (40) = happyShift action_17
action_63 (41) = happyShift action_18
action_63 (42) = happyShift action_19
action_63 (5) = happyGoto action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (10) = happyShift action_31
action_64 (11) = happyShift action_32
action_64 (12) = happyShift action_33
action_64 (13) = happyShift action_34
action_64 (14) = happyShift action_35
action_64 (16) = happyShift action_36
action_64 (21) = happyShift action_37
action_64 (22) = happyShift action_38
action_64 (23) = happyShift action_39
action_64 (24) = happyShift action_40
action_64 (25) = happyShift action_41
action_64 (26) = happyShift action_42
action_64 (27) = happyShift action_43
action_64 (36) = happyShift action_71
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (10) = happyShift action_31
action_65 (11) = happyShift action_32
action_65 (12) = happyShift action_33
action_65 (13) = happyShift action_34
action_65 (14) = happyShift action_35
action_65 (16) = happyShift action_36
action_65 (21) = happyShift action_37
action_65 (22) = happyShift action_38
action_65 (23) = happyShift action_39
action_65 (24) = happyShift action_40
action_65 (25) = happyShift action_41
action_65 (26) = happyShift action_42
action_65 (27) = happyShift action_43
action_65 (35) = happyShift action_70
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (10) = happyShift action_31
action_66 (11) = happyShift action_32
action_66 (12) = happyShift action_33
action_66 (13) = happyShift action_34
action_66 (14) = happyShift action_35
action_66 (16) = happyShift action_36
action_66 (21) = happyShift action_37
action_66 (22) = happyShift action_38
action_66 (23) = happyShift action_39
action_66 (24) = happyShift action_40
action_66 (25) = happyShift action_41
action_66 (26) = happyShift action_42
action_66 (27) = happyShift action_43
action_66 (33) = happyShift action_69
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (10) = happyShift action_31
action_67 (11) = happyShift action_32
action_67 (12) = happyShift action_33
action_67 (13) = happyShift action_34
action_67 (14) = happyShift action_35
action_67 (16) = happyShift action_36
action_67 (21) = happyShift action_37
action_67 (22) = happyShift action_38
action_67 (23) = happyShift action_39
action_67 (24) = happyShift action_40
action_67 (25) = happyShift action_41
action_67 (26) = happyShift action_42
action_67 (27) = happyShift action_43
action_67 (35) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (6) = happyShift action_3
action_68 (7) = happyShift action_4
action_68 (8) = happyShift action_5
action_68 (9) = happyShift action_6
action_68 (11) = happyShift action_7
action_68 (15) = happyShift action_8
action_68 (17) = happyShift action_9
action_68 (19) = happyShift action_10
action_68 (28) = happyShift action_11
action_68 (30) = happyShift action_12
action_68 (32) = happyShift action_13
action_68 (37) = happyShift action_14
action_68 (38) = happyShift action_15
action_68 (39) = happyShift action_16
action_68 (40) = happyShift action_17
action_68 (41) = happyShift action_18
action_68 (42) = happyShift action_19
action_68 (5) = happyGoto action_74
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (6) = happyShift action_3
action_69 (7) = happyShift action_4
action_69 (8) = happyShift action_5
action_69 (9) = happyShift action_6
action_69 (11) = happyShift action_7
action_69 (15) = happyShift action_8
action_69 (17) = happyShift action_9
action_69 (19) = happyShift action_10
action_69 (28) = happyShift action_11
action_69 (30) = happyShift action_12
action_69 (32) = happyShift action_13
action_69 (37) = happyShift action_14
action_69 (38) = happyShift action_15
action_69 (39) = happyShift action_16
action_69 (40) = happyShift action_17
action_69 (41) = happyShift action_18
action_69 (42) = happyShift action_19
action_69 (5) = happyGoto action_73
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (6) = happyShift action_3
action_70 (7) = happyShift action_4
action_70 (8) = happyShift action_5
action_70 (9) = happyShift action_6
action_70 (11) = happyShift action_7
action_70 (15) = happyShift action_8
action_70 (17) = happyShift action_9
action_70 (19) = happyShift action_10
action_70 (28) = happyShift action_11
action_70 (30) = happyShift action_12
action_70 (32) = happyShift action_13
action_70 (37) = happyShift action_14
action_70 (38) = happyShift action_15
action_70 (39) = happyShift action_16
action_70 (40) = happyShift action_17
action_70 (41) = happyShift action_18
action_70 (42) = happyShift action_19
action_70 (5) = happyGoto action_72
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_2

action_72 (10) = happyShift action_31
action_72 (11) = happyShift action_32
action_72 (12) = happyShift action_33
action_72 (13) = happyShift action_34
action_72 (14) = happyShift action_35
action_72 (16) = happyShift action_36
action_72 (21) = happyShift action_37
action_72 (22) = happyShift action_38
action_72 (23) = happyShift action_39
action_72 (24) = happyShift action_40
action_72 (25) = happyShift action_41
action_72 (26) = happyShift action_42
action_72 (27) = happyShift action_43
action_72 _ = happyReduce_30

action_73 (10) = happyShift action_31
action_73 (11) = happyShift action_32
action_73 (12) = happyShift action_33
action_73 (13) = happyShift action_34
action_73 (14) = happyShift action_35
action_73 (16) = happyShift action_36
action_73 (21) = happyShift action_37
action_73 (22) = happyShift action_38
action_73 (23) = happyShift action_39
action_73 (24) = happyShift action_40
action_73 (25) = happyShift action_41
action_73 (26) = happyShift action_42
action_73 (27) = happyShift action_43
action_73 _ = happyReduce_33

action_74 (10) = happyShift action_31
action_74 (11) = happyShift action_32
action_74 (12) = happyShift action_33
action_74 (13) = happyShift action_34
action_74 (14) = happyShift action_35
action_74 (16) = happyShift action_36
action_74 (21) = happyShift action_37
action_74 (22) = happyShift action_38
action_74 (23) = happyShift action_39
action_74 (24) = happyShift action_40
action_74 (25) = happyShift action_41
action_74 (26) = happyShift action_42
action_74 (27) = happyShift action_43
action_74 _ = happyReduce_31

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Stmt happy_var_1
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 5 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (AssignStmt (Variable happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (NoOpStmt
	)

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyTerminal (IntTok happy_var_1))
	 =  HappyAbsSyn5
		 (IntExpr happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyTerminal (RealTok happy_var_1))
	 =  HappyAbsSyn5
		 (RealExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyTerminal (StringTok happy_var_1))
	 =  HappyAbsSyn5
		 (StringExpr happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyTerminal (VarTok happy_var_1))
	 =  HappyAbsSyn5
		 (Variable happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn5
		 (Const "true"
	)

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn5
		 (Const "false"
	)

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn5
		 (Const "fee"
	)

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn5
		 (Const "pie"
	)

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn5
		 (Const "phi"
	)

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn5
		 (Const "mole"
	)

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Add happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Sub happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Mul happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Div happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Pow happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Mod happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp And happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Or happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Leq happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Geq happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp LessThan happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp GreaterThan happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BinOp Equals happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (UnaryOp Negate happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (UnaryOp Not happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (UnaryOp Sqrt happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 6 5 happyReduction_30
happyReduction_30 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Ifz happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 5 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Supposing happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_3  5 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 6 5 happyReduction_33
happyReduction_33 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarTok happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Oi (Variable happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	IntTok happy_dollar_dollar -> cont 6;
	RealTok happy_dollar_dollar -> cont 7;
	VarTok happy_dollar_dollar -> cont 8;
	StringTok happy_dollar_dollar -> cont 9;
	AddTok -> cont 10;
	SubTok -> cont 11;
	MulTok -> cont 12;
	DivTok -> cont 13;
	PowTok -> cont 14;
	SqrtTok -> cont 15;
	ModTok -> cont 16;
	LBrakTok -> cont 17;
	RBrakTok -> cont 18;
	LParenTok -> cont 19;
	RParenTok -> cont 20;
	AndTok -> cont 21;
	OrTok -> cont 22;
	EqTok -> cont 23;
	LessTok -> cont 24;
	GreaterTok -> cont 25;
	LeqTok -> cont 26;
	GeqTok -> cont 27;
	SupTok -> cont 28;
	HearyeTok -> cont 29;
	OiTok -> cont 30;
	IsTok -> cont 31;
	IfzTok -> cont 32;
	ForTok -> cont 33;
	ThenTok -> cont 34;
	ElseTok -> cont 35;
	EolTok -> cont 36;
	FeeTok -> cont 37;
	PieTok -> cont 38;
	PhiTok -> cont 39;
	MoleTok -> cont 40;
	TrueTok -> cont 41;
	FalseTok -> cont 42;
	CommentTok -> cont 43;
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
