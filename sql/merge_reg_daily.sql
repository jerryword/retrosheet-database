/*
This script will merge the regular season daily EVX, EDX, and EBX tables
in the correct order for accurate counts.
*/

  CREATE TABLE "RS"."REG_DAILY" 
   (	"GAME_ID" VARCHAR2(4000 BYTE), 
	"GAME_DT" DATE, 
	"GAME_CT" VARCHAR2(4000 BYTE), 
	"APPEAR_DT" DATE, 
	"TEAM_ID" VARCHAR2(4000 BYTE), 
	"PLAYER_ID" VARCHAR2(4000 BYTE), 
	"SLOT_CT" NUMBER, 
	"SEQ_CT" NUMBER, 
	"HOME_FL" VARCHAR2(4000 BYTE), 
	"OPPONENT_ID" VARCHAR2(4000 BYTE), 
	"PARK_ID" VARCHAR2(4000 BYTE), 
	"B_G" NUMBER, 
	"B_PA" NUMBER, 
	"B_AB" NUMBER, 
	"B_R" NUMBER, 
	"B_H" NUMBER, 
	"B_TB" NUMBER, 
	"B_2B" NUMBER, 
	"B_3B" NUMBER, 
	"B_HR" NUMBER, 
	"B_HR4" NUMBER, 
	"B_RBI" NUMBER, 
	"B_GW" NUMBER, 
	"B_BB" NUMBER, 
	"B_IBB" NUMBER, 
	"B_SO" NUMBER, 
	"B_GDP" NUMBER, 
	"B_HP" NUMBER, 
	"B_SH" NUMBER, 
	"B_SF" NUMBER, 
	"B_SB" NUMBER, 
	"B_CS" NUMBER, 
	"B_XI" NUMBER, 
	"B_G_DH" NUMBER, 
	"B_G_PH" NUMBER, 
	"B_G_PR" NUMBER, 
	"P_G" NUMBER, 
	"P_GS" NUMBER, 
	"P_CG" NUMBER, 
	"P_SHO" NUMBER, 
	"P_GF" NUMBER, 
	"P_W" NUMBER, 
	"P_L" NUMBER, 
	"P_SV" NUMBER, 
	"P_OUT" NUMBER, 
	"P_TBF" NUMBER, 
	"P_AB" NUMBER, 
	"P_R" NUMBER, 
	"P_ER" NUMBER, 
	"P_H" NUMBER, 
	"P_TB" NUMBER, 
	"P_2B" NUMBER, 
	"P_3B" NUMBER, 
	"P_HR" NUMBER, 
	"P_HR4" NUMBER, 
	"P_BB" NUMBER, 
	"P_IBB" NUMBER, 
	"P_SO" NUMBER, 
	"P_GDP" NUMBER, 
	"P_HP" NUMBER, 
	"P_SH" NUMBER, 
	"P_SF" NUMBER, 
	"P_XI" NUMBER, 
	"P_WP" NUMBER, 
	"P_BK" NUMBER, 
	"P_IR" NUMBER, 
	"P_IRS" NUMBER, 
	"P_GO" NUMBER, 
	"P_AO" NUMBER, 
	"P_PITCH" NUMBER, 
	"P_STRIKE" NUMBER, 
	"F_P_G" NUMBER, 
	"F_P_GS" NUMBER, 
	"F_P_OUT" NUMBER, 
	"F_P_TC" NUMBER, 
	"F_P_PO" NUMBER, 
	"F_P_A" NUMBER, 
	"F_P_E" NUMBER, 
	"F_P_DP" NUMBER, 
	"F_P_TP" NUMBER, 
	"F_C_G" NUMBER, 
	"F_C_GS" NUMBER, 
	"F_C_OUT" NUMBER, 
	"F_C_TC" NUMBER, 
	"F_C_PO" NUMBER, 
	"F_C_A" NUMBER, 
	"F_C_E" NUMBER, 
	"F_C_DP" NUMBER, 
	"F_C_TP" NUMBER, 
	"F_C_PB" NUMBER, 
	"F_C_XI" NUMBER, 
	"F_1B_G" NUMBER, 
	"F_1B_GS" NUMBER, 
	"F_1B_OUT" NUMBER, 
	"F_1B_TC" NUMBER, 
	"F_1B_PO" NUMBER, 
	"F_1B_A" NUMBER, 
	"F_1B_E" NUMBER, 
	"F_1B_DP" NUMBER, 
	"F_1B_TP" NUMBER, 
	"F_2B_G" NUMBER, 
	"F_2B_GS" NUMBER, 
	"F_2B_OUT" NUMBER, 
	"F_2B_TC" NUMBER, 
	"F_2B_PO" NUMBER, 
	"F_2B_A" NUMBER, 
	"F_2B_E" NUMBER, 
	"F_2B_DP" NUMBER, 
	"F_2B_TP" NUMBER, 
	"F_3B_G" NUMBER, 
	"F_3B_GS" NUMBER, 
	"F_3B_OUT" NUMBER, 
	"F_3B_TC" NUMBER, 
	"F_3B_PO" NUMBER, 
	"F_3B_A" NUMBER, 
	"F_3B_E" NUMBER, 
	"F_3B_DP" NUMBER, 
	"F_3B_TP" NUMBER, 
	"F_SS_G" NUMBER, 
	"F_SS_GS" NUMBER, 
	"F_SS_OUT" NUMBER, 
	"F_SS_TC" NUMBER, 
	"F_SS_PO" NUMBER, 
	"F_SS_A" NUMBER, 
	"F_SS_E" NUMBER, 
	"F_SS_DP" NUMBER, 
	"F_SS_TP" NUMBER, 
	"F_LF_G" NUMBER, 
	"F_LF_GS" NUMBER, 
	"F_LF_OUT" NUMBER, 
	"F_LF_TC" NUMBER, 
	"F_LF_PO" NUMBER, 
	"F_LF_A" NUMBER, 
	"F_LF_E" NUMBER, 
	"F_LF_DP" NUMBER, 
	"F_LF_TP" NUMBER, 
	"F_CF_G" NUMBER, 
	"F_CF_GS" NUMBER, 
	"F_CF_OUT" NUMBER, 
	"F_CF_TC" NUMBER, 
	"F_CF_PO" NUMBER, 
	"F_CF_A" NUMBER, 
	"F_CF_E" NUMBER, 
	"F_CF_DP" NUMBER, 
	"F_CF_TP" NUMBER, 
	"F_RF_G" NUMBER, 
	"F_RF_GS" NUMBER, 
	"F_RF_OUT" NUMBER, 
	"F_RF_TC" NUMBER, 
	"F_RF_PO" NUMBER, 
	"F_RF_A" NUMBER, 
	"F_RF_E" NUMBER, 
	"F_RF_DP" NUMBER, 
	"F_RF_TP" NUMBER
   ) 
