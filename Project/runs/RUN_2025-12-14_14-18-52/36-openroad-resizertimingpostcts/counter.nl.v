module counter (clk,
    rst,
    q);
 input clk;
 input rst;
 output [7:0] q;

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
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;

 sky130_fd_sc_hd__inv_2 _23_ (.A(net11),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _24_ (.A(net1),
    .Y(_08_));
 sky130_fd_sc_hd__xor2_1 _25_ (.A(net11),
    .B(net12),
    .X(_01_));
 sky130_fd_sc_hd__and3_2 _26_ (.A(net2),
    .B(net3),
    .C(net4),
    .X(_16_));
 sky130_fd_sc_hd__a21oi_1 _27_ (.A1(net2),
    .A2(net3),
    .B1(net15),
    .Y(_17_));
 sky130_fd_sc_hd__nor2_1 _28_ (.A(_16_),
    .B(net16),
    .Y(_02_));
 sky130_fd_sc_hd__nand2_1 _29_ (.A(net5),
    .B(_16_),
    .Y(_18_));
 sky130_fd_sc_hd__xor2_1 _30_ (.A(net18),
    .B(_16_),
    .X(_03_));
 sky130_fd_sc_hd__and3_1 _31_ (.A(net5),
    .B(net6),
    .C(_16_),
    .X(_19_));
 sky130_fd_sc_hd__xnor2_1 _32_ (.A(net13),
    .B(_18_),
    .Y(_04_));
 sky130_fd_sc_hd__and3_1 _33_ (.A(net5),
    .B(net6),
    .C(net7),
    .X(_20_));
 sky130_fd_sc_hd__o2bb2a_1 _34_ (.A1_N(_16_),
    .A2_N(_20_),
    .B1(_19_),
    .B2(net17),
    .X(_05_));
 sky130_fd_sc_hd__and3_1 _35_ (.A(net8),
    .B(_16_),
    .C(_20_),
    .X(_21_));
 sky130_fd_sc_hd__a21oi_1 _36_ (.A1(_16_),
    .A2(_20_),
    .B1(net14),
    .Y(_22_));
 sky130_fd_sc_hd__nor2_1 _37_ (.A(_21_),
    .B(_22_),
    .Y(_06_));
 sky130_fd_sc_hd__xor2_1 _38_ (.A(net10),
    .B(_21_),
    .X(_07_));
 sky130_fd_sc_hd__inv_2 _39_ (.A(net1),
    .Y(_09_));
 sky130_fd_sc_hd__inv_2 _40_ (.A(net1),
    .Y(_10_));
 sky130_fd_sc_hd__inv_2 _41_ (.A(net1),
    .Y(_11_));
 sky130_fd_sc_hd__inv_2 _42_ (.A(net1),
    .Y(_12_));
 sky130_fd_sc_hd__inv_2 _43_ (.A(net1),
    .Y(_13_));
 sky130_fd_sc_hd__inv_2 _44_ (.A(net1),
    .Y(_14_));
 sky130_fd_sc_hd__inv_2 _45_ (.A(net1),
    .Y(_15_));
 sky130_fd_sc_hd__dfrtp_1 _46_ (.CLK(clknet_1_0__leaf_clk),
    .D(_00_),
    .RESET_B(_08_),
    .Q(net2));
 sky130_fd_sc_hd__dfrtp_1 _47_ (.CLK(clknet_1_0__leaf_clk),
    .D(_01_),
    .RESET_B(_09_),
    .Q(net3));
 sky130_fd_sc_hd__dfrtp_1 _48_ (.CLK(clknet_1_0__leaf_clk),
    .D(_02_),
    .RESET_B(_10_),
    .Q(net4));
 sky130_fd_sc_hd__dfrtp_1 _49_ (.CLK(clknet_1_0__leaf_clk),
    .D(_03_),
    .RESET_B(_11_),
    .Q(net5));
 sky130_fd_sc_hd__dfrtp_1 _50_ (.CLK(clknet_1_1__leaf_clk),
    .D(_04_),
    .RESET_B(_12_),
    .Q(net6));
 sky130_fd_sc_hd__dfrtp_1 _51_ (.CLK(clknet_1_1__leaf_clk),
    .D(_05_),
    .RESET_B(_13_),
    .Q(net7));
 sky130_fd_sc_hd__dfrtp_1 _52_ (.CLK(clknet_1_1__leaf_clk),
    .D(_06_),
    .RESET_B(_14_),
    .Q(net8));
 sky130_fd_sc_hd__dfrtp_1 _53_ (.CLK(clknet_1_1__leaf_clk),
    .D(_07_),
    .RESET_B(_15_),
    .Q(net9));
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
 sky130_fd_sc_hd__clkbuf_4 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__buf_2 output2 (.A(net2),
    .X(q[0]));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(q[1]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(q[2]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(q[3]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(q[4]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(q[5]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(q[6]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(q[7]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(net9),
    .X(net10));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(net2),
    .X(net11));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(net3),
    .X(net12));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(net6),
    .X(net13));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(net8),
    .X(net14));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(net4),
    .X(net15));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(_17_),
    .X(net16));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(net7),
    .X(net17));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(net5),
    .X(net18));
endmodule
