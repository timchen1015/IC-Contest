/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Mon Mar 24 11:33:31 2025
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  AND2X2 U3 ( .A(A[7]), .B(carry[7]), .Y(n3) );
  XOR2X1 U4 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  XOR2X1 U5 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U6 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2X1 U7 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
endmodule


module JAM_DW01_inc_0_DW01_inc_5 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193,
         N194, N195, N196, N197, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, \temp_seq[7][2] , \temp_seq[7][1] ,
         \temp_seq[7][0] , \temp_seq[6][2] , \temp_seq[6][1] ,
         \temp_seq[6][0] , \temp_seq[5][2] , \temp_seq[5][1] ,
         \temp_seq[5][0] , \temp_seq[4][2] , \temp_seq[4][1] ,
         \temp_seq[4][0] , \temp_seq[3][2] , \temp_seq[3][1] ,
         \temp_seq[3][0] , \temp_seq[2][2] , \temp_seq[2][1] ,
         \temp_seq[2][0] , \temp_seq[1][2] , \temp_seq[1][1] ,
         \temp_seq[1][0] , \temp_seq[0][2] , \temp_seq[0][1] ,
         \temp_seq[0][0] , N242, N243, N244, N267, N268, N316, N317, N318,
         N319, N320, N321, N322, N323, N324, N325, N326, N327, N328, N329,
         N330, N331, N361, N362, N363, N368, N369, N370, N372, N373, N374,
         N375, N376, N377, N378, N379, N380, N381, N392, N394, N415, N416,
         N417, N426, N427, N428, N503, N504, N505, N525, N526, N527, N576,
         N577, N578, n67, n70, n71, n80, n92, n93, n94, n98, n99, n103, n106,
         n107, n108, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n707,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696;
  wire   [3:0] state;
  wire   [3:0] next_state;
  wire   [2:0] people_cnt;
  wire   [15:0] ans_cnt;
  wire   [2:0] switch_value;
  wire   [9:0] temp_cost;

  JAM_DW01_add_0 add_162_S2 ( .A(temp_cost), .B({1'b0, 1'b0, 1'b0, Cost}), 
        .CI(1'b0), .SUM({N381, N380, N379, N378, N377, N376, N375, N374, N373, 
        N372}) );
  JAM_DW01_inc_0_DW01_inc_5 add_133 ( .A(ans_cnt), .SUM({N331, N330, N329, 
        N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, 
        N316}) );
  DFFRX1 \switch_value_reg[0]  ( .D(n374), .CK(CLK), .RN(n521), .QN(n108) );
  DFFRX1 \switch_value_reg[1]  ( .D(n375), .CK(CLK), .RN(n521), .Q(
        switch_value[1]), .QN(n107) );
  DFFRX1 \people_cnt_reg[2]  ( .D(n383), .CK(CLK), .RN(n521), .Q(people_cnt[2]), .QN(n124) );
  DFFRX1 \ans_cnt_reg[15]  ( .D(n366), .CK(CLK), .RN(n522), .Q(ans_cnt[15]) );
  DFFRX1 \switch_value_reg[2]  ( .D(n376), .CK(CLK), .RN(n521), .Q(
        switch_value[2]), .QN(n106) );
  DFFRX1 \people_cnt_reg[0]  ( .D(n384), .CK(CLK), .RN(n521), .Q(people_cnt[0]), .QN(n126) );
  DFFRX1 \people_cnt_reg[1]  ( .D(n367), .CK(CLK), .RN(n524), .Q(people_cnt[1]), .QN(n125) );
  DFFRX1 \ans_cnt_reg[9]  ( .D(n356), .CK(CLK), .RN(n523), .Q(ans_cnt[9]) );
  DFFRX1 \ans_cnt_reg[14]  ( .D(n351), .CK(CLK), .RN(n524), .Q(ans_cnt[14]) );
  DFFRX1 \ans_cnt_reg[12]  ( .D(n353), .CK(CLK), .RN(n523), .Q(ans_cnt[12]) );
  DFFRX1 \ans_cnt_reg[11]  ( .D(n354), .CK(CLK), .RN(n523), .Q(ans_cnt[11]) );
  DFFRX1 \ans_cnt_reg[10]  ( .D(n355), .CK(CLK), .RN(n523), .Q(ans_cnt[10]) );
  DFFRX1 \ans_cnt_reg[4]  ( .D(n361), .CK(CLK), .RN(n523), .Q(ans_cnt[4]) );
  DFFRX1 \ans_cnt_reg[1]  ( .D(n364), .CK(CLK), .RN(n522), .Q(ans_cnt[1]) );
  DFFRX1 \ans_cnt_reg[5]  ( .D(n360), .CK(CLK), .RN(n523), .Q(ans_cnt[5]) );
  DFFRX1 \ans_cnt_reg[2]  ( .D(n363), .CK(CLK), .RN(n523), .Q(ans_cnt[2]) );
  DFFRX1 \ans_cnt_reg[6]  ( .D(n359), .CK(CLK), .RN(n523), .Q(ans_cnt[6]) );
  DFFRX1 \ans_cnt_reg[3]  ( .D(n362), .CK(CLK), .RN(n523), .Q(ans_cnt[3]) );
  DFFRX1 \ans_cnt_reg[8]  ( .D(n357), .CK(CLK), .RN(n523), .Q(ans_cnt[8]) );
  DFFRX1 \ans_cnt_reg[7]  ( .D(n358), .CK(CLK), .RN(n523), .Q(ans_cnt[7]) );
  DFFRX1 \check_switch_point_reg[2]  ( .D(n371), .CK(CLK), .RN(n521), .Q(N191), 
        .QN(n103) );
  DFFRX1 \temp_cost_reg[9]  ( .D(n341), .CK(CLK), .RN(n525), .Q(temp_cost[9])
         );
  DFFRX1 \temp_cost_reg[6]  ( .D(n344), .CK(CLK), .RN(n524), .Q(temp_cost[6])
         );
  DFFRX1 \left_reg[0]  ( .D(n379), .CK(CLK), .RN(n522), .Q(N186), .QN(n99) );
  DFFRX1 \right_reg[1]  ( .D(n381), .CK(CLK), .RN(n521), .Q(N184), .QN(n93) );
  DFFRX1 \temp_cost_reg[4]  ( .D(n346), .CK(CLK), .RN(n524), .Q(temp_cost[4]), 
        .QN(n441) );
  DFFRX1 \temp_cost_reg[5]  ( .D(n345), .CK(CLK), .RN(n524), .Q(temp_cost[5]), 
        .QN(n447) );
  DFFRX1 \temp_cost_reg[3]  ( .D(n347), .CK(CLK), .RN(n524), .Q(temp_cost[3])
         );
  DFFRX1 \temp_cost_reg[2]  ( .D(n348), .CK(CLK), .RN(n524), .Q(temp_cost[2])
         );
  DFFRX1 \temp_seq_reg[2][1]  ( .D(n316), .CK(CLK), .RN(n525), .Q(
        \temp_seq[2][1] ) );
  DFFSX1 \temp_seq_reg[2][2]  ( .D(n315), .CK(CLK), .SN(n526), .Q(
        \temp_seq[2][2] ) );
  DFFSX1 \temp_seq_reg[2][0]  ( .D(n317), .CK(CLK), .SN(n525), .Q(
        \temp_seq[2][0] ) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n521), .Q(state[1]), 
        .QN(n71) );
  DFFRX1 \worker_index_reg[2]  ( .D(N363), .CK(CLK), .RN(n524), .Q(N197), .QN(
        n612) );
  DFFRX1 \temp_seq_reg[7][2]  ( .D(n326), .CK(CLK), .RN(n525), .Q(
        \temp_seq[7][2] ) );
  DFFRX1 \temp_seq_reg[7][1]  ( .D(n325), .CK(CLK), .RN(n525), .Q(
        \temp_seq[7][1] ) );
  DFFRX1 \temp_seq_reg[7][0]  ( .D(n324), .CK(CLK), .RN(n525), .Q(
        \temp_seq[7][0] ) );
  DFFRX1 \temp_seq_reg[1][0]  ( .D(n320), .CK(CLK), .RN(n520), .Q(
        \temp_seq[1][0] ), .QN(n449) );
  DFFSX1 \temp_seq_reg[0][2]  ( .D(n321), .CK(CLK), .SN(n526), .Q(
        \temp_seq[0][2] ), .QN(n130) );
  DFFSX1 \temp_seq_reg[1][2]  ( .D(n318), .CK(CLK), .SN(n526), .Q(
        \temp_seq[1][2] ), .QN(n451) );
  DFFSX1 \temp_seq_reg[0][1]  ( .D(n322), .CK(CLK), .SN(n526), .Q(
        \temp_seq[0][1] ), .QN(n131) );
  DFFSX1 \temp_seq_reg[1][1]  ( .D(n319), .CK(CLK), .SN(n520), .Q(
        \temp_seq[1][1] ), .QN(n450) );
  DFFSX1 \temp_seq_reg[0][0]  ( .D(n323), .CK(CLK), .SN(n520), .Q(
        \temp_seq[0][0] ), .QN(n132) );
  DFFRX1 \ans_cnt_reg[13]  ( .D(n352), .CK(CLK), .RN(n523), .Q(ans_cnt[13]) );
  DFFRX1 \right_reg[2]  ( .D(n380), .CK(CLK), .RN(n521), .Q(N185), .QN(n92) );
  DFFRX1 \ans_cnt_reg[0]  ( .D(n365), .CK(CLK), .RN(n522), .Q(ans_cnt[0]) );
  DFFRX1 \left_reg[1]  ( .D(n378), .CK(CLK), .RN(n522), .Q(N187), .QN(n98) );
  DFFRX1 \temp_cost_reg[8]  ( .D(n342), .CK(CLK), .RN(n525), .Q(temp_cost[8]), 
        .QN(n446) );
  DFFRX1 \temp_cost_reg[7]  ( .D(n343), .CK(CLK), .RN(n525), .Q(temp_cost[7])
         );
  DFFRX1 \left_reg[2]  ( .D(n377), .CK(CLK), .RN(n522), .Q(N188), .QN(n448) );
  DFFRX1 \right_reg[0]  ( .D(n382), .CK(CLK), .RN(n522), .Q(N183), .QN(n94) );
  DFFRX1 \temp_cost_reg[1]  ( .D(n349), .CK(CLK), .RN(n524), .Q(temp_cost[1]), 
        .QN(n445) );
  DFFRX1 \temp_cost_reg[0]  ( .D(n350), .CK(CLK), .RN(n524), .Q(temp_cost[0])
         );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n521), .Q(state[2]), 
        .QN(n70) );
  DFFRX1 \temp_seq_reg[5][2]  ( .D(n306), .CK(CLK), .RN(n525), .Q(
        \temp_seq[5][2] ) );
  DFFRX1 \temp_seq_reg[5][0]  ( .D(n308), .CK(CLK), .RN(n520), .Q(
        \temp_seq[5][0] ) );
  DFFSX1 \temp_seq_reg[5][1]  ( .D(n307), .CK(CLK), .SN(n522), .Q(
        \temp_seq[5][1] ) );
  DFFRX1 \state_reg[3]  ( .D(n644), .CK(CLK), .RN(n521), .Q(state[3]), .QN(n67) );
  DFFRX1 \worker_index_reg[1]  ( .D(N362), .CK(CLK), .RN(n524), .Q(N196), .QN(
        n613) );
  DFFRX1 \worker_index_reg[0]  ( .D(N361), .CK(CLK), .RN(n524), .Q(N195), .QN(
        n614) );
  DFFSX1 \MinCost_reg[8]  ( .D(n338), .CK(CLK), .SN(n526), .QN(n439) );
  DFFSX1 \MinCost_reg[4]  ( .D(n334), .CK(CLK), .SN(n526), .QN(n437) );
  DFFSX1 \MinCost_reg[3]  ( .D(n333), .CK(CLK), .SN(n526), .QN(n444) );
  DFFSX1 \MinCost_reg[0]  ( .D(n340), .CK(CLK), .SN(n520), .QN(n440) );
  DFFSX1 \MinCost_reg[2]  ( .D(n332), .CK(CLK), .SN(n526), .Q(n706), .QN(n640)
         );
  DFFSX1 \MinCost_reg[7]  ( .D(n337), .CK(CLK), .SN(n526), .Q(n704), .QN(n638)
         );
  DFFSX1 \MinCost_reg[6]  ( .D(n336), .CK(CLK), .SN(n526), .Q(n705), .QN(n639)
         );
  DFFSX1 \MinCost_reg[9]  ( .D(n339), .CK(CLK), .SN(n526), .Q(n703), .QN(n637)
         );
  DFFSX1 \MinCost_reg[5]  ( .D(n335), .CK(CLK), .SN(n526), .QN(n438) );
  DFFSX1 \MinCost_reg[1]  ( .D(n331), .CK(CLK), .SN(n520), .QN(n442) );
  DFFRX1 \MatchCount_reg[3]  ( .D(n327), .CK(CLK), .RN(n525), .QN(n443) );
  DFFSX1 \temp_seq_reg[4][0]  ( .D(n311), .CK(CLK), .SN(n643), .Q(
        \temp_seq[4][0] ), .QN(n493) );
  DFFSX1 \temp_seq_reg[4][1]  ( .D(n310), .CK(CLK), .SN(n643), .Q(
        \temp_seq[4][1] ), .QN(n495) );
  DFFRX1 \temp_seq_reg[4][2]  ( .D(n309), .CK(CLK), .RN(n643), .Q(
        \temp_seq[4][2] ), .QN(n497) );
  DFFSX1 \MatchCount_reg[0]  ( .D(n330), .CK(CLK), .SN(n643), .QN(n129) );
  DFFRX4 \state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n643), .Q(state[0]), 
        .QN(n80) );
  DFFRX2 \switch_point_reg[2]  ( .D(n368), .CK(CLK), .RN(n643), .Q(N194), .QN(
        n595) );
  DFFRX2 \switch_point_reg[1]  ( .D(n369), .CK(CLK), .RN(n643), .Q(N193), .QN(
        n593) );
  DFFRX2 \switch_point_reg[0]  ( .D(n370), .CK(CLK), .RN(n643), .Q(N192), .QN(
        n594) );
  DFFRX1 \MatchCount_reg[2]  ( .D(n328), .CK(CLK), .RN(n643), .QN(n127) );
  DFFRX1 \MatchCount_reg[1]  ( .D(n329), .CK(CLK), .RN(n643), .QN(n128) );
  DFFRX2 \check_switch_point_reg[0]  ( .D(n372), .CK(CLK), .RN(n522), .Q(N189), 
        .QN(n576) );
  DFFRX2 \check_switch_point_reg[1]  ( .D(n373), .CK(CLK), .RN(n522), .Q(N190), 
        .QN(n575) );
  DFFSX2 \temp_seq_reg[6][0]  ( .D(n647), .CK(CLK), .SN(n643), .Q(
        \temp_seq[6][0] ) );
  DFFRX2 \temp_seq_reg[6][2]  ( .D(n649), .CK(CLK), .RN(n643), .Q(
        \temp_seq[6][2] ) );
  DFFRX2 \temp_seq_reg[6][1]  ( .D(n648), .CK(CLK), .RN(n643), .Q(
        \temp_seq[6][1] ) );
  DFFSX2 \temp_seq_reg[3][2]  ( .D(n312), .CK(CLK), .SN(n643), .Q(
        \temp_seq[3][2] ), .QN(n496) );
  DFFRX2 \temp_seq_reg[3][0]  ( .D(n314), .CK(CLK), .RN(n643), .Q(
        \temp_seq[3][0] ), .QN(n492) );
  DFFRX2 \temp_seq_reg[3][1]  ( .D(n313), .CK(CLK), .RN(n643), .Q(
        \temp_seq[3][1] ), .QN(n494) );
  INVX3 U377 ( .A(RST), .Y(n643) );
  NAND4XL U378 ( .A(n278), .B(n143), .C(n576), .D(n575), .Y(n290) );
  INVX16 U379 ( .A(n128), .Y(MatchCount[1]) );
  INVX16 U380 ( .A(n127), .Y(MatchCount[2]) );
  INVX16 U381 ( .A(n443), .Y(MatchCount[3]) );
  INVX16 U382 ( .A(n129), .Y(MatchCount[0]) );
  INVX16 U383 ( .A(n440), .Y(MinCost[0]) );
  INVX16 U384 ( .A(n442), .Y(MinCost[1]) );
  INVX16 U385 ( .A(n444), .Y(MinCost[3]) );
  INVX16 U386 ( .A(n439), .Y(MinCost[8]) );
  INVX16 U387 ( .A(n438), .Y(MinCost[5]) );
  INVX16 U388 ( .A(n437), .Y(MinCost[4]) );
  OR2X1 U389 ( .A(n300), .B(n612), .Y(n697) );
  INVX12 U390 ( .A(n697), .Y(W[2]) );
  OR2X1 U391 ( .A(n300), .B(n613), .Y(n698) );
  INVX12 U392 ( .A(n698), .Y(W[1]) );
  NAND2X2 U393 ( .A(n519), .B(n518), .Y(n480) );
  OAI22X1 U394 ( .A0(n574), .A1(n103), .B0(N191), .B1(n573), .Y(N242) );
  OR2X1 U395 ( .A(n300), .B(n614), .Y(n699) );
  INVX12 U396 ( .A(n699), .Y(W[0]) );
  OAI22X1 U397 ( .A0(n92), .A1(n534), .B0(n518), .B1(n533), .Y(N427) );
  BUFX12 U398 ( .A(n700), .Y(J[2]) );
  NOR2BX1 U399 ( .AN(N368), .B(n300), .Y(n700) );
  OAI22X1 U400 ( .A0(n592), .A1(n595), .B0(N194), .B1(n591), .Y(N415) );
  OAI22X1 U401 ( .A0(n499), .A1(n530), .B0(n518), .B1(n529), .Y(N428) );
  BUFX12 U402 ( .A(n701), .Y(J[1]) );
  NOR2BX1 U403 ( .AN(N369), .B(n300), .Y(n701) );
  NAND2X2 U404 ( .A(n519), .B(n499), .Y(n479) );
  OAI22X1 U405 ( .A0(n542), .A1(n499), .B0(n518), .B1(n541), .Y(N426) );
  OAI22X1 U406 ( .A0(n103), .A1(n566), .B0(N191), .B1(n565), .Y(N243) );
  BUFX12 U407 ( .A(n702), .Y(J[0]) );
  NOR2BX1 U408 ( .AN(N370), .B(n300), .Y(n702) );
  OR2X1 U409 ( .A(n80), .B(n141), .Y(n707) );
  INVX12 U410 ( .A(n707), .Y(Valid) );
  INVX12 U411 ( .A(n637), .Y(MinCost[9]) );
  INVX12 U412 ( .A(n639), .Y(MinCost[6]) );
  INVX12 U413 ( .A(n638), .Y(MinCost[7]) );
  INVX12 U414 ( .A(n640), .Y(MinCost[2]) );
  AOI32XL U415 ( .A0(n629), .A1(n642), .A2(n628), .B0(MinCost[8]), .B1(n446), 
        .Y(n630) );
  AO21XL U416 ( .A0(n445), .A1(n620), .B0(MinCost[1]), .Y(n619) );
  NOR2BXL U417 ( .AN(temp_cost[3]), .B(MinCost[3]), .Y(n634) );
  NOR2XL U418 ( .A(n441), .B(MinCost[4]), .Y(n633) );
  NOR2XL U419 ( .A(n446), .B(MinCost[8]), .Y(n618) );
  NOR2XL U420 ( .A(n447), .B(MinCost[5]), .Y(n625) );
  NOR2BXL U421 ( .AN(MinCost[0]), .B(temp_cost[0]), .Y(n620) );
  NOR2BXL U422 ( .AN(temp_cost[0]), .B(MinCost[0]), .Y(n615) );
  NAND2XL U423 ( .A(N415), .B(n80), .Y(n207) );
  CLKBUFX3 U424 ( .A(n266), .Y(n513) );
  NAND2X1 U425 ( .A(n517), .B(n682), .Y(n171) );
  NAND2X1 U426 ( .A(n669), .B(state[0]), .Y(n157) );
  CLKBUFX3 U427 ( .A(n267), .Y(n510) );
  CLKINVX1 U428 ( .A(n223), .Y(n668) );
  CLKINVX1 U429 ( .A(n151), .Y(n653) );
  NAND3X1 U430 ( .A(n71), .B(n70), .C(state[3]), .Y(n141) );
  CLKBUFX3 U431 ( .A(N183), .Y(n517) );
  NAND2X1 U432 ( .A(n682), .B(n94), .Y(n200) );
  NOR3X1 U433 ( .A(n595), .B(n593), .C(n594), .Y(n258) );
  NOR2X1 U434 ( .A(n218), .B(n94), .Y(n185) );
  NAND3X1 U435 ( .A(n593), .B(n595), .C(n594), .Y(n248) );
  NAND3X1 U436 ( .A(n575), .B(n103), .C(n576), .Y(n143) );
  NAND3X1 U437 ( .A(N193), .B(n594), .C(N194), .Y(n165) );
  NAND3X1 U438 ( .A(N194), .B(n593), .C(N192), .Y(n178) );
  NAND3X1 U439 ( .A(n593), .B(n595), .C(N192), .Y(n237) );
  CLKINVX1 U440 ( .A(n242), .Y(n654) );
  AOI221X1 U441 ( .A0(n80), .A1(n297), .B0(n71), .B1(state[2]), .C0(state[3]), 
        .Y(n277) );
  NAND2X1 U442 ( .A(n513), .B(n262), .Y(n265) );
  INVX3 U443 ( .A(n513), .Y(n666) );
  OA21X2 U444 ( .A0(n170), .A1(n171), .B0(n172), .Y(n161) );
  OAI21XL U445 ( .A0(n680), .A1(n696), .B0(n653), .Y(n172) );
  CLKINVX1 U446 ( .A(n295), .Y(n645) );
  INVXL U447 ( .A(n479), .Y(n501) );
  INVXL U448 ( .A(n480), .Y(n500) );
  NAND2X1 U449 ( .A(n302), .B(n665), .Y(n301) );
  CLKINVX1 U450 ( .A(n230), .Y(n659) );
  CLKINVX1 U451 ( .A(n206), .Y(n651) );
  CLKINVX1 U452 ( .A(n187), .Y(n650) );
  CLKINVX1 U453 ( .A(n183), .Y(n682) );
  INVX3 U454 ( .A(n157), .Y(n664) );
  CLKINVX1 U455 ( .A(n171), .Y(n681) );
  CLKINVX1 U456 ( .A(n247), .Y(n652) );
  CLKINVX1 U457 ( .A(n232), .Y(n671) );
  CLKBUFX3 U458 ( .A(n291), .Y(n511) );
  NAND2X1 U459 ( .A(n645), .B(n153), .Y(n291) );
  CLKINVX1 U460 ( .A(n153), .Y(n667) );
  NAND2X1 U461 ( .A(n665), .B(n157), .Y(n299) );
  INVX3 U462 ( .A(n510), .Y(n665) );
  CLKBUFX3 U463 ( .A(n520), .Y(n526) );
  CLKBUFX3 U464 ( .A(n520), .Y(n525) );
  CLKBUFX3 U465 ( .A(n520), .Y(n524) );
  CLKBUFX3 U466 ( .A(n520), .Y(n523) );
  CLKBUFX3 U467 ( .A(n520), .Y(n522) );
  CLKBUFX3 U468 ( .A(n520), .Y(n521) );
  NAND3X1 U469 ( .A(n510), .B(n513), .C(N394), .Y(n262) );
  NAND2X1 U470 ( .A(N392), .B(n510), .Y(n266) );
  INVX1 U471 ( .A(N426), .Y(n678) );
  INVX1 U472 ( .A(N415), .Y(n693) );
  INVX1 U473 ( .A(N427), .Y(n677) );
  INVXL U474 ( .A(N428), .Y(n676) );
  CLKINVX1 U475 ( .A(N416), .Y(n692) );
  CLKINVX1 U476 ( .A(N417), .Y(n691) );
  NAND2XL U477 ( .A(N415), .B(n685), .Y(n282) );
  INVXL U478 ( .A(N242), .Y(n685) );
  OAI2BB2XL U479 ( .B0(n654), .B1(n238), .A0N(n505), .A1N(n654), .Y(n319) );
  AOI221XL U480 ( .A0(N526), .A1(n514), .B0(n668), .B1(n506), .C0(n239), .Y(
        n238) );
  OAI22XL U481 ( .A0(n194), .A1(n237), .B0(n689), .B1(n213), .Y(n239) );
  OAI2BB2XL U482 ( .B0(n654), .B1(n235), .A0N(n508), .A1N(n654), .Y(n318) );
  AOI221XL U483 ( .A0(N527), .A1(n514), .B0(n668), .B1(n509), .C0(n236), .Y(
        n235) );
  OAI22XL U484 ( .A0(n188), .A1(n237), .B0(n689), .B1(n207), .Y(n236) );
  OAI21XL U485 ( .A0(N268), .A1(n677), .B0(n156), .Y(n155) );
  OAI211XL U486 ( .A0(N427), .A1(n686), .B0(n473), .C0(N428), .Y(n156) );
  NAND2X1 U487 ( .A(n276), .B(n278), .Y(n271) );
  CLKINVX1 U488 ( .A(n207), .Y(n663) );
  OA21XL U489 ( .A0(n276), .A1(n646), .B0(n277), .Y(n272) );
  OAI2BB2XL U490 ( .B0(n654), .B1(n240), .A0N(n515), .A1N(n654), .Y(n320) );
  AOI221XL U491 ( .A0(N525), .A1(n514), .B0(n668), .B1(n504), .C0(n241), .Y(
        n240) );
  OAI22XL U492 ( .A0(n197), .A1(n237), .B0(n689), .B1(n216), .Y(n241) );
  CLKINVX1 U493 ( .A(n188), .Y(n662) );
  CLKINVX1 U494 ( .A(n194), .Y(n660) );
  CLKINVX1 U495 ( .A(n197), .Y(n656) );
  OAI221X1 U496 ( .A0(n519), .A1(n204), .B0(n170), .B1(n200), .C0(n219), .Y(
        n206) );
  OAI21XL U497 ( .A0(n679), .A1(n690), .B0(n653), .Y(n219) );
  OAI211X1 U498 ( .A0(n170), .A1(n171), .B0(n201), .C0(n202), .Y(n187) );
  OAI21XL U499 ( .A0(n185), .A1(n680), .B0(n658), .Y(n201) );
  OAI21XL U500 ( .A0(n203), .A1(n694), .B0(n653), .Y(n202) );
  CLKINVX1 U501 ( .A(n204), .Y(n658) );
  NOR2BX1 U502 ( .AN(n514), .B(n171), .Y(n177) );
  OAI21X1 U503 ( .A0(n681), .A1(n258), .B0(n653), .Y(n255) );
  NOR2BX1 U504 ( .AN(n158), .B(n664), .Y(n302) );
  NAND2X2 U505 ( .A(n671), .B(state[0]), .Y(n170) );
  NOR2BX1 U506 ( .AN(n277), .B(n646), .Y(n278) );
  CLKINVX1 U507 ( .A(N267), .Y(n687) );
  NAND2X1 U508 ( .A(n277), .B(n646), .Y(n295) );
  INVXL U509 ( .A(N268), .Y(n686) );
  NOR2BX1 U510 ( .AN(n277), .B(n667), .Y(n287) );
  OAI2BB1X1 U511 ( .A0N(n653), .A1N(n251), .B0(n170), .Y(n247) );
  OAI21XL U512 ( .A0(n517), .A1(n244), .B0(n248), .Y(n251) );
  NOR2BX1 U513 ( .AN(n514), .B(n200), .Y(n192) );
  CLKINVX1 U514 ( .A(n221), .Y(n655) );
  NAND2X1 U515 ( .A(n514), .B(n671), .Y(n204) );
  NAND2BX1 U516 ( .AN(n255), .B(n258), .Y(n253) );
  CLKINVX1 U517 ( .A(n159), .Y(n646) );
  NOR2X1 U518 ( .A(n161), .B(state[0]), .Y(n162) );
  NAND2X1 U519 ( .A(n514), .B(n247), .Y(n246) );
  AOI2BB1X1 U520 ( .A0N(n517), .A1N(n667), .B0(n295), .Y(n296) );
  CLKINVX1 U521 ( .A(n216), .Y(n657) );
  CLKINVX1 U522 ( .A(n213), .Y(n661) );
  NAND2X1 U523 ( .A(n514), .B(n682), .Y(n230) );
  NAND2X1 U524 ( .A(n146), .B(n244), .Y(n232) );
  NAND2X1 U525 ( .A(n518), .B(n519), .Y(n183) );
  NAND2X1 U526 ( .A(n287), .B(n518), .Y(n273) );
  OA21X2 U527 ( .A0(n183), .A1(n170), .B0(n184), .Y(n173) );
  OAI21XL U528 ( .A0(n185), .A1(n695), .B0(n653), .Y(n184) );
  CLKINVX1 U529 ( .A(n300), .Y(n669) );
  NAND2X1 U530 ( .A(n287), .B(n517), .Y(n275) );
  NAND2X1 U531 ( .A(n287), .B(n519), .Y(n274) );
  CLKINVX1 U532 ( .A(n200), .Y(n680) );
  NOR2X1 U533 ( .A(n141), .B(state[0]), .Y(n267) );
  OR2X1 U534 ( .A(n258), .B(n255), .Y(n252) );
  CLKINVX1 U535 ( .A(n519), .Y(n502) );
  AND2X2 U536 ( .A(n203), .B(n514), .Y(n225) );
  INVX3 U537 ( .A(n517), .Y(n498) );
  CLKINVX1 U538 ( .A(n518), .Y(n499) );
  NOR2X1 U539 ( .A(n297), .B(state[0]), .Y(n153) );
  NOR2X1 U540 ( .A(n218), .B(n517), .Y(n203) );
  CLKINVX1 U541 ( .A(n178), .Y(n695) );
  CLKINVX1 U542 ( .A(n165), .Y(n696) );
  CLKINVX1 U543 ( .A(n237), .Y(n689) );
  NAND3X1 U544 ( .A(n200), .B(n171), .C(state[0]), .Y(n190) );
  CLKINVX1 U545 ( .A(n208), .Y(n690) );
  CLKINVX1 U546 ( .A(n248), .Y(n688) );
  OA21XL U547 ( .A0(n683), .A1(n142), .B0(n144), .Y(n149) );
  CLKINVX1 U548 ( .A(n143), .Y(n683) );
  CLKINVX1 U549 ( .A(n147), .Y(n670) );
  OA21XL U550 ( .A0(n134), .A1(n157), .B0(n158), .Y(n144) );
  CLKINVX1 U551 ( .A(n233), .Y(n679) );
  CLKINVX1 U552 ( .A(n189), .Y(n694) );
  AND2X2 U553 ( .A(n185), .B(n514), .Y(n210) );
  CLKBUFX3 U554 ( .A(n643), .Y(n520) );
  CLKBUFX3 U555 ( .A(\temp_seq[1][0] ), .Y(n515) );
  CLKBUFX3 U556 ( .A(\temp_seq[1][2] ), .Y(n508) );
  CLKBUFX3 U557 ( .A(\temp_seq[1][1] ), .Y(n505) );
  CLKBUFX3 U558 ( .A(\temp_seq[0][1] ), .Y(n506) );
  CLKBUFX3 U559 ( .A(\temp_seq[0][2] ), .Y(n509) );
  CLKBUFX3 U560 ( .A(\temp_seq[0][0] ), .Y(n504) );
  NAND3X2 U561 ( .A(state[1]), .B(n67), .C(state[2]), .Y(n300) );
  AO22X1 U562 ( .A0(n512), .A1(temp_cost[9]), .B0(N381), .B1(n664), .Y(n341)
         );
  CLKBUFX3 U563 ( .A(\temp_seq[2][1] ), .Y(n516) );
  CLKBUFX3 U564 ( .A(\temp_seq[2][0] ), .Y(n503) );
  CLKBUFX3 U565 ( .A(\temp_seq[2][2] ), .Y(n507) );
  AO22X1 U566 ( .A0(n512), .A1(temp_cost[0]), .B0(N372), .B1(n664), .Y(n350)
         );
  AO22X1 U567 ( .A0(n512), .A1(temp_cost[7]), .B0(N379), .B1(n664), .Y(n343)
         );
  AO22X1 U568 ( .A0(n512), .A1(temp_cost[8]), .B0(N380), .B1(n664), .Y(n342)
         );
  AO22X1 U569 ( .A0(n512), .A1(temp_cost[1]), .B0(N373), .B1(n664), .Y(n349)
         );
  AO22X1 U570 ( .A0(n512), .A1(temp_cost[6]), .B0(N378), .B1(n664), .Y(n344)
         );
  AO22X1 U571 ( .A0(n512), .A1(temp_cost[5]), .B0(N377), .B1(n664), .Y(n345)
         );
  AO22X1 U572 ( .A0(n512), .A1(temp_cost[4]), .B0(N376), .B1(n664), .Y(n346)
         );
  AO22X1 U573 ( .A0(n512), .A1(temp_cost[3]), .B0(N375), .B1(n664), .Y(n347)
         );
  AO22X1 U574 ( .A0(n512), .A1(temp_cost[2]), .B0(N374), .B1(n664), .Y(n348)
         );
  CLKINVX1 U575 ( .A(n632), .Y(n641) );
  CLKINVX1 U576 ( .A(n618), .Y(n642) );
  OAI221XL U577 ( .A0(MatchCount[0]), .A1(n262), .B0(n129), .B1(n265), .C0(
        n513), .Y(n330) );
  OAI32XL U578 ( .A0(n128), .A1(MatchCount[2]), .A2(n261), .B0(n263), .B1(n127), .Y(n328) );
  OAI22XL U579 ( .A0(n264), .A1(n128), .B0(MatchCount[1]), .B1(n261), .Y(n329)
         );
  OA21XL U580 ( .A0(MatchCount[0]), .A1(n262), .B0(n265), .Y(n264) );
  OA21XL U581 ( .A0(MatchCount[1]), .A1(n262), .B0(n264), .Y(n263) );
  OAI2BB1XL U582 ( .A0N(MatchCount[3]), .A1N(n259), .B0(n260), .Y(n327) );
  OR4XL U583 ( .A(MatchCount[3]), .B(n127), .C(n128), .D(n261), .Y(n260) );
  OAI21XL U584 ( .A0(MatchCount[2]), .A1(n262), .B0(n263), .Y(n259) );
  OR2X1 U585 ( .A(n262), .B(n129), .Y(n261) );
  NAND2X1 U586 ( .A(N426), .B(n80), .Y(n188) );
  NAND2X1 U587 ( .A(N427), .B(n80), .Y(n194) );
  NAND2X1 U588 ( .A(N428), .B(n80), .Y(n197) );
  OAI22XL U589 ( .A0(N242), .A1(n106), .B0(n684), .B1(n284), .Y(n283) );
  NOR2BXL U590 ( .AN(N243), .B(switch_value[1]), .Y(n284) );
  CLKINVX1 U591 ( .A(n285), .Y(n684) );
  OAI211XL U592 ( .A0(n107), .A1(N243), .B0(N244), .C0(n108), .Y(n285) );
  OAI222XL U593 ( .A0(n652), .A1(n250), .B0(n246), .B1(n673), .C0(n132), .C1(
        n247), .Y(n323) );
  CLKINVX1 U594 ( .A(N503), .Y(n673) );
  AOI222XL U595 ( .A0(n688), .A1(n656), .B0(N503), .B1(n668), .C0(n657), .C1(
        n248), .Y(n250) );
  OAI222XL U596 ( .A0(n652), .A1(n249), .B0(n246), .B1(n674), .C0(n131), .C1(
        n247), .Y(n322) );
  CLKINVX1 U597 ( .A(N504), .Y(n674) );
  AOI222XL U598 ( .A0(n688), .A1(n660), .B0(N504), .B1(n668), .C0(n661), .C1(
        n248), .Y(n249) );
  OAI222XL U599 ( .A0(n652), .A1(n245), .B0(n246), .B1(n675), .C0(n130), .C1(
        n247), .Y(n321) );
  CLKINVX1 U600 ( .A(N505), .Y(n675) );
  AOI222XL U601 ( .A0(n688), .A1(n662), .B0(N505), .B1(n668), .C0(n663), .C1(
        n248), .Y(n245) );
  OAI221XL U602 ( .A0(n693), .A1(n252), .B0(n678), .B1(n253), .C0(n257), .Y(
        n326) );
  NAND2X1 U603 ( .A(\temp_seq[7][2] ), .B(n255), .Y(n257) );
  OAI221XL U604 ( .A0(n692), .A1(n252), .B0(n677), .B1(n253), .C0(n256), .Y(
        n325) );
  NAND2X1 U605 ( .A(\temp_seq[7][1] ), .B(n255), .Y(n256) );
  AO22X1 U606 ( .A0(\temp_seq[4][0] ), .A1(n650), .B0(n196), .B1(n187), .Y(
        n311) );
  OAI221XL U607 ( .A0(n189), .A1(n197), .B0(n132), .B1(n190), .C0(n198), .Y(
        n196) );
  AOI222XL U608 ( .A0(n657), .A1(n189), .B0(n503), .B1(n177), .C0(n192), .C1(
        n515), .Y(n198) );
  AO22X1 U609 ( .A0(n655), .A1(n503), .B0(n228), .B1(n221), .Y(n317) );
  OAI221XL U610 ( .A0(n197), .A1(n222), .B0(n132), .B1(n223), .C0(n229), .Y(
        n228) );
  AOI222XL U611 ( .A0(n657), .A1(n222), .B0(N576), .B1(n659), .C0(n225), .C1(
        n515), .Y(n229) );
  AO22X1 U612 ( .A0(\temp_seq[4][1] ), .A1(n650), .B0(n193), .B1(n187), .Y(
        n310) );
  OAI221XL U613 ( .A0(n189), .A1(n194), .B0(n131), .B1(n190), .C0(n195), .Y(
        n193) );
  AOI222XL U614 ( .A0(n661), .A1(n189), .B0(n516), .B1(n177), .C0(n192), .C1(
        n505), .Y(n195) );
  AO22X1 U615 ( .A0(n655), .A1(n507), .B0(n220), .B1(n221), .Y(n315) );
  OAI221XL U616 ( .A0(n188), .A1(n222), .B0(n130), .B1(n223), .C0(n224), .Y(
        n220) );
  AOI222XL U617 ( .A0(n663), .A1(n222), .B0(N578), .B1(n659), .C0(n225), .C1(
        n508), .Y(n224) );
  AO22X1 U618 ( .A0(n655), .A1(n516), .B0(n226), .B1(n221), .Y(n316) );
  OAI221XL U619 ( .A0(n194), .A1(n222), .B0(n131), .B1(n223), .C0(n227), .Y(
        n226) );
  AOI222XL U620 ( .A0(n661), .A1(n222), .B0(N577), .B1(n659), .C0(n225), .C1(
        n505), .Y(n227) );
  OAI221XL U621 ( .A0(n691), .A1(n252), .B0(n676), .B1(n253), .C0(n254), .Y(
        n324) );
  NAND2X1 U622 ( .A(\temp_seq[7][0] ), .B(n255), .Y(n254) );
  OAI221XL U623 ( .A0(n271), .A1(n575), .B0(n272), .B1(n593), .C0(n274), .Y(
        n369) );
  OAI221XL U624 ( .A0(n271), .A1(n576), .B0(n272), .B1(n594), .C0(n275), .Y(
        n370) );
  OAI221XL U625 ( .A0(n271), .A1(n103), .B0(n272), .B1(n595), .C0(n273), .Y(
        n368) );
  NAND4X1 U626 ( .A(n149), .B(n150), .C(n141), .D(n151), .Y(next_state[0]) );
  NAND3X1 U627 ( .A(n152), .B(n67), .C(n153), .Y(n150) );
  OAI21XL U628 ( .A0(N267), .A1(n678), .B0(n154), .Y(n152) );
  OAI21XL U629 ( .A0(N426), .A1(n687), .B0(n155), .Y(n154) );
  OAI2BB2XL U630 ( .B0(n173), .B1(n179), .A0N(\temp_seq[5][1] ), .A1N(n173), 
        .Y(n307) );
  AOI222XL U631 ( .A0(n175), .A1(n506), .B0(n180), .B1(n80), .C0(n505), .C1(
        n177), .Y(n179) );
  OAI22XL U632 ( .A0(n677), .A1(n178), .B0(n695), .B1(n692), .Y(n180) );
  OAI2BB2XL U633 ( .B0(n173), .B1(n181), .A0N(\temp_seq[5][0] ), .A1N(n173), 
        .Y(n308) );
  AOI222XL U634 ( .A0(n175), .A1(n504), .B0(n182), .B1(n80), .C0(n515), .C1(
        n177), .Y(n181) );
  OAI22XL U635 ( .A0(n676), .A1(n178), .B0(n695), .B1(n691), .Y(n182) );
  OAI2BB2XL U636 ( .B0(n173), .B1(n174), .A0N(\temp_seq[5][2] ), .A1N(n173), 
        .Y(n306) );
  AOI222XL U637 ( .A0(n175), .A1(n509), .B0(n176), .B1(n80), .C0(n508), .C1(
        n177), .Y(n174) );
  OAI22XL U638 ( .A0(n678), .A1(n178), .B0(n695), .B1(n693), .Y(n176) );
  AND3X2 U639 ( .A(n279), .B(n280), .C(n281), .Y(n276) );
  OAI21XL U640 ( .A0(switch_value[2]), .A1(n685), .B0(n283), .Y(n279) );
  OAI221XL U641 ( .A0(N243), .A1(n692), .B0(N244), .B1(n691), .C0(n282), .Y(
        n280) );
  AOI32XL U642 ( .A0(n282), .A1(n692), .A2(N243), .B0(N242), .B1(n693), .Y(
        n281) );
  AO22X1 U643 ( .A0(temp_cost[3]), .A1(n666), .B0(MinCost[3]), .B1(n513), .Y(
        n333) );
  AO22X1 U644 ( .A0(temp_cost[1]), .A1(n666), .B0(MinCost[1]), .B1(n513), .Y(
        n331) );
  AO22X1 U645 ( .A0(temp_cost[8]), .A1(n666), .B0(MinCost[8]), .B1(n513), .Y(
        n338) );
  AO22X1 U646 ( .A0(temp_cost[4]), .A1(n666), .B0(MinCost[4]), .B1(n513), .Y(
        n334) );
  AO22X1 U647 ( .A0(temp_cost[5]), .A1(n666), .B0(MinCost[5]), .B1(n513), .Y(
        n335) );
  AO22X1 U648 ( .A0(temp_cost[0]), .A1(n666), .B0(MinCost[0]), .B1(n513), .Y(
        n340) );
  AO22X1 U649 ( .A0(temp_cost[9]), .A1(n666), .B0(n703), .B1(n513), .Y(n339)
         );
  AO22X1 U650 ( .A0(temp_cost[7]), .A1(n666), .B0(n704), .B1(n513), .Y(n337)
         );
  AO22X1 U651 ( .A0(temp_cost[6]), .A1(n666), .B0(n705), .B1(n513), .Y(n336)
         );
  AO22X1 U652 ( .A0(temp_cost[2]), .A1(n666), .B0(n706), .B1(n513), .Y(n332)
         );
  CLKBUFX3 U653 ( .A(N184), .Y(n519) );
  AO22X1 U654 ( .A0(\temp_seq[3][2] ), .A1(n651), .B0(n205), .B1(n206), .Y(
        n312) );
  OAI221XL U655 ( .A0(n690), .A1(n207), .B0(n188), .B1(n208), .C0(n209), .Y(
        n205) );
  AOI222XL U656 ( .A0(n210), .A1(n508), .B0(n659), .B1(n507), .C0(n211), .C1(
        n509), .Y(n209) );
  AO22X1 U657 ( .A0(\temp_seq[3][0] ), .A1(n651), .B0(n215), .B1(n206), .Y(
        n314) );
  OAI221XL U658 ( .A0(n690), .A1(n216), .B0(n197), .B1(n208), .C0(n217), .Y(
        n215) );
  AOI222XL U659 ( .A0(n210), .A1(n515), .B0(n659), .B1(n503), .C0(n211), .C1(
        n504), .Y(n217) );
  AO22X1 U660 ( .A0(\temp_seq[3][1] ), .A1(n651), .B0(n212), .B1(n206), .Y(
        n313) );
  OAI221XL U661 ( .A0(n690), .A1(n213), .B0(n194), .B1(n208), .C0(n214), .Y(
        n212) );
  AOI222XL U662 ( .A0(n210), .A1(n505), .B0(n659), .B1(n516), .C0(n211), .C1(
        n506), .Y(n214) );
  AO22X1 U663 ( .A0(\temp_seq[4][2] ), .A1(n650), .B0(n186), .B1(n187), .Y(
        n309) );
  OAI221XL U664 ( .A0(n188), .A1(n189), .B0(n130), .B1(n190), .C0(n191), .Y(
        n186) );
  AOI222XL U665 ( .A0(n663), .A1(n189), .B0(n507), .B1(n177), .C0(n192), .C1(
        n508), .Y(n191) );
  CLKINVX1 U666 ( .A(n168), .Y(n647) );
  AOI222XL U667 ( .A0(\temp_seq[6][0] ), .A1(n161), .B0(n162), .B1(n169), .C0(
        n504), .C1(n164), .Y(n168) );
  OAI22XL U668 ( .A0(n676), .A1(n165), .B0(n696), .B1(n691), .Y(n169) );
  CLKINVX1 U669 ( .A(n166), .Y(n648) );
  AOI222XL U670 ( .A0(\temp_seq[6][1] ), .A1(n161), .B0(n162), .B1(n167), .C0(
        n506), .C1(n164), .Y(n166) );
  OAI22XL U671 ( .A0(n677), .A1(n165), .B0(n696), .B1(n692), .Y(n167) );
  CLKINVX1 U672 ( .A(n160), .Y(n649) );
  AOI222XL U673 ( .A0(\temp_seq[6][2] ), .A1(n161), .B0(n162), .B1(n163), .C0(
        n509), .C1(n164), .Y(n160) );
  OAI22XL U674 ( .A0(n678), .A1(n165), .B0(n696), .B1(n693), .Y(n163) );
  OAI222X1 U675 ( .A0(n672), .A1(n151), .B0(n231), .B1(n170), .C0(n232), .C1(
        n230), .Y(n221) );
  NOR2X1 U676 ( .A(n203), .B(n679), .Y(n231) );
  CLKINVX1 U677 ( .A(n234), .Y(n672) );
  OAI31XL U678 ( .A0(n517), .A1(n518), .A2(n93), .B0(n222), .Y(n234) );
  NAND2X1 U679 ( .A(N416), .B(n80), .Y(n213) );
  NAND2X1 U680 ( .A(N417), .B(n80), .Y(n216) );
  NAND2X1 U681 ( .A(n146), .B(n80), .Y(n151) );
  OAI222XL U682 ( .A0(N186), .A1(n511), .B0(state[1]), .B1(n295), .C0(n645), 
        .C1(n99), .Y(n379) );
  OAI222XL U683 ( .A0(n511), .A1(n233), .B0(n667), .B1(n218), .C0(n296), .C1(
        n92), .Y(n380) );
  OAI32X1 U684 ( .A0(n511), .A1(n519), .A2(n94), .B0(n296), .B1(n93), .Y(n381)
         );
  OAI32X1 U685 ( .A0(n99), .A1(N187), .A2(n511), .B0(n294), .B1(n98), .Y(n378)
         );
  OAI32X1 U686 ( .A0(n614), .A1(N196), .A2(n302), .B0(n305), .B1(n613), .Y(
        N362) );
  OA21XL U687 ( .A0(n302), .A1(N195), .B0(n301), .Y(n305) );
  OAI211X1 U688 ( .A0(n277), .A1(n576), .B0(n289), .C0(n275), .Y(n372) );
  NAND3X1 U689 ( .A(n143), .B(n576), .C(n278), .Y(n289) );
  NOR2X1 U690 ( .A(n80), .B(n681), .Y(n175) );
  NOR2X1 U691 ( .A(n80), .B(n161), .Y(n164) );
  NAND2X1 U692 ( .A(state[1]), .B(n70), .Y(n297) );
  NOR2XL U693 ( .A(n297), .B(n80), .Y(n159) );
  OAI211X1 U694 ( .A0(n288), .A1(n575), .B0(n290), .C0(n274), .Y(n373) );
  OAI221XL U695 ( .A0(n517), .A1(n170), .B0(n243), .B1(n151), .C0(n204), .Y(
        n242) );
  AOI2BB1X1 U696 ( .A0N(n244), .A1N(n94), .B0(n689), .Y(n243) );
  NAND2X1 U697 ( .A(n71), .B(n67), .Y(n147) );
  NOR2X1 U698 ( .A(n147), .B(n70), .Y(n146) );
  NAND2XL U699 ( .A(n669), .B(n80), .Y(n158) );
  NAND2X1 U700 ( .A(n92), .B(n93), .Y(n244) );
  OA22X1 U701 ( .A0(n448), .A1(n546), .B0(N188), .B1(n545), .Y(n473) );
  AOI2BB1X1 U702 ( .A0N(N186), .A1N(n667), .B0(n295), .Y(n294) );
  OAI22XL U703 ( .A0(n645), .A1(n106), .B0(n687), .B1(n511), .Y(n376) );
  OAI22XL U704 ( .A0(n645), .A1(n107), .B0(n686), .B1(n511), .Y(n375) );
  OAI22XL U705 ( .A0(n645), .A1(n108), .B0(n511), .B1(n473), .Y(n374) );
  OAI22XL U706 ( .A0(n614), .A1(n301), .B0(N195), .B1(n302), .Y(N361) );
  OAI22XL U707 ( .A0(n612), .A1(n301), .B0(n302), .B1(n303), .Y(N363) );
  XOR2X1 U708 ( .A(n304), .B(N197), .Y(n303) );
  NAND2X1 U709 ( .A(N195), .B(N196), .Y(n304) );
  OAI22XL U710 ( .A0(n645), .A1(n94), .B0(n517), .B1(n511), .Y(n382) );
  OA21XL U711 ( .A0(n646), .A1(n576), .B0(n277), .Y(n288) );
  CLKINVX1 U712 ( .A(n133), .Y(n644) );
  AOI211XL U713 ( .A0(n664), .A1(n134), .B0(n135), .C0(Valid), .Y(n133) );
  AND3X2 U714 ( .A(n136), .B(n137), .C(n138), .Y(n135) );
  AND4X1 U715 ( .A(ans_cnt[4]), .B(ans_cnt[5]), .C(ans_cnt[6]), .D(ans_cnt[8]), 
        .Y(n136) );
  CLKBUFX3 U716 ( .A(n199), .Y(n514) );
  NOR2XL U717 ( .A(n92), .B(n80), .Y(n199) );
  OAI2BB1X1 U718 ( .A0N(N191), .A1N(n286), .B0(n273), .Y(n371) );
  OAI21XL U719 ( .A0(n646), .A1(n575), .B0(n288), .Y(n286) );
  CLKBUFX3 U720 ( .A(N185), .Y(n518) );
  CLKBUFX3 U721 ( .A(n268), .Y(n512) );
  AOI31X1 U722 ( .A0(n670), .A1(n70), .A2(state[0]), .B0(n664), .Y(n268) );
  AO22X1 U723 ( .A0(ans_cnt[15]), .A1(n665), .B0(N331), .B1(n510), .Y(n366) );
  AO21X1 U724 ( .A0(N188), .A1(n292), .B0(n293), .Y(n377) );
  OAI21XL U725 ( .A0(N187), .A1(n667), .B0(n294), .Y(n292) );
  NOR4X1 U726 ( .A(N188), .B(n511), .C(n99), .D(n98), .Y(n293) );
  AO22X1 U727 ( .A0(ans_cnt[13]), .A1(n665), .B0(N329), .B1(n510), .Y(n352) );
  AO22X1 U728 ( .A0(ans_cnt[10]), .A1(n665), .B0(N326), .B1(n510), .Y(n355) );
  AO22X1 U729 ( .A0(ans_cnt[11]), .A1(n665), .B0(N327), .B1(n510), .Y(n354) );
  AO22X1 U730 ( .A0(ans_cnt[12]), .A1(n665), .B0(N328), .B1(n510), .Y(n353) );
  AO22X1 U731 ( .A0(ans_cnt[14]), .A1(n665), .B0(N330), .B1(n510), .Y(n351) );
  AO22X1 U732 ( .A0(ans_cnt[9]), .A1(n665), .B0(N325), .B1(n510), .Y(n356) );
  AO22X1 U733 ( .A0(ans_cnt[8]), .A1(n665), .B0(N324), .B1(n510), .Y(n357) );
  NOR3X1 U734 ( .A(n185), .B(n682), .C(n80), .Y(n211) );
  OAI211XL U735 ( .A0(n80), .A1(n147), .B0(n148), .C0(n149), .Y(next_state[1])
         );
  NAND3XL U736 ( .A(n70), .B(n67), .C(n80), .Y(n148) );
  NAND3X2 U737 ( .A(n594), .B(n593), .C(N194), .Y(n189) );
  NAND3X2 U738 ( .A(n594), .B(n595), .C(N193), .Y(n222) );
  OAI32X1 U739 ( .A0(n269), .A1(people_cnt[2]), .A2(n125), .B0(n298), .B1(n124), .Y(n383) );
  AOI21X1 U740 ( .A0(n664), .A1(n125), .B0(n270), .Y(n298) );
  NAND2X1 U741 ( .A(state[0]), .B(n92), .Y(n223) );
  NAND2X1 U742 ( .A(n518), .B(n93), .Y(n218) );
  OAI211X1 U743 ( .A0(n142), .A1(n143), .B0(n144), .C0(n145), .Y(next_state[2]) );
  AOI21XL U744 ( .A0(n80), .A1(n670), .B0(n146), .Y(n145) );
  OAI21XL U745 ( .A0(people_cnt[0]), .A1(n157), .B0(n299), .Y(n270) );
  NOR3X1 U746 ( .A(n125), .B(n126), .C(n124), .Y(n134) );
  NAND3X1 U747 ( .A(N193), .B(n595), .C(N192), .Y(n208) );
  NOR4X1 U748 ( .A(n139), .B(n140), .C(ans_cnt[13]), .D(n141), .Y(n138) );
  NAND4X1 U749 ( .A(ans_cnt[12]), .B(ans_cnt[11]), .C(ans_cnt[10]), .D(
        ans_cnt[0]), .Y(n139) );
  OR3X2 U750 ( .A(ans_cnt[7]), .B(ans_cnt[9]), .C(ans_cnt[14]), .Y(n140) );
  OAI22XL U751 ( .A0(n126), .A1(n299), .B0(people_cnt[0]), .B1(n157), .Y(n384)
         );
  NAND2X1 U752 ( .A(n664), .B(people_cnt[0]), .Y(n269) );
  NAND2X1 U753 ( .A(n159), .B(n67), .Y(n142) );
  NAND3X1 U754 ( .A(n519), .B(n92), .C(n517), .Y(n233) );
  OAI2BB2XL U755 ( .B0(people_cnt[1]), .B1(n269), .A0N(n270), .A1N(
        people_cnt[1]), .Y(n367) );
  AND4X1 U756 ( .A(ans_cnt[15]), .B(ans_cnt[1]), .C(ans_cnt[2]), .D(ans_cnt[3]), .Y(n137) );
  AO22X1 U757 ( .A0(ans_cnt[0]), .A1(n665), .B0(N316), .B1(n510), .Y(n365) );
  AO22X1 U758 ( .A0(ans_cnt[7]), .A1(n665), .B0(N323), .B1(n510), .Y(n358) );
  AO22X1 U759 ( .A0(ans_cnt[6]), .A1(n665), .B0(N322), .B1(n510), .Y(n359) );
  AO22X1 U760 ( .A0(ans_cnt[3]), .A1(n665), .B0(N319), .B1(n510), .Y(n362) );
  AO22X1 U761 ( .A0(ans_cnt[5]), .A1(n665), .B0(N321), .B1(n510), .Y(n360) );
  AO22X1 U762 ( .A0(ans_cnt[4]), .A1(n665), .B0(N320), .B1(n510), .Y(n361) );
  AO22X1 U763 ( .A0(ans_cnt[2]), .A1(n665), .B0(N318), .B1(n510), .Y(n363) );
  AO22X1 U764 ( .A0(ans_cnt[1]), .A1(n665), .B0(N317), .B1(n510), .Y(n364) );
  NAND2X1 U765 ( .A(n519), .B(n498), .Y(n475) );
  NAND2X1 U766 ( .A(n502), .B(n498), .Y(n474) );
  OAI222XL U767 ( .A0(\temp_seq[4][0] ), .A1(n480), .B0(n504), .B1(n479), .C0(
        n503), .C1(n519), .Y(n476) );
  OAI222XL U768 ( .A0(n475), .A1(n492), .B0(n474), .B1(n449), .C0(n476), .C1(
        n498), .Y(N576) );
  OAI222XL U769 ( .A0(\temp_seq[4][1] ), .A1(n480), .B0(n506), .B1(n479), .C0(
        n516), .C1(n519), .Y(n477) );
  OAI222XL U770 ( .A0(n475), .A1(n494), .B0(n474), .B1(n450), .C0(n477), .C1(
        n498), .Y(N577) );
  OAI222XL U771 ( .A0(\temp_seq[4][2] ), .A1(n480), .B0(n509), .B1(n479), .C0(
        n507), .C1(n519), .Y(n478) );
  OAI222XL U772 ( .A0(n475), .A1(n496), .B0(n474), .B1(n451), .C0(n478), .C1(
        n498), .Y(N578) );
  OAI222XL U773 ( .A0(\temp_seq[5][0] ), .A1(n480), .B0(n515), .B1(n479), .C0(
        \temp_seq[3][0] ), .C1(n519), .Y(n483) );
  OAI22XL U774 ( .A0(n517), .A1(n476), .B0(n483), .B1(n498), .Y(N525) );
  OAI222XL U775 ( .A0(\temp_seq[5][1] ), .A1(n480), .B0(n505), .B1(n479), .C0(
        \temp_seq[3][1] ), .C1(n519), .Y(n486) );
  OAI22XL U776 ( .A0(n517), .A1(n477), .B0(n486), .B1(n498), .Y(N526) );
  OAI222XL U777 ( .A0(\temp_seq[5][2] ), .A1(n480), .B0(n508), .B1(n479), .C0(
        \temp_seq[3][2] ), .C1(n519), .Y(n491) );
  OAI22XL U778 ( .A0(n517), .A1(n478), .B0(n491), .B1(n498), .Y(N527) );
  NAND2X1 U779 ( .A(n518), .B(n502), .Y(n488) );
  NAND2X1 U780 ( .A(n499), .B(n502), .Y(n487) );
  OAI22XL U781 ( .A0(n488), .A1(n493), .B0(n487), .B1(n132), .Y(n481) );
  AOI221XL U782 ( .A0(n503), .A1(n501), .B0(\temp_seq[6][0] ), .B1(n500), .C0(
        n481), .Y(n482) );
  OAI22XL U783 ( .A0(n517), .A1(n483), .B0(n498), .B1(n482), .Y(N503) );
  OAI22XL U784 ( .A0(n488), .A1(n495), .B0(n487), .B1(n131), .Y(n484) );
  AOI221XL U785 ( .A0(n516), .A1(n501), .B0(\temp_seq[6][1] ), .B1(n500), .C0(
        n484), .Y(n485) );
  OAI22XL U786 ( .A0(n517), .A1(n486), .B0(n498), .B1(n485), .Y(N504) );
  OAI22XL U787 ( .A0(n488), .A1(n497), .B0(n487), .B1(n130), .Y(n489) );
  AOI221XL U788 ( .A0(n507), .A1(n501), .B0(\temp_seq[6][2] ), .B1(n500), .C0(
        n489), .Y(n490) );
  OAI22XL U789 ( .A0(n517), .A1(n491), .B0(n490), .B1(n498), .Y(N505) );
  NOR2X1 U790 ( .A(n93), .B(n517), .Y(n540) );
  NOR2X1 U791 ( .A(n93), .B(n498), .Y(n539) );
  NOR2X1 U792 ( .A(n94), .B(n519), .Y(n537) );
  NOR2X1 U793 ( .A(n517), .B(n519), .Y(n536) );
  AO22X1 U794 ( .A0(\temp_seq[5][0] ), .A1(n537), .B0(\temp_seq[4][0] ), .B1(
        n536), .Y(n527) );
  AOI221XL U795 ( .A0(\temp_seq[6][0] ), .A1(n540), .B0(\temp_seq[7][0] ), 
        .B1(n539), .C0(n527), .Y(n530) );
  AO22X1 U796 ( .A0(n515), .A1(n537), .B0(n504), .B1(n536), .Y(n528) );
  AOI221XL U797 ( .A0(n503), .A1(n540), .B0(\temp_seq[3][0] ), .B1(n539), .C0(
        n528), .Y(n529) );
  AO22X1 U798 ( .A0(\temp_seq[5][1] ), .A1(n537), .B0(\temp_seq[4][1] ), .B1(
        n536), .Y(n531) );
  AOI221XL U799 ( .A0(\temp_seq[6][1] ), .A1(n540), .B0(\temp_seq[7][1] ), 
        .B1(n539), .C0(n531), .Y(n534) );
  AO22X1 U800 ( .A0(n505), .A1(n537), .B0(n506), .B1(n536), .Y(n532) );
  AOI221XL U801 ( .A0(n516), .A1(n540), .B0(\temp_seq[3][1] ), .B1(n539), .C0(
        n532), .Y(n533) );
  AO22X1 U802 ( .A0(\temp_seq[5][2] ), .A1(n537), .B0(\temp_seq[4][2] ), .B1(
        n536), .Y(n535) );
  AOI221XL U803 ( .A0(\temp_seq[6][2] ), .A1(n540), .B0(\temp_seq[7][2] ), 
        .B1(n539), .C0(n535), .Y(n542) );
  AO22X1 U804 ( .A0(n508), .A1(n537), .B0(n509), .B1(n536), .Y(n538) );
  AOI221XL U805 ( .A0(n507), .A1(n540), .B0(\temp_seq[3][2] ), .B1(n539), .C0(
        n538), .Y(n541) );
  NOR2X1 U806 ( .A(n98), .B(N186), .Y(n556) );
  NOR2X1 U807 ( .A(n98), .B(n99), .Y(n555) );
  NOR2X1 U808 ( .A(n99), .B(N187), .Y(n553) );
  NOR2X1 U809 ( .A(N186), .B(N187), .Y(n552) );
  AO22X1 U810 ( .A0(\temp_seq[5][0] ), .A1(n553), .B0(\temp_seq[4][0] ), .B1(
        n552), .Y(n543) );
  AOI221XL U811 ( .A0(\temp_seq[6][0] ), .A1(n556), .B0(\temp_seq[7][0] ), 
        .B1(n555), .C0(n543), .Y(n546) );
  AO22X1 U812 ( .A0(n515), .A1(n553), .B0(n504), .B1(n552), .Y(n544) );
  AOI221XL U813 ( .A0(n503), .A1(n556), .B0(\temp_seq[3][0] ), .B1(n555), .C0(
        n544), .Y(n545) );
  AO22X1 U814 ( .A0(\temp_seq[5][1] ), .A1(n553), .B0(\temp_seq[4][1] ), .B1(
        n552), .Y(n547) );
  AOI221XL U815 ( .A0(\temp_seq[6][1] ), .A1(n556), .B0(\temp_seq[7][1] ), 
        .B1(n555), .C0(n547), .Y(n550) );
  AO22X1 U816 ( .A0(n505), .A1(n553), .B0(n506), .B1(n552), .Y(n548) );
  AOI221XL U817 ( .A0(n516), .A1(n556), .B0(\temp_seq[3][1] ), .B1(n555), .C0(
        n548), .Y(n549) );
  OAI22XL U818 ( .A0(n448), .A1(n550), .B0(N188), .B1(n549), .Y(N268) );
  AO22X1 U819 ( .A0(\temp_seq[5][2] ), .A1(n553), .B0(\temp_seq[4][2] ), .B1(
        n552), .Y(n551) );
  AOI221XL U820 ( .A0(\temp_seq[6][2] ), .A1(n556), .B0(\temp_seq[7][2] ), 
        .B1(n555), .C0(n551), .Y(n558) );
  AO22X1 U821 ( .A0(n508), .A1(n553), .B0(n509), .B1(n552), .Y(n554) );
  AOI221XL U822 ( .A0(n507), .A1(n556), .B0(\temp_seq[3][2] ), .B1(n555), .C0(
        n554), .Y(n557) );
  OAI22XL U823 ( .A0(n558), .A1(n448), .B0(N188), .B1(n557), .Y(N267) );
  NOR2X1 U824 ( .A(n575), .B(N189), .Y(n572) );
  NOR2X1 U825 ( .A(n575), .B(n576), .Y(n571) );
  NOR2X1 U826 ( .A(n576), .B(N190), .Y(n569) );
  NOR2X1 U827 ( .A(N189), .B(N190), .Y(n568) );
  AO22X1 U828 ( .A0(\temp_seq[5][0] ), .A1(n569), .B0(\temp_seq[4][0] ), .B1(
        n568), .Y(n559) );
  AOI221XL U829 ( .A0(\temp_seq[6][0] ), .A1(n572), .B0(\temp_seq[7][0] ), 
        .B1(n571), .C0(n559), .Y(n562) );
  AO22X1 U830 ( .A0(n515), .A1(n569), .B0(n504), .B1(n568), .Y(n560) );
  AOI221XL U831 ( .A0(n503), .A1(n572), .B0(\temp_seq[3][0] ), .B1(n571), .C0(
        n560), .Y(n561) );
  OAI22XL U832 ( .A0(n103), .A1(n562), .B0(N191), .B1(n561), .Y(N244) );
  AO22X1 U833 ( .A0(\temp_seq[5][1] ), .A1(n569), .B0(\temp_seq[4][1] ), .B1(
        n568), .Y(n563) );
  AOI221XL U834 ( .A0(\temp_seq[6][1] ), .A1(n572), .B0(\temp_seq[7][1] ), 
        .B1(n571), .C0(n563), .Y(n566) );
  AO22X1 U835 ( .A0(n505), .A1(n569), .B0(n506), .B1(n568), .Y(n564) );
  AOI221XL U836 ( .A0(n516), .A1(n572), .B0(\temp_seq[3][1] ), .B1(n571), .C0(
        n564), .Y(n565) );
  AO22X1 U837 ( .A0(\temp_seq[5][2] ), .A1(n569), .B0(\temp_seq[4][2] ), .B1(
        n568), .Y(n567) );
  AOI221XL U838 ( .A0(\temp_seq[6][2] ), .A1(n572), .B0(\temp_seq[7][2] ), 
        .B1(n571), .C0(n567), .Y(n574) );
  AO22X1 U839 ( .A0(n508), .A1(n569), .B0(n509), .B1(n568), .Y(n570) );
  AOI221XL U840 ( .A0(n507), .A1(n572), .B0(\temp_seq[3][2] ), .B1(n571), .C0(
        n570), .Y(n573) );
  NOR2X1 U841 ( .A(n593), .B(N192), .Y(n590) );
  NOR2X1 U842 ( .A(n593), .B(n594), .Y(n589) );
  NOR2X1 U843 ( .A(n594), .B(N193), .Y(n587) );
  NOR2X1 U844 ( .A(N192), .B(N193), .Y(n586) );
  AO22X1 U845 ( .A0(\temp_seq[5][0] ), .A1(n587), .B0(\temp_seq[4][0] ), .B1(
        n586), .Y(n577) );
  AOI221XL U846 ( .A0(\temp_seq[6][0] ), .A1(n590), .B0(\temp_seq[7][0] ), 
        .B1(n589), .C0(n577), .Y(n580) );
  AO22X1 U847 ( .A0(n515), .A1(n587), .B0(n504), .B1(n586), .Y(n578) );
  AOI221XL U848 ( .A0(n503), .A1(n590), .B0(\temp_seq[3][0] ), .B1(n589), .C0(
        n578), .Y(n579) );
  OAI22XL U849 ( .A0(n595), .A1(n580), .B0(N194), .B1(n579), .Y(N417) );
  AO22X1 U850 ( .A0(\temp_seq[5][1] ), .A1(n587), .B0(\temp_seq[4][1] ), .B1(
        n586), .Y(n581) );
  AOI221XL U851 ( .A0(\temp_seq[6][1] ), .A1(n590), .B0(\temp_seq[7][1] ), 
        .B1(n589), .C0(n581), .Y(n584) );
  AO22X1 U852 ( .A0(n505), .A1(n587), .B0(n506), .B1(n586), .Y(n582) );
  AOI221XL U853 ( .A0(n516), .A1(n590), .B0(\temp_seq[3][1] ), .B1(n589), .C0(
        n582), .Y(n583) );
  OAI22XL U854 ( .A0(n595), .A1(n584), .B0(N194), .B1(n583), .Y(N416) );
  AO22X1 U855 ( .A0(\temp_seq[5][2] ), .A1(n587), .B0(\temp_seq[4][2] ), .B1(
        n586), .Y(n585) );
  AOI221XL U856 ( .A0(\temp_seq[6][2] ), .A1(n590), .B0(\temp_seq[7][2] ), 
        .B1(n589), .C0(n585), .Y(n592) );
  AO22X1 U857 ( .A0(n508), .A1(n587), .B0(n509), .B1(n586), .Y(n588) );
  AOI221XL U858 ( .A0(n507), .A1(n590), .B0(\temp_seq[3][2] ), .B1(n589), .C0(
        n588), .Y(n591) );
  NOR2X1 U859 ( .A(n613), .B(N195), .Y(n609) );
  NOR2X1 U860 ( .A(n613), .B(n614), .Y(n608) );
  NOR2X1 U861 ( .A(n614), .B(N196), .Y(n606) );
  NOR2X1 U862 ( .A(N195), .B(N196), .Y(n605) );
  AO22X1 U863 ( .A0(\temp_seq[5][0] ), .A1(n606), .B0(\temp_seq[4][0] ), .B1(
        n605), .Y(n596) );
  AOI221XL U864 ( .A0(\temp_seq[6][0] ), .A1(n609), .B0(\temp_seq[7][0] ), 
        .B1(n608), .C0(n596), .Y(n599) );
  AO22X1 U865 ( .A0(n515), .A1(n606), .B0(n504), .B1(n605), .Y(n597) );
  AOI221XL U866 ( .A0(n503), .A1(n609), .B0(\temp_seq[3][0] ), .B1(n608), .C0(
        n597), .Y(n598) );
  OAI22XL U867 ( .A0(n612), .A1(n599), .B0(N197), .B1(n598), .Y(N370) );
  AO22X1 U868 ( .A0(\temp_seq[5][1] ), .A1(n606), .B0(\temp_seq[4][1] ), .B1(
        n605), .Y(n600) );
  AOI221XL U869 ( .A0(\temp_seq[6][1] ), .A1(n609), .B0(\temp_seq[7][1] ), 
        .B1(n608), .C0(n600), .Y(n603) );
  AO22X1 U870 ( .A0(n505), .A1(n606), .B0(n506), .B1(n605), .Y(n601) );
  AOI221XL U871 ( .A0(n516), .A1(n609), .B0(\temp_seq[3][1] ), .B1(n608), .C0(
        n601), .Y(n602) );
  OAI22XL U872 ( .A0(n612), .A1(n603), .B0(N197), .B1(n602), .Y(N369) );
  AO22X1 U873 ( .A0(\temp_seq[5][2] ), .A1(n606), .B0(\temp_seq[4][2] ), .B1(
        n605), .Y(n604) );
  AOI221XL U874 ( .A0(\temp_seq[6][2] ), .A1(n609), .B0(\temp_seq[7][2] ), 
        .B1(n608), .C0(n604), .Y(n611) );
  AO22X1 U875 ( .A0(n508), .A1(n606), .B0(n509), .B1(n605), .Y(n607) );
  AOI221XL U876 ( .A0(n507), .A1(n609), .B0(\temp_seq[3][2] ), .B1(n608), .C0(
        n607), .Y(n610) );
  OAI22XL U877 ( .A0(n611), .A1(n612), .B0(N197), .B1(n610), .Y(N368) );
  OAI22XL U878 ( .A0(temp_cost[1]), .A1(n615), .B0(n615), .B1(n442), .Y(n617)
         );
  NAND2X1 U879 ( .A(temp_cost[7]), .B(n638), .Y(n629) );
  NAND2X1 U880 ( .A(temp_cost[6]), .B(n639), .Y(n624) );
  NOR3BXL U881 ( .AN(n624), .B(n618), .C(n625), .Y(n616) );
  NAND3X1 U882 ( .A(n617), .B(n629), .C(n616), .Y(n636) );
  NAND2X1 U883 ( .A(temp_cost[9]), .B(n637), .Y(n632) );
  NOR2X1 U884 ( .A(n634), .B(n633), .Y(n623) );
  NAND2X1 U885 ( .A(temp_cost[2]), .B(n640), .Y(n631) );
  OAI211X1 U886 ( .A0(n620), .A1(n445), .B0(n619), .C0(n631), .Y(n621) );
  OAI221XL U887 ( .A0(temp_cost[2]), .A1(n640), .B0(temp_cost[3]), .B1(n444), 
        .C0(n621), .Y(n622) );
  AOI222XL U888 ( .A0(MinCost[5]), .A1(n447), .B0(MinCost[4]), .B1(n441), .C0(
        n623), .C1(n622), .Y(n627) );
  NAND2BX1 U889 ( .AN(n625), .B(n624), .Y(n626) );
  OAI222XL U890 ( .A0(n627), .A1(n626), .B0(temp_cost[6]), .B1(n639), .C0(
        temp_cost[7]), .C1(n638), .Y(n628) );
  OAI22XL U891 ( .A0(temp_cost[9]), .A1(n637), .B0(n641), .B1(n630), .Y(N392)
         );
  NAND3BX1 U892 ( .AN(N392), .B(n632), .C(n631), .Y(n635) );
  NOR4X1 U893 ( .A(n636), .B(n635), .C(n634), .D(n633), .Y(N394) );
endmodule