;

insert into rs.reg_daily (
GAME_ID,
GAME_DT,
GAME_CT,
APPEAR_DT,
TEAM_ID,
PLAYER_ID,
SLOT_CT,
SEQ_CT,
HOME_FL,
OPPONENT_ID,
PARK_ID,
B_G,
B_PA,
B_AB,
B_R,
B_H,
B_TB,
B_2B,
B_3B,
B_HR,
B_HR4,
B_RBI,
B_GW,
B_BB,
B_IBB,
B_SO,
B_GDP,
B_HP,
B_SH,
B_SF,
B_SB,
B_CS,
B_XI,
B_G_DH,
B_G_PH,
B_G_PR,
P_G,
P_GS,
P_CG,
P_SHO,
P_GF,
P_W,
P_L,
P_SV,
P_OUT,
P_TBF,
P_AB,
P_R,
P_ER,
P_H,
P_TB,
P_2B,
P_3B,
P_HR,
P_HR4,
P_BB,
P_IBB,
P_SO,
P_GDP,
P_HP,
P_SH,
P_SF,
P_XI,
P_WP,
P_BK,
P_IR,
P_IRS,
P_GO,
P_AO,
P_PITCH,
P_STRIKE,
F_P_G,
F_P_GS,
F_P_OUT,
F_P_TC,
F_P_PO,
F_P_A,
F_P_E,
F_P_DP,
F_P_TP,
F_C_G,
F_C_GS,
F_C_OUT,
F_C_TC,
F_C_PO,
F_C_A,
F_C_E,
F_C_DP,
F_C_TP,
F_C_PB,
F_C_XI,
F_1B_G,
F_1B_GS,
F_1B_OUT,
F_1B_TC,
F_1B_PO,
F_1B_A,
F_1B_E,
F_1B_DP,
F_1B_TP,
F_2B_G,
F_2B_GS,
F_2B_OUT,
F_2B_TC,
F_2B_PO,
F_2B_A,
F_2B_E,
F_2B_DP,
F_2B_TP,
F_3B_G,
F_3B_GS,
F_3B_OUT,
F_3B_TC,
F_3B_PO,
F_3B_A,
F_3B_E,
F_3B_DP,
F_3B_TP,
F_SS_G,
F_SS_GS,
F_SS_OUT,
F_SS_TC,
F_SS_PO,
F_SS_A,
F_SS_E,
F_SS_DP,
F_SS_TP,
F_LF_G,
F_LF_GS,
F_LF_OUT,
F_LF_TC,
F_LF_PO,
F_LF_A,
F_LF_E,
F_LF_DP,
F_LF_TP,
F_CF_G,
F_CF_GS,
F_CF_OUT,
F_CF_TC,
F_CF_PO,
F_CF_A,
F_CF_E,
F_CF_DP,
F_CF_TP,
F_RF_G,
F_RF_GS,
F_RF_OUT,
F_RF_TC,
F_RF_PO,
F_RF_A,
F_RF_E,
F_RF_DP,
F_RF_TP
)
select
GAME_ID,
to_date(GAME_DT,'yyyymmdd'),
GAME_CT,
to_date(APPEAR_DT,'yyyymmdd'),
TEAM_ID,
PLAYER_ID,
SLOT_CT,
SEQ_CT,
HOME_FL,
OPPONENT_ID,
PARK_ID,
B_G,
B_PA,
B_AB,
B_R,
B_H,
B_TB,
B_2B,
B_3B,
B_HR,
B_HR4,
B_RBI,
B_GW,
B_BB,
B_IBB,
B_SO,
B_GDP,
B_HP,
B_SH,
B_SF,
B_SB,
B_CS,
B_XI,
B_G_DH,
B_G_PH,
B_G_PR,
P_G,
P_GS,
P_CG,
P_SHO,
P_GF,
P_W,
P_L,
P_SV,
P_OUT,
P_TBF,
P_AB,
P_R,
P_ER,
P_H,
P_TB,
P_2B,
P_3B,
P_HR,
P_HR4,
P_BB,
P_IBB,
P_SO,
P_GDP,
P_HP,
P_SH,
P_SF,
P_XI,
P_WP,
P_BK,
P_IR,
P_IRS,
P_GO,
P_AO,
P_PITCH,
P_STRIKE,
F_P_G,
F_P_GS,
F_P_OUT,
F_P_TC,
F_P_PO,
F_P_A,
F_P_E,
F_P_DP,
F_P_TP,
F_C_G,
F_C_GS,
F_C_OUT,
F_C_TC,
F_C_PO,
F_C_A,
F_C_E,
F_C_DP,
F_C_TP,
F_C_PB,
F_C_XI,
F_1B_G,
F_1B_GS,
F_1B_OUT,
F_1B_TC,
F_1B_PO,
F_1B_A,
F_1B_E,
F_1B_DP,
F_1B_TP,
F_2B_G,
F_2B_GS,
F_2B_OUT,
F_2B_TC,
F_2B_PO,
F_2B_A,
F_2B_E,
F_2B_DP,
F_2B_TP,
F_3B_G,
F_3B_GS,
F_3B_OUT,
F_3B_TC,
F_3B_PO,
F_3B_A,
F_3B_E,
F_3B_DP,
F_3B_TP,
F_SS_G,
F_SS_GS,
F_SS_OUT,
F_SS_TC,
F_SS_PO,
F_SS_A,
F_SS_E,
F_SS_DP,
F_SS_TP,
F_LF_G,
F_LF_GS,
F_LF_OUT,
F_LF_TC,
F_LF_PO,
F_LF_A,
F_LF_E,
F_LF_DP,
F_LF_TP,
F_CF_G,
F_CF_GS,
F_CF_OUT,
F_CF_TC,
F_CF_PO,
F_CF_A,
F_CF_E,
F_CF_DP,
F_CF_TP,
F_RF_G,
F_RF_GS,
F_RF_OUT,
F_RF_TC,
F_RF_PO,
F_RF_A,
F_RF_E,
F_RF_DP,
F_RF_TP
from xt_reg_daily_evx
;

