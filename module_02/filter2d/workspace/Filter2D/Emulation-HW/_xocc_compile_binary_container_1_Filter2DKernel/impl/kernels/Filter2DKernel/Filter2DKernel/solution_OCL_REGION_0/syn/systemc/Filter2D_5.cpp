#include "Filter2D.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void Filter2D::thread_tmp7_i_fu_6129_p2() {
    tmp7_i_fu_6129_p2 = (rev16_reg_18955.read() | tmp_47_reg_18048.read());
}

void Filter2D::thread_tmp80_i_fu_6927_p2() {
    tmp80_i_fu_6927_p2 = (rev2_reg_18351.read() | tmp_71_reg_19202.read());
}

void Filter2D::thread_tmp81_i_fu_6945_p2() {
    tmp81_i_fu_6945_p2 = (rev24_reg_19259.read() | tmp_49_reg_18084.read());
}

void Filter2D::thread_tmp82_i_fu_6949_p2() {
    tmp82_i_fu_6949_p2 = (rev2_reg_18351.read() | tmp_72_reg_19240.read());
}

void Filter2D::thread_tmp83_i_fu_6967_p2() {
    tmp83_i_fu_6967_p2 = (rev25_reg_19297.read() | tmp_49_reg_18084.read());
}

void Filter2D::thread_tmp84_i_fu_6971_p2() {
    tmp84_i_fu_6971_p2 = (rev2_reg_18351.read() | tmp_73_reg_19278.read());
}

void Filter2D::thread_tmp85_i_fu_6989_p2() {
    tmp85_i_fu_6989_p2 = (rev26_reg_19335.read() | tmp_49_reg_18084.read());
}

void Filter2D::thread_tmp86_i_fu_6993_p2() {
    tmp86_i_fu_6993_p2 = (rev2_reg_18351.read() | tmp_74_reg_19316.read());
}

void Filter2D::thread_tmp87_i_fu_7011_p2() {
    tmp87_i_fu_7011_p2 = (rev27_reg_19373.read() | tmp_49_reg_18084.read());
}

void Filter2D::thread_tmp88_i_fu_7015_p2() {
    tmp88_i_fu_7015_p2 = (rev2_reg_18351.read() | tmp_75_reg_19354.read());
}

void Filter2D::thread_tmp89_i_fu_7033_p2() {
    tmp89_i_fu_7033_p2 = (rev28_reg_19411.read() | tmp_49_reg_18084.read());
}

void Filter2D::thread_tmp8_i_fu_6133_p2() {
    tmp8_i_fu_6133_p2 = (rev_reg_18305.read() | tmp_64_reg_18936.read());
}

void Filter2D::thread_tmp90_i_fu_7037_p2() {
    tmp90_i_fu_7037_p2 = (rev2_reg_18351.read() | tmp_76_reg_19392.read());
}

void Filter2D::thread_tmp91_i_fu_4165_p2() {
    tmp91_i_fu_4165_p2 = (tmp_49_fu_3908_p3.read() | rev2_fu_4159_p2.read());
}

void Filter2D::thread_tmp92_i_fu_7067_p2() {
    tmp92_i_fu_7067_p2 = (rev15_reg_18917.read() | tmp_50_reg_18102.read());
}

void Filter2D::thread_tmp93_i_fu_7071_p2() {
    tmp93_i_fu_7071_p2 = (rev3_reg_18374.read() | tmp_63_reg_18898.read());
}

void Filter2D::thread_tmp94_i_fu_7089_p2() {
    tmp94_i_fu_7089_p2 = (rev16_reg_18955.read() | tmp_50_reg_18102.read());
}

void Filter2D::thread_tmp95_i_fu_7093_p2() {
    tmp95_i_fu_7093_p2 = (rev3_reg_18374.read() | tmp_64_reg_18936.read());
}

void Filter2D::thread_tmp96_i_fu_7111_p2() {
    tmp96_i_fu_7111_p2 = (rev17_reg_18993.read() | tmp_50_reg_18102.read());
}

