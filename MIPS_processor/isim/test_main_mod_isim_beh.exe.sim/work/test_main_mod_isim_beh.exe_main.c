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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002214804793_1096192584_init();
    xilinxcorelib_ver_m_00000000001358910285_2573893562_init();
    xilinxcorelib_ver_m_00000000001687936702_2665453648_init();
    xilinxcorelib_ver_m_00000000000277421008_2082822836_init();
    xilinxcorelib_ver_m_00000000001603977570_3483389434_init();
    work_m_00000000002489990758_3636811791_init();
    work_m_00000000004040768398_0065856647_init();
    work_m_00000000000645228788_0886308060_init();
    work_m_00000000003129550674_3148384703_init();
    work_m_00000000002400875497_1560422209_init();
    work_m_00000000003672507402_2886992616_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003672507402_2886992616");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