merge into rs.reg_daily d
using rs.xt_reg_daily_edx edx
on (d.game_id = edx.game_id
    and d.game_ct = edx.game_ct
    and d.player_id = edx.player_id
    and d.slot_ct = edx.slot_ct
    and d.seq_ct = edx.seq_ct
)
when not matched then insert
(
GAME_ID,
GAME_DT,
GAME_CT,
APPEAR_DT,
TEAM_ID,
PLAYER_ID,
SLOT_CT,
SEQ_CT,
HOME_FL,
OPPONENT_ID,
PARK_ID,
B_G,
B_PA,
B_AB,
B_R,
B_H,
B_TB,
B_2B,
B_3B,
B_HR,
B_HR4,
B_RBI,
B_GW,
B_BB,
B_IBB,
B_SO,
B_GDP,
B_HP,
B_SH,
B_SF,
B_SB,
B_CS,
B_XI,
B_G_DH,
B_G_PH,
B_G_PR,
P_G,
P_GS,
P_CG,
P_SHO,
P_GF,
P_W,
P_L,
P_SV,
P_OUT,
P_TBF,
P_AB,
P_R,
P_ER,
P_H,
P_TB,
P_2B,
P_3B,
P_HR,
P_HR4,
P_BB,
P_IBB,
P_SO,
P_GDP,
P_HP,
P_SH,
P_SF,
P_XI,
P_WP,
P_BK,
P_IR,
P_IRS,
P_GO,
P_AO,
P_PITCH,
P_STRIKE,
F_P_G,
F_P_GS,
F_P_OUT,
F_P_TC,
F_P_PO,
F_P_A,
F_P_E,
F_P_DP,
F_P_TP,
F_C_G,
F_C_GS,
F_C_OUT,
F_C_TC,
F_C_PO,
F_C_A,
F_C_E,
F_C_DP,
F_C_TP,
F_C_PB,
F_C_XI,
F_1B_G,
F_1B_GS,
F_1B_OUT,
F_1B_TC,
F_1B_PO,
F_1B_A,
F_1B_E,
F_1B_DP,
F_1B_TP,
F_2B_G,
F_2B_GS,
F_2B_OUT,
F_2B_TC,
F_2B_PO,
F_2B_A,
F_2B_E,
F_2B_DP,
F_2B_TP,
F_3B_G,
F_3B_GS,
F_3B_OUT,
F_3B_TC,
F_3B_PO,
F_3B_A,
F_3B_E,
F_3B_DP,
F_3B_TP,
F_SS_G,
F_SS_GS,
F_SS_OUT,
F_SS_TC,
F_SS_PO,
F_SS_A,
F_SS_E,
F_SS_DP,
F_SS_TP,
F_LF_G,
F_LF_GS,
F_LF_OUT,
F_LF_TC,
F_LF_PO,
F_LF_A,
F_LF_E,
F_LF_DP,
F_LF_TP,
F_CF_G,
F_CF_GS,
F_CF_OUT,
F_CF_TC,
F_CF_PO,
F_CF_A,
F_CF_E,
F_CF_DP,
F_CF_TP,
F_RF_G,
F_RF_GS,
F_RF_OUT,
F_RF_TC,
F_RF_PO,
F_RF_A,
F_RF_E,
F_RF_DP,
F_RF_TP
)
values
(
edx.GAME_ID,
to_date(edx.GAME_DT,'yyyymmdd'),
edx.GAME_CT,
to_date(edx.APPEAR_DT,'yyyymmdd'),
edx.TEAM_ID,
edx.PLAYER_ID,
edx.SLOT_CT,
edx.SEQ_CT,
edx.HOME_FL,
edx.OPPONENT_ID,
edx.PARK_ID,
edx.B_G,
edx.B_PA,
edx.B_AB,
edx.B_R,
edx.B_H,
edx.B_TB,
edx.B_2B,
edx.B_3B,
edx.B_HR,
edx.B_HR4,
edx.B_RBI,
edx.B_GW,
edx.B_BB,
edx.B_IBB,
edx.B_SO,
edx.B_GDP,
edx.B_HP,
edx.B_SH,
edx.B_SF,
edx.B_SB,
edx.B_CS,
edx.B_XI,
edx.B_G_DH,
edx.B_G_PH,
edx.B_G_PR,
edx.P_G,
edx.P_GS,
edx.P_CG,
edx.P_SHO,
edx.P_GF,
edx.P_W,
edx.P_L,
edx.P_SV,
edx.P_OUT,
edx.P_TBF,
edx.P_AB,
edx.P_R,
edx.P_ER,
edx.P_H,
edx.P_TB,
edx.P_2B,
edx.P_3B,
edx.P_HR,
edx.P_HR4,
edx.P_BB,
edx.P_IBB,
edx.P_SO,
edx.P_GDP,
edx.P_HP,
edx.P_SH,
edx.P_SF,
edx.P_XI,
edx.P_WP,
edx.P_BK,
edx.P_IR,
edx.P_IRS,
edx.P_GO,
edx.P_AO,
edx.P_PITCH,
edx.P_STRIKE,
edx.F_P_G,
edx.F_P_GS,
edx.F_P_OUT,
edx.F_P_TC,
edx.F_P_PO,
edx.F_P_A,
edx.F_P_E,
edx.F_P_DP,
edx.F_P_TP,
edx.F_C_G,
edx.F_C_GS,
edx.F_C_OUT,
edx.F_C_TC,
edx.F_C_PO,
edx.F_C_A,
edx.F_C_E,
edx.F_C_DP,
edx.F_C_TP,
edx.F_C_PB,
edx.F_C_XI,
edx.F_1B_G,
edx.F_1B_GS,
edx.F_1B_OUT,
edx.F_1B_TC,
edx.F_1B_PO,
edx.F_1B_A,
edx.F_1B_E,
edx.F_1B_DP,
edx.F_1B_TP,
edx.F_2B_G,
edx.F_2B_GS,
edx.F_2B_OUT,
edx.F_2B_TC,
edx.F_2B_PO,
edx.F_2B_A,
edx.F_2B_E,
edx.F_2B_DP,
edx.F_2B_TP,
edx.F_3B_G,
edx.F_3B_GS,
edx.F_3B_OUT,
edx.F_3B_TC,
edx.F_3B_PO,
edx.F_3B_A,
edx.F_3B_E,
edx.F_3B_DP,
edx.F_3B_TP,
edx.F_SS_G,
edx.F_SS_GS,
edx.F_SS_OUT,
edx.F_SS_TC,
edx.F_SS_PO,
edx.F_SS_A,
edx.F_SS_E,
edx.F_SS_DP,
edx.F_SS_TP,
edx.F_LF_G,
edx.F_LF_GS,
edx.F_LF_OUT,
edx.F_LF_TC,
edx.F_LF_PO,
edx.F_LF_A,
edx.F_LF_E,
edx.F_LF_DP,
edx.F_LF_TP,
edx.F_CF_G,
edx.F_CF_GS,
edx.F_CF_OUT,
edx.F_CF_TC,
edx.F_CF_PO,
edx.F_CF_A,
edx.F_CF_E,
edx.F_CF_DP,
edx.F_CF_TP,
edx.F_RF_G,
edx.F_RF_GS,
edx.F_RF_OUT,
edx.F_RF_TC,
edx.F_RF_PO,
edx.F_RF_A,
edx.F_RF_E,
edx.F_RF_DP,
edx.F_RF_TP
);

