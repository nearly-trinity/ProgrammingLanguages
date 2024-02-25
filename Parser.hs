{-# OPTIONS_GHC -w #-}
module Parser where
import Evaluator (Expr(..), Value(..), Op(..), UnaryOp(..))
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
happyExpList = Happy_Data_Array.listArray (0,93) ([41664,1954,10796,49274,41634,53255,1285,0,0,0,49152,41634,11271,31274,41664,1954,10796,122,0,0,0,0,0,0,0,0,0,0,41664,1954,0,0,1119,61440,21,0,0,1472,49152,41634,11271,31274,41664,1954,10796,49274,41634,11271,31274,0,64,0,0,0,0,1,4096,0,256,0,16,49152,5,23552,0,0,49152,41634,61447,133,41664,1954,1520,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Statement","Expr","'integer'","'real'","'+'","'-'","'*'","'/'","'^'","'sqrt'","'%'","'('","')'","'ifz'","'then'","'else'","'ms'","'mr'","'EOL'","'fee'","'pie'","'phi'","'mole'","%eof"]
        bit_start = st Prelude.* 28
        bit_end = (st Prelude.+ 1) Prelude.* 28
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..27]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (22) = happyShift action_10
action_0 (24) = happyShift action_11
action_0 (25) = happyShift action_12
action_0 (26) = happyShift action_13
action_0 (27) = happyShift action_14
action_0 (4) = happyGoto action_15
action_0 (5) = happyGoto action_16
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (10) = happyShift action_6
action_1 (14) = happyShift action_7
action_1 (16) = happyShift action_8
action_1 (18) = happyShift action_9
action_1 (22) = happyShift action_10
action_1 (24) = happyShift action_11
action_1 (25) = happyShift action_12
action_1 (26) = happyShift action_13
action_1 (27) = happyShift action_14
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_4
action_2 (8) = happyShift action_5
action_2 (10) = happyShift action_6
action_2 (14) = happyShift action_7
action_2 (16) = happyShift action_8
action_2 (18) = happyShift action_9
action_2 (22) = happyShift action_10
action_2 (24) = happyShift action_11
action_2 (25) = happyShift action_12
action_2 (26) = happyShift action_13
action_2 (27) = happyShift action_14
action_2 (4) = happyGoto action_17
action_2 (5) = happyGoto action_16
action_2 (6) = happyGoto action_3
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (9) = happyShift action_22
action_3 (10) = happyShift action_23
action_3 (11) = happyShift action_24
action_3 (12) = happyShift action_25
action_3 (13) = happyShift action_26
action_3 (15) = happyShift action_27
action_3 (21) = happyShift action_28
action_3 (23) = happyShift action_29
action_3 _ = happyReduce_5

action_4 _ = happyReduce_7

action_5 _ = happyReduce_8

action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (10) = happyShift action_6
action_6 (14) = happyShift action_7
action_6 (16) = happyShift action_8
action_6 (18) = happyShift action_9
action_6 (22) = happyShift action_10
action_6 (24) = happyShift action_11
action_6 (25) = happyShift action_12
action_6 (26) = happyShift action_13
action_6 (27) = happyShift action_14
action_6 (6) = happyGoto action_21
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (10) = happyShift action_6
action_7 (14) = happyShift action_7
action_7 (16) = happyShift action_8
action_7 (18) = happyShift action_9
action_7 (22) = happyShift action_10
action_7 (24) = happyShift action_11
action_7 (25) = happyShift action_12
action_7 (26) = happyShift action_13
action_7 (27) = happyShift action_14
action_7 (6) = happyGoto action_20
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (10) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (16) = happyShift action_8
action_8 (18) = happyShift action_9
action_8 (22) = happyShift action_10
action_8 (24) = happyShift action_11
action_8 (25) = happyShift action_12
action_8 (26) = happyShift action_13
action_8 (27) = happyShift action_14
action_8 (6) = happyGoto action_19
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (10) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (16) = happyShift action_8
action_9 (18) = happyShift action_9
action_9 (22) = happyShift action_10
action_9 (24) = happyShift action_11
action_9 (25) = happyShift action_12
action_9 (26) = happyShift action_13
action_9 (27) = happyShift action_14
action_9 (6) = happyGoto action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_22

action_11 _ = happyReduce_9

action_12 _ = happyReduce_10

action_13 _ = happyReduce_11

action_14 _ = happyReduce_12

action_15 (28) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (10) = happyShift action_6
action_16 (14) = happyShift action_7
action_16 (16) = happyShift action_8
action_16 (18) = happyShift action_9
action_16 (22) = happyShift action_10
action_16 (24) = happyShift action_11
action_16 (25) = happyShift action_12
action_16 (26) = happyShift action_13
action_16 (27) = happyShift action_14
action_16 (4) = happyGoto action_17
action_16 (5) = happyGoto action_16
action_16 (6) = happyGoto action_3
action_16 _ = happyReduce_2

action_17 _ = happyReduce_1

action_18 (9) = happyShift action_22
action_18 (10) = happyShift action_23
action_18 (11) = happyShift action_24
action_18 (12) = happyShift action_25
action_18 (13) = happyShift action_26
action_18 (15) = happyShift action_27
action_18 (19) = happyShift action_38
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (9) = happyShift action_22
action_19 (10) = happyShift action_23
action_19 (11) = happyShift action_24
action_19 (12) = happyShift action_25
action_19 (13) = happyShift action_26
action_19 (15) = happyShift action_27
action_19 (17) = happyShift action_37
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_20

action_21 (11) = happyShift action_24
action_21 (12) = happyShift action_25
action_21 (13) = happyShift action_26
action_21 (15) = happyShift action_27
action_21 _ = happyReduce_19

action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (10) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (16) = happyShift action_8
action_22 (18) = happyShift action_9
action_22 (22) = happyShift action_10
action_22 (24) = happyShift action_11
action_22 (25) = happyShift action_12
action_22 (26) = happyShift action_13
action_22 (27) = happyShift action_14
action_22 (6) = happyGoto action_36
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (10) = happyShift action_6
action_23 (14) = happyShift action_7
action_23 (16) = happyShift action_8
action_23 (18) = happyShift action_9
action_23 (22) = happyShift action_10
action_23 (24) = happyShift action_11
action_23 (25) = happyShift action_12
action_23 (26) = happyShift action_13
action_23 (27) = happyShift action_14
action_23 (6) = happyGoto action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (10) = happyShift action_6
action_24 (14) = happyShift action_7
action_24 (16) = happyShift action_8
action_24 (18) = happyShift action_9
action_24 (22) = happyShift action_10
action_24 (24) = happyShift action_11
action_24 (25) = happyShift action_12
action_24 (26) = happyShift action_13
action_24 (27) = happyShift action_14
action_24 (6) = happyGoto action_34
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (14) = happyShift action_7
action_25 (16) = happyShift action_8
action_25 (18) = happyShift action_9
action_25 (22) = happyShift action_10
action_25 (24) = happyShift action_11
action_25 (25) = happyShift action_12
action_25 (26) = happyShift action_13
action_25 (27) = happyShift action_14
action_25 (6) = happyGoto action_33
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (10) = happyShift action_6
action_26 (14) = happyShift action_7
action_26 (16) = happyShift action_8
action_26 (18) = happyShift action_9
action_26 (22) = happyShift action_10
action_26 (24) = happyShift action_11
action_26 (25) = happyShift action_12
action_26 (26) = happyShift action_13
action_26 (27) = happyShift action_14
action_26 (6) = happyGoto action_32
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (10) = happyShift action_6
action_27 (14) = happyShift action_7
action_27 (16) = happyShift action_8
action_27 (18) = happyShift action_9
action_27 (22) = happyShift action_10
action_27 (24) = happyShift action_11
action_27 (25) = happyShift action_12
action_27 (26) = happyShift action_13
action_27 (27) = happyShift action_14
action_27 (6) = happyGoto action_31
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (23) = happyShift action_30
action_28 _ = happyReduce_6

action_29 _ = happyReduce_3

action_30 _ = happyReduce_4

action_31 (13) = happyShift action_26
action_31 _ = happyReduce_18

action_32 (13) = happyShift action_26
action_32 _ = happyReduce_17

action_33 (13) = happyShift action_26
action_33 _ = happyReduce_16

action_34 (13) = happyShift action_26
action_34 _ = happyReduce_15

action_35 (11) = happyShift action_24
action_35 (12) = happyShift action_25
action_35 (13) = happyShift action_26
action_35 (15) = happyShift action_27
action_35 _ = happyReduce_14

action_36 (11) = happyShift action_24
action_36 (12) = happyShift action_25
action_36 (13) = happyShift action_26
action_36 (15) = happyShift action_27
action_36 _ = happyReduce_13

action_37 _ = happyReduce_23

action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_5
action_38 (10) = happyShift action_6
action_38 (14) = happyShift action_7
action_38 (16) = happyShift action_8
action_38 (18) = happyShift action_9
action_38 (22) = happyShift action_10
action_38 (24) = happyShift action_11
action_38 (25) = happyShift action_12
action_38 (26) = happyShift action_13
action_38 (27) = happyShift action_14
action_38 (6) = happyGoto action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (9) = happyShift action_22
action_39 (10) = happyShift action_23
action_39 (11) = happyShift action_24
action_39 (12) = happyShift action_25
action_39 (13) = happyShift action_26
action_39 (15) = happyShift action_27
action_39 (20) = happyShift action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (10) = happyShift action_6
action_40 (14) = happyShift action_7
action_40 (16) = happyShift action_8
action_40 (18) = happyShift action_9
action_40 (22) = happyShift action_10
action_40 (24) = happyShift action_11
action_40 (25) = happyShift action_12
action_40 (26) = happyShift action_13
action_40 (27) = happyShift action_14
action_40 (6) = happyGoto action_41
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (9) = happyShift action_22
action_41 (10) = happyShift action_23
action_41 (11) = happyShift action_24
action_41 (12) = happyShift action_25
action_41 (13) = happyShift action_26
action_41 (15) = happyShift action_27
action_41 _ = happyReduce_21

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
		 (StmtExpr happy_var_1
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 _
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (StmtMemStoreExpr happy_var_1
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (StmtExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  5 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (StmtMemStoreExpr happy_var_1
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyTerminal (IntTok happy_var_1))
	 =  HappyAbsSyn6
		 (IntLit happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyTerminal (RealTok happy_var_1))
	 =  HappyAbsSyn6
		 (RealLit happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn6
		 (Const "fee"
	)

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn6
		 (Const "pie"
	)

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn6
		 (Const "phi"
	)

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn6
		 (Const "mole"
	)

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Add happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Sub happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Mul happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Div happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Pow happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (BinOp Mod happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (UnaryOp Negate happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (UnaryOp Sqrt happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 6 6 happyReduction_21
happyReduction_21 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Ifz happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn6
		 (MemRecall
	)

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 28 28 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	IntTok happy_dollar_dollar -> cont 7;
	RealTok happy_dollar_dollar -> cont 8;
	AddTok -> cont 9;
	SubTok -> cont 10;
	MulTok -> cont 11;
	DivTok -> cont 12;
	PowTok -> cont 13;
	SqrtTok -> cont 14;
	ModTok -> cont 15;
	LParenTok -> cont 16;
	RParenTok -> cont 17;
	IfzTok -> cont 18;
	ThenTok -> cont 19;
	ElseTok -> cont 20;
	MsTok -> cont 21;
	MrTok -> cont 22;
	EolTok -> cont 23;
	FeeTok -> cont 24;
	PieTok -> cont 25;
	PhiTok -> cont 26;
	MoleTok -> cont 27;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 28 tk tks = happyError' (tks, explist)
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
