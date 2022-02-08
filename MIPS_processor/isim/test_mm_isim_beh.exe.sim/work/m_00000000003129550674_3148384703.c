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
static const char *ng0 = "C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/MIPS_processor/ALU_Control.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {32U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {34U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {36U, 0U};
static unsigned int ng8[] = {37U, 0U};
static unsigned int ng9[] = {42U, 0U};
static unsigned int ng10[] = {4U, 0U};



static void Always_26_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:
LAB9:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);

LAB10:    xsi_set_current_line(30, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);

LAB11:    t7 = ((char*)((ng2)));
    t9 = xsi_vlog_unsigned_case_compare(t8, 6, t7, 6);
    if (t9 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t8, 6, t2, 6);
    if (t6 == 1)
        goto LAB20;

LAB21:
LAB22:    goto LAB9;

LAB12:    xsi_set_current_line(31, ng0);

LAB23:    xsi_set_current_line(31, ng0);
    t10 = ((char*)((ng3)));
    t11 = (t0 + 1608);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 1);
    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB22;

LAB14:    xsi_set_current_line(32, ng0);

LAB24:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB22;

LAB16:    xsi_set_current_line(33, ng0);

LAB25:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB22;

LAB18:    xsi_set_current_line(34, ng0);

LAB26:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB22;

LAB20:    xsi_set_current_line(35, ng0);

LAB27:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB22;

}


extern void work_m_00000000003129550674_3148384703_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000003129550674_3148384703", "isim/test_mm_isim_beh.exe.sim/work/m_00000000003129550674_3148384703.didat");
	xsi_register_executes(pe);
}