void Filter2D::thread_tmp97_i_fu_7115_p2() {
    tmp97_i_fu_7115_p2 = (rev3_reg_18374.read() | tmp_65_reg_18974.read());
}

void Filter2D::thread_tmp98_i_fu_7133_p2() {
    tmp98_i_fu_7133_p2 = (rev18_reg_19031.read() | tmp_50_reg_18102.read());
}

void Filter2D::thread_tmp99_i_fu_7137_p2() {
    tmp99_i_fu_7137_p2 = (rev3_reg_18374.read() | tmp_66_reg_19012.read());
}

void Filter2D::thread_tmp9_i_fu_6151_p2() {
    tmp9_i_fu_6151_p2 = (rev17_reg_18993.read() | tmp_47_reg_18048.read());
}

void Filter2D::thread_tmp_15_i_i_i_fu_3846_p2() {
    tmp_15_i_i_i_fu_3846_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !loopHeight_reg_16686.read().is_01())? sc_lv<1>(): (sc_bigint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) < sc_bigint<16>(loopHeight_reg_16686.read()));
}

void Filter2D::thread_tmp_16_i_i_i_fu_4373_p2() {
    tmp_16_i_i_i_fu_4373_p2 = (!x_assign_cast15657_i_i_cast_i_fu_4369_p1.read().is_01() || !loopWidth_reg_16691.read().is_01())? sc_lv<1>(): (sc_bigint<16>(x_assign_cast15657_i_i_cast_i_fu_4369_p1.read()) < sc_bigint<16>(loopWidth_reg_16691.read()));
}

void Filter2D::thread_tmp_17_cast15656_i_i_i_fu_3836_p1() {
    tmp_17_cast15656_i_i_i_fu_3836_p1 = esl_zext<17,16>(pixelWindow_mWidth_reg_16672.read());
}

void Filter2D::thread_tmp_18_i_i_i_fu_4400_p2() {
    tmp_18_i_i_i_fu_4400_p2 = (!x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01() || !pixelWindow_mWidth_reg_16672.read().is_01())? sc_lv<1>(): (sc_biguint<16>(x_assign_cast15657_i_i_cast_i_reg_18646.read()) < sc_biguint<16>(pixelWindow_mWidth_reg_16672.read()));
}

void Filter2D::thread_tmp_23_i_i_i_fu_4384_p1() {
    tmp_23_i_i_i_fu_4384_p1 = esl_zext<64,15>(x_assign_i_reg_2412.read());
}

void Filter2D::thread_tmp_24_i_i_i_fu_3857_p2() {
    tmp_24_i_i_i_fu_3857_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !pixelWindow_mHeight_reg_16679.read().is_01())? sc_lv<1>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) < sc_biguint<16>(pixelWindow_mHeight_reg_16679.read()));
}

void Filter2D::thread_tmp_26_i_i_i_fu_4114_p2() {
    tmp_26_i_i_i_fu_4114_p2 = (!y_assign_i_reg_2401.read().is_01() || !ap_const_lv15_6.is_01())? sc_lv<1>(): (sc_biguint<15>(y_assign_i_reg_2401.read()) > sc_biguint<15>(ap_const_lv15_6));
}

void Filter2D::thread_tmp_27_i_i_i_fu_4389_p2() {
    tmp_27_i_i_i_fu_4389_p2 = (!x_assign_i_reg_2412.read().is_01() || !ap_const_lv15_6.is_01())? sc_lv<1>(): (sc_biguint<15>(x_assign_i_reg_2412.read()) > sc_biguint<15>(ap_const_lv15_6));
}

void Filter2D::thread_tmp_2_cast_i_fu_2587_p1() {
    tmp_2_cast_i_fu_2587_p1 = esl_zext<60,59>(tmp_fu_2577_p4.read());
}

