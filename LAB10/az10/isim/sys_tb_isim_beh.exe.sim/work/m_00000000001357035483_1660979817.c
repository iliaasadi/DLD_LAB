/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ilck/az10/sys.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {5U, 0U};
static unsigned int ng5[] = {7U, 0U};
static unsigned int ng6[] = {6U, 0U};
static int ng7[] = {2, 0};
static int ng8[] = {1, 0};



static void Always_23_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 4784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 5352);
    *((int *)t2) = 1;
    t3 = (t0 + 4816);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(23, ng0);

LAB5:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 2184U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3384);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(25, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3384);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Always_30_1(char *t0)
{
    char t16[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;

LAB0:    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 5368);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 3384);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 3544);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 3);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3864);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(36, ng0);

LAB18:    xsi_set_current_line(37, ng0);
    t6 = (t0 + 2024U);
    t7 = *((char **)t6);
    t6 = (t7 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB19;

LAB20:
LAB21:    goto LAB17;

LAB9:    xsi_set_current_line(40, ng0);

LAB22:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 2024U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t5 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t3) == 0)
        goto LAB23;

LAB25:    t6 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t6) = 1;

LAB26:    t7 = (t16 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2344U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB30;

LAB31:
LAB32:
LAB29:    goto LAB17;

LAB11:    xsi_set_current_line(50, ng0);

LAB41:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 2024U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t5 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB45;

LAB43:    if (*((unsigned int *)t3) == 0)
        goto LAB42;

LAB44:    t6 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t6) = 1;

LAB45:    t7 = (t16 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2344U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB49;

LAB50:
LAB51:
LAB48:    goto LAB17;

LAB13:    xsi_set_current_line(56, ng0);

LAB52:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 2024U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t5 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t3) == 0)
        goto LAB53;

LAB55:    t6 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t6) = 1;

LAB56:    t7 = (t16 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB57;

LAB58:
LAB59:    goto LAB17;

LAB15:    xsi_set_current_line(60, ng0);

LAB60:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 2024U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t5 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB64;

LAB62:    if (*((unsigned int *)t3) == 0)
        goto LAB61;

LAB63:    t6 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t6) = 1;

LAB64:    t7 = (t16 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB65;

LAB66:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2344U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB68;

LAB69:
LAB70:
LAB67:    goto LAB17;

LAB19:    xsi_set_current_line(38, ng0);
    t14 = ((char*)((ng3)));
    t15 = (t0 + 3544);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 3);
    goto LAB21;

LAB23:    *((unsigned int *)t16) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(42, ng0);
    t14 = ((char*)((ng1)));
    t15 = (t0 + 3544);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 3);
    goto LAB29;

LAB30:    xsi_set_current_line(43, ng0);

LAB33:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 2504U);
    t6 = *((char **)t5);
    t5 = ((char*)((ng4)));
    memset(t16, 0, 8);
    t7 = (t6 + 4);
    t14 = (t5 + 4);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t7);
    t21 = *((unsigned int *)t14);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t24 = *((unsigned int *)t7);
    t25 = *((unsigned int *)t14);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB37;

LAB34:    if (t26 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t16) = 1;

LAB37:    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t16);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB40:    goto LAB32;

LAB36:    t15 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(45, ng0);
    t35 = ((char*)((ng4)));
    t36 = (t0 + 3544);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 3);
    goto LAB40;

LAB42:    *((unsigned int *)t16) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(52, ng0);
    t14 = ((char*)((ng1)));
    t15 = (t0 + 3544);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 3);
    goto LAB48;

LAB49:    xsi_set_current_line(54, ng0);
    t5 = ((char*)((ng6)));
    t6 = (t0 + 3544);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 3);
    goto LAB51;

LAB53:    *((unsigned int *)t16) = 1;
    goto LAB56;

LAB57:    xsi_set_current_line(58, ng0);
    t14 = ((char*)((ng1)));
    t15 = (t0 + 3544);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 3);
    goto LAB59;

LAB61:    *((unsigned int *)t16) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(62, ng0);
    t14 = ((char*)((ng1)));
    t15 = (t0 + 3544);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 3);
    goto LAB67;

LAB68:    xsi_set_current_line(63, ng0);

LAB71:    xsi_set_current_line(64, ng0);
    t5 = (t0 + 2664U);
    t6 = *((char **)t5);
    t5 = ((char*)((ng7)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_mod(t16, 32, t6, 4, t5, 32);
    t7 = ((char*)((ng2)));
    memset(t37, 0, 8);
    t14 = (t16 + 4);
    t15 = (t7 + 4);
    t17 = *((unsigned int *)t16);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t24 = *((unsigned int *)t14);
    t25 = *((unsigned int *)t15);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB75;

LAB72:    if (t26 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t37) = 1;

LAB75:    t35 = (t37 + 4);
    t30 = *((unsigned int *)t35);
    t31 = (~(t30));
    t32 = *((unsigned int *)t37);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3704);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB78:    goto LAB70;

LAB74:    t29 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB75;

LAB76:    xsi_set_current_line(65, ng0);
    t36 = ((char*)((ng8)));
    t38 = (t0 + 3864);
    xsi_vlogvar_assign_value(t38, t36, 0, 0, 1);
    goto LAB78;

}


extern void work_m_00000000001357035483_1660979817_init()
{
	static char *pe[] = {(void *)Always_23_0,(void *)Always_30_1};
	xsi_register_didat("work_m_00000000001357035483_1660979817", "isim/sys_tb_isim_beh.exe.sim/work/m_00000000001357035483_1660979817.didat");
	xsi_register_executes(pe);
}
