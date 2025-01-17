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
static const char *ng0 = "D:/ilck/seq91/seq91/seq9/BCDcounter.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {127U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {91U, 0U};
static unsigned int ng6[] = {79U, 0U};
static unsigned int ng7[] = {102U, 0U};
static unsigned int ng8[] = {109U, 0U};
static unsigned int ng9[] = {125U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {1U, 0U};



static void Always_8_0(char *t0)
{
    char t6[8];
    char t24[8];
    char t40[8];
    char t74[8];
    char t90[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    int t64;
    int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    int t114;
    int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t129;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(8, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(9, ng0);

LAB5:    xsi_set_current_line(10, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t0 + 1208U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng1)));
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t26 = (t22 + 4);
    t27 = *((unsigned int *)t23);
    t28 = *((unsigned int *)t22);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t25);
    t31 = *((unsigned int *)t26);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t25);
    t35 = *((unsigned int *)t26);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB13;

LAB10:    if (t36 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t24) = 1;

LAB13:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t44 = (t6 + 4);
    t45 = (t24 + 4);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t44);
    t48 = *((unsigned int *)t45);
    t49 = (t47 | t48);
    *((unsigned int *)t46) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB14;

LAB15:
LAB16:    t72 = (t0 + 1368U);
    t73 = *((char **)t72);
    t72 = ((char*)((ng1)));
    memset(t74, 0, 8);
    t75 = (t73 + 4);
    t76 = (t72 + 4);
    t77 = *((unsigned int *)t73);
    t78 = *((unsigned int *)t72);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t75);
    t81 = *((unsigned int *)t76);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB20;

LAB17:    if (t86 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t74) = 1;

LAB20:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t94 = (t40 + 4);
    t95 = (t74 + 4);
    t96 = (t90 + 4);
    t97 = *((unsigned int *)t94);
    t98 = *((unsigned int *)t95);
    t99 = (t97 | t98);
    *((unsigned int *)t96) = t99;
    t100 = *((unsigned int *)t96);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB21;

LAB22:
LAB23:    t122 = (t90 + 4);
    t123 = *((unsigned int *)t122);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(12, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB30;

LAB27:    if (t18 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t6) = 1;

LAB30:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t8 = ((char*)((ng1)));
    memset(t24, 0, 8);
    t22 = (t21 + 4);
    t23 = (t8 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t8);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t23);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t23);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB34;

LAB31:    if (t36 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t24) = 1;

LAB34:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t26 = (t6 + 4);
    t39 = (t24 + 4);
    t44 = (t40 + 4);
    t47 = *((unsigned int *)t26);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t44);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB35;

LAB36:
LAB37:    t54 = (t0 + 1368U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng1)));
    memset(t74, 0, 8);
    t72 = (t55 + 4);
    t73 = (t54 + 4);
    t77 = *((unsigned int *)t55);
    t78 = *((unsigned int *)t54);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t72);
    t81 = *((unsigned int *)t73);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t73);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB41;

LAB38:    if (t86 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t74) = 1;

LAB41:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t76 = (t40 + 4);
    t89 = (t74 + 4);
    t94 = (t90 + 4);
    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t89);
    t99 = (t97 | t98);
    *((unsigned int *)t94) = t99;
    t100 = *((unsigned int *)t94);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB42;

LAB43:
LAB44:    t104 = (t90 + 4);
    t123 = *((unsigned int *)t104);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB51;

LAB48:    if (t18 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t6) = 1;

LAB51:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t8 = ((char*)((ng3)));
    memset(t24, 0, 8);
    t22 = (t21 + 4);
    t23 = (t8 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t8);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t23);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t23);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB55;

LAB52:    if (t36 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t24) = 1;

LAB55:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t26 = (t6 + 4);
    t39 = (t24 + 4);
    t44 = (t40 + 4);
    t47 = *((unsigned int *)t26);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t44);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB56;

LAB57:
LAB58:    t54 = (t0 + 1368U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng1)));
    memset(t74, 0, 8);
    t72 = (t55 + 4);
    t73 = (t54 + 4);
    t77 = *((unsigned int *)t55);
    t78 = *((unsigned int *)t54);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t72);
    t81 = *((unsigned int *)t73);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t73);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB62;

LAB59:    if (t86 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t74) = 1;

LAB62:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t76 = (t40 + 4);
    t89 = (t74 + 4);
    t94 = (t90 + 4);
    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t89);
    t99 = (t97 | t98);
    *((unsigned int *)t94) = t99;
    t100 = *((unsigned int *)t94);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB63;

LAB64:
LAB65:    t104 = (t90 + 4);
    t123 = *((unsigned int *)t104);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB66;

LAB67:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB72;

LAB69:    if (t18 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t6) = 1;