void Filter2D::thread_tmp_43_fu_2623_p4() {
    tmp_43_fu_2623_p4 = indvar_i_i_i_phi_fu_2371_p4.read().range(7, 3);
}

void Filter2D::thread_tmp_44_fu_2692_p2() {
    tmp_44_fu_2692_p2 = (!ap_const_lv8_5.is_01())? sc_lv<8>(): ap_reg_pp0_iter8_indvar_i_i_i_reg_2367.read() << (unsigned short)ap_const_lv8_5.to_uint();
}

void Filter2D::thread_tmp_46_fu_2658_p1() {
    tmp_46_fu_2658_p1 = phi_urem_i_reg_2390.read().range(4-1, 0);
}

void Filter2D::thread_tmp_47_fu_3872_p3() {
    tmp_47_fu_3872_p3 = yoffset_i_i_i_fu_3862_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_48_fu_3890_p3() {
    tmp_48_fu_3890_p3 = yoffset_1_i_i_i_fu_3880_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_49_fu_3908_p3() {
    tmp_49_fu_3908_p3 = yoffset_2_i_i_i_fu_3898_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_50_fu_3926_p3() {
    tmp_50_fu_3926_p3 = yoffset_3_i_i_i_fu_3916_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_51_fu_3944_p3() {
    tmp_51_fu_3944_p3 = yoffset_4_i_i_i_fu_3934_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_52_fu_3962_p3() {
    tmp_52_fu_3962_p3 = yoffset_5_i_i_i_fu_3952_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_53_fu_3980_p3() {
    tmp_53_fu_3980_p3 = yoffset_6_i_i_i_fu_3970_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_54_fu_3998_p3() {
    tmp_54_fu_3998_p3 = yoffset_7_i_i_i_fu_3988_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_55_fu_4016_p3() {
    tmp_55_fu_4016_p3 = yoffset_8_i_i_i_fu_4006_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_56_fu_4034_p3() {
    tmp_56_fu_4034_p3 = yoffset_9_i_i_i_fu_4024_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_57_fu_4052_p3() {
    tmp_57_fu_4052_p3 = yoffset_i_i_i_175_fu_4042_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_58_fu_4070_p3() {
    tmp_58_fu_4070_p3 = yoffset_10_i_i_i_fu_4060_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_59_14_13_cast_i_i_i_fu_3839_p1() {
    tmp_59_14_13_cast_i_i_i_fu_3839_p1 = esl_zext<17,16>(pixelWindow_mHeight_reg_16679.read());
}

void Filter2D::thread_tmp_59_fu_4088_p3() {
    tmp_59_fu_4088_p3 = yoffset_11_i_i_i_fu_4078_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_60_fu_4106_p3() {
    tmp_60_fu_4106_p3 = yoffset_12_i_i_i_fu_4096_p2.read().range(15, 15);
}

void Filter2D::thread_tmp_61_fu_2668_p2() {
    tmp_61_fu_2668_p2 = (!next_urem_i_fu_2662_p2.read().is_01() || !ap_const_lv8_F.is_01())? sc_lv<1>(): (sc_biguint<8>(next_urem_i_fu_2662_p2.read()) < sc_biguint<8>(ap_const_lv8_F));
}

void Filter2D::thread_tmp_6_i_fu_2698_p1() {
    tmp_6_i_fu_2698_p1 = esl_zext<256,8>(tmp_44_fu_2692_p2.read());
}

void Filter2D::thread_tmp_78_fu_15280_p4() {
    tmp_78_fu_15280_p4 = neg_mul_i_fu_15275_p2.read().range(64, 40);
}

void Filter2D::thread_tmp_80_fu_15296_p1() {
    tmp_80_fu_15296_p1 = p_v_i_v_fu_15290_p3.read().range(8-1, 0);
}

void Filter2D::thread_tmp_81_fu_15306_p1() {
    tmp_81_fu_15306_p1 = p_v_i_v_fu_15290_p3.read().range(8-1, 0);
}

void Filter2D::thread_tmp_fu_2577_p4() {
    tmp_fu_2577_p4 = srcCoeffs_offset_dout.read().range(63, 5);
}

void Filter2D::thread_tmp_i_i1_cast_i_fu_2633_p1() {
    tmp_i_i1_cast_i_fu_2633_p1 = esl_zext<60,5>(tmp_43_fu_2623_p4.read());
}

void Filter2D::thread_ult1_fu_4404_p2() {
    ult1_fu_4404_p2 = (!x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01() || !pixelWindow_mWidth_reg_16672.read().is_01())? sc_lv<1>(): (sc_biguint<16>(x_assign_cast15657_i_i_cast_i_reg_18646.read()) < sc_biguint<16>(pixelWindow_mWidth_reg_16672.read()));
}

void Filter2D::thread_ult_fu_4358_p2() {
    ult_fu_4358_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !pixelWindow_mHeight_reg_16679.read().is_01())? sc_lv<1>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) < sc_biguint<16>(pixelWindow_mHeight_reg_16679.read()));
}

void Filter2D::thread_width_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        width_blk_n = width_empty_n.read();
    } else {
        width_blk_n = ap_const_logic_1;
    }
}

void Filter2D::thread_width_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        width_out_blk_n = width_out_full_n.read();
    } else {
        width_out_blk_n = ap_const_logic_1;
    }
}

void Filter2D::thread_width_out_din() {
    width_out_din = width_dout.read();
}

void Filter2D::thread_width_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, srcCoeffs_offset_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, width_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, height_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, width_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, height_out_full_n.read())))) {
        width_out_write = ap_const_logic_1;
    } else {
        width_out_write = ap_const_logic_0;
    }
}

void Filter2D::thread_width_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, srcCoeffs_offset_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, width_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, height_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, width_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, height_out_full_n.read())))) {
        width_read = ap_const_logic_1;
    } else {
        width_read = ap_const_logic_0;
    }
}

