/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Mar 12 19:24:17 2025
/////////////////////////////////////////////////////////////


module SET_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module SET_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n8), .CI(n1), .CO(carry[3]), .S(DIFF[2]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  CLKINVX1 U1 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n9) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n8) );
  CLKINVX1 U6 ( .A(n1), .Y(DIFF[1]) );
  CLKINVX1 U7 ( .A(B[7]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n4) );
  XNOR2X1 U9 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  OR2X1 U10 ( .A(A[0]), .B(n9), .Y(n1) );
endmodule


module SET_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   \carry[7] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;

  XOR3X1 U2_7 ( .A(A[7]), .B(n4), .C(\carry[7] ), .Y(DIFF[7]) );
  CLKINVX1 U1 ( .A(A[5]), .Y(n1) );
  CLKINVX1 U2 ( .A(A[3]), .Y(n2) );
  CLKINVX1 U3 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n3) );
  OAI21XL U5 ( .A0(n15), .A1(n3), .B0(n16), .Y(n13) );
  OAI2BB2XL U6 ( .B0(B[6]), .B1(n5), .A0N(n6), .A1N(A[6]), .Y(\carry[7] ) );
  NOR2X1 U7 ( .A(A[6]), .B(n6), .Y(n5) );
  OAI22XL U8 ( .A0(n7), .A1(n1), .B0(B[5]), .B1(n8), .Y(n6) );
  AND2X1 U9 ( .A(n7), .B(n1), .Y(n8) );
  AOI2BB2X1 U10 ( .B0(n9), .B1(A[4]), .A0N(B[4]), .A1N(n10), .Y(n7) );
  NOR2X1 U11 ( .A(A[4]), .B(n9), .Y(n10) );
  OAI22XL U12 ( .A0(n11), .A1(n2), .B0(B[3]), .B1(n12), .Y(n9) );
  AND2X1 U13 ( .A(n11), .B(n2), .Y(n12) );
  AOI2BB2X1 U14 ( .B0(n13), .B1(A[2]), .A0N(B[2]), .A1N(n14), .Y(n11) );
  NOR2X1 U15 ( .A(A[2]), .B(n13), .Y(n14) );
  AND2X1 U16 ( .A(n15), .B(n3), .Y(n16) );
  NOR2BX1 U17 ( .AN(B[0]), .B(A[0]), .Y(n15) );
endmodule


module SET_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n8), .CI(n1), .CO(carry[3]), .S(DIFF[2]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  CLKINVX1 U1 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n9) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[6]), .Y(n4) );
  CLKINVX1 U7 ( .A(n1), .Y(DIFF[1]) );
  CLKINVX1 U8 ( .A(B[7]), .Y(n3) );
  XNOR2X1 U9 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  OR2X1 U10 ( .A(A[0]), .B(n9), .Y(n1) );
endmodule