LAB72:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t8 = ((char*)((ng3)));
    memset(t24, 0, 8);
    t22 = (t21 + 4);
    t23 = (t8 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t8);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t23);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t23);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB76;

LAB73:    if (t36 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t24) = 1;

LAB76:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t26 = (t6 + 4);
    t39 = (t24 + 4);
    t44 = (t40 + 4);
    t47 = *((unsigned int *)t26);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t44);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB77;

LAB78:
LAB79:    t54 = (t0 + 1368U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng1)));
    memset(t74, 0, 8);
    t72 = (t55 + 4);
    t73 = (t54 + 4);
    t77 = *((unsigned int *)t55);
    t78 = *((unsigned int *)t54);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t72);
    t81 = *((unsigned int *)t73);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t73);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB83;

LAB80:    if (t86 != 0)
        goto LAB82;

LAB81:    *((unsigned int *)t74) = 1;

LAB83:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t76 = (t40 + 4);
    t89 = (t74 + 4);
    t94 = (t90 + 4);
    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t89);
    t99 = (t97 | t98);
    *((unsigned int *)t94) = t99;
    t100 = *((unsigned int *)t94);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB84;

LAB85:
LAB86:    t104 = (t90 + 4);
    t123 = *((unsigned int *)t104);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB87;

LAB88:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB93;

LAB90:    if (t18 != 0)
        goto LAB92;

LAB91:    *((unsigned int *)t6) = 1;

LAB93:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t8 = ((char*)((ng1)));
    memset(t24, 0, 8);
    t22 = (t21 + 4);
    t23 = (t8 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t8);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t23);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t23);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB97;

LAB94:    if (t36 != 0)
        goto LAB96;

LAB95:    *((unsigned int *)t24) = 1;

LAB97:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t26 = (t6 + 4);
    t39 = (t24 + 4);
    t44 = (t40 + 4);
    t47 = *((unsigned int *)t26);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t44);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB98;

LAB99:
LAB100:    t54 = (t0 + 1368U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng3)));
    memset(t74, 0, 8);
    t72 = (t55 + 4);
    t73 = (t54 + 4);
    t77 = *((unsigned int *)t55);
    t78 = *((unsigned int *)t54);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t72);
    t81 = *((unsigned int *)t73);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t73);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB104;

LAB101:    if (t86 != 0)
        goto LAB103;

LAB102:    *((unsigned int *)t74) = 1;

LAB104:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t76 = (t40 + 4);
    t89 = (t74 + 4);
    t94 = (t90 + 4);
    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t89);
    t99 = (t97 | t98);
    *((unsigned int *)t94) = t99;
    t100 = *((unsigned int *)t94);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB105;

LAB106:
LAB107:    t104 = (t90 + 4);
    t123 = *((unsigned int *)t104);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB108;

LAB109:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB114;

LAB111:    if (t18 != 0)
        goto LAB113;

LAB112:    *((unsigned int *)t6) = 1;

LAB114:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t8 = ((char*)((ng1)));
    memset(t24, 0, 8);
    t22 = (t21 + 4);
    t23 = (t8 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t8);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t23);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t23);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB118;

LAB115:    if (t36 != 0)
        goto LAB117;

LAB116:    *((unsigned int *)t24) = 1;

LAB118:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t26 = (t6 + 4);
    t39 = (t24 + 4);
    t44 = (t40 + 4);
    t47 = *((unsigned int *)t26);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t44);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB119;

LAB120:
LAB121:    t54 = (t0 + 1368U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng3)));
    memset(t74, 0, 8);
    t72 = (t55 + 4);
    t73 = (t54 + 4);
    t77 = *((unsigned int *)t55);
    t78 = *((unsigned int *)t54);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t72);
    t81 = *((unsigned int *)t73);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t73);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB125;

LAB122:    if (t86 != 0)
        goto LAB124;

LAB123:    *((unsigned int *)t74) = 1;

LAB125:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t76 = (t40 + 4);
    t89 = (t74 + 4);
    t94 = (t90 + 4);
    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t89);
    t99 = (t97 | t98);
    *((unsigned int *)t94) = t99;
    t100 = *((unsigned int *)t94);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB126;

LAB127:
LAB128:    t104 = (t90 + 4);
    t123 = *((unsigned int *)t104);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB129;

LAB130:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB135;

LAB132:    if (t18 != 0)
        goto LAB134;

LAB133:    *((unsigned int *)t6) = 1;

LAB135:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t8 = ((char*)((ng3)));
    memset(t24, 0, 8);
    t22 = (t21 + 4);
    t23 = (t8 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t8);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t23);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t23);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB139;

LAB136:    if (t36 != 0)
        goto LAB138;

LAB137:    *((unsigned int *)t24) = 1;

LAB139:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t26 = (t6 + 4);
    t39 = (t24 + 4);
    t44 = (t40 + 4);
    t47 = *((unsigned int *)t26);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t44);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB140;