void Filter2D::thread_x_assign_cast15657_i_i_cast_i_fu_4369_p1() {
    x_assign_cast15657_i_i_cast_i_fu_4369_p1 = esl_zext<16,15>(x_assign_i_reg_2412.read());
}

void Filter2D::thread_x_fu_4378_p2() {
    x_fu_4378_p2 = (!x_assign_i_reg_2412.read().is_01() || !ap_const_lv15_1.is_01())? sc_lv<15>(): (sc_biguint<15>(x_assign_i_reg_2412.read()) + sc_biguint<15>(ap_const_lv15_1));
}

void Filter2D::thread_xoffset_0_10_cast_i_i_i_fu_4721_p1() {
    xoffset_0_10_cast_i_i_i_fu_4721_p1 = esl_sext<17,16>(xoffset_0_10_i_i_i_fu_4716_p2.read());
}

void Filter2D::thread_xoffset_0_10_i_i_i_fu_4716_p2() {
    xoffset_0_10_i_i_i_fu_4716_p2 = (!ap_const_lv16_FFFD.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFFD) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_11_cast_i_i_i_fu_4749_p1() {
    xoffset_0_11_cast_i_i_i_fu_4749_p1 = esl_sext<17,16>(xoffset_0_11_i_i_i_fu_4744_p2.read());
}

void Filter2D::thread_xoffset_0_11_i_i_i_fu_4744_p2() {
    xoffset_0_11_i_i_i_fu_4744_p2 = (!ap_const_lv16_FFFE.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFFE) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_12_cast_i_i_i_fu_4777_p1() {
    xoffset_0_12_cast_i_i_i_fu_4777_p1 = esl_sext<17,16>(xoffset_0_12_i_i_i_fu_4772_p2.read());
}

void Filter2D::thread_xoffset_0_12_i_i_i_fu_4772_p2() {
    xoffset_0_12_i_i_i_fu_4772_p2 = (!ap_const_lv16_FFFF.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFFF) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_1_cast_i_i_i_fu_4441_p1() {
    xoffset_0_1_cast_i_i_i_fu_4441_p1 = esl_sext<17,16>(xoffset_0_1_i_i_i_fu_4436_p2.read());
}

void Filter2D::thread_xoffset_0_1_i_i_i_fu_4436_p2() {
    xoffset_0_1_i_i_i_fu_4436_p2 = (!ap_const_lv16_FFF3.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF3) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_2_cast_i_i_i_fu_4469_p1() {
    xoffset_0_2_cast_i_i_i_fu_4469_p1 = esl_sext<17,16>(xoffset_0_2_i_i_i_fu_4464_p2.read());
}

void Filter2D::thread_xoffset_0_2_i_i_i_fu_4464_p2() {
    xoffset_0_2_i_i_i_fu_4464_p2 = (!ap_const_lv16_FFF4.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF4) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_3_cast_i_i_i_fu_4497_p1() {
    xoffset_0_3_cast_i_i_i_fu_4497_p1 = esl_sext<17,16>(xoffset_0_3_i_i_i_fu_4492_p2.read());
}

void Filter2D::thread_xoffset_0_3_i_i_i_fu_4492_p2() {
    xoffset_0_3_i_i_i_fu_4492_p2 = (!ap_const_lv16_FFF5.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF5) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_4_cast_i_i_i_fu_4525_p1() {
    xoffset_0_4_cast_i_i_i_fu_4525_p1 = esl_sext<17,16>(xoffset_0_4_i_i_i_fu_4520_p2.read());
}

void Filter2D::thread_xoffset_0_4_i_i_i_fu_4520_p2() {
    xoffset_0_4_i_i_i_fu_4520_p2 = (!ap_const_lv16_FFF6.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF6) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_5_cast_i_i_i_fu_4553_p1() {
    xoffset_0_5_cast_i_i_i_fu_4553_p1 = esl_sext<17,16>(xoffset_0_5_i_i_i_fu_4548_p2.read());
}

void Filter2D::thread_xoffset_0_5_i_i_i_fu_4548_p2() {
    xoffset_0_5_i_i_i_fu_4548_p2 = (!ap_const_lv16_FFF7.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF7) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_6_cast_i_i_i_fu_4581_p1() {
    xoffset_0_6_cast_i_i_i_fu_4581_p1 = esl_sext<17,16>(xoffset_0_6_i_i_i_fu_4576_p2.read());
}

void Filter2D::thread_xoffset_0_6_i_i_i_fu_4576_p2() {
    xoffset_0_6_i_i_i_fu_4576_p2 = (!ap_const_lv16_FFF8.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF8) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_7_cast_i_i_i_fu_4609_p1() {
    xoffset_0_7_cast_i_i_i_fu_4609_p1 = esl_sext<17,16>(xoffset_0_7_i_i_i_fu_4604_p2.read());
}

void Filter2D::thread_xoffset_0_7_i_i_i_fu_4604_p2() {
    xoffset_0_7_i_i_i_fu_4604_p2 = (!ap_const_lv16_FFF9.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF9) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_8_cast_i_i_i_fu_4637_p1() {
    xoffset_0_8_cast_i_i_i_fu_4637_p1 = esl_sext<17,16>(xoffset_0_8_i_i_i_fu_4632_p2.read());
}

void Filter2D::thread_xoffset_0_8_i_i_i_fu_4632_p2() {
    xoffset_0_8_i_i_i_fu_4632_p2 = (!ap_const_lv16_FFFA.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFFA) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_9_cast_i_i_i_fu_4665_p1() {
    xoffset_0_9_cast_i_i_i_fu_4665_p1 = esl_sext<17,16>(xoffset_0_9_i_i_i_fu_4660_p2.read());
}

void Filter2D::thread_xoffset_0_9_i_i_i_fu_4660_p2() {
    xoffset_0_9_i_i_i_fu_4660_p2 = (!ap_const_lv16_FFFB.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFFB) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_cast_i_i_i_178_fu_4693_p1() {
    xoffset_0_cast_i_i_i_178_fu_4693_p1 = esl_sext<17,16>(xoffset_0_i_i_i_177_fu_4688_p2.read());
}

void Filter2D::thread_xoffset_0_cast_i_i_i_fu_4413_p1() {
    xoffset_0_cast_i_i_i_fu_4413_p1 = esl_sext<17,16>(xoffset_0_i_i_i_fu_4408_p2.read());
}

void Filter2D::thread_xoffset_0_i_i_i_177_fu_4688_p2() {
    xoffset_0_i_i_i_177_fu_4688_p2 = (!ap_const_lv16_FFFC.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFFC) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_xoffset_0_i_i_i_fu_4408_p2() {
    xoffset_0_i_i_i_fu_4408_p2 = (!ap_const_lv16_FFF2.is_01() || !ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFF2) + sc_biguint<16>(ap_reg_pp1_iter1_x_assign_cast15657_i_i_cast_i_reg_18646.read()));
}

void Filter2D::thread_y_assign_cast15659_i_i_cast_i_fu_3842_p1() {
    y_assign_cast15659_i_i_cast_i_fu_3842_p1 = esl_zext<16,15>(y_assign_i_reg_2401.read());
}

void Filter2D::thread_y_fu_3851_p2() {
    y_fu_3851_p2 = (!y_assign_i_reg_2401.read().is_01() || !ap_const_lv15_1.is_01())? sc_lv<15>(): (sc_biguint<15>(y_assign_i_reg_2401.read()) + sc_biguint<15>(ap_const_lv15_1));
}

void Filter2D::thread_yoffset_10_cast_i_i_i_fu_4066_p1() {
    yoffset_10_cast_i_i_i_fu_4066_p1 = esl_sext<17,16>(yoffset_10_i_i_i_fu_4060_p2.read());
}

void Filter2D::thread_yoffset_10_i_i_i_fu_4060_p2() {
    yoffset_10_i_i_i_fu_4060_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFFD.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFFD));
}

void Filter2D::thread_yoffset_11_cast_i_i_i_fu_4084_p1() {
    yoffset_11_cast_i_i_i_fu_4084_p1 = esl_sext<17,16>(yoffset_11_i_i_i_fu_4078_p2.read());
}

void Filter2D::thread_yoffset_11_i_i_i_fu_4078_p2() {
    yoffset_11_i_i_i_fu_4078_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFFE.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFFE));
}

void Filter2D::thread_yoffset_12_cast_i_i_i_fu_4102_p1() {
    yoffset_12_cast_i_i_i_fu_4102_p1 = esl_sext<17,16>(yoffset_12_i_i_i_fu_4096_p2.read());
}

void Filter2D::thread_yoffset_12_i_i_i_fu_4096_p2() {
    yoffset_12_i_i_i_fu_4096_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFFF.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFFF));
}

void Filter2D::thread_yoffset_1_cast_i_i_i_fu_3886_p1() {
    yoffset_1_cast_i_i_i_fu_3886_p1 = esl_sext<17,16>(yoffset_1_i_i_i_fu_3880_p2.read());
}

void Filter2D::thread_yoffset_1_i_i_i_fu_3880_p2() {
    yoffset_1_i_i_i_fu_3880_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF3.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF3));
}

void Filter2D::thread_yoffset_2_cast_i_i_i_fu_3904_p1() {
    yoffset_2_cast_i_i_i_fu_3904_p1 = esl_sext<17,16>(yoffset_2_i_i_i_fu_3898_p2.read());
}

void Filter2D::thread_yoffset_2_i_i_i_fu_3898_p2() {
    yoffset_2_i_i_i_fu_3898_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF4.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF4));
}

void Filter2D::thread_yoffset_3_cast_i_i_i_fu_3922_p1() {
    yoffset_3_cast_i_i_i_fu_3922_p1 = esl_sext<17,16>(yoffset_3_i_i_i_fu_3916_p2.read());
}

void Filter2D::thread_yoffset_3_i_i_i_fu_3916_p2() {
    yoffset_3_i_i_i_fu_3916_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF5.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF5));
}