module SET_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   \carry[7] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;

  XOR3X1 U2_7 ( .A(A[7]), .B(n4), .C(\carry[7] ), .Y(DIFF[7]) );
  CLKINVX1 U1 ( .A(A[5]), .Y(n1) );
  CLKINVX1 U2 ( .A(A[3]), .Y(n2) );
  CLKINVX1 U3 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n3) );
  OAI21XL U5 ( .A0(n15), .A1(n3), .B0(n16), .Y(n13) );
  OAI2BB2XL U6 ( .B0(B[6]), .B1(n5), .A0N(n6), .A1N(A[6]), .Y(\carry[7] ) );
  NOR2X1 U7 ( .A(A[6]), .B(n6), .Y(n5) );
  OAI22XL U8 ( .A0(n7), .A1(n1), .B0(B[5]), .B1(n8), .Y(n6) );
  AND2X1 U9 ( .A(n7), .B(n1), .Y(n8) );
  AOI2BB2X1 U10 ( .B0(n9), .B1(A[4]), .A0N(B[4]), .A1N(n10), .Y(n7) );
  NOR2X1 U11 ( .A(A[4]), .B(n9), .Y(n10) );
  OAI22XL U12 ( .A0(n11), .A1(n2), .B0(B[3]), .B1(n12), .Y(n9) );
  AND2X1 U13 ( .A(n11), .B(n2), .Y(n12) );
  AOI2BB2X1 U14 ( .B0(n13), .B1(A[2]), .A0N(B[2]), .A1N(n14), .Y(n11) );
  NOR2X1 U15 ( .A(A[2]), .B(n13), .Y(n14) );
  AND2X1 U16 ( .A(n15), .B(n3), .Y(n16) );
  NOR2BX1 U17 ( .AN(B[0]), .B(A[0]), .Y(n15) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   N37, N39, N40, N41, N42, N43, N44, \checkA[7] , N45, N47, N48, N49,
         N50, N51, N52, \checkB[7] , N90, N91, N92, N93, N94, N95, N96, N97,
         N107, N108, N109, N112, N113, N114, N145, N151, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         N155, N154, N153, N152, N149, N148, N147, N146, \tempA[7] ,
         \tempA[6] , \tempA[5] , \tempA[4] , \tempA[3] , \tempA[2] ,
         \tempA[1] , \tempA[0] , N9, N8, N7, N5, N20, N19, N18, N17, N16, N15,
         N13, N12, N11, N10, \tempB[7] , \tempB[6] , \tempB[5] , \tempB[4] ,
         \tempB[3] , \tempB[2] , \tempB[1] , \tempB[0] , N36, N35, N34, N33,
         N32, N31, N29, N28, N27, N26, N25, N24, N23, N21, \mult_29/n13 ,
         \mult_29/n12 , \mult_29/n11 , \mult_29/n10 , \mult_29/n9 ,
         \mult_29/n8 , \mult_29/n7 , \mult_29/n6 , \mult_29/n5 , \mult_29/n4 ,
         \mult_29/n3 , \mult_29/n2 , \mult_28/n13 , \mult_28/n12 ,
         \mult_28/n11 , \mult_28/n10 , \mult_28/n9 , \mult_28/n8 ,
         \mult_28/n7 , \mult_28/n6 , \mult_28/n5 , \mult_28/n4 , \mult_28/n3 ,
         \mult_28/n2 , \mult_27/n21 , \mult_27/n20 , \mult_27/n19 ,
         \mult_27/n18 , \mult_27/n16 , \mult_27/n14 , \mult_27/n12 ,
         \mult_27/n11 , \mult_27/n10 , \mult_27/n9 , \mult_27/n8 ,
         \mult_27/n7 , \mult_27/n6 , \mult_27/n5 , \mult_27/n4 , \mult_27/n3 ,
         \mult_27/n2 , \mult_27_2/n21 , \mult_27_2/n20 , \mult_27_2/n19 ,
         \mult_27_2/n18 , \mult_27_2/n16 , \mult_27_2/n14 , \mult_27_2/n12 ,
         \mult_27_2/n11 , \mult_27_2/n10 , \mult_27_2/n9 , \mult_27_2/n8 ,
         \mult_27_2/n7 , \mult_27_2/n6 , \mult_27_2/n5 , \mult_27_2/n4 ,
         \mult_27_2/n3 , \mult_27_2/n2 , \mult_26/n21 , \mult_26/n20 ,
         \mult_26/n19 , \mult_26/n18 , \mult_26/n16 , \mult_26/n14 ,
         \mult_26/n12 , \mult_26/n11 , \mult_26/n10 , \mult_26/n9 ,
         \mult_26/n8 , \mult_26/n7 , \mult_26/n6 , \mult_26/n5 , \mult_26/n4 ,
         \mult_26/n3 , \mult_26/n2 , \mult_26_2/n21 , \mult_26_2/n20 ,
         \mult_26_2/n19 , \mult_26_2/n18 , \mult_26_2/n16 , \mult_26_2/n14 ,
         \mult_26_2/n12 , \mult_26_2/n11 , \mult_26_2/n10 , \mult_26_2/n9 ,
         \mult_26_2/n8 , \mult_26_2/n7 , \mult_26_2/n6 , \mult_26_2/n5 ,
         \mult_26_2/n4 , \mult_26_2/n3 , \mult_26_2/n2 , n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n127, n128,
         n129, n130;
  wire   [3:0] x_current;
  wire   [3:0] y_current;
  wire   [3:0] r1;
  wire   [3:0] r2;
  wire   [4:0] xa;
  wire   [4:0] ya;
  wire   [4:0] xb;
  wire   [4:0] yb;
  wire   [1:0] curr_mode;
  wire   [5:0] \sub_25/carry ;
  wire   [5:0] \sub_24/carry ;
  wire   [5:0] \sub_23/carry ;
  wire   [5:0] \sub_22/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  SET_DW01_inc_0 r460 ( .A(candidate), .SUM({N97, N96, N95, N94, N93, N92, N91, 
        N90}) );
  SET_DW01_sub_7 sub_1_root_sub_0_root_sub_28 ( .A({N44, N43, N42, N41, N40, 
        N39, 1'b0, N37}), .B({N20, N19, N18, N17, N16, N15, 1'b0, N13}), .CI(
        1'b0), .DIFF({\tempA[7] , \tempA[6] , \tempA[5] , \tempA[4] , 
        \tempA[3] , \tempA[2] , \tempA[1] , \tempA[0] }) );
  SET_DW01_sub_6 sub_0_root_sub_0_root_sub_28 ( .A({\tempA[7] , \tempA[6] , 
        \tempA[5] , \tempA[4] , \tempA[3] , \tempA[2] , \tempA[1] , \tempA[0] }), .B({N12, N11, N10, N9, N8, N7, 1'b0, N5}), .CI(1'b0), .DIFF({\checkA[7] , 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  SET_DW01_sub_5 sub_1_root_sub_0_root_sub_29 ( .A({N52, N51, N50, N49, N48, 
        N47, 1'b0, N45}), .B({N36, N35, N34, N33, N32, N31, 1'b0, N29}), .CI(
        1'b0), .DIFF({\tempB[7] , \tempB[6] , \tempB[5] , \tempB[4] , 
        \tempB[3] , \tempB[2] , \tempB[1] , \tempB[0] }) );
  SET_DW01_sub_4 sub_0_root_sub_0_root_sub_29 ( .A({\tempB[7] , \tempB[6] , 
        \tempB[5] , \tempB[4] , \tempB[3] , \tempB[2] , \tempB[1] , \tempB[0] }), .B({N28, N27, N26, N25, N24, N23, 1'b0, N21}), .CI(1'b0), .DIFF({
        \checkB[7] , SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  ADDHXL \mult_29/U7  ( .A(r2[2]), .B(\mult_29/n11 ), .CO(\mult_29/n6 ), .S(
        \mult_29/n7 ) );
  ADDHXL \mult_29/U6  ( .A(r2[1]), .B(\mult_29/n13 ), .CO(\mult_29/n5 ), .S(
        N47) );
  ADDHXL \mult_29/U5  ( .A(\mult_29/n12 ), .B(\mult_29/n5 ), .CO(\mult_29/n4 ), 
        .S(N48) );
  ADDFXL \mult_29/U4  ( .A(\mult_29/n7 ), .B(\mult_29/n10 ), .CI(\mult_29/n4 ), 
        .CO(\mult_29/n3 ), .S(N49) );
  ADDFXL \mult_29/U3  ( .A(\mult_29/n6 ), .B(\mult_29/n9 ), .CI(\mult_29/n3 ), 
        .CO(\mult_29/n2 ), .S(N50) );
  ADDFXL \mult_29/U2  ( .A(\mult_29/n8 ), .B(r2[3]), .CI(\mult_29/n2 ), .CO(
        N52), .S(N51) );
  ADDHXL \mult_28/U7  ( .A(r1[2]), .B(\mult_28/n11 ), .CO(\mult_28/n6 ), .S(
        \mult_28/n7 ) );
  ADDHXL \mult_28/U6  ( .A(r1[1]), .B(\mult_28/n13 ), .CO(\mult_28/n5 ), .S(
        N39) );
  ADDHXL \mult_28/U5  ( .A(\mult_28/n12 ), .B(\mult_28/n5 ), .CO(\mult_28/n4 ), 
        .S(N40) );
  ADDFXL \mult_28/U4  ( .A(\mult_28/n7 ), .B(\mult_28/n10 ), .CI(\mult_28/n4 ), 
        .CO(\mult_28/n3 ), .S(N41) );
  ADDFXL \mult_28/U3  ( .A(\mult_28/n6 ), .B(\mult_28/n9 ), .CI(\mult_28/n3 ), 
        .CO(\mult_28/n2 ), .S(N42) );
  ADDFXL \mult_28/U2  ( .A(\mult_28/n8 ), .B(r1[3]), .CI(\mult_28/n2 ), .CO(
        N44), .S(N43) );
  ADDHXL \mult_27/U11  ( .A(xb[2]), .B(\mult_27/n19 ), .CO(\mult_27/n11 ), .S(
        \mult_27/n12 ) );
  ADDFXL \mult_27/U8  ( .A(\mult_27/n16 ), .B(xb[3]), .CI(\mult_27/n14 ), .CO(
        \mult_27/n7 ), .S(\mult_27/n8 ) );
  ADDHXL \mult_27/U7  ( .A(xb[1]), .B(\mult_27/n21 ), .CO(\mult_27/n6 ), .S(
        N23) );
  ADDHXL \mult_27/U6  ( .A(\mult_27/n20 ), .B(\mult_27/n6 ), .CO(\mult_27/n5 ), 
        .S(N24) );
  ADDFXL \mult_27/U5  ( .A(\mult_27/n12 ), .B(\mult_27/n18 ), .CI(\mult_27/n5 ), .CO(\mult_27/n4 ), .S(N25) );
  ADDFXL \mult_27/U4  ( .A(\mult_27/n10 ), .B(\mult_27/n11 ), .CI(\mult_27/n4 ), .CO(\mult_27/n3 ), .S(N26) );
  ADDFXL \mult_27/U3  ( .A(\mult_27/n8 ), .B(\mult_27/n9 ), .CI(\mult_27/n3 ), 
        .CO(\mult_27/n2 ), .S(N27) );
  ADDHXL \mult_27_2/U11  ( .A(yb[2]), .B(\mult_27_2/n19 ), .CO(\mult_27_2/n11 ), .S(\mult_27_2/n12 ) );
  ADDFXL \mult_27_2/U8  ( .A(\mult_27_2/n16 ), .B(yb[3]), .CI(\mult_27_2/n14 ), 
        .CO(\mult_27_2/n7 ), .S(\mult_27_2/n8 ) );
  ADDHXL \mult_27_2/U7  ( .A(yb[1]), .B(\mult_27_2/n21 ), .CO(\mult_27_2/n6 ), 
        .S(N31) );
  ADDHXL \mult_27_2/U6  ( .A(\mult_27_2/n20 ), .B(\mult_27_2/n6 ), .CO(
        \mult_27_2/n5 ), .S(N32) );
  ADDFXL \mult_27_2/U5  ( .A(\mult_27_2/n12 ), .B(\mult_27_2/n18 ), .CI(
        \mult_27_2/n5 ), .CO(\mult_27_2/n4 ), .S(N33) );
  ADDFXL \mult_27_2/U4  ( .A(\mult_27_2/n10 ), .B(\mult_27_2/n11 ), .CI(
        \mult_27_2/n4 ), .CO(\mult_27_2/n3 ), .S(N34) );
  ADDFXL \mult_27_2/U3  ( .A(\mult_27_2/n8 ), .B(\mult_27_2/n9 ), .CI(
        \mult_27_2/n3 ), .CO(\mult_27_2/n2 ), .S(N35) );
  ADDHXL \mult_26/U11  ( .A(xa[2]), .B(\mult_26/n19 ), .CO(\mult_26/n11 ), .S(
        \mult_26/n12 ) );
  ADDFXL \mult_26/U8  ( .A(\mult_26/n16 ), .B(xa[3]), .CI(\mult_26/n14 ), .CO(
        \mult_26/n7 ), .S(\mult_26/n8 ) );
  ADDHXL \mult_26/U7  ( .A(xa[1]), .B(\mult_26/n21 ), .CO(\mult_26/n6 ), .S(N7) );
  ADDHXL \mult_26/U6  ( .A(\mult_26/n20 ), .B(\mult_26/n6 ), .CO(\mult_26/n5 ), 
        .S(N8) );
  ADDFXL \mult_26/U5  ( .A(\mult_26/n12 ), .B(\mult_26/n18 ), .CI(\mult_26/n5 ), .CO(\mult_26/n4 ), .S(N9) );
  ADDFXL \mult_26/U4  ( .A(\mult_26/n10 ), .B(\mult_26/n11 ), .CI(\mult_26/n4 ), .CO(\mult_26/n3 ), .S(N10) );
  ADDFXL \mult_26/U3  ( .A(\mult_26/n8 ), .B(\mult_26/n9 ), .CI(\mult_26/n3 ), 
        .CO(\mult_26/n2 ), .S(N11) );
  ADDHXL \mult_26_2/U11  ( .A(ya[2]), .B(\mult_26_2/n19 ), .CO(\mult_26_2/n11 ), .S(\mult_26_2/n12 ) );
  ADDFXL \mult_26_2/U8  ( .A(\mult_26_2/n16 ), .B(ya[3]), .CI(\mult_26_2/n14 ), 
        .CO(\mult_26_2/n7 ), .S(\mult_26_2/n8 ) );
  ADDHXL \mult_26_2/U7  ( .A(ya[1]), .B(\mult_26_2/n21 ), .CO(\mult_26_2/n6 ), 
        .S(N15) );
  ADDHXL \mult_26_2/U6  ( .A(\mult_26_2/n20 ), .B(\mult_26_2/n6 ), .CO(
        \mult_26_2/n5 ), .S(N16) );
  ADDFXL \mult_26_2/U5  ( .A(\mult_26_2/n12 ), .B(\mult_26_2/n18 ), .CI(
        \mult_26_2/n5 ), .CO(\mult_26_2/n4 ), .S(N17) );
  ADDFXL \mult_26_2/U4  ( .A(\mult_26_2/n10 ), .B(\mult_26_2/n11 ), .CI(
        \mult_26_2/n4 ), .CO(\mult_26_2/n3 ), .S(N18) );
  ADDFXL \mult_26_2/U3  ( .A(\mult_26_2/n8 ), .B(\mult_26_2/n9 ), .CI(
        \mult_26_2/n3 ), .CO(\mult_26_2/n2 ), .S(N19) );
  EDFFX1 \curr_mode_reg[0]  ( .D(mode[0]), .E(n58), .CK(clk), .Q(curr_mode[0])
         );
  EDFFX1 \curr_mode_reg[1]  ( .D(mode[1]), .E(n59), .CK(clk), .Q(curr_mode[1])
         );
  EDFFX1 \x1_reg[2]  ( .D(central[22]), .E(n58), .CK(clk), .QN(n102) );
  EDFFX1 \x1_reg[3]  ( .D(central[23]), .E(n58), .CK(clk), .QN(n101) );
  EDFFX1 \y1_reg[3]  ( .D(central[19]), .E(n58), .CK(clk), .QN(n104) );
  EDFFX1 \x2_reg[2]  ( .D(central[14]), .E(n58), .CK(clk), .QN(n109) );
  EDFFX1 \x2_reg[3]  ( .D(central[15]), .E(n58), .CK(clk), .QN(n108) );
  EDFFX1 \y2_reg[3]  ( .D(central[11]), .E(n59), .CK(clk), .QN(n112) );
  EDFFX1 \r1_reg[3]  ( .D(radius[11]), .E(n59), .CK(clk), .Q(r1[3]), .QN(n92)
         );
  EDFFX1 \r2_reg[3]  ( .D(radius[7]), .E(n59), .CK(clk), .Q(r2[3]), .QN(n96)
         );
  EDFFX1 \x1_reg[1]  ( .D(central[21]), .E(n58), .CK(clk), .QN(n103) );
  EDFFX1 \y1_reg[0]  ( .D(central[16]), .E(n58), .CK(clk), .QN(n107) );
  EDFFX1 \y1_reg[1]  ( .D(central[17]), .E(n58), .CK(clk), .QN(n106) );
  EDFFX1 \y1_reg[2]  ( .D(central[18]), .E(n58), .CK(clk), .QN(n105) );
  EDFFX1 \x2_reg[0]  ( .D(central[12]), .E(n58), .CK(clk), .QN(n111) );
  EDFFX1 \x2_reg[1]  ( .D(central[13]), .E(n58), .CK(clk), .QN(n110) );
  EDFFX1 \y2_reg[0]  ( .D(central[8]), .E(n58), .CK(clk), .QN(n115) );
  EDFFX1 \y2_reg[1]  ( .D(central[9]), .E(n59), .CK(clk), .QN(n114) );
  EDFFX1 \y2_reg[2]  ( .D(central[10]), .E(n59), .CK(clk), .QN(n113) );
  EDFFX1 \x1_reg[0]  ( .D(central[20]), .E(n59), .CK(clk), .QN(n100) );
  EDFFX1 \r1_reg[1]  ( .D(radius[9]), .E(n59), .CK(clk), .Q(r1[1]), .QN(n94)
         );
  EDFFX1 \r1_reg[2]  ( .D(radius[10]), .E(n59), .CK(clk), .Q(r1[2]), .QN(n93)
         );
  EDFFX1 \r2_reg[1]  ( .D(radius[5]), .E(n59), .CK(clk), .Q(r2[1]), .QN(n98)
         );
  EDFFX1 \r2_reg[2]  ( .D(radius[6]), .E(n59), .CK(clk), .Q(r2[2]), .QN(n97)
         );
  EDFFX1 \r1_reg[0]  ( .D(radius[8]), .E(n59), .CK(clk), .Q(N37), .QN(n95) );
  EDFFX1 \r2_reg[0]  ( .D(radius[4]), .E(n59), .CK(clk), .Q(N45), .QN(n99) );
  DFFRX1 \x_current_reg[3]  ( .D(n53), .CK(clk), .RN(n116), .Q(x_current[3])
         );
  DFFRX1 \y_current_reg[3]  ( .D(n49), .CK(clk), .RN(n116), .Q(y_current[3])
         );
  DFFRX1 \x_current_reg[2]  ( .D(n54), .CK(clk), .RN(n116), .Q(x_current[2])
         );
  DFFRX1 \x_current_reg[1]  ( .D(n55), .CK(clk), .RN(n116), .Q(x_current[1])
         );
  DFFRX1 \y_current_reg[1]  ( .D(n51), .CK(clk), .RN(n116), .Q(y_current[1])
         );
  DFFRX1 \y_current_reg[2]  ( .D(n50), .CK(clk), .RN(n116), .Q(y_current[2])
         );
  DFFRX2 busy_reg ( .D(n57), .CK(clk), .RN(n116), .Q(busy), .QN(n26) );
  DFFRX2 \candidate_reg[0]  ( .D(n46), .CK(clk), .RN(n116), .Q(candidate[0])
         );
  DFFRX2 \candidate_reg[7]  ( .D(n40), .CK(clk), .RN(n116), .Q(candidate[7])
         );
  DFFRX2 \candidate_reg[6]  ( .D(n41), .CK(clk), .RN(n116), .Q(candidate[6])
         );
  DFFRX2 \candidate_reg[5]  ( .D(n42), .CK(clk), .RN(n116), .Q(candidate[5])
         );
  DFFRX2 \candidate_reg[4]  ( .D(n43), .CK(clk), .RN(n116), .Q(candidate[4])
         );
  DFFRX2 \candidate_reg[3]  ( .D(n44), .CK(clk), .RN(n116), .Q(candidate[3])
         );
  DFFRX2 \candidate_reg[2]  ( .D(n45), .CK(clk), .RN(n116), .Q(candidate[2])
         );
  DFFRX2 \candidate_reg[1]  ( .D(n47), .CK(clk), .RN(n116), .Q(candidate[1])
         );
  DFFRX2 valid_reg ( .D(n48), .CK(clk), .RN(n116), .Q(valid) );
  DFFSX2 \x_current_reg[0]  ( .D(n56), .CK(clk), .SN(n116), .Q(x_current[0])
         );
  DFFSX2 \y_current_reg[0]  ( .D(n52), .CK(clk), .SN(n116), .Q(y_current[0])
         );
  NOR2X1 U45 ( .A(rst), .B(n30), .Y(n33) );
  ADDFXL U46 ( .A(y_current[2]), .B(n113), .CI(\sub_25/carry [2]), .CO(
        \sub_25/carry [3]), .S(yb[2]) );
  ADDFXL U47 ( .A(y_current[2]), .B(n105), .CI(\sub_23/carry [2]), .CO(
        \sub_23/carry [3]), .S(ya[2]) );
  ADDFXL U48 ( .A(y_current[3]), .B(n112), .CI(\sub_25/carry [3]), .CO(
        \sub_25/carry [4]), .S(yb[3]) );
  ADDFXL U49 ( .A(x_current[2]), .B(n109), .CI(\sub_24/carry [2]), .CO(
        \sub_24/carry [3]), .S(xb[2]) );
  ADDFXL U50 ( .A(x_current[2]), .B(n102), .CI(\sub_22/carry [2]), .CO(
        \sub_22/carry [3]), .S(xa[2]) );
  ADDFXL U51 ( .A(x_current[3]), .B(n108), .CI(\sub_24/carry [3]), .CO(
        \sub_24/carry [4]), .S(xb[3]) );
  ADDFXL U52 ( .A(x_current[3]), .B(n101), .CI(\sub_22/carry [3]), .CO(
        \sub_22/carry [4]), .S(xa[3]) );
  ADDFXL U53 ( .A(y_current[3]), .B(n104), .CI(\sub_23/carry [3]), .CO(
        \sub_23/carry [4]), .S(ya[3]) );
  CLKINVX1 U54 ( .A(n35), .Y(n117) );
  CLKINVX1 U55 ( .A(n36), .Y(n118) );
  CLKBUFX3 U56 ( .A(n33), .Y(n59) );
  CLKBUFX3 U57 ( .A(n33), .Y(n58) );
  CLKINVX1 U58 ( .A(N29), .Y(n80) );
  CLKINVX1 U59 ( .A(N13), .Y(n64) );
  CLKINVX1 U60 ( .A(N21), .Y(n88) );
  CLKINVX1 U61 ( .A(N5), .Y(n72) );
  CLKINVX1 U62 ( .A(yb[2]), .Y(n82) );
  CLKINVX1 U63 ( .A(ya[2]), .Y(n66) );
  CLKINVX1 U64 ( .A(xb[2]), .Y(n90) );
  CLKINVX1 U65 ( .A(xa[2]), .Y(n74) );
  CLKINVX1 U66 ( .A(\sub_25/carry [4]), .Y(yb[4]) );
  CLKINVX1 U67 ( .A(\sub_23/carry [4]), .Y(ya[4]) );
  CLKINVX1 U68 ( .A(yb[1]), .Y(n81) );
  CLKINVX1 U69 ( .A(ya[1]), .Y(n65) );
  CLKINVX1 U70 ( .A(xb[1]), .Y(n89) );
  CLKINVX1 U71 ( .A(xa[1]), .Y(n73) );
  CLKINVX1 U72 ( .A(yb[3]), .Y(n83) );
  CLKINVX1 U73 ( .A(ya[3]), .Y(n67) );
  CLKINVX1 U74 ( .A(xb[3]), .Y(n91) );
  CLKINVX1 U75 ( .A(\sub_24/carry [4]), .Y(xb[4]) );
  CLKINVX1 U76 ( .A(\sub_22/carry [4]), .Y(xa[4]) );
  CLKINVX1 U77 ( .A(xa[3]), .Y(n75) );
  NAND2X1 U78 ( .A(N153), .B(N152), .Y(n130) );
  NAND2X1 U79 ( .A(N147), .B(N146), .Y(n128) );
  CLKINVX1 U80 ( .A(n39), .Y(n121) );
  CLKINVX1 U81 ( .A(N152), .Y(n120) );
  CLKINVX1 U82 ( .A(N146), .Y(n119) );
  CLKINVX1 U83 ( .A(n38), .Y(n122) );
  OA21X2 U84 ( .A0(n29), .A1(n26), .B0(n30), .Y(n27) );
  AOI2BB2X1 U85 ( .B0(curr_mode[1]), .B1(n31), .A0N(n32), .A1N(\checkA[7] ), 
        .Y(n29) );
  XOR2X1 U86 ( .A(\checkB[7] ), .B(\checkA[7] ), .Y(n31) );
  OA22X1 U87 ( .A0(curr_mode[0]), .A1(curr_mode[1]), .B0(curr_mode[1]), .B1(
        \checkB[7] ), .Y(n32) );
  OAI21X1 U88 ( .A0(n26), .A1(n121), .B0(n30), .Y(n35) );
  NOR2X2 U89 ( .A(n26), .B(n27), .Y(n28) );
  NOR2X1 U90 ( .A(en), .B(busy), .Y(n36) );
  NAND2X1 U91 ( .A(en), .B(n26), .Y(n30) );
  XOR2X1 U92 ( .A(n37), .B(busy), .Y(n57) );
  OAI31XL U93 ( .A0(n121), .A1(n26), .A2(n122), .B0(n30), .Y(n37) );
  AO22X1 U94 ( .A0(n120), .A1(n35), .B0(y_current[0]), .B1(n117), .Y(n52) );
  AO22X1 U95 ( .A0(candidate[0]), .A1(n27), .B0(N90), .B1(n28), .Y(n46) );
  AO22X1 U96 ( .A0(n119), .A1(n118), .B0(x_current[0]), .B1(n36), .Y(n56) );
  AO22X1 U97 ( .A0(candidate[6]), .A1(n27), .B0(N96), .B1(n28), .Y(n41) );
  AO22X1 U98 ( .A0(candidate[5]), .A1(n27), .B0(N95), .B1(n28), .Y(n42) );
  AO22X1 U99 ( .A0(candidate[4]), .A1(n27), .B0(N94), .B1(n28), .Y(n43) );
  AO22X1 U100 ( .A0(candidate[3]), .A1(n27), .B0(N93), .B1(n28), .Y(n44) );
  AO22X1 U101 ( .A0(candidate[2]), .A1(n27), .B0(N92), .B1(n28), .Y(n45) );
  AO22X1 U102 ( .A0(candidate[1]), .A1(n27), .B0(N91), .B1(n28), .Y(n47) );
  AO22X1 U103 ( .A0(candidate[7]), .A1(n27), .B0(N97), .B1(n28), .Y(n40) );
  AO22X1 U104 ( .A0(N112), .A1(n35), .B0(y_current[1]), .B1(n117), .Y(n51) );
  XNOR2X1 U105 ( .A(N153), .B(n120), .Y(N112) );
  AO22X1 U106 ( .A0(N113), .A1(n35), .B0(y_current[2]), .B1(n117), .Y(n50) );
  XNOR2X1 U107 ( .A(N154), .B(n130), .Y(N113) );
  AO22X1 U108 ( .A0(n117), .A1(y_current[3]), .B0(N114), .B1(n35), .Y(n49) );
  XOR2X1 U109 ( .A(N155), .B(n129), .Y(N114) );
  NOR2BX1 U110 ( .AN(N154), .B(n130), .Y(n129) );
  AO22X1 U111 ( .A0(N108), .A1(n118), .B0(x_current[2]), .B1(n36), .Y(n54) );
  XNOR2X1 U112 ( .A(N148), .B(n128), .Y(N108) );
  AO22X1 U113 ( .A0(N107), .A1(n118), .B0(x_current[1]), .B1(n36), .Y(n55) );
  XNOR2X1 U114 ( .A(N147), .B(n119), .Y(N107) );
  AO22X1 U115 ( .A0(n36), .A1(x_current[3]), .B0(N109), .B1(n118), .Y(n53) );
  XOR2X1 U116 ( .A(N149), .B(n127), .Y(N109) );
  NOR2BX1 U117 ( .AN(N148), .B(n128), .Y(n127) );
  ADDFX2 U118 ( .A(x_current[1]), .B(n110), .CI(\sub_24/carry [1]), .CO(
        \sub_24/carry [2]), .S(xb[1]) );
  ADDFX2 U119 ( .A(x_current[1]), .B(n103), .CI(\sub_22/carry [1]), .CO(
        \sub_22/carry [2]), .S(xa[1]) );
  ADDFX2 U120 ( .A(y_current[1]), .B(n114), .CI(\sub_25/carry [1]), .CO(
        \sub_25/carry [2]), .S(yb[1]) );
  ADDFX2 U121 ( .A(y_current[1]), .B(n106), .CI(\sub_23/carry [1]), .CO(
        \sub_23/carry [2]), .S(ya[1]) );
  NOR4BX1 U122 ( .AN(y_current[3]), .B(y_current[0]), .C(y_current[1]), .D(
        y_current[2]), .Y(n38) );
  NOR4BX1 U123 ( .AN(x_current[3]), .B(x_current[0]), .C(x_current[1]), .D(
        x_current[2]), .Y(n39) );
  NOR2X1 U124 ( .A(n38), .B(n26), .Y(N151) );
  NOR2X1 U125 ( .A(n39), .B(n26), .Y(N145) );
  OAI2BB2XL U126 ( .B0(n26), .B1(n34), .A0N(valid), .A1N(n34), .Y(n48) );
  AOI2BB1X1 U127 ( .A0N(n122), .A1N(n121), .B0(n26), .Y(n34) );
  INVX4 U128 ( .A(rst), .Y(n116) );
  OR2X1 U129 ( .A(n100), .B(x_current[0]), .Y(\sub_22/carry [1]) );
  XNOR2X1 U130 ( .A(x_current[0]), .B(n100), .Y(N5) );
  OR2X1 U131 ( .A(n107), .B(y_current[0]), .Y(\sub_23/carry [1]) );
  XNOR2X1 U132 ( .A(y_current[0]), .B(n107), .Y(N13) );
  OR2X1 U133 ( .A(n111), .B(x_current[0]), .Y(\sub_24/carry [1]) );
  XNOR2X1 U134 ( .A(x_current[0]), .B(n111), .Y(N21) );
  OR2X1 U135 ( .A(n115), .B(y_current[0]), .Y(\sub_25/carry [1]) );
  XNOR2X1 U136 ( .A(y_current[0]), .B(n115), .Y(N29) );
  NAND2X1 U137 ( .A(ya[3]), .B(ya[1]), .Y(n60) );
  NAND2X1 U138 ( .A(N13), .B(ya[4]), .Y(n61) );
  XOR2X1 U139 ( .A(n60), .B(n61), .Y(\mult_26_2/n10 ) );
  NAND2X1 U140 ( .A(ya[1]), .B(ya[4]), .Y(\mult_26_2/n14 ) );
  NOR2X1 U141 ( .A(n66), .B(n67), .Y(\mult_26_2/n16 ) );
  NOR2X1 U142 ( .A(n67), .B(n64), .Y(\mult_26_2/n18 ) );
  NOR2X1 U143 ( .A(n66), .B(n65), .Y(\mult_26_2/n19 ) );
  NOR2X1 U144 ( .A(n66), .B(n64), .Y(\mult_26_2/n20 ) );
  NOR2X1 U145 ( .A(n65), .B(n64), .Y(\mult_26_2/n21 ) );
  NAND2BX1 U146 ( .AN(n61), .B(n60), .Y(\mult_26_2/n9 ) );
  NAND2X1 U147 ( .A(ya[4]), .B(ya[2]), .Y(n63) );
  XOR2X1 U148 ( .A(\mult_26_2/n7 ), .B(\mult_26_2/n2 ), .Y(n62) );
  XOR2X1 U149 ( .A(n63), .B(n62), .Y(N20) );
  NAND2X1 U150 ( .A(xa[3]), .B(xa[1]), .Y(n68) );
  NAND2X1 U151 ( .A(N5), .B(xa[4]), .Y(n69) );
  XOR2X1 U152 ( .A(n68), .B(n69), .Y(\mult_26/n10 ) );
  NAND2X1 U153 ( .A(xa[1]), .B(xa[4]), .Y(\mult_26/n14 ) );
  NOR2X1 U154 ( .A(n74), .B(n75), .Y(\mult_26/n16 ) );
  NOR2X1 U155 ( .A(n75), .B(n72), .Y(\mult_26/n18 ) );
  NOR2X1 U156 ( .A(n74), .B(n73), .Y(\mult_26/n19 ) );
  NOR2X1 U157 ( .A(n74), .B(n72), .Y(\mult_26/n20 ) );
  NOR2X1 U158 ( .A(n73), .B(n72), .Y(\mult_26/n21 ) );
  NAND2BX1 U159 ( .AN(n69), .B(n68), .Y(\mult_26/n9 ) );
  NAND2X1 U160 ( .A(xa[4]), .B(xa[2]), .Y(n71) );
  XOR2X1 U161 ( .A(\mult_26/n7 ), .B(\mult_26/n2 ), .Y(n70) );
  XOR2X1 U162 ( .A(n71), .B(n70), .Y(N12) );
  NAND2X1 U163 ( .A(yb[3]), .B(yb[1]), .Y(n76) );
  NAND2X1 U164 ( .A(N29), .B(yb[4]), .Y(n77) );
  XOR2X1 U165 ( .A(n76), .B(n77), .Y(\mult_27_2/n10 ) );
  NAND2X1 U166 ( .A(yb[1]), .B(yb[4]), .Y(\mult_27_2/n14 ) );
  NOR2X1 U167 ( .A(n82), .B(n83), .Y(\mult_27_2/n16 ) );
  NOR2X1 U168 ( .A(n83), .B(n80), .Y(\mult_27_2/n18 ) );
  NOR2X1 U169 ( .A(n82), .B(n81), .Y(\mult_27_2/n19 ) );
  NOR2X1 U170 ( .A(n82), .B(n80), .Y(\mult_27_2/n20 ) );
  NOR2X1 U171 ( .A(n81), .B(n80), .Y(\mult_27_2/n21 ) );
  NAND2BX1 U172 ( .AN(n77), .B(n76), .Y(\mult_27_2/n9 ) );
  NAND2X1 U173 ( .A(yb[4]), .B(yb[2]), .Y(n79) );
  XOR2X1 U174 ( .A(\mult_27_2/n7 ), .B(\mult_27_2/n2 ), .Y(n78) );
  XOR2X1 U175 ( .A(n79), .B(n78), .Y(N36) );
  NAND2X1 U176 ( .A(xb[3]), .B(xb[1]), .Y(n84) );
  NAND2X1 U177 ( .A(N21), .B(xb[4]), .Y(n85) );
  XOR2X1 U178 ( .A(n84), .B(n85), .Y(\mult_27/n10 ) );
  NAND2X1 U179 ( .A(xb[1]), .B(xb[4]), .Y(\mult_27/n14 ) );
  NOR2X1 U180 ( .A(n90), .B(n91), .Y(\mult_27/n16 ) );
  NOR2X1 U181 ( .A(n91), .B(n88), .Y(\mult_27/n18 ) );
  NOR2X1 U182 ( .A(n90), .B(n89), .Y(\mult_27/n19 ) );
  NOR2X1 U183 ( .A(n90), .B(n88), .Y(\mult_27/n20 ) );
  NOR2X1 U184 ( .A(n89), .B(n88), .Y(\mult_27/n21 ) );
  NAND2BX1 U185 ( .AN(n85), .B(n84), .Y(\mult_27/n9 ) );
  NAND2X1 U186 ( .A(xb[4]), .B(xb[2]), .Y(n87) );
  XOR2X1 U187 ( .A(\mult_27/n7 ), .B(\mult_27/n2 ), .Y(n86) );
  XOR2X1 U188 ( .A(n87), .B(n86), .Y(N28) );
  AND2X1 U189 ( .A(x_current[0]), .B(N145), .Y(N146) );
  AND2X1 U190 ( .A(x_current[1]), .B(N145), .Y(N147) );
  AND2X1 U191 ( .A(x_current[2]), .B(N145), .Y(N148) );
  AND2X1 U192 ( .A(N145), .B(x_current[3]), .Y(N149) );
  AND2X1 U193 ( .A(y_current[0]), .B(N151), .Y(N152) );
  AND2X1 U194 ( .A(y_current[1]), .B(N151), .Y(N153) );
  AND2X1 U195 ( .A(y_current[2]), .B(N151), .Y(N154) );
  AND2X1 U196 ( .A(N151), .B(y_current[3]), .Y(N155) );
  NOR2X1 U197 ( .A(n92), .B(n95), .Y(\mult_28/n10 ) );
  NOR2X1 U198 ( .A(n94), .B(n93), .Y(\mult_28/n11 ) );
  NOR2X1 U199 ( .A(n93), .B(n95), .Y(\mult_28/n12 ) );
  NOR2X1 U200 ( .A(n94), .B(n95), .Y(\mult_28/n13 ) );
  NOR2X1 U201 ( .A(n92), .B(n93), .Y(\mult_28/n8 ) );
  NOR2X1 U202 ( .A(n94), .B(n92), .Y(\mult_28/n9 ) );
  NOR2X1 U203 ( .A(n96), .B(n99), .Y(\mult_29/n10 ) );
  NOR2X1 U204 ( .A(n98), .B(n97), .Y(\mult_29/n11 ) );
  NOR2X1 U205 ( .A(n97), .B(n99), .Y(\mult_29/n12 ) );
  NOR2X1 U206 ( .A(n98), .B(n99), .Y(\mult_29/n13 ) );
  NOR2X1 U207 ( .A(n96), .B(n97), .Y(\mult_29/n8 ) );
  NOR2X1 U208 ( .A(n98), .B(n96), .Y(\mult_29/n9 ) );
endmodule

