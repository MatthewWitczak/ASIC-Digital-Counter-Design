module counter (clk,
    rst,
    q,
    VPWR,
    VGND);
 input clk;
 input rst;
 output [7:0] q;
 inout VPWR;
 inout VGND;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;

 sky130_fd_sc_hd__inv_2 _23_ (.A(q[0]),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _24_ (.A(rst),
    .Y(_08_));
 sky130_fd_sc_hd__xor2_2 _25_ (.A(q[0]),
    .B(q[1]),
    .X(_01_));
 sky130_fd_sc_hd__and3_2 _26_ (.A(q[0]),
    .B(q[1]),
    .C(q[2]),
    .X(_16_));
 sky130_fd_sc_hd__a21oi_2 _27_ (.A1(q[0]),
    .A2(q[1]),
    .B1(q[2]),
    .Y(_17_));
 sky130_fd_sc_hd__nor2_2 _28_ (.A(_16_),
    .B(_17_),
    .Y(_02_));
 sky130_fd_sc_hd__nand2_2 _29_ (.A(q[3]),
    .B(_16_),
    .Y(_18_));
 sky130_fd_sc_hd__xor2_2 _30_ (.A(q[3]),
    .B(_16_),
    .X(_03_));
 sky130_fd_sc_hd__and3_2 _31_ (.A(q[3]),
    .B(q[4]),
    .C(_16_),
    .X(_19_));
 sky130_fd_sc_hd__xnor2_2 _32_ (.A(q[4]),
    .B(_18_),
    .Y(_04_));
 sky130_fd_sc_hd__and3_2 _33_ (.A(q[3]),
    .B(q[4]),
    .C(q[5]),
    .X(_20_));
 sky130_fd_sc_hd__o2bb2a_2 _34_ (.A1_N(_16_),
    .A2_N(_20_),
    .B1(_19_),
    .B2(q[5]),
    .X(_05_));
 sky130_fd_sc_hd__and3_2 _35_ (.A(q[6]),
    .B(_16_),
    .C(_20_),
    .X(_21_));
 sky130_fd_sc_hd__a21oi_2 _36_ (.A1(_16_),
    .A2(_20_),
    .B1(q[6]),
    .Y(_22_));
 sky130_fd_sc_hd__nor2_2 _37_ (.A(_21_),
    .B(_22_),
    .Y(_06_));
 sky130_fd_sc_hd__xor2_2 _38_ (.A(q[7]),
    .B(_21_),
    .X(_07_));
 sky130_fd_sc_hd__inv_2 _39_ (.A(rst),
    .Y(_09_));
 sky130_fd_sc_hd__inv_2 _40_ (.A(rst),
    .Y(_10_));
 sky130_fd_sc_hd__inv_2 _41_ (.A(rst),
    .Y(_11_));
 sky130_fd_sc_hd__inv_2 _42_ (.A(rst),
    .Y(_12_));
 sky130_fd_sc_hd__inv_2 _43_ (.A(rst),
    .Y(_13_));
 sky130_fd_sc_hd__inv_2 _44_ (.A(rst),
    .Y(_14_));
 sky130_fd_sc_hd__inv_2 _45_ (.A(rst),
    .Y(_15_));
 sky130_fd_sc_hd__dfrtp_2 _46_ (.CLK(clk),
    .D(_00_),
    .RESET_B(_08_),
    .Q(q[0]));
 sky130_fd_sc_hd__dfrtp_2 _47_ (.CLK(clk),
    .D(_01_),
    .RESET_B(_09_),
    .Q(q[1]));
 sky130_fd_sc_hd__dfrtp_2 _48_ (.CLK(clk),
    .D(_02_),
    .RESET_B(_10_),
    .Q(q[2]));
 sky130_fd_sc_hd__dfrtp_2 _49_ (.CLK(clk),
    .D(_03_),
    .RESET_B(_11_),
    .Q(q[3]));
 sky130_fd_sc_hd__dfrtp_2 _50_ (.CLK(clk),
    .D(_04_),
    .RESET_B(_12_),
    .Q(q[4]));
 sky130_fd_sc_hd__dfrtp_2 _51_ (.CLK(clk),
    .D(_05_),
    .RESET_B(_13_),
    .Q(q[5]));
 sky130_fd_sc_hd__dfrtp_2 _52_ (.CLK(clk),
    .D(_06_),
    .RESET_B(_14_),
    .Q(q[6]));
 sky130_fd_sc_hd__dfrtp_2 _53_ (.CLK(clk),
    .D(_07_),
    .RESET_B(_15_),
    .Q(q[7]));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_31 ();
endmodule