LAB141:
LAB142:    t54 = (t0 + 1368U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng3)));
    memset(t74, 0, 8);
    t72 = (t55 + 4);
    t73 = (t54 + 4);
    t77 = *((unsigned int *)t55);
    t78 = *((unsigned int *)t54);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t72);
    t81 = *((unsigned int *)t73);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t73);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB146;

LAB143:    if (t86 != 0)
        goto LAB145;

LAB144:    *((unsigned int *)t74) = 1;

LAB146:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t76 = (t40 + 4);
    t89 = (t74 + 4);
    t94 = (t90 + 4);
    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t89);
    t99 = (t97 | t98);
    *((unsigned int *)t94) = t99;
    t100 = *((unsigned int *)t94);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB147;

LAB148:
LAB149:    t104 = (t90 + 4);
    t123 = *((unsigned int *)t104);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB150;

LAB151:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB156;

LAB153:    if (t18 != 0)
        goto LAB155;

LAB154:    *((unsigned int *)t6) = 1;

LAB156:    t8 = (t0 + 1208U);
    t21 = *((char **)t8);
    t8 = ((char*)((ng3)));
    memset(t24, 0, 8);
    t22 = (t21 + 4);
    t23 = (t8 + 4);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t8);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t22);
    t31 = *((unsigned int *)t23);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t23);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB160;

LAB157:    if (t36 != 0)
        goto LAB159;

LAB158:    *((unsigned int *)t24) = 1;

LAB160:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t26 = (t6 + 4);
    t39 = (t24 + 4);
    t44 = (t40 + 4);
    t47 = *((unsigned int *)t26);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t44);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB161;

LAB162:
LAB163:    t54 = (t0 + 1368U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng3)));
    memset(t74, 0, 8);
    t72 = (t55 + 4);
    t73 = (t54 + 4);
    t77 = *((unsigned int *)t55);
    t78 = *((unsigned int *)t54);
    t79 = (t77 ^ t78);
    t80 = *((unsigned int *)t72);
    t81 = *((unsigned int *)t73);
    t82 = (t80 ^ t81);
    t83 = (t79 | t82);
    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t73);
    t86 = (t84 | t85);
    t87 = (~(t86));
    t88 = (t83 & t87);
    if (t88 != 0)
        goto LAB167;

LAB164:    if (t86 != 0)
        goto LAB166;

LAB165:    *((unsigned int *)t74) = 1;

LAB167:    t91 = *((unsigned int *)t40);
    t92 = *((unsigned int *)t74);
    t93 = (t91 & t92);
    *((unsigned int *)t90) = t93;
    t76 = (t40 + 4);
    t89 = (t74 + 4);
    t94 = (t90 + 4);
    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t89);
    t99 = (t97 | t98);
    *((unsigned int *)t94) = t99;
    t100 = *((unsigned int *)t94);
    t101 = (t100 != 0);
    if (t101 == 1)
        goto LAB168;

LAB169:
LAB170:    t104 = (t90 + 4);
    t123 = *((unsigned int *)t104);
    t124 = (~(t123));
    t125 = *((unsigned int *)t90);
    t126 = (t125 & t124);
    t127 = (t126 != 0);
    if (t127 > 0)
        goto LAB171;

LAB172:
LAB173:
LAB152:
LAB131:
LAB110:
LAB89:
LAB68:
LAB47:
LAB26:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB12:    t39 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB13;

LAB14:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t40) = (t52 | t53);
    t54 = (t6 + 4);
    t55 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t54);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t55);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t68 & t66);
    t69 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB16;

LAB19:    t89 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t89) = 1;
    goto LAB20;

LAB21:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t96);
    *((unsigned int *)t90) = (t102 | t103);
    t104 = (t40 + 4);
    t105 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t104);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t105);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t118 & t116);
    t119 = *((unsigned int *)t96);
    *((unsigned int *)t96) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB23;

LAB24:    xsi_set_current_line(11, ng0);
    t128 = ((char*)((ng2)));
    t129 = (t0 + 1928);
    xsi_vlogvar_assign_value(t129, t128, 0, 0, 8);
    goto LAB26;

LAB29:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB30;

LAB33:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB34;

LAB35:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t44);
    *((unsigned int *)t40) = (t52 | t53);
    t45 = (t6 + 4);
    t46 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t45);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t46);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB37;

LAB40:    t75 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB41;

LAB42:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t90) = (t102 | t103);
    t95 = (t40 + 4);
    t96 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t95);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t96);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t118 & t116);
    t119 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB44;

LAB45:    xsi_set_current_line(13, ng0);
    t105 = ((char*)((ng4)));
    t122 = (t0 + 1928);
    xsi_vlogvar_assign_value(t122, t105, 0, 0, 8);
    goto LAB47;

LAB50:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB51;

LAB54:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB55;

