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
    work_m_00000000001664094856_1181395681_init();
    work_m_00000000001807358692_1050165513_init();
    work_m_00000000003681163346_1048516900_init();
    work_m_00000000002583376776_2615934855_init();
    work_m_00000000003358800320_0286164271_init();
    work_m_00000000001829504013_2175206695_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001829504013_2175206695");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