merge into rs.reg_daily d
using rs.xt_reg_daily_ebx ebx
on (d.game_id = ebx.game_id
    and d.game_ct = ebx.game_ct
    and d.player_id = ebx.player_id
    and d.slot_ct = ebx.slot_ct
    and d.seq_ct = ebx.seq_ct)
when not matched then insert
(
GAME_ID,
GAME_DT,
GAME_CT,
APPEAR_DT,
TEAM_ID,
PLAYER_ID,
SLOT_CT,
SEQ_CT,
HOME_FL,
OPPONENT_ID,
PARK_ID,
B_G,
B_PA,
B_AB,
B_R,
B_H,
B_TB,
B_2B,
B_3B,
B_HR,
B_HR4,
B_RBI,
B_GW,
B_BB,
B_IBB,
B_SO,
B_GDP,
B_HP,
B_SH,
B_SF,
B_SB,
B_CS,
B_XI,
B_G_DH,
B_G_PH,
B_G_PR,
P_G,
P_GS,
P_CG,
P_SHO,
P_GF,
P_W,
P_L,
P_SV,
P_OUT,
P_TBF,
P_AB,
P_R,
P_ER,
P_H,
P_TB,
P_2B,
P_3B,
P_HR,
P_HR4,
P_BB,
P_IBB,
P_SO,
P_GDP,
P_HP,
P_SH,
P_SF,
P_XI,
P_WP,
P_BK,
P_IR,
P_IRS,
P_GO,
P_AO,
P_PITCH,
P_STRIKE,
F_P_G,
F_P_GS,
F_P_OUT,
F_P_TC,
F_P_PO,
F_P_A,
F_P_E,
F_P_DP,
F_P_TP,
F_C_G,
F_C_GS,
F_C_OUT,
F_C_TC,
F_C_PO,
F_C_A,
F_C_E,
F_C_DP,
F_C_TP,
F_C_PB,
F_C_XI,
F_1B_G,
F_1B_GS,
F_1B_OUT,
F_1B_TC,
F_1B_PO,
F_1B_A,
F_1B_E,
F_1B_DP,
F_1B_TP,
F_2B_G,
F_2B_GS,
F_2B_OUT,
F_2B_TC,
F_2B_PO,
F_2B_A,
F_2B_E,
F_2B_DP,
F_2B_TP,
F_3B_G,
F_3B_GS,
F_3B_OUT,
F_3B_TC,
F_3B_PO,
F_3B_A,
F_3B_E,
F_3B_DP,
F_3B_TP,
F_SS_G,
F_SS_GS,
F_SS_OUT,
F_SS_TC,
F_SS_PO,
F_SS_A,
F_SS_E,
F_SS_DP,
F_SS_TP,
F_LF_G,
F_LF_GS,
F_LF_OUT,
F_LF_TC,
F_LF_PO,
F_LF_A,
F_LF_E,
F_LF_DP,
F_LF_TP,
F_CF_G,
F_CF_GS,
F_CF_OUT,
F_CF_TC,
F_CF_PO,
F_CF_A,
F_CF_E,
F_CF_DP,
F_CF_TP,
F_RF_G,
F_RF_GS,
F_RF_OUT,
F_RF_TC,
F_RF_PO,
F_RF_A,
F_RF_E,
F_RF_DP,
F_RF_TP
)
values
(
ebx.GAME_ID,
to_date(ebx.GAME_DT,'yyyymmdd'),
ebx.GAME_CT,
to_date(ebx.APPEAR_DT,'yyyymmdd'),
ebx.TEAM_ID,
ebx.PLAYER_ID,
ebx.SLOT_CT,
ebx.SEQ_CT,
ebx.HOME_FL,
ebx.OPPONENT_ID,
ebx.PARK_ID,
ebx.B_G,
ebx.B_PA,
ebx.B_AB,
ebx.B_R,
ebx.B_H,
ebx.B_TB,
ebx.B_2B,
ebx.B_3B,
ebx.B_HR,
ebx.B_HR4,
ebx.B_RBI,
ebx.B_GW,
ebx.B_BB,
ebx.B_IBB,
ebx.B_SO,
ebx.B_GDP,
ebx.B_HP,
ebx.B_SH,
ebx.B_SF,
ebx.B_SB,
ebx.B_CS,
ebx.B_XI,
ebx.B_G_DH,
ebx.B_G_PH,
ebx.B_G_PR,
ebx.P_G,
ebx.P_GS,
ebx.P_CG,
ebx.P_SHO,
ebx.P_GF,
ebx.P_W,
ebx.P_L,
ebx.P_SV,
ebx.P_OUT,
ebx.P_TBF,
ebx.P_AB,
ebx.P_R,
ebx.P_ER,
ebx.P_H,
ebx.P_TB,
ebx.P_2B,
ebx.P_3B,
ebx.P_HR,
ebx.P_HR4,
ebx.P_BB,
ebx.P_IBB,
ebx.P_SO,
ebx.P_GDP,
ebx.P_HP,
ebx.P_SH,
ebx.P_SF,
ebx.P_XI,
ebx.P_WP,
ebx.P_BK,
ebx.P_IR,
ebx.P_IRS,
ebx.P_GO,
ebx.P_AO,
ebx.P_PITCH,
ebx.P_STRIKE,
ebx.F_P_G,
ebx.F_P_GS,
ebx.F_P_OUT,
ebx.F_P_TC,
ebx.F_P_PO,
ebx.F_P_A,
ebx.F_P_E,
ebx.F_P_DP,
ebx.F_P_TP,
ebx.F_C_G,
ebx.F_C_GS,
ebx.F_C_OUT,
ebx.F_C_TC,
ebx.F_C_PO,
ebx.F_C_A,
ebx.F_C_E,
ebx.F_C_DP,
ebx.F_C_TP,
ebx.F_C_PB,
ebx.F_C_XI,
ebx.F_1B_G,
ebx.F_1B_GS,
ebx.F_1B_OUT,
ebx.F_1B_TC,
ebx.F_1B_PO,
ebx.F_1B_A,
ebx.F_1B_E,
ebx.F_1B_DP,
ebx.F_1B_TP,
ebx.F_2B_G,
ebx.F_2B_GS,
ebx.F_2B_OUT,
ebx.F_2B_TC,
ebx.F_2B_PO,
ebx.F_2B_A,
ebx.F_2B_E,
ebx.F_2B_DP,
ebx.F_2B_TP,
ebx.F_3B_G,
ebx.F_3B_GS,
ebx.F_3B_OUT,
ebx.F_3B_TC,
ebx.F_3B_PO,
ebx.F_3B_A,
ebx.F_3B_E,
ebx.F_3B_DP,
ebx.F_3B_TP,
ebx.F_SS_G,
ebx.F_SS_GS,
ebx.F_SS_OUT,
ebx.F_SS_TC,
ebx.F_SS_PO,
ebx.F_SS_A,
ebx.F_SS_E,
ebx.F_SS_DP,
ebx.F_SS_TP,
ebx.F_LF_G,
ebx.F_LF_GS,
ebx.F_LF_OUT,
ebx.F_LF_TC,
ebx.F_LF_PO,
ebx.F_LF_A,
ebx.F_LF_E,
ebx.F_LF_DP,
ebx.F_LF_TP,
ebx.F_CF_G,
ebx.F_CF_GS,
ebx.F_CF_OUT,
ebx.F_CF_TC,
ebx.F_CF_PO,
ebx.F_CF_A,
ebx.F_CF_E,
ebx.F_CF_DP,
ebx.F_CF_TP,
ebx.F_RF_G,
ebx.F_RF_GS,
ebx.F_RF_OUT,
ebx.F_RF_TC,
ebx.F_RF_PO,
ebx.F_RF_A,
ebx.F_RF_E,
ebx.F_RF_DP,
ebx.F_RF_TP
);

commit;