LAB56:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t44);
    *((unsigned int *)t40) = (t52 | t53);
    t45 = (t6 + 4);
    t46 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t45);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t46);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB58;

LAB61:    t75 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB62;

LAB63:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t90) = (t102 | t103);
    t95 = (t40 + 4);
    t96 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t95);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t96);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t118 & t116);
    t119 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB65;

LAB66:    xsi_set_current_line(15, ng0);
    t105 = ((char*)((ng5)));
    t122 = (t0 + 1928);
    xsi_vlogvar_assign_value(t122, t105, 0, 0, 8);
    goto LAB68;

LAB71:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB72;

LAB75:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB76;

LAB77:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t44);
    *((unsigned int *)t40) = (t52 | t53);
    t45 = (t6 + 4);
    t46 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t45);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t46);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB79;

LAB82:    t75 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB83;

LAB84:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t90) = (t102 | t103);
    t95 = (t40 + 4);
    t96 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t95);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t96);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t118 & t116);
    t119 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB86;

LAB87:    xsi_set_current_line(17, ng0);
    t105 = ((char*)((ng6)));
    t122 = (t0 + 1928);
    xsi_vlogvar_assign_value(t122, t105, 0, 0, 8);
    goto LAB89;

LAB92:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB93;

LAB96:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB97;

LAB98:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t44);
    *((unsigned int *)t40) = (t52 | t53);
    t45 = (t6 + 4);
    t46 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t45);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t46);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB100;

LAB103:    t75 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB104;

LAB105:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t90) = (t102 | t103);
    t95 = (t40 + 4);
    t96 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t95);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t96);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t118 & t116);
    t119 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB107;

LAB108:    xsi_set_current_line(19, ng0);
    t105 = ((char*)((ng7)));
    t122 = (t0 + 1928);
    xsi_vlogvar_assign_value(t122, t105, 0, 0, 8);
    goto LAB110;

LAB113:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB114;

LAB117:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB118;

LAB119:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t44);
    *((unsigned int *)t40) = (t52 | t53);
    t45 = (t6 + 4);
    t46 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t45);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t46);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB121;

LAB124:    t75 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB125;

LAB126:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t90) = (t102 | t103);
    t95 = (t40 + 4);
    t96 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t95);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t96);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t118 & t116);
    t119 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB128;

LAB129:    xsi_set_current_line(21, ng0);
    t105 = ((char*)((ng8)));
    t122 = (t0 + 1928);
    xsi_vlogvar_assign_value(t122, t105, 0, 0, 8);
    goto LAB131;

LAB134:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB135;

LAB138:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB139;

LAB140:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t44);
    *((unsigned int *)t40) = (t52 | t53);
    t45 = (t6 + 4);
    t46 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t45);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t46);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB142;

LAB145:    t75 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB146;

LAB147:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t90) = (t102 | t103);
    t95 = (t40 + 4);
    t96 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t95);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t96);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t118 & t116);
    t119 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB149;

LAB150:    xsi_set_current_line(23, ng0);
    t105 = ((char*)((ng9)));
    t122 = (t0 + 1928);
    xsi_vlogvar_assign_value(t122, t105, 0, 0, 8);
    goto LAB152;

LAB155:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB156;

LAB159:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB160;

LAB161:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t44);
    *((unsigned int *)t40) = (t52 | t53);
    t45 = (t6 + 4);
    t46 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t45);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t46);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t68 & t66);
    t69 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB163;

LAB166:    t75 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB167;

LAB168:    t102 = *((unsigned int *)t90);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t90) = (t102 | t103);
    t95 = (t40 + 4);
    t96 = (t74 + 4);
    t106 = *((unsigned int *)t40);
    t107 = (~(t106));
    t108 = *((unsigned int *)t95);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (~(t110));
    t112 = *((unsigned int *)t96);
    t113 = (~(t112));
    t114 = (t107 & t109);
    t115 = (t111 & t113);
    t116 = (~(t114));
    t117 = (~(t115));
    t118 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t118 & t116);
    t119 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t119 & t117);
    t120 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t120 & t116);
    t121 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t121 & t117);
    goto LAB170;

LAB171:    xsi_set_current_line(25, ng0);
    t105 = ((char*)((ng10)));
    t122 = (t0 + 1928);
    xsi_vlogvar_assign_value(t122, t105, 0, 0, 8);
    goto LAB173;

}

static void Cont_28_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3496);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 31U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 4);

LAB1:    return;
}


extern void work_m_00000000002583376776_2615934855_init()
{
	static char *pe[] = {(void *)Always_8_0,(void *)Cont_28_1};
	xsi_register_didat("work_m_00000000002583376776_2615934855", "isim/testmainnn_isim_beh.exe.sim/work/m_00000000002583376776_2615934855.didat");
	xsi_register_executes(pe);
}