void Filter2D::thread_yoffset_4_cast_i_i_i_fu_3940_p1() {
    yoffset_4_cast_i_i_i_fu_3940_p1 = esl_sext<17,16>(yoffset_4_i_i_i_fu_3934_p2.read());
}

void Filter2D::thread_yoffset_4_i_i_i_fu_3934_p2() {
    yoffset_4_i_i_i_fu_3934_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF6.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF6));
}

void Filter2D::thread_yoffset_5_cast_i_i_i_fu_3958_p1() {
    yoffset_5_cast_i_i_i_fu_3958_p1 = esl_sext<17,16>(yoffset_5_i_i_i_fu_3952_p2.read());
}

void Filter2D::thread_yoffset_5_i_i_i_fu_3952_p2() {
    yoffset_5_i_i_i_fu_3952_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF7.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF7));
}

void Filter2D::thread_yoffset_6_cast_i_i_i_fu_3976_p1() {
    yoffset_6_cast_i_i_i_fu_3976_p1 = esl_sext<17,16>(yoffset_6_i_i_i_fu_3970_p2.read());
}

void Filter2D::thread_yoffset_6_i_i_i_fu_3970_p2() {
    yoffset_6_i_i_i_fu_3970_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF8.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF8));
}

void Filter2D::thread_yoffset_7_cast_i_i_i_fu_3994_p1() {
    yoffset_7_cast_i_i_i_fu_3994_p1 = esl_sext<17,16>(yoffset_7_i_i_i_fu_3988_p2.read());
}

void Filter2D::thread_yoffset_7_i_i_i_fu_3988_p2() {
    yoffset_7_i_i_i_fu_3988_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF9.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF9));
}

void Filter2D::thread_yoffset_8_cast_i_i_i_fu_4012_p1() {
    yoffset_8_cast_i_i_i_fu_4012_p1 = esl_sext<17,16>(yoffset_8_i_i_i_fu_4006_p2.read());
}

void Filter2D::thread_yoffset_8_i_i_i_fu_4006_p2() {
    yoffset_8_i_i_i_fu_4006_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFFA.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFFA));
}

void Filter2D::thread_yoffset_9_cast_i_i_i_fu_4030_p1() {
    yoffset_9_cast_i_i_i_fu_4030_p1 = esl_sext<17,16>(yoffset_9_i_i_i_fu_4024_p2.read());
}

void Filter2D::thread_yoffset_9_i_i_i_fu_4024_p2() {
    yoffset_9_i_i_i_fu_4024_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFFB.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFFB));
}

void Filter2D::thread_yoffset_cast_i_i_i_176_fu_4048_p1() {
    yoffset_cast_i_i_i_176_fu_4048_p1 = esl_sext<17,16>(yoffset_i_i_i_175_fu_4042_p2.read());
}

void Filter2D::thread_yoffset_cast_i_i_i_fu_3868_p1() {
    yoffset_cast_i_i_i_fu_3868_p1 = esl_sext<17,16>(yoffset_i_i_i_fu_3862_p2.read());
}

void Filter2D::thread_yoffset_i_i_i_175_fu_4042_p2() {
    yoffset_i_i_i_175_fu_4042_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFFC.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFFC));
}

void Filter2D::thread_yoffset_i_i_i_fu_3862_p2() {
    yoffset_i_i_i_fu_3862_p2 = (!y_assign_cast15659_i_i_cast_i_fu_3842_p1.read().is_01() || !ap_const_lv16_FFF2.is_01())? sc_lv<16>(): (sc_biguint<16>(y_assign_cast15659_i_i_cast_i_fu_3842_p1.read()) + sc_bigint<16>(ap_const_lv16_FFF2));
}

}

