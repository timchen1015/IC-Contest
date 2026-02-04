/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Mar 12 18:44:23 2025
/////////////////////////////////////////////////////////////


module lcd_ctrl ( clk, reset, datain, cmd, cmd_valid, dataout, output_valid, 
        busy );
  input [7:0] datain;
  input [2:0] cmd;
  output [7:0] dataout;
  input clk, reset, cmd_valid;
  output output_valid, busy;
  wire   n972, n973, n974, n975, n976, n977, n978, n979, n980, \state[0] ,
         N242, N243, N244, N245, N246, N247, N248, n75, n77, n78, n79, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n378, n379, n380, n382, n383, n384, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n673, n677,
         n679, n688, n697, n705, n706, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, N241, N240, N239,
         N238, N237, \r442/n3 , \r442/n2 , n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971;
  wire   [2:0] nextstate;
  wire   [2:0] origin_x;
  wire   [2:0] origin_y;
  wire   [3:0] count_out;
  wire   [6:1] \r443/carry ;

  NOR3X4 U321 ( .A(N248), .B(reset), .C(n923), .Y(n677) );
  ADDHXL \r442/U4  ( .A(N237), .B(origin_y[1]), .CO(\r442/n3 ), .S(N238) );
  ADDFXL \r442/U3  ( .A(origin_y[2]), .B(origin_y[1]), .CI(\r442/n3 ), .CO(
        \r442/n2 ), .S(N239) );
  ADDHXL \r442/U2  ( .A(origin_y[2]), .B(\r442/n2 ), .CO(N241), .S(N240) );
  EDFFX1 \img_reg[35][7]  ( .D(datain[7]), .E(n922), .CK(clk), .QN(n89) );
  EDFFX1 \img_reg[35][6]  ( .D(datain[6]), .E(n922), .CK(clk), .QN(n90) );
  EDFFX1 \img_reg[35][5]  ( .D(datain[5]), .E(n922), .CK(clk), .QN(n91) );
  EDFFX1 \img_reg[35][4]  ( .D(datain[4]), .E(n922), .CK(clk), .QN(n92) );
  EDFFX1 \img_reg[35][3]  ( .D(datain[3]), .E(n922), .CK(clk), .QN(n93) );
  EDFFX1 \img_reg[35][2]  ( .D(datain[2]), .E(n922), .CK(clk), .QN(n94) );
  EDFFX1 \img_reg[35][1]  ( .D(datain[1]), .E(n922), .CK(clk), .QN(n95) );
  EDFFX1 \img_reg[35][0]  ( .D(datain[0]), .E(n922), .CK(clk), .QN(n96) );
  EDFFX1 \img_reg[26][7]  ( .D(datain[7]), .E(n917), .CK(clk), .QN(n161) );
  EDFFX1 \img_reg[26][6]  ( .D(datain[6]), .E(n917), .CK(clk), .QN(n162) );
  EDFFX1 \img_reg[26][5]  ( .D(datain[5]), .E(n917), .CK(clk), .QN(n163) );
  EDFFX1 \img_reg[26][4]  ( .D(datain[4]), .E(n917), .CK(clk), .QN(n164) );
  EDFFX1 \img_reg[26][3]  ( .D(datain[3]), .E(n917), .CK(clk), .QN(n165) );
  EDFFX1 \img_reg[26][2]  ( .D(datain[2]), .E(n917), .CK(clk), .QN(n166) );
  EDFFX1 \img_reg[26][1]  ( .D(datain[1]), .E(n917), .CK(clk), .QN(n167) );
  EDFFX1 \img_reg[26][0]  ( .D(datain[0]), .E(n917), .CK(clk), .QN(n168) );
  EDFFX1 \img_reg[17][7]  ( .D(datain[7]), .E(n912), .CK(clk), .QN(n233) );
  EDFFX1 \img_reg[17][6]  ( .D(datain[6]), .E(n912), .CK(clk), .QN(n234) );
  EDFFX1 \img_reg[17][5]  ( .D(datain[5]), .E(n912), .CK(clk), .QN(n235) );
  EDFFX1 \img_reg[17][4]  ( .D(datain[4]), .E(n912), .CK(clk), .QN(n236) );
  EDFFX1 \img_reg[17][3]  ( .D(datain[3]), .E(n912), .CK(clk), .QN(n237) );
  EDFFX1 \img_reg[17][2]  ( .D(datain[2]), .E(n912), .CK(clk), .QN(n238) );
  EDFFX1 \img_reg[17][1]  ( .D(datain[1]), .E(n912), .CK(clk), .QN(n239) );
  EDFFX1 \img_reg[17][0]  ( .D(datain[0]), .E(n912), .CK(clk), .QN(n240) );
  EDFFX1 \img_reg[8][7]  ( .D(datain[7]), .E(n907), .CK(clk), .QN(n305) );
  EDFFX1 \img_reg[8][6]  ( .D(datain[6]), .E(n907), .CK(clk), .QN(n306) );
  EDFFX1 \img_reg[8][5]  ( .D(datain[5]), .E(n907), .CK(clk), .QN(n307) );
  EDFFX1 \img_reg[8][4]  ( .D(datain[4]), .E(n907), .CK(clk), .QN(n308) );
  EDFFX1 \img_reg[8][3]  ( .D(datain[3]), .E(n907), .CK(clk), .QN(n309) );
  EDFFX1 \img_reg[8][2]  ( .D(datain[2]), .E(n907), .CK(clk), .QN(n310) );
  EDFFX1 \img_reg[8][1]  ( .D(datain[1]), .E(n907), .CK(clk), .QN(n311) );
  EDFFX1 \img_reg[8][0]  ( .D(datain[0]), .E(n907), .CK(clk), .QN(n312) );
  EDFFX1 \img_reg[34][7]  ( .D(datain[7]), .E(n921), .CK(clk), .QN(n97) );
  EDFFX1 \img_reg[34][6]  ( .D(datain[6]), .E(n921), .CK(clk), .QN(n98) );
  EDFFX1 \img_reg[34][5]  ( .D(datain[5]), .E(n921), .CK(clk), .QN(n99) );
  EDFFX1 \img_reg[34][4]  ( .D(datain[4]), .E(n921), .CK(clk), .QN(n100) );
  EDFFX1 \img_reg[34][3]  ( .D(datain[3]), .E(n921), .CK(clk), .QN(n101) );
  EDFFX1 \img_reg[34][2]  ( .D(datain[2]), .E(n921), .CK(clk), .QN(n102) );
  EDFFX1 \img_reg[34][1]  ( .D(datain[1]), .E(n921), .CK(clk), .QN(n103) );
  EDFFX1 \img_reg[34][0]  ( .D(datain[0]), .E(n921), .CK(clk), .QN(n104) );
  EDFFX1 \img_reg[25][7]  ( .D(datain[7]), .E(n916), .CK(clk), .QN(n169) );
  EDFFX1 \img_reg[25][6]  ( .D(datain[6]), .E(n916), .CK(clk), .QN(n170) );
  EDFFX1 \img_reg[25][5]  ( .D(datain[5]), .E(n916), .CK(clk), .QN(n171) );
  EDFFX1 \img_reg[25][4]  ( .D(datain[4]), .E(n916), .CK(clk), .QN(n172) );
  EDFFX1 \img_reg[25][3]  ( .D(datain[3]), .E(n916), .CK(clk), .QN(n173) );
  EDFFX1 \img_reg[25][2]  ( .D(datain[2]), .E(n916), .CK(clk), .QN(n174) );
  EDFFX1 \img_reg[25][1]  ( .D(datain[1]), .E(n916), .CK(clk), .QN(n175) );
  EDFFX1 \img_reg[25][0]  ( .D(datain[0]), .E(n916), .CK(clk), .QN(n176) );
  EDFFX1 \img_reg[16][7]  ( .D(datain[7]), .E(n911), .CK(clk), .QN(n241) );
  EDFFX1 \img_reg[16][6]  ( .D(datain[6]), .E(n911), .CK(clk), .QN(n242) );
  EDFFX1 \img_reg[16][5]  ( .D(datain[5]), .E(n911), .CK(clk), .QN(n243) );
  EDFFX1 \img_reg[16][4]  ( .D(datain[4]), .E(n911), .CK(clk), .QN(n244) );
  EDFFX1 \img_reg[16][3]  ( .D(datain[3]), .E(n911), .CK(clk), .QN(n245) );
  EDFFX1 \img_reg[16][2]  ( .D(datain[2]), .E(n911), .CK(clk), .QN(n246) );
  EDFFX1 \img_reg[16][1]  ( .D(datain[1]), .E(n911), .CK(clk), .QN(n247) );
  EDFFX1 \img_reg[16][0]  ( .D(datain[0]), .E(n911), .CK(clk), .QN(n248) );
  EDFFX1 \img_reg[33][7]  ( .D(datain[7]), .E(n920), .CK(clk), .QN(n105) );
  EDFFX1 \img_reg[33][6]  ( .D(datain[6]), .E(n920), .CK(clk), .QN(n106) );
  EDFFX1 \img_reg[33][5]  ( .D(datain[5]), .E(n920), .CK(clk), .QN(n107) );
  EDFFX1 \img_reg[33][4]  ( .D(datain[4]), .E(n920), .CK(clk), .QN(n108) );
  EDFFX1 \img_reg[33][3]  ( .D(datain[3]), .E(n920), .CK(clk), .QN(n109) );
  EDFFX1 \img_reg[33][2]  ( .D(datain[2]), .E(n920), .CK(clk), .QN(n110) );
  EDFFX1 \img_reg[33][1]  ( .D(datain[1]), .E(n920), .CK(clk), .QN(n111) );
  EDFFX1 \img_reg[33][0]  ( .D(datain[0]), .E(n920), .CK(clk), .QN(n112) );
  EDFFX1 \img_reg[24][4]  ( .D(datain[4]), .E(n915), .CK(clk), .QN(n180) );
  EDFFX1 \img_reg[24][3]  ( .D(datain[3]), .E(n915), .CK(clk), .QN(n181) );
  EDFFX1 \img_reg[24][2]  ( .D(datain[2]), .E(n915), .CK(clk), .QN(n182) );
  EDFFX1 \img_reg[24][1]  ( .D(datain[1]), .E(n915), .CK(clk), .QN(n183) );
  EDFFX1 \img_reg[24][0]  ( .D(datain[0]), .E(n915), .CK(clk), .QN(n184) );
  EDFFX1 \img_reg[24][7]  ( .D(datain[7]), .E(n915), .CK(clk), .QN(n177) );
  EDFFX1 \img_reg[24][6]  ( .D(datain[6]), .E(n915), .CK(clk), .QN(n178) );
  EDFFX1 \img_reg[24][5]  ( .D(datain[5]), .E(n915), .CK(clk), .QN(n179) );
  EDFFX1 \img_reg[15][7]  ( .D(datain[7]), .E(n892), .CK(clk), .QN(n249) );
  EDFFX1 \img_reg[15][6]  ( .D(datain[6]), .E(n892), .CK(clk), .QN(n250) );
  EDFFX1 \img_reg[15][5]  ( .D(datain[5]), .E(n892), .CK(clk), .QN(n251) );
  EDFFX1 \img_reg[15][4]  ( .D(datain[4]), .E(n892), .CK(clk), .QN(n252) );
  EDFFX1 \img_reg[15][3]  ( .D(datain[3]), .E(n892), .CK(clk), .QN(n253) );
  EDFFX1 \img_reg[15][2]  ( .D(datain[2]), .E(n892), .CK(clk), .QN(n254) );
  EDFFX1 \img_reg[15][1]  ( .D(datain[1]), .E(n892), .CK(clk), .QN(n255) );
  EDFFX1 \img_reg[15][0]  ( .D(datain[0]), .E(n892), .CK(clk), .QN(n256) );
  EDFFX1 \img_reg[6][7]  ( .D(datain[7]), .E(n897), .CK(clk), .QN(n321) );
  EDFFX1 \img_reg[6][6]  ( .D(datain[6]), .E(n897), .CK(clk), .QN(n322) );
  EDFFX1 \img_reg[6][5]  ( .D(datain[5]), .E(n897), .CK(clk), .QN(n323) );
  EDFFX1 \img_reg[6][4]  ( .D(datain[4]), .E(n897), .CK(clk), .QN(n324) );
  EDFFX1 \img_reg[6][3]  ( .D(datain[3]), .E(n897), .CK(clk), .QN(n325) );
  EDFFX1 \img_reg[6][2]  ( .D(datain[2]), .E(n897), .CK(clk), .QN(n326) );
  EDFFX1 \img_reg[6][1]  ( .D(datain[1]), .E(n897), .CK(clk), .QN(n327) );
  EDFFX1 \img_reg[6][0]  ( .D(datain[0]), .E(n897), .CK(clk), .QN(n328) );
  EDFFX1 \img_reg[32][7]  ( .D(datain[7]), .E(n919), .CK(clk), .QN(n113) );
  EDFFX1 \img_reg[32][6]  ( .D(datain[6]), .E(n919), .CK(clk), .QN(n114) );
  EDFFX1 \img_reg[32][5]  ( .D(datain[5]), .E(n919), .CK(clk), .QN(n115) );
  EDFFX1 \img_reg[32][4]  ( .D(datain[4]), .E(n919), .CK(clk), .QN(n116) );
  EDFFX1 \img_reg[32][3]  ( .D(datain[3]), .E(n919), .CK(clk), .QN(n117) );
  EDFFX1 \img_reg[32][2]  ( .D(datain[2]), .E(n919), .CK(clk), .QN(n118) );
  EDFFX1 \img_reg[32][1]  ( .D(datain[1]), .E(n919), .CK(clk), .QN(n119) );
  EDFFX1 \img_reg[32][0]  ( .D(datain[0]), .E(n919), .CK(clk), .QN(n120) );
  EDFFX1 \img_reg[30][7]  ( .D(datain[7]), .E(n906), .CK(clk), .QN(n129) );
  EDFFX1 \img_reg[30][6]  ( .D(datain[6]), .E(n906), .CK(clk), .QN(n130) );
  EDFFX1 \img_reg[30][5]  ( .D(datain[5]), .E(n906), .CK(clk), .QN(n131) );
  EDFFX1 \img_reg[30][4]  ( .D(datain[4]), .E(n906), .CK(clk), .QN(n132) );
  EDFFX1 \img_reg[30][3]  ( .D(datain[3]), .E(n906), .CK(clk), .QN(n133) );
  EDFFX1 \img_reg[30][2]  ( .D(datain[2]), .E(n906), .CK(clk), .QN(n134) );
  EDFFX1 \img_reg[30][1]  ( .D(datain[1]), .E(n906), .CK(clk), .QN(n135) );
  EDFFX1 \img_reg[30][0]  ( .D(datain[0]), .E(n906), .CK(clk), .QN(n136) );
  EDFFX1 \img_reg[28][7]  ( .D(datain[7]), .E(n904), .CK(clk), .QN(n145) );
  EDFFX1 \img_reg[28][6]  ( .D(datain[6]), .E(n904), .CK(clk), .QN(n146) );
  EDFFX1 \img_reg[28][5]  ( .D(datain[5]), .E(n904), .CK(clk), .QN(n147) );
  EDFFX1 \img_reg[28][4]  ( .D(datain[4]), .E(n904), .CK(clk), .QN(n148) );
  EDFFX1 \img_reg[28][3]  ( .D(datain[3]), .E(n904), .CK(clk), .QN(n149) );
  EDFFX1 \img_reg[28][2]  ( .D(datain[2]), .E(n904), .CK(clk), .QN(n150) );
  EDFFX1 \img_reg[28][1]  ( .D(datain[1]), .E(n904), .CK(clk), .QN(n151) );
  EDFFX1 \img_reg[28][0]  ( .D(datain[0]), .E(n904), .CK(clk), .QN(n152) );
  EDFFX1 \img_reg[23][7]  ( .D(datain[7]), .E(n893), .CK(clk), .QN(n185) );
  EDFFX1 \img_reg[23][6]  ( .D(datain[6]), .E(n893), .CK(clk), .QN(n186) );
  EDFFX1 \img_reg[23][5]  ( .D(datain[5]), .E(n893), .CK(clk), .QN(n187) );
  EDFFX1 \img_reg[23][4]  ( .D(datain[4]), .E(n893), .CK(clk), .QN(n188) );
  EDFFX1 \img_reg[23][3]  ( .D(datain[3]), .E(n893), .CK(clk), .QN(n189) );
  EDFFX1 \img_reg[23][2]  ( .D(datain[2]), .E(n893), .CK(clk), .QN(n190) );
  EDFFX1 \img_reg[23][1]  ( .D(datain[1]), .E(n893), .CK(clk), .QN(n191) );
  EDFFX1 \img_reg[23][0]  ( .D(datain[0]), .E(n893), .CK(clk), .QN(n192) );
  EDFFX1 \img_reg[21][7]  ( .D(datain[7]), .E(n902), .CK(clk), .QN(n201) );
  EDFFX1 \img_reg[21][6]  ( .D(datain[6]), .E(n902), .CK(clk), .QN(n202) );
  EDFFX1 \img_reg[21][5]  ( .D(datain[5]), .E(n902), .CK(clk), .QN(n203) );
  EDFFX1 \img_reg[21][4]  ( .D(datain[4]), .E(n902), .CK(clk), .QN(n204) );
  EDFFX1 \img_reg[21][3]  ( .D(datain[3]), .E(n902), .CK(clk), .QN(n205) );
  EDFFX1 \img_reg[21][2]  ( .D(datain[2]), .E(n902), .CK(clk), .QN(n206) );
  EDFFX1 \img_reg[21][1]  ( .D(datain[1]), .E(n902), .CK(clk), .QN(n207) );
  EDFFX1 \img_reg[21][0]  ( .D(datain[0]), .E(n902), .CK(clk), .QN(n208) );
  EDFFX1 \img_reg[19][7]  ( .D(datain[7]), .E(n914), .CK(clk), .QN(n217) );
  EDFFX1 \img_reg[19][6]  ( .D(datain[6]), .E(n914), .CK(clk), .QN(n218) );
  EDFFX1 \img_reg[19][5]  ( .D(datain[5]), .E(n914), .CK(clk), .QN(n219) );
  EDFFX1 \img_reg[19][4]  ( .D(datain[4]), .E(n914), .CK(clk), .QN(n220) );
  EDFFX1 \img_reg[19][3]  ( .D(datain[3]), .E(n914), .CK(clk), .QN(n221) );
  EDFFX1 \img_reg[19][2]  ( .D(datain[2]), .E(n914), .CK(clk), .QN(n222) );
  EDFFX1 \img_reg[19][1]  ( .D(datain[1]), .E(n914), .CK(clk), .QN(n223) );
  EDFFX1 \img_reg[19][0]  ( .D(datain[0]), .E(n914), .CK(clk), .QN(n224) );
  EDFFX1 \img_reg[14][7]  ( .D(datain[7]), .E(n900), .CK(clk), .QN(n257) );
  EDFFX1 \img_reg[14][6]  ( .D(datain[6]), .E(n900), .CK(clk), .QN(n258) );
  EDFFX1 \img_reg[14][5]  ( .D(datain[5]), .E(n900), .CK(clk), .QN(n259) );
  EDFFX1 \img_reg[14][4]  ( .D(datain[4]), .E(n900), .CK(clk), .QN(n260) );
  EDFFX1 \img_reg[14][3]  ( .D(datain[3]), .E(n900), .CK(clk), .QN(n261) );
  EDFFX1 \img_reg[14][2]  ( .D(datain[2]), .E(n900), .CK(clk), .QN(n262) );
  EDFFX1 \img_reg[14][1]  ( .D(datain[1]), .E(n900), .CK(clk), .QN(n263) );
  EDFFX1 \img_reg[14][0]  ( .D(datain[0]), .E(n900), .CK(clk), .QN(n264) );
  EDFFX1 \img_reg[12][1]  ( .D(datain[1]), .E(n898), .CK(clk), .QN(n279) );
  EDFFX1 \img_reg[12][0]  ( .D(datain[0]), .E(n898), .CK(clk), .QN(n280) );
  EDFFX1 \img_reg[12][7]  ( .D(datain[7]), .E(n898), .CK(clk), .QN(n273) );
  EDFFX1 \img_reg[12][6]  ( .D(datain[6]), .E(n898), .CK(clk), .QN(n274) );
  EDFFX1 \img_reg[12][5]  ( .D(datain[5]), .E(n898), .CK(clk), .QN(n275) );
  EDFFX1 \img_reg[12][4]  ( .D(datain[4]), .E(n898), .CK(clk), .QN(n276) );
  EDFFX1 \img_reg[12][3]  ( .D(datain[3]), .E(n898), .CK(clk), .QN(n277) );
  EDFFX1 \img_reg[12][2]  ( .D(datain[2]), .E(n898), .CK(clk), .QN(n278) );
  EDFFX1 \img_reg[10][7]  ( .D(datain[7]), .E(n909), .CK(clk), .QN(n289) );
  EDFFX1 \img_reg[10][6]  ( .D(datain[6]), .E(n909), .CK(clk), .QN(n290) );
  EDFFX1 \img_reg[10][5]  ( .D(datain[5]), .E(n909), .CK(clk), .QN(n291) );
  EDFFX1 \img_reg[10][4]  ( .D(datain[4]), .E(n909), .CK(clk), .QN(n292) );
  EDFFX1 \img_reg[10][3]  ( .D(datain[3]), .E(n909), .CK(clk), .QN(n293) );
  EDFFX1 \img_reg[10][2]  ( .D(datain[2]), .E(n909), .CK(clk), .QN(n294) );
  EDFFX1 \img_reg[10][1]  ( .D(datain[1]), .E(n909), .CK(clk), .QN(n295) );
  EDFFX1 \img_reg[10][0]  ( .D(datain[0]), .E(n909), .CK(clk), .QN(n296) );
  EDFFX1 \img_reg[5][7]  ( .D(datain[7]), .E(n896), .CK(clk), .QN(n329) );
  EDFFX1 \img_reg[5][6]  ( .D(datain[6]), .E(n896), .CK(clk), .QN(n330) );
  EDFFX1 \img_reg[5][5]  ( .D(datain[5]), .E(n896), .CK(clk), .QN(n331) );
  EDFFX1 \img_reg[5][4]  ( .D(datain[4]), .E(n896), .CK(clk), .QN(n332) );
  EDFFX1 \img_reg[5][3]  ( .D(datain[3]), .E(n896), .CK(clk), .QN(n333) );
  EDFFX1 \img_reg[5][2]  ( .D(datain[2]), .E(n896), .CK(clk), .QN(n334) );
  EDFFX1 \img_reg[5][1]  ( .D(datain[1]), .E(n896), .CK(clk), .QN(n335) );
  EDFFX1 \img_reg[5][0]  ( .D(datain[0]), .E(n896), .CK(clk), .QN(n336) );
  EDFFX1 \img_reg[3][7]  ( .D(datain[7]), .E(n943), .CK(clk), .QN(n345) );
  EDFFX1 \img_reg[3][6]  ( .D(datain[6]), .E(n943), .CK(clk), .QN(n346) );
  EDFFX1 \img_reg[3][5]  ( .D(datain[5]), .E(n943), .CK(clk), .QN(n347) );
  EDFFX1 \img_reg[3][4]  ( .D(datain[4]), .E(n943), .CK(clk), .QN(n348) );
  EDFFX1 \img_reg[3][3]  ( .D(datain[3]), .E(n943), .CK(clk), .QN(n349) );
  EDFFX1 \img_reg[3][2]  ( .D(datain[2]), .E(n943), .CK(clk), .QN(n350) );
  EDFFX1 \img_reg[3][1]  ( .D(datain[1]), .E(n943), .CK(clk), .QN(n351) );
  EDFFX1 \img_reg[3][0]  ( .D(datain[0]), .E(n943), .CK(clk), .QN(n352) );
  EDFFX1 \img_reg[1][7]  ( .D(datain[7]), .E(n941), .CK(clk), .QN(n361) );
  EDFFX1 \img_reg[1][6]  ( .D(datain[6]), .E(n941), .CK(clk), .QN(n362) );
  EDFFX1 \img_reg[1][5]  ( .D(datain[5]), .E(n941), .CK(clk), .QN(n363) );
  EDFFX1 \img_reg[1][4]  ( .D(datain[4]), .E(n941), .CK(clk), .QN(n364) );
  EDFFX1 \img_reg[1][3]  ( .D(datain[3]), .E(n941), .CK(clk), .QN(n365) );
  EDFFX1 \img_reg[1][2]  ( .D(datain[2]), .E(n941), .CK(clk), .QN(n366) );
  EDFFX1 \img_reg[1][1]  ( .D(datain[1]), .E(n941), .CK(clk), .QN(n367) );
  EDFFX1 \img_reg[1][0]  ( .D(datain[0]), .E(n941), .CK(clk), .QN(n368) );
  EDFFX1 \img_reg[31][7]  ( .D(datain[7]), .E(n894), .CK(clk), .QN(n121) );
  EDFFX1 \img_reg[31][6]  ( .D(datain[6]), .E(n894), .CK(clk), .QN(n122) );
  EDFFX1 \img_reg[31][5]  ( .D(datain[5]), .E(n894), .CK(clk), .QN(n123) );
  EDFFX1 \img_reg[31][4]  ( .D(datain[4]), .E(n894), .CK(clk), .QN(n124) );
  EDFFX1 \img_reg[31][3]  ( .D(datain[3]), .E(n894), .CK(clk), .QN(n125) );
  EDFFX1 \img_reg[31][2]  ( .D(datain[2]), .E(n894), .CK(clk), .QN(n126) );
  EDFFX1 \img_reg[31][1]  ( .D(datain[1]), .E(n894), .CK(clk), .QN(n127) );
  EDFFX1 \img_reg[31][0]  ( .D(datain[0]), .E(n894), .CK(clk), .QN(n128) );
  EDFFX1 \img_reg[29][7]  ( .D(datain[7]), .E(n905), .CK(clk), .QN(n137) );
  EDFFX1 \img_reg[29][6]  ( .D(datain[6]), .E(n905), .CK(clk), .QN(n138) );
  EDFFX1 \img_reg[29][5]  ( .D(datain[5]), .E(n905), .CK(clk), .QN(n139) );
  EDFFX1 \img_reg[29][4]  ( .D(datain[4]), .E(n905), .CK(clk), .QN(n140) );
  EDFFX1 \img_reg[29][3]  ( .D(datain[3]), .E(n905), .CK(clk), .QN(n141) );
  EDFFX1 \img_reg[29][2]  ( .D(datain[2]), .E(n905), .CK(clk), .QN(n142) );
  EDFFX1 \img_reg[29][1]  ( .D(datain[1]), .E(n905), .CK(clk), .QN(n143) );
  EDFFX1 \img_reg[29][0]  ( .D(datain[0]), .E(n905), .CK(clk), .QN(n144) );
  EDFFX1 \img_reg[27][7]  ( .D(datain[7]), .E(n918), .CK(clk), .QN(n153) );
  EDFFX1 \img_reg[27][6]  ( .D(datain[6]), .E(n918), .CK(clk), .QN(n154) );
  EDFFX1 \img_reg[27][5]  ( .D(datain[5]), .E(n918), .CK(clk), .QN(n155) );
  EDFFX1 \img_reg[27][4]  ( .D(datain[4]), .E(n918), .CK(clk), .QN(n156) );
  EDFFX1 \img_reg[27][3]  ( .D(datain[3]), .E(n918), .CK(clk), .QN(n157) );
  EDFFX1 \img_reg[27][2]  ( .D(datain[2]), .E(n918), .CK(clk), .QN(n158) );
  EDFFX1 \img_reg[27][1]  ( .D(datain[1]), .E(n918), .CK(clk), .QN(n159) );
  EDFFX1 \img_reg[27][0]  ( .D(datain[0]), .E(n918), .CK(clk), .QN(n160) );
  EDFFX1 \img_reg[22][7]  ( .D(datain[7]), .E(n903), .CK(clk), .QN(n193) );
  EDFFX1 \img_reg[22][6]  ( .D(datain[6]), .E(n903), .CK(clk), .QN(n194) );
  EDFFX1 \img_reg[22][5]  ( .D(datain[5]), .E(n903), .CK(clk), .QN(n195) );
  EDFFX1 \img_reg[22][4]  ( .D(datain[4]), .E(n903), .CK(clk), .QN(n196) );
  EDFFX1 \img_reg[22][3]  ( .D(datain[3]), .E(n903), .CK(clk), .QN(n197) );
  EDFFX1 \img_reg[22][2]  ( .D(datain[2]), .E(n903), .CK(clk), .QN(n198) );
  EDFFX1 \img_reg[22][1]  ( .D(datain[1]), .E(n903), .CK(clk), .QN(n199) );
  EDFFX1 \img_reg[22][0]  ( .D(datain[0]), .E(n903), .CK(clk), .QN(n200) );
  EDFFX1 \img_reg[20][7]  ( .D(datain[7]), .E(n901), .CK(clk), .QN(n209) );
  EDFFX1 \img_reg[20][6]  ( .D(datain[6]), .E(n901), .CK(clk), .QN(n210) );
  EDFFX1 \img_reg[20][5]  ( .D(datain[5]), .E(n901), .CK(clk), .QN(n211) );
  EDFFX1 \img_reg[20][4]  ( .D(datain[4]), .E(n901), .CK(clk), .QN(n212) );
  EDFFX1 \img_reg[20][3]  ( .D(datain[3]), .E(n901), .CK(clk), .QN(n213) );
  EDFFX1 \img_reg[20][2]  ( .D(datain[2]), .E(n901), .CK(clk), .QN(n214) );
  EDFFX1 \img_reg[20][1]  ( .D(datain[1]), .E(n901), .CK(clk), .QN(n215) );
  EDFFX1 \img_reg[20][0]  ( .D(datain[0]), .E(n901), .CK(clk), .QN(n216) );
  EDFFX1 \img_reg[18][7]  ( .D(datain[7]), .E(n913), .CK(clk), .QN(n225) );
  EDFFX1 \img_reg[18][6]  ( .D(datain[6]), .E(n913), .CK(clk), .QN(n226) );
  EDFFX1 \img_reg[18][5]  ( .D(datain[5]), .E(n913), .CK(clk), .QN(n227) );
  EDFFX1 \img_reg[18][4]  ( .D(datain[4]), .E(n913), .CK(clk), .QN(n228) );
  EDFFX1 \img_reg[18][3]  ( .D(datain[3]), .E(n913), .CK(clk), .QN(n229) );
  EDFFX1 \img_reg[18][2]  ( .D(datain[2]), .E(n913), .CK(clk), .QN(n230) );
  EDFFX1 \img_reg[18][1]  ( .D(datain[1]), .E(n913), .CK(clk), .QN(n231) );
  EDFFX1 \img_reg[18][0]  ( .D(datain[0]), .E(n913), .CK(clk), .QN(n232) );
  EDFFX1 \img_reg[13][7]  ( .D(datain[7]), .E(n899), .CK(clk), .QN(n265) );
  EDFFX1 \img_reg[13][6]  ( .D(datain[6]), .E(n899), .CK(clk), .QN(n266) );
  EDFFX1 \img_reg[13][5]  ( .D(datain[5]), .E(n899), .CK(clk), .QN(n267) );
  EDFFX1 \img_reg[13][4]  ( .D(datain[4]), .E(n899), .CK(clk), .QN(n268) );
  EDFFX1 \img_reg[13][3]  ( .D(datain[3]), .E(n899), .CK(clk), .QN(n269) );
  EDFFX1 \img_reg[13][2]  ( .D(datain[2]), .E(n899), .CK(clk), .QN(n270) );
  EDFFX1 \img_reg[13][1]  ( .D(datain[1]), .E(n899), .CK(clk), .QN(n271) );
  EDFFX1 \img_reg[13][0]  ( .D(datain[0]), .E(n899), .CK(clk), .QN(n272) );
  EDFFX1 \img_reg[11][7]  ( .D(datain[7]), .E(n910), .CK(clk), .QN(n281) );
  EDFFX1 \img_reg[11][6]  ( .D(datain[6]), .E(n910), .CK(clk), .QN(n282) );
  EDFFX1 \img_reg[11][5]  ( .D(datain[5]), .E(n910), .CK(clk), .QN(n283) );
  EDFFX1 \img_reg[11][4]  ( .D(datain[4]), .E(n910), .CK(clk), .QN(n284) );
  EDFFX1 \img_reg[11][3]  ( .D(datain[3]), .E(n910), .CK(clk), .QN(n285) );
  EDFFX1 \img_reg[11][2]  ( .D(datain[2]), .E(n910), .CK(clk), .QN(n286) );
  EDFFX1 \img_reg[11][1]  ( .D(datain[1]), .E(n910), .CK(clk), .QN(n287) );
  EDFFX1 \img_reg[11][0]  ( .D(datain[0]), .E(n910), .CK(clk), .QN(n288) );
  EDFFX1 \img_reg[9][7]  ( .D(datain[7]), .E(n908), .CK(clk), .QN(n297) );
  EDFFX1 \img_reg[9][6]  ( .D(datain[6]), .E(n908), .CK(clk), .QN(n298) );
  EDFFX1 \img_reg[9][5]  ( .D(datain[5]), .E(n908), .CK(clk), .QN(n299) );
  EDFFX1 \img_reg[9][4]  ( .D(datain[4]), .E(n908), .CK(clk), .QN(n300) );
  EDFFX1 \img_reg[9][3]  ( .D(datain[3]), .E(n908), .CK(clk), .QN(n301) );
  EDFFX1 \img_reg[9][2]  ( .D(datain[2]), .E(n908), .CK(clk), .QN(n302) );
  EDFFX1 \img_reg[9][1]  ( .D(datain[1]), .E(n908), .CK(clk), .QN(n303) );
  EDFFX1 \img_reg[9][0]  ( .D(datain[0]), .E(n908), .CK(clk), .QN(n304) );
  EDFFX1 \img_reg[4][7]  ( .D(datain[7]), .E(n895), .CK(clk), .QN(n337) );
  EDFFX1 \img_reg[4][6]  ( .D(datain[6]), .E(n895), .CK(clk), .QN(n338) );
  EDFFX1 \img_reg[4][5]  ( .D(datain[5]), .E(n895), .CK(clk), .QN(n339) );
  EDFFX1 \img_reg[4][4]  ( .D(datain[4]), .E(n895), .CK(clk), .QN(n340) );
  EDFFX1 \img_reg[4][3]  ( .D(datain[3]), .E(n895), .CK(clk), .QN(n341) );
  EDFFX1 \img_reg[4][2]  ( .D(datain[2]), .E(n895), .CK(clk), .QN(n342) );
  EDFFX1 \img_reg[4][1]  ( .D(datain[1]), .E(n895), .CK(clk), .QN(n343) );
  EDFFX1 \img_reg[4][0]  ( .D(datain[0]), .E(n895), .CK(clk), .QN(n344) );
  EDFFX1 \img_reg[2][7]  ( .D(datain[7]), .E(n942), .CK(clk), .QN(n353) );
  EDFFX1 \img_reg[2][6]  ( .D(datain[6]), .E(n942), .CK(clk), .QN(n354) );
  EDFFX1 \img_reg[2][5]  ( .D(datain[5]), .E(n942), .CK(clk), .QN(n355) );
  EDFFX1 \img_reg[2][4]  ( .D(datain[4]), .E(n942), .CK(clk), .QN(n356) );
  EDFFX1 \img_reg[2][3]  ( .D(datain[3]), .E(n942), .CK(clk), .QN(n357) );
  EDFFX1 \img_reg[2][2]  ( .D(datain[2]), .E(n942), .CK(clk), .QN(n358) );
  EDFFX1 \img_reg[2][1]  ( .D(datain[1]), .E(n942), .CK(clk), .QN(n359) );
  EDFFX1 \img_reg[2][0]  ( .D(datain[0]), .E(n942), .CK(clk), .QN(n360) );
  EDFFX1 \img_reg[0][0]  ( .D(datain[0]), .E(n714), .CK(clk), .QN(n376) );
  EDFFX1 \img_reg[0][1]  ( .D(datain[1]), .E(n714), .CK(clk), .QN(n375) );
  EDFFX1 \img_reg[0][7]  ( .D(datain[7]), .E(n714), .CK(clk), .QN(n369) );
  EDFFX1 \img_reg[0][6]  ( .D(datain[6]), .E(n714), .CK(clk), .QN(n370) );
  EDFFX1 \img_reg[0][5]  ( .D(datain[5]), .E(n714), .CK(clk), .QN(n371) );
  EDFFX1 \img_reg[0][4]  ( .D(datain[4]), .E(n714), .CK(clk), .QN(n372) );
  EDFFX1 \img_reg[0][3]  ( .D(datain[3]), .E(n714), .CK(clk), .QN(n373) );
  EDFFX1 \img_reg[0][2]  ( .D(datain[2]), .E(n714), .CK(clk), .QN(n374) );
  DFFX1 \img_reg[7][7]  ( .D(n804), .CK(clk), .QN(n313) );
  DFFX1 \img_reg[7][6]  ( .D(n808), .CK(clk), .QN(n314) );
  DFFX1 \img_reg[7][5]  ( .D(n796), .CK(clk), .QN(n315) );
  DFFX1 \img_reg[7][4]  ( .D(n800), .CK(clk), .QN(n316) );
  DFFX1 \img_reg[7][3]  ( .D(n788), .CK(clk), .QN(n317) );
  DFFX1 \img_reg[7][2]  ( .D(n792), .CK(clk), .QN(n318) );
  DFFX1 \img_reg[7][1]  ( .D(n780), .CK(clk), .QN(n319) );
  DFFX1 \img_reg[7][0]  ( .D(n784), .CK(clk), .QN(n320) );
  DFFRX1 \count_out_reg[3]  ( .D(n838), .CK(clk), .RN(n957), .Q(count_out[3])
         );
  DFFRX1 \count_out_reg[0]  ( .D(n826), .CK(clk), .RN(n957), .Q(count_out[0]), 
        .QN(n380) );
  DFFRX1 \count_out_reg[2]  ( .D(n819), .CK(clk), .RN(n957), .Q(count_out[2]), 
        .QN(n378) );
  DFFRX1 \origin_x_reg[0]  ( .D(n814), .CK(clk), .RN(n957), .Q(N242), .QN(n384) );
  DFFRX1 \state_reg[0]  ( .D(nextstate[0]), .CK(clk), .RN(n957), .Q(\state[0] ) );
  DFFSX1 \state_reg[1]  ( .D(nextstate[1]), .CK(clk), .SN(n957), .QN(n88) );
  DFFSX1 \state_reg[2]  ( .D(nextstate[2]), .CK(clk), .SN(n957), .QN(n87) );
  DFFRX1 \count_out_reg[1]  ( .D(n842), .CK(clk), .RN(n957), .Q(count_out[1]), 
        .QN(n379) );
  DFFRX1 \origin_x_reg[2]  ( .D(n775), .CK(clk), .RN(n957), .Q(origin_x[2]), 
        .QN(n382) );
  DFFRX1 \origin_y_reg[2]  ( .D(n854), .CK(clk), .RN(n957), .Q(origin_y[2]), 
        .QN(n75) );
  DFFRX1 \origin_x_reg[1]  ( .D(n868), .CK(clk), .RN(n957), .Q(origin_x[1]), 
        .QN(n383) );
  DFFRX1 \origin_y_reg[1]  ( .D(n861), .CK(clk), .RN(n957), .Q(origin_y[1]), 
        .QN(n77) );
  DFFRX1 busy_reg ( .D(n764), .CK(clk), .RN(n957), .Q(n980), .QN(n79) );
  DFFQX1 \dataout_reg[0]  ( .D(n767), .CK(clk), .Q(n979) );
  DFFQX1 \dataout_reg[1]  ( .D(n817), .CK(clk), .Q(n978) );
  DFFQX1 \dataout_reg[2]  ( .D(n769), .CK(clk), .Q(n977) );
  DFFQX1 \dataout_reg[3]  ( .D(n761), .CK(clk), .Q(n976) );
  DFFQX1 \dataout_reg[4]  ( .D(n771), .CK(clk), .Q(n975) );
  DFFQX1 \dataout_reg[5]  ( .D(n773), .CK(clk), .Q(n974) );
  DFFQX1 \dataout_reg[6]  ( .D(n757), .CK(clk), .Q(n973) );
  DFFQX1 \dataout_reg[7]  ( .D(n759), .CK(clk), .Q(n972) );
  DFFRX1 \origin_y_reg[0]  ( .D(n872), .CK(clk), .RN(n957), .Q(N237), .QN(n78)
         );
  DFFRX1 output_valid_reg ( .D(n878), .CK(clk), .RN(n957), .QN(n881) );
  BUFX2 U439 ( .A(n952), .Y(n757) );
  DLY4X1 U440 ( .A(n464), .Y(n758) );
  BUFX2 U441 ( .A(n953), .Y(n759) );
  DLY4X1 U442 ( .A(n403), .Y(n760) );
  BUFX2 U443 ( .A(n949), .Y(n761) );
  DLY4X1 U444 ( .A(n530), .Y(n762) );
  INVXL U445 ( .A(n738), .Y(n763) );
  INVX1 U446 ( .A(n763), .Y(n764) );
  DLY4X1 U447 ( .A(n766), .Y(n765) );
  DLY4X1 U448 ( .A(n79), .Y(n766) );
  BUFX2 U449 ( .A(n946), .Y(n767) );
  DLY4X1 U450 ( .A(n596), .Y(n768) );
  BUFX2 U451 ( .A(n948), .Y(n769) );
  DLY4X1 U452 ( .A(n552), .Y(n770) );
  BUFX2 U453 ( .A(n950), .Y(n771) );
  DLY4X1 U454 ( .A(n508), .Y(n772) );
  BUFX2 U455 ( .A(n951), .Y(n773) );
  DLY4X1 U456 ( .A(n486), .Y(n774) );
  INVXL U457 ( .A(n755), .Y(n776) );
  BUFX2 U458 ( .A(n777), .Y(n775) );
  INVX1 U459 ( .A(n776), .Y(n777) );
  NAND2XL U460 ( .A(origin_x[1]), .B(n932), .Y(n727) );
  DLY4X1 U461 ( .A(n382), .Y(n778) );
  INVX1 U462 ( .A(n752), .Y(n779) );
  INVX1 U463 ( .A(n779), .Y(n780) );
  DLY4X1 U464 ( .A(n782), .Y(n781) );
  DLY4X1 U465 ( .A(n319), .Y(n782) );
  INVX1 U466 ( .A(n753), .Y(n783) );
  INVX1 U467 ( .A(n783), .Y(n784) );
  DLY4X1 U468 ( .A(n320), .Y(n785) );
  DLY4X1 U469 ( .A(n785), .Y(n786) );
  INVX1 U470 ( .A(n750), .Y(n787) );
  INVX1 U471 ( .A(n787), .Y(n788) );
  DLY4X1 U472 ( .A(n317), .Y(n789) );
  DLY4X1 U473 ( .A(n789), .Y(n790) );
  INVX1 U474 ( .A(n751), .Y(n791) );
  INVX1 U475 ( .A(n791), .Y(n792) );
  DLY4X1 U476 ( .A(n318), .Y(n793) );
  DLY4X1 U477 ( .A(n793), .Y(n794) );
  INVX1 U478 ( .A(n748), .Y(n795) );
  INVX1 U479 ( .A(n795), .Y(n796) );
  DLY4X1 U480 ( .A(n315), .Y(n797) );
  DLY4X1 U481 ( .A(n797), .Y(n798) );
  INVX1 U482 ( .A(n749), .Y(n799) );
  INVX1 U483 ( .A(n799), .Y(n800) );
  DLY4X1 U484 ( .A(n316), .Y(n801) );
  DLY4X1 U485 ( .A(n801), .Y(n802) );
  INVX1 U486 ( .A(n746), .Y(n803) );
  INVX1 U487 ( .A(n803), .Y(n804) );
  DLY4X1 U488 ( .A(n313), .Y(n805) );
  DLY4X1 U489 ( .A(n805), .Y(n806) );
  INVX1 U490 ( .A(n747), .Y(n807) );
  INVX1 U491 ( .A(n807), .Y(n808) );
  DLY4X1 U492 ( .A(n314), .Y(n809) );
  DLY4X1 U493 ( .A(n809), .Y(n810) );
  NAND4XL U494 ( .A(count_out[3]), .B(n834), .C(n379), .D(n378), .Y(n657) );
  NOR2XL U495 ( .A(n658), .B(n923), .Y(n397) );
  NAND2BXL U496 ( .AN(n923), .B(n658), .Y(n400) );
  INVX1 U497 ( .A(n634), .Y(n811) );
  INVX1 U498 ( .A(n811), .Y(n812) );
  NOR3XL U499 ( .A(n78), .B(origin_y[1]), .C(n858), .Y(n642) );
  NAND3XL U500 ( .A(n88), .B(n87), .C(\state[0] ), .Y(n634) );
  NAND2XL U501 ( .A(n967), .B(n642), .Y(n658) );
  DLY4X1 U502 ( .A(n666), .Y(n813) );
  NOR3X6 U503 ( .A(n88), .B(\state[0] ), .C(n87), .Y(n666) );
  NAND4XL U504 ( .A(n400), .B(n960), .C(n401), .D(n402), .Y(nextstate[0]) );
  NAND4XL U505 ( .A(cmd[2]), .B(cmd[0]), .C(n813), .D(n965), .Y(n401) );
  NAND4XL U506 ( .A(cmd[0]), .B(n813), .C(n965), .D(n962), .Y(n402) );
  DLY4X1 U507 ( .A(n816), .Y(n814) );
  CLKINVX8 U508 ( .A(n815), .Y(n816) );
  INVXL U509 ( .A(n756), .Y(n815) );
  NAND2XL U510 ( .A(n728), .B(n729), .Y(n756) );
  OAI211XL U511 ( .A0(n721), .A1(n963), .B0(n723), .C0(n384), .Y(n729) );
  BUFX2 U512 ( .A(n947), .Y(n817) );
  DLY4X1 U513 ( .A(n574), .Y(n818) );
  BUFX2 U514 ( .A(n821), .Y(n819) );
  INVX1 U515 ( .A(n823), .Y(n820) );
  INVX1 U516 ( .A(n820), .Y(n821) );
  INVX1 U517 ( .A(n824), .Y(n822) );
  INVX1 U518 ( .A(n822), .Y(n823) );
  DLY4X4 U519 ( .A(n743), .Y(n824) );
  OAI32XL U520 ( .A0(n669), .A1(count_out[2]), .A2(n379), .B0(n670), .B1(n378), 
        .Y(n743) );
  INVX1 U521 ( .A(n828), .Y(n825) );
  INVX1 U522 ( .A(n825), .Y(n826) );
  INVX1 U523 ( .A(n830), .Y(n827) );
  INVX1 U524 ( .A(n827), .Y(n828) );
  INVX1 U525 ( .A(n832), .Y(n829) );
  INVX1 U526 ( .A(n829), .Y(n830) );
  INVX1 U527 ( .A(n836), .Y(n831) );
  INVX1 U528 ( .A(n831), .Y(n832) );
  INVX1 U529 ( .A(n380), .Y(n833) );
  INVX1 U530 ( .A(n833), .Y(n834) );
  INVX1 U531 ( .A(n744), .Y(n835) );
  INVX1 U532 ( .A(n835), .Y(n836) );
  INVX1 U533 ( .A(n840), .Y(n837) );
  INVX1 U534 ( .A(n837), .Y(n838) );
  INVX1 U535 ( .A(n841), .Y(n839) );
  INVX1 U536 ( .A(n839), .Y(n840) );
  DLY4X4 U537 ( .A(n742), .Y(n841) );
  OAI2BB1XL U538 ( .A0N(count_out[3]), .A1N(n667), .B0(n668), .Y(n742) );
  BUFX2 U539 ( .A(n844), .Y(n842) );
  INVX1 U540 ( .A(n846), .Y(n843) );
  INVX1 U541 ( .A(n843), .Y(n844) );
  INVX1 U542 ( .A(n848), .Y(n845) );
  INVX1 U543 ( .A(n845), .Y(n846) );
  INVX1 U544 ( .A(n850), .Y(n847) );
  INVX1 U545 ( .A(n847), .Y(n848) );
  INVX1 U546 ( .A(n852), .Y(n849) );
  INVX1 U547 ( .A(n849), .Y(n850) );
  INVX1 U548 ( .A(n745), .Y(n851) );
  INVX1 U549 ( .A(n851), .Y(n852) );
  INVXL U550 ( .A(n741), .Y(n859) );
  INVX1 U551 ( .A(n856), .Y(n853) );
  INVX1 U552 ( .A(n853), .Y(n854) );
  INVX1 U553 ( .A(n860), .Y(n855) );
  INVX1 U554 ( .A(n855), .Y(n856) );
  INVX1 U555 ( .A(n75), .Y(n857) );
  INVX1 U556 ( .A(n857), .Y(n858) );
  INVX1 U557 ( .A(n859), .Y(n860) );
  BUFX2 U558 ( .A(n863), .Y(n861) );
  INVX1 U559 ( .A(n865), .Y(n862) );
  INVX1 U560 ( .A(n862), .Y(n863) );
  INVX1 U561 ( .A(n739), .Y(n864) );
  INVX1 U562 ( .A(n864), .Y(n865) );
  DLY4X1 U563 ( .A(n77), .Y(n866) );
  INVX1 U564 ( .A(n870), .Y(n867) );
  INVX1 U565 ( .A(n867), .Y(n868) );
  INVX1 U566 ( .A(n871), .Y(n869) );
  INVX1 U567 ( .A(n869), .Y(n870) );
  DLY4X4 U568 ( .A(n754), .Y(n871) );
  DLY4X1 U569 ( .A(n874), .Y(n872) );
  INVXL U570 ( .A(n873), .Y(n874) );
  INVXL U571 ( .A(n740), .Y(n873) );
  NAND2XL U572 ( .A(n650), .B(n876), .Y(n740) );
  INVX1 U573 ( .A(n651), .Y(n875) );
  INVX1 U574 ( .A(n875), .Y(n876) );
  OAI211XL U575 ( .A0(n395), .A1(n652), .B0(n645), .C0(n78), .Y(n651) );
  INVXL U576 ( .A(n737), .Y(n879) );
  INVX1 U577 ( .A(n880), .Y(n877) );
  INVX1 U578 ( .A(n877), .Y(n878) );
  INVX1 U579 ( .A(n879), .Y(n880) );
  AND2XL U580 ( .A(n637), .B(n399), .Y(n635) );
  NAND2XL U581 ( .A(n635), .B(n636), .Y(n737) );
  CLKINVX1 U582 ( .A(N244), .Y(n955) );
  NOR2BX2 U583 ( .AN(n613), .B(n955), .Y(n610) );
  NOR2BX2 U584 ( .AN(n611), .B(n955), .Y(n606) );
  NOR2BX2 U585 ( .AN(n615), .B(n955), .Y(n609) );
  NOR2BX2 U586 ( .AN(n614), .B(n955), .Y(n612) );
  NOR2BX2 U587 ( .AN(n611), .B(N244), .Y(n622) );
  NOR2BX2 U588 ( .AN(n613), .B(N244), .Y(n623) );
  NOR2BX2 U589 ( .AN(n615), .B(N244), .Y(n621) );
  NOR2BX2 U590 ( .AN(n614), .B(N244), .Y(n608) );
  BUFX2 U591 ( .A(N242), .Y(n932) );
  NAND2XL U592 ( .A(origin_y[1]), .B(N237), .Y(n660) );
  XNOR2XL U593 ( .A(n866), .B(N237), .Y(n647) );
  CLKXOR2X1 U594 ( .A(origin_x[1]), .B(N237), .Y(N243) );
  INVX12 U595 ( .A(n881), .Y(output_valid) );
  BUFX12 U596 ( .A(n972), .Y(dataout[7]) );
  BUFX12 U597 ( .A(n973), .Y(dataout[6]) );
  BUFX12 U598 ( .A(n974), .Y(dataout[5]) );
  BUFX12 U599 ( .A(n975), .Y(dataout[4]) );
  BUFX12 U600 ( .A(n976), .Y(dataout[3]) );
  BUFX12 U601 ( .A(n977), .Y(dataout[2]) );
  BUFX12 U602 ( .A(n978), .Y(dataout[1]) );
  BUFX12 U603 ( .A(n979), .Y(dataout[0]) );
  BUFX12 U604 ( .A(n980), .Y(busy) );
  CLKXOR2X2 U605 ( .A(N241), .B(\r443/carry [5]), .Y(N247) );
  AND2XL U606 ( .A(\r443/carry [4]), .B(N240), .Y(\r443/carry [5]) );
  CLKINVX1 U607 ( .A(n813), .Y(n969) );
  CLKINVX1 U608 ( .A(datain[0]), .Y(n933) );
  CLKINVX1 U609 ( .A(datain[1]), .Y(n934) );
  CLKINVX1 U610 ( .A(datain[2]), .Y(n935) );
  CLKINVX1 U611 ( .A(datain[3]), .Y(n936) );
  CLKINVX1 U612 ( .A(datain[4]), .Y(n937) );
  CLKINVX1 U613 ( .A(datain[5]), .Y(n938) );
  CLKINVX1 U614 ( .A(datain[6]), .Y(n939) );
  CLKINVX1 U615 ( .A(datain[7]), .Y(n940) );
  OAI222XL U616 ( .A0(n448), .A1(n248), .B0(n449), .B1(n240), .C0(n450), .C1(
        n256), .Y(n624) );
  OAI222XL U617 ( .A0(n448), .A1(n247), .B0(n449), .B1(n239), .C0(n450), .C1(
        n255), .Y(n588) );
  OAI222XL U618 ( .A0(n448), .A1(n246), .B0(n449), .B1(n238), .C0(n450), .C1(
        n254), .Y(n566) );
  OAI222XL U619 ( .A0(n448), .A1(n245), .B0(n449), .B1(n237), .C0(n450), .C1(
        n253), .Y(n544) );
  OAI222XL U620 ( .A0(n448), .A1(n244), .B0(n449), .B1(n236), .C0(n450), .C1(
        n252), .Y(n522) );
  OAI222XL U621 ( .A0(n448), .A1(n243), .B0(n449), .B1(n235), .C0(n450), .C1(
        n251), .Y(n500) );
  OAI222XL U622 ( .A0(n448), .A1(n242), .B0(n449), .B1(n234), .C0(n450), .C1(
        n250), .Y(n478) );
  OAI222XL U623 ( .A0(n448), .A1(n241), .B0(n449), .B1(n233), .C0(n450), .C1(
        n249), .Y(n438) );
  INVX3 U624 ( .A(n928), .Y(n944) );
  AND2X2 U625 ( .A(n697), .B(n612), .Y(n892) );
  AND2X2 U626 ( .A(n688), .B(n612), .Y(n893) );
  AND2X2 U627 ( .A(n679), .B(n612), .Y(n894) );
  AND2X2 U628 ( .A(n706), .B(n606), .Y(n895) );
  AND2X2 U629 ( .A(n706), .B(n610), .Y(n896) );
  AND2X2 U630 ( .A(n706), .B(n609), .Y(n897) );
  AND2X2 U631 ( .A(n697), .B(n606), .Y(n898) );
  AND2X2 U632 ( .A(n697), .B(n610), .Y(n899) );
  AND2X2 U633 ( .A(n697), .B(n609), .Y(n900) );
  AND2X2 U634 ( .A(n688), .B(n606), .Y(n901) );
  AND2X2 U635 ( .A(n688), .B(n610), .Y(n902) );
  AND2X2 U636 ( .A(n688), .B(n609), .Y(n903) );
  AND2X2 U637 ( .A(n679), .B(n606), .Y(n904) );
  AND2X2 U638 ( .A(n679), .B(n610), .Y(n905) );
  AND2X2 U639 ( .A(n679), .B(n609), .Y(n906) );
  CLKINVX1 U640 ( .A(n721), .Y(n960) );
  CLKBUFX3 U641 ( .A(n705), .Y(n928) );
  NAND2X1 U642 ( .A(n706), .B(n612), .Y(n705) );
  NAND2X2 U643 ( .A(n633), .B(n606), .Y(n459) );
  NAND2X2 U644 ( .A(n930), .B(n606), .Y(n431) );
  NAND2X2 U645 ( .A(n930), .B(n609), .Y(n433) );
  NAND2X2 U646 ( .A(n929), .B(n610), .Y(n446) );
  NAND2X2 U647 ( .A(n612), .B(n931), .Y(n420) );
  NAND2X2 U648 ( .A(n610), .B(n931), .Y(n418) );
  NAND2X2 U649 ( .A(n633), .B(n610), .Y(n460) );
  NAND2X2 U650 ( .A(n930), .B(n610), .Y(n432) );
  NAND2X2 U651 ( .A(n930), .B(n612), .Y(n434) );
  NAND2X2 U652 ( .A(n929), .B(n606), .Y(n445) );
  NAND2X2 U653 ( .A(n929), .B(n609), .Y(n447) );
  NAND2X2 U654 ( .A(n606), .B(n931), .Y(n417) );
  NAND2X2 U655 ( .A(n609), .B(n931), .Y(n419) );
  NAND2X2 U656 ( .A(n929), .B(n612), .Y(n450) );
  NAND2X2 U657 ( .A(n633), .B(n609), .Y(n463) );
  NAND2X2 U658 ( .A(n633), .B(n612), .Y(n461) );
  AND3X2 U659 ( .A(n929), .B(n945), .C(n677), .Y(n697) );
  AND3X2 U660 ( .A(n930), .B(n945), .C(n677), .Y(n688) );
  AND3X2 U661 ( .A(n931), .B(n945), .C(n677), .Y(n679) );
  NOR2X2 U662 ( .A(n404), .B(n399), .Y(n406) );
  AND3X1 U663 ( .A(n633), .B(N247), .C(n677), .Y(n673) );
  AND2X2 U664 ( .A(n697), .B(n622), .Y(n907) );
  AND2X2 U665 ( .A(n697), .B(n623), .Y(n908) );
  AND2X2 U666 ( .A(n697), .B(n621), .Y(n909) );
  AND2X2 U667 ( .A(n697), .B(n608), .Y(n910) );
  AND2X2 U668 ( .A(n688), .B(n622), .Y(n911) );
  AND2X2 U669 ( .A(n688), .B(n623), .Y(n912) );
  AND2X2 U670 ( .A(n688), .B(n621), .Y(n913) );
  AND2X2 U671 ( .A(n688), .B(n608), .Y(n914) );
  AND2X2 U672 ( .A(n679), .B(n622), .Y(n915) );
  AND2X2 U673 ( .A(n679), .B(n623), .Y(n916) );
  AND2X2 U674 ( .A(n679), .B(n621), .Y(n917) );
  AND2X2 U675 ( .A(n679), .B(n608), .Y(n918) );
  AND2X2 U676 ( .A(n673), .B(n622), .Y(n919) );
  AND2X2 U677 ( .A(n673), .B(n623), .Y(n920) );
  AND2X2 U678 ( .A(n673), .B(n621), .Y(n921) );
  AND2X2 U679 ( .A(n673), .B(n608), .Y(n922) );
  NOR2X1 U680 ( .A(n732), .B(n969), .Y(n721) );
  CLKINVX1 U681 ( .A(n720), .Y(n963) );
  INVX3 U682 ( .A(n713), .Y(n941) );
  NAND2BX1 U683 ( .AN(n925), .B(n677), .Y(n713) );
  INVX3 U684 ( .A(n712), .Y(n942) );
  NAND2BX1 U685 ( .AN(n926), .B(n677), .Y(n712) );
  INVX3 U686 ( .A(n711), .Y(n943) );
  NAND2BX1 U687 ( .AN(n927), .B(n677), .Y(n711) );
  NAND2X1 U688 ( .A(n649), .B(n400), .Y(n652) );
  AND2X2 U689 ( .A(n677), .B(n710), .Y(n706) );
  CLKINVX1 U690 ( .A(n402), .Y(n961) );
  OR4X1 U691 ( .A(n395), .B(n964), .C(n396), .D(n397), .Y(nextstate[2]) );
  NOR2BX1 U692 ( .AN(n633), .B(N247), .Y(n710) );
  NAND2X2 U693 ( .A(n611), .B(N247), .Y(n421) );
  NAND2X2 U694 ( .A(N247), .B(n614), .Y(n423) );
  NAND2X2 U695 ( .A(n613), .B(N247), .Y(n424) );
  NAND2X2 U696 ( .A(n615), .B(N247), .Y(n422) );
  NOR2X2 U697 ( .A(N245), .B(N246), .Y(n633) );
  INVXL U698 ( .A(N247), .Y(n945) );
  CLKBUFX3 U699 ( .A(n455), .Y(n924) );
  NAND2X1 U700 ( .A(n710), .B(n622), .Y(n455) );
  CLKBUFX3 U701 ( .A(n457), .Y(n926) );
  NAND2X1 U702 ( .A(n710), .B(n621), .Y(n457) );
  CLKBUFX3 U703 ( .A(n456), .Y(n925) );
  NAND2X1 U704 ( .A(n710), .B(n623), .Y(n456) );
  CLKBUFX3 U705 ( .A(n458), .Y(n927) );
  NAND2X1 U706 ( .A(n710), .B(n608), .Y(n458) );
  NAND2X2 U707 ( .A(n930), .B(n621), .Y(n429) );
  NAND2X2 U708 ( .A(n929), .B(n623), .Y(n442) );
  NAND2X2 U709 ( .A(n929), .B(n608), .Y(n444) );
  NAND2X2 U710 ( .A(n608), .B(n931), .Y(n416) );
  NAND2X2 U711 ( .A(n930), .B(n608), .Y(n430) );
  NAND2X2 U712 ( .A(n929), .B(n621), .Y(n443) );
  NAND2X2 U713 ( .A(n622), .B(n931), .Y(n437) );
  NAND2X2 U714 ( .A(n930), .B(n622), .Y(n448) );
  NAND2X2 U715 ( .A(n623), .B(n931), .Y(n435) );
  NAND2X2 U716 ( .A(n929), .B(n622), .Y(n462) );
  NAND2X2 U717 ( .A(n930), .B(n623), .Y(n449) );
  NAND2X2 U718 ( .A(n621), .B(n931), .Y(n436) );
  CLKINVX1 U719 ( .A(N245), .Y(n954) );
  CLKINVX1 U720 ( .A(n399), .Y(n968) );
  NOR2X1 U721 ( .A(n956), .B(n384), .Y(n614) );
  CLKBUFX3 U722 ( .A(n628), .Y(n929) );
  NOR2X1 U723 ( .A(n954), .B(N246), .Y(n628) );
  CLKBUFX3 U724 ( .A(n620), .Y(n930) );
  NOR2BX1 U725 ( .AN(N246), .B(N245), .Y(n620) );
  CLKBUFX3 U726 ( .A(n607), .Y(n931) );
  NOR2BXL U727 ( .AN(N246), .B(n954), .Y(n607) );
  CLKINVX1 U728 ( .A(n397), .Y(n966) );
  NOR4X2 U729 ( .A(n962), .B(n969), .C(cmd[0]), .D(cmd[1]), .Y(n395) );
  NOR2X2 U730 ( .A(n404), .B(n923), .Y(n405) );
  AOI221XL U731 ( .A0(n968), .A1(n730), .B0(n666), .B1(n731), .C0(n641), .Y(
        n720) );
  OR2X2 U732 ( .A(n635), .B(reset), .Y(n404) );
  CLKINVX1 U733 ( .A(n645), .Y(n958) );
  CLKINVX1 U734 ( .A(n723), .Y(n959) );
  CLKINVX1 U735 ( .A(cmd[1]), .Y(n965) );
  NAND3X1 U736 ( .A(cmd[0]), .B(n962), .C(cmd[1]), .Y(n732) );
  CLKINVX1 U737 ( .A(n401), .Y(n964) );
  NAND2X1 U738 ( .A(n649), .B(n923), .Y(n648) );
  AO21X1 U739 ( .A0(n963), .A1(n932), .B0(n665), .Y(n717) );
  AND2X2 U740 ( .A(n659), .B(n401), .Y(n649) );
  NOR4X2 U741 ( .A(n924), .B(n923), .C(N248), .D(reset), .Y(n714) );
  NAND2X2 U742 ( .A(n969), .B(n923), .Y(n399) );
  CLKINVX1 U743 ( .A(N243), .Y(n956) );
  NOR2X1 U744 ( .A(n399), .B(n730), .Y(n665) );
  NOR2X1 U745 ( .A(n384), .B(N243), .Y(n613) );
  NOR2X1 U746 ( .A(n932), .B(N243), .Y(n611) );
  NAND2X1 U747 ( .A(n968), .B(n657), .Y(n659) );
  NOR2X1 U748 ( .A(n956), .B(n932), .Y(n615) );
  NOR2X1 U749 ( .A(n923), .B(n967), .Y(n641) );
  CLKINVX1 U750 ( .A(n661), .Y(n967) );
  NAND4BX1 U751 ( .AN(n638), .B(n639), .C(n640), .D(n641), .Y(n637) );
  NAND3BX1 U752 ( .AN(n642), .B(n643), .C(n644), .Y(n638) );
  NOR2X1 U753 ( .A(n399), .B(n657), .Y(n396) );
  CLKINVX1 U754 ( .A(n657), .Y(n970) );
  NAND2X1 U755 ( .A(n644), .B(n640), .Y(n656) );
  NAND2X1 U756 ( .A(n643), .B(n639), .Y(n725) );
  INVX3 U757 ( .A(reset), .Y(n957) );
  OAI211X1 U758 ( .A0(n661), .A1(n923), .B0(n662), .C0(n663), .Y(n645) );
  OAI21XL U759 ( .A0(N237), .A1(n640), .B0(n395), .Y(n662) );
  AOI211X1 U760 ( .A0(n964), .A1(n664), .B0(n961), .C0(n665), .Y(n663) );
  AO21X1 U761 ( .A0(n75), .A1(n78), .B0(n656), .Y(n664) );
  OAI31XL U762 ( .A0(n960), .A1(origin_x[1]), .A2(n932), .B0(n966), .Y(n718)
         );
  NOR3X1 U763 ( .A(cmd[0]), .B(cmd[2]), .C(n965), .Y(n731) );
  OAI22XL U764 ( .A0(n933), .A1(n928), .B0(n944), .B1(n786), .Y(n753) );
  OAI22XL U765 ( .A0(n934), .A1(n928), .B0(n944), .B1(n781), .Y(n752) );
  OAI22XL U766 ( .A0(n935), .A1(n928), .B0(n944), .B1(n794), .Y(n751) );
  OAI22XL U767 ( .A0(n936), .A1(n928), .B0(n944), .B1(n790), .Y(n750) );
  OAI22XL U768 ( .A0(n937), .A1(n928), .B0(n944), .B1(n802), .Y(n749) );
  OAI22XL U769 ( .A0(n938), .A1(n928), .B0(n944), .B1(n798), .Y(n748) );
  OAI22XL U770 ( .A0(n939), .A1(n928), .B0(n944), .B1(n810), .Y(n747) );
  OAI22XL U771 ( .A0(n940), .A1(n928), .B0(n944), .B1(n806), .Y(n746) );
  NAND4X1 U772 ( .A(n402), .B(n399), .C(n923), .D(n733), .Y(n723) );
  AOI2BB2X1 U773 ( .B0(n731), .B1(n734), .A0N(n735), .A1N(n732), .Y(n733) );
  NOR2X1 U774 ( .A(n932), .B(n639), .Y(n735) );
  AO21X1 U775 ( .A0(n778), .A1(n384), .B0(n725), .Y(n734) );
  OAI22XL U776 ( .A0(n866), .A1(n645), .B0(n958), .B1(n646), .Y(n739) );
  AOI222XL U777 ( .A0(n396), .A1(n866), .B0(n647), .B1(n648), .C0(n971), .C1(
        n395), .Y(n646) );
  CLKINVX1 U778 ( .A(n647), .Y(n971) );
  OAI22XL U779 ( .A0(n858), .A1(n645), .B0(n958), .B1(n653), .Y(n741) );
  AOI222XL U780 ( .A0(n654), .A1(n652), .B0(n395), .B1(n655), .C0(n396), .C1(
        n656), .Y(n653) );
  OAI21XL U781 ( .A0(n78), .A1(n858), .B0(n644), .Y(n655) );
  XOR2X1 U782 ( .A(n858), .B(n660), .Y(n654) );
  OAI21XL U783 ( .A0(n396), .A1(n958), .B0(N237), .Y(n650) );
  CLKINVX1 U784 ( .A(cmd[2]), .Y(n962) );
  OAI22XL U785 ( .A0(n959), .A1(n722), .B0(n778), .B1(n723), .Y(n755) );
  AOI222XL U786 ( .A0(n724), .A1(n963), .B0(n665), .B1(n725), .C0(n721), .C1(
        n726), .Y(n722) );
  OAI21XL U787 ( .A0(n384), .A1(n778), .B0(n643), .Y(n726) );
  XOR2X1 U788 ( .A(n778), .B(n727), .Y(n724) );
  OAI21XL U789 ( .A0(n665), .A1(n959), .B0(n932), .Y(n728) );
  OAI22XL U790 ( .A0(n715), .A1(n383), .B0(n959), .B1(n716), .Y(n754) );
  AOI2BB1X1 U791 ( .A0N(n960), .A1N(n384), .B0(n959), .Y(n715) );
  AOI211X1 U792 ( .A0(n717), .A1(n383), .B0(n718), .C0(n719), .Y(n716) );
  NOR3X1 U793 ( .A(n383), .B(n932), .C(n720), .Y(n719) );
  CLKINVX1 U794 ( .A(n768), .Y(n946) );
  AOI222XL U795 ( .A0(dataout[0]), .A1(n404), .B0(datain[0]), .B1(n405), .C0(
        n406), .C1(n597), .Y(n596) );
  NAND4X1 U796 ( .A(n598), .B(n599), .C(n600), .D(n601), .Y(n597) );
  NOR4X1 U797 ( .A(n624), .B(n625), .C(n626), .D(n627), .Y(n599) );
  CLKINVX1 U798 ( .A(n818), .Y(n947) );
  AOI222XL U799 ( .A0(dataout[1]), .A1(n404), .B0(datain[1]), .B1(n405), .C0(
        n406), .C1(n575), .Y(n574) );
  NAND4X1 U800 ( .A(n576), .B(n577), .C(n578), .D(n579), .Y(n575) );
  NOR4X1 U801 ( .A(n588), .B(n589), .C(n590), .D(n591), .Y(n577) );
  CLKINVX1 U802 ( .A(n770), .Y(n948) );
  AOI222XL U803 ( .A0(dataout[2]), .A1(n404), .B0(datain[2]), .B1(n405), .C0(
        n406), .C1(n553), .Y(n552) );
  NAND4X1 U804 ( .A(n554), .B(n555), .C(n556), .D(n557), .Y(n553) );
  NOR4X1 U805 ( .A(n566), .B(n567), .C(n568), .D(n569), .Y(n555) );
  CLKINVX1 U806 ( .A(n762), .Y(n949) );
  AOI222XL U807 ( .A0(dataout[3]), .A1(n404), .B0(datain[3]), .B1(n405), .C0(
        n406), .C1(n531), .Y(n530) );
  NAND4X1 U808 ( .A(n532), .B(n533), .C(n534), .D(n535), .Y(n531) );
  NOR4X1 U809 ( .A(n544), .B(n545), .C(n546), .D(n547), .Y(n533) );
  CLKINVX1 U810 ( .A(n772), .Y(n950) );
  AOI222XL U811 ( .A0(dataout[4]), .A1(n404), .B0(datain[4]), .B1(n405), .C0(
        n406), .C1(n509), .Y(n508) );
  NAND4X1 U812 ( .A(n510), .B(n511), .C(n512), .D(n513), .Y(n509) );
  NOR4X1 U813 ( .A(n522), .B(n523), .C(n524), .D(n525), .Y(n511) );
  CLKINVX1 U814 ( .A(n774), .Y(n951) );
  AOI222XL U815 ( .A0(dataout[5]), .A1(n404), .B0(datain[5]), .B1(n405), .C0(
        n406), .C1(n487), .Y(n486) );
  NAND4X1 U816 ( .A(n488), .B(n489), .C(n490), .D(n491), .Y(n487) );
  NOR4X1 U817 ( .A(n500), .B(n501), .C(n502), .D(n503), .Y(n489) );
  CLKINVX1 U818 ( .A(n758), .Y(n952) );
  AOI222XL U819 ( .A0(dataout[6]), .A1(n404), .B0(datain[6]), .B1(n405), .C0(
        n406), .C1(n465), .Y(n464) );
  NAND4X1 U820 ( .A(n466), .B(n467), .C(n468), .D(n469), .Y(n465) );
  NOR4X1 U821 ( .A(n478), .B(n479), .C(n480), .D(n481), .Y(n467) );
  CLKINVX1 U822 ( .A(n760), .Y(n953) );
  AOI222XL U823 ( .A0(dataout[7]), .A1(n404), .B0(datain[7]), .B1(n405), .C0(
        n406), .C1(n407), .Y(n403) );
  NAND4X1 U824 ( .A(n408), .B(n409), .C(n410), .D(n411), .Y(n407) );
  NOR4X1 U825 ( .A(n438), .B(n439), .C(n440), .D(n441), .Y(n409) );
  OAI211X1 U826 ( .A0(n398), .A1(n969), .B0(n966), .C0(n399), .Y(nextstate[1])
         );
  AOI2BB1X1 U827 ( .A0N(cmd[2]), .A1N(cmd[0]), .B0(cmd[1]), .Y(n398) );
  OAI222XL U828 ( .A0(n422), .A1(n104), .B0(n423), .B1(n96), .C0(n424), .C1(
        n112), .Y(n602) );
  OAI222XL U829 ( .A0(n422), .A1(n103), .B0(n423), .B1(n95), .C0(n424), .C1(
        n111), .Y(n580) );
  OAI222XL U830 ( .A0(n422), .A1(n102), .B0(n423), .B1(n94), .C0(n424), .C1(
        n110), .Y(n558) );
  OAI222XL U831 ( .A0(n422), .A1(n101), .B0(n423), .B1(n93), .C0(n424), .C1(
        n109), .Y(n536) );
  OAI222XL U832 ( .A0(n422), .A1(n100), .B0(n423), .B1(n92), .C0(n424), .C1(
        n108), .Y(n514) );
  OAI222XL U833 ( .A0(n422), .A1(n99), .B0(n423), .B1(n91), .C0(n424), .C1(
        n107), .Y(n492) );
  OAI222XL U834 ( .A0(n422), .A1(n98), .B0(n423), .B1(n90), .C0(n424), .C1(
        n106), .Y(n470) );
  OAI222XL U835 ( .A0(n422), .A1(n97), .B0(n423), .B1(n89), .C0(n424), .C1(
        n105), .Y(n412) );
  OAI22XL U836 ( .A0(n924), .A1(n376), .B0(n925), .B1(n368), .Y(n632) );
  OAI22XL U837 ( .A0(n924), .A1(n375), .B0(n925), .B1(n367), .Y(n595) );
  OAI22XL U838 ( .A0(n924), .A1(n374), .B0(n925), .B1(n366), .Y(n573) );
  OAI22XL U839 ( .A0(n924), .A1(n373), .B0(n925), .B1(n365), .Y(n551) );
  OAI22XL U840 ( .A0(n924), .A1(n372), .B0(n925), .B1(n364), .Y(n529) );
  OAI22XL U841 ( .A0(n924), .A1(n371), .B0(n925), .B1(n363), .Y(n507) );
  OAI22XL U842 ( .A0(n924), .A1(n370), .B0(n925), .B1(n362), .Y(n485) );
  OAI22XL U843 ( .A0(n924), .A1(n369), .B0(n925), .B1(n361), .Y(n454) );
  NOR4X1 U844 ( .A(n602), .B(n603), .C(n604), .D(n605), .Y(n601) );
  OAI22XL U845 ( .A0(n418), .A1(n144), .B0(n419), .B1(n136), .Y(n604) );
  OAI22XL U846 ( .A0(n416), .A1(n160), .B0(n417), .B1(n152), .Y(n605) );
  OAI22XL U847 ( .A0(n420), .A1(n128), .B0(n421), .B1(n120), .Y(n603) );
  NOR4X1 U848 ( .A(n580), .B(n581), .C(n582), .D(n583), .Y(n579) );
  OAI22XL U849 ( .A0(n418), .A1(n143), .B0(n419), .B1(n135), .Y(n582) );
  OAI22XL U850 ( .A0(n416), .A1(n159), .B0(n417), .B1(n151), .Y(n583) );
  OAI22XL U851 ( .A0(n420), .A1(n127), .B0(n421), .B1(n119), .Y(n581) );
  NOR4X1 U852 ( .A(n558), .B(n559), .C(n560), .D(n561), .Y(n557) );
  OAI22XL U853 ( .A0(n418), .A1(n142), .B0(n419), .B1(n134), .Y(n560) );
  OAI22XL U854 ( .A0(n416), .A1(n158), .B0(n417), .B1(n150), .Y(n561) );
  OAI22XL U855 ( .A0(n420), .A1(n126), .B0(n421), .B1(n118), .Y(n559) );
  NOR4X1 U856 ( .A(n536), .B(n537), .C(n538), .D(n539), .Y(n535) );
  OAI22XL U857 ( .A0(n418), .A1(n141), .B0(n419), .B1(n133), .Y(n538) );
  OAI22XL U858 ( .A0(n416), .A1(n157), .B0(n417), .B1(n149), .Y(n539) );
  OAI22XL U859 ( .A0(n420), .A1(n125), .B0(n421), .B1(n117), .Y(n537) );
  NOR4X1 U860 ( .A(n514), .B(n515), .C(n516), .D(n517), .Y(n513) );
  OAI22XL U861 ( .A0(n418), .A1(n140), .B0(n419), .B1(n132), .Y(n516) );
  OAI22XL U862 ( .A0(n416), .A1(n156), .B0(n417), .B1(n148), .Y(n517) );
  OAI22XL U863 ( .A0(n420), .A1(n124), .B0(n421), .B1(n116), .Y(n515) );
  NOR4X1 U864 ( .A(n492), .B(n493), .C(n494), .D(n495), .Y(n491) );
  OAI22XL U865 ( .A0(n418), .A1(n139), .B0(n419), .B1(n131), .Y(n494) );
  OAI22XL U866 ( .A0(n416), .A1(n155), .B0(n417), .B1(n147), .Y(n495) );
  OAI22XL U867 ( .A0(n420), .A1(n123), .B0(n421), .B1(n115), .Y(n493) );
  NOR4X1 U868 ( .A(n470), .B(n471), .C(n472), .D(n473), .Y(n469) );
  OAI22XL U869 ( .A0(n418), .A1(n138), .B0(n419), .B1(n130), .Y(n472) );
  OAI22XL U870 ( .A0(n416), .A1(n154), .B0(n417), .B1(n146), .Y(n473) );
  OAI22XL U871 ( .A0(n420), .A1(n122), .B0(n421), .B1(n114), .Y(n471) );
  NOR4X1 U872 ( .A(n412), .B(n413), .C(n414), .D(n415), .Y(n411) );
  OAI22XL U873 ( .A0(n418), .A1(n137), .B0(n419), .B1(n129), .Y(n414) );
  OAI22XL U874 ( .A0(n416), .A1(n153), .B0(n417), .B1(n145), .Y(n415) );
  OAI22XL U875 ( .A0(n420), .A1(n121), .B0(n421), .B1(n113), .Y(n413) );
  NOR4X1 U876 ( .A(n629), .B(n630), .C(n631), .D(n632), .Y(n598) );
  OAI222XL U877 ( .A0(n461), .A1(n786), .B0(n462), .B1(n312), .C0(n463), .C1(
        n328), .Y(n629) );
  OAI22XL U878 ( .A0(n459), .A1(n344), .B0(n460), .B1(n336), .Y(n630) );
  OAI22XL U879 ( .A0(n926), .A1(n360), .B0(n927), .B1(n352), .Y(n631) );
  NOR4X1 U880 ( .A(n592), .B(n593), .C(n594), .D(n595), .Y(n576) );
  OAI222XL U881 ( .A0(n461), .A1(n319), .B0(n462), .B1(n311), .C0(n463), .C1(
        n327), .Y(n592) );
  OAI22XL U882 ( .A0(n459), .A1(n343), .B0(n460), .B1(n335), .Y(n593) );
  OAI22XL U883 ( .A0(n926), .A1(n359), .B0(n927), .B1(n351), .Y(n594) );
  NOR4X1 U884 ( .A(n570), .B(n571), .C(n572), .D(n573), .Y(n554) );
  OAI222XL U885 ( .A0(n461), .A1(n794), .B0(n462), .B1(n310), .C0(n463), .C1(
        n326), .Y(n570) );
  OAI22XL U886 ( .A0(n459), .A1(n342), .B0(n460), .B1(n334), .Y(n571) );
  OAI22XL U887 ( .A0(n926), .A1(n358), .B0(n927), .B1(n350), .Y(n572) );
  NOR4X1 U888 ( .A(n548), .B(n549), .C(n550), .D(n551), .Y(n532) );
  OAI222XL U889 ( .A0(n461), .A1(n790), .B0(n462), .B1(n309), .C0(n463), .C1(
        n325), .Y(n548) );
  OAI22XL U890 ( .A0(n459), .A1(n341), .B0(n460), .B1(n333), .Y(n549) );
  OAI22XL U891 ( .A0(n926), .A1(n357), .B0(n927), .B1(n349), .Y(n550) );
  NOR4X1 U892 ( .A(n526), .B(n527), .C(n528), .D(n529), .Y(n510) );
  OAI222XL U893 ( .A0(n461), .A1(n802), .B0(n462), .B1(n308), .C0(n463), .C1(
        n324), .Y(n526) );
  OAI22XL U894 ( .A0(n459), .A1(n340), .B0(n460), .B1(n332), .Y(n527) );
  OAI22XL U895 ( .A0(n926), .A1(n356), .B0(n927), .B1(n348), .Y(n528) );
  NOR4X1 U896 ( .A(n504), .B(n505), .C(n506), .D(n507), .Y(n488) );
  OAI222XL U897 ( .A0(n461), .A1(n798), .B0(n462), .B1(n307), .C0(n463), .C1(
        n323), .Y(n504) );
  OAI22XL U898 ( .A0(n459), .A1(n339), .B0(n460), .B1(n331), .Y(n505) );
  OAI22XL U899 ( .A0(n926), .A1(n355), .B0(n927), .B1(n347), .Y(n506) );
  NOR4X1 U900 ( .A(n482), .B(n483), .C(n484), .D(n485), .Y(n466) );
  OAI222XL U901 ( .A0(n461), .A1(n810), .B0(n462), .B1(n306), .C0(n463), .C1(
        n322), .Y(n482) );
  OAI22XL U902 ( .A0(n459), .A1(n338), .B0(n460), .B1(n330), .Y(n483) );
  OAI22XL U903 ( .A0(n926), .A1(n354), .B0(n927), .B1(n346), .Y(n484) );
  NOR4X1 U904 ( .A(n451), .B(n452), .C(n453), .D(n454), .Y(n408) );
  OAI222XL U905 ( .A0(n461), .A1(n806), .B0(n462), .B1(n305), .C0(n463), .C1(
        n321), .Y(n451) );
  OAI22XL U906 ( .A0(n459), .A1(n337), .B0(n460), .B1(n329), .Y(n452) );
  OAI22XL U907 ( .A0(n926), .A1(n353), .B0(n927), .B1(n345), .Y(n453) );
  ADDFX2 U908 ( .A(N238), .B(origin_x[2]), .CI(\r443/carry [2]), .CO(
        \r443/carry [3]), .S(N244) );
  OAI222XL U909 ( .A0(n435), .A1(n176), .B0(n436), .B1(n168), .C0(n437), .C1(
        n184), .Y(n616) );
  OAI222XL U910 ( .A0(n435), .A1(n175), .B0(n436), .B1(n167), .C0(n437), .C1(
        n183), .Y(n584) );
  OAI222XL U911 ( .A0(n435), .A1(n174), .B0(n436), .B1(n166), .C0(n437), .C1(
        n182), .Y(n562) );
  OAI222XL U912 ( .A0(n435), .A1(n173), .B0(n436), .B1(n165), .C0(n437), .C1(
        n181), .Y(n540) );
  OAI222XL U913 ( .A0(n435), .A1(n172), .B0(n436), .B1(n164), .C0(n437), .C1(
        n180), .Y(n518) );
  OAI222XL U914 ( .A0(n435), .A1(n171), .B0(n436), .B1(n163), .C0(n437), .C1(
        n179), .Y(n496) );
  OAI222XL U915 ( .A0(n435), .A1(n170), .B0(n436), .B1(n162), .C0(n437), .C1(
        n178), .Y(n474) );
  OAI222XL U916 ( .A0(n435), .A1(n169), .B0(n436), .B1(n161), .C0(n437), .C1(
        n177), .Y(n425) );
  OAI22XL U917 ( .A0(n442), .A1(n304), .B0(n443), .B1(n296), .Y(n627) );
  OAI22XL U918 ( .A0(n442), .A1(n303), .B0(n443), .B1(n295), .Y(n591) );
  OAI22XL U919 ( .A0(n442), .A1(n302), .B0(n443), .B1(n294), .Y(n569) );
  OAI22XL U920 ( .A0(n442), .A1(n301), .B0(n443), .B1(n293), .Y(n547) );
  OAI22XL U921 ( .A0(n442), .A1(n300), .B0(n443), .B1(n292), .Y(n525) );
  OAI22XL U922 ( .A0(n442), .A1(n299), .B0(n443), .B1(n291), .Y(n503) );
  OAI22XL U923 ( .A0(n442), .A1(n298), .B0(n443), .B1(n290), .Y(n481) );
  OAI22XL U924 ( .A0(n442), .A1(n297), .B0(n443), .B1(n289), .Y(n441) );
  OAI22XL U925 ( .A0(n444), .A1(n288), .B0(n445), .B1(n280), .Y(n626) );
  OAI22XL U926 ( .A0(n444), .A1(n287), .B0(n445), .B1(n279), .Y(n590) );
  OAI22XL U927 ( .A0(n444), .A1(n286), .B0(n445), .B1(n278), .Y(n568) );
  OAI22XL U928 ( .A0(n444), .A1(n285), .B0(n445), .B1(n277), .Y(n546) );
  OAI22XL U929 ( .A0(n444), .A1(n284), .B0(n445), .B1(n276), .Y(n524) );
  OAI22XL U930 ( .A0(n444), .A1(n283), .B0(n445), .B1(n275), .Y(n502) );
  OAI22XL U931 ( .A0(n444), .A1(n282), .B0(n445), .B1(n274), .Y(n480) );
  OAI22XL U932 ( .A0(n444), .A1(n281), .B0(n445), .B1(n273), .Y(n440) );
  OAI22XL U933 ( .A0(n446), .A1(n272), .B0(n447), .B1(n264), .Y(n625) );
  OAI22XL U934 ( .A0(n446), .A1(n271), .B0(n447), .B1(n263), .Y(n589) );
  OAI22XL U935 ( .A0(n446), .A1(n270), .B0(n447), .B1(n262), .Y(n567) );
  OAI22XL U936 ( .A0(n446), .A1(n269), .B0(n447), .B1(n261), .Y(n545) );
  OAI22XL U937 ( .A0(n446), .A1(n268), .B0(n447), .B1(n260), .Y(n523) );
  OAI22XL U938 ( .A0(n446), .A1(n267), .B0(n447), .B1(n259), .Y(n501) );
  OAI22XL U939 ( .A0(n446), .A1(n266), .B0(n447), .B1(n258), .Y(n479) );
  OAI22XL U940 ( .A0(n446), .A1(n265), .B0(n447), .B1(n257), .Y(n439) );
  NAND2BX1 U941 ( .AN(n659), .B(count_out[0]), .Y(n669) );
  NOR4X1 U942 ( .A(n616), .B(n617), .C(n618), .D(n619), .Y(n600) );
  OAI22XL U943 ( .A0(n433), .A1(n200), .B0(n434), .B1(n192), .Y(n617) );
  OAI22XL U944 ( .A0(n431), .A1(n216), .B0(n432), .B1(n208), .Y(n618) );
  OAI22XL U945 ( .A0(n429), .A1(n232), .B0(n430), .B1(n224), .Y(n619) );
  NOR4X1 U946 ( .A(n584), .B(n585), .C(n586), .D(n587), .Y(n578) );
  OAI22XL U947 ( .A0(n433), .A1(n199), .B0(n434), .B1(n191), .Y(n585) );
  OAI22XL U948 ( .A0(n431), .A1(n215), .B0(n432), .B1(n207), .Y(n586) );
  OAI22XL U949 ( .A0(n429), .A1(n231), .B0(n430), .B1(n223), .Y(n587) );
  NOR4X1 U950 ( .A(n562), .B(n563), .C(n564), .D(n565), .Y(n556) );
  OAI22XL U951 ( .A0(n433), .A1(n198), .B0(n434), .B1(n190), .Y(n563) );
  OAI22XL U952 ( .A0(n431), .A1(n214), .B0(n432), .B1(n206), .Y(n564) );
  OAI22XL U953 ( .A0(n429), .A1(n230), .B0(n430), .B1(n222), .Y(n565) );
  NOR4X1 U954 ( .A(n540), .B(n541), .C(n542), .D(n543), .Y(n534) );
  OAI22XL U955 ( .A0(n433), .A1(n197), .B0(n434), .B1(n189), .Y(n541) );
  OAI22XL U956 ( .A0(n431), .A1(n213), .B0(n432), .B1(n205), .Y(n542) );
  OAI22XL U957 ( .A0(n429), .A1(n229), .B0(n430), .B1(n221), .Y(n543) );
  NOR4X1 U958 ( .A(n518), .B(n519), .C(n520), .D(n521), .Y(n512) );
  OAI22XL U959 ( .A0(n433), .A1(n196), .B0(n434), .B1(n188), .Y(n519) );
  OAI22XL U960 ( .A0(n431), .A1(n212), .B0(n432), .B1(n204), .Y(n520) );
  OAI22XL U961 ( .A0(n429), .A1(n228), .B0(n430), .B1(n220), .Y(n521) );
  NOR4X1 U962 ( .A(n496), .B(n497), .C(n498), .D(n499), .Y(n490) );
  OAI22XL U963 ( .A0(n433), .A1(n195), .B0(n434), .B1(n187), .Y(n497) );
  OAI22XL U964 ( .A0(n431), .A1(n211), .B0(n432), .B1(n203), .Y(n498) );
  OAI22XL U965 ( .A0(n429), .A1(n227), .B0(n430), .B1(n219), .Y(n499) );
  NOR4X1 U966 ( .A(n474), .B(n475), .C(n476), .D(n477), .Y(n468) );
  OAI22XL U967 ( .A0(n433), .A1(n194), .B0(n434), .B1(n186), .Y(n475) );
  OAI22XL U968 ( .A0(n431), .A1(n210), .B0(n432), .B1(n202), .Y(n476) );
  OAI22XL U969 ( .A0(n429), .A1(n226), .B0(n430), .B1(n218), .Y(n477) );
  NOR4X1 U970 ( .A(n425), .B(n426), .C(n427), .D(n428), .Y(n410) );
  OAI22XL U971 ( .A0(n433), .A1(n193), .B0(n434), .B1(n185), .Y(n426) );
  OAI22XL U972 ( .A0(n431), .A1(n209), .B0(n432), .B1(n201), .Y(n427) );
  OAI22XL U973 ( .A0(n429), .A1(n225), .B0(n430), .B1(n217), .Y(n428) );
  AOI2BB1X1 U974 ( .A0N(count_out[0]), .A1N(n970), .B0(n399), .Y(n671) );
  OAI22XL U975 ( .A0(n671), .A1(n379), .B0(count_out[1]), .B1(n669), .Y(n745)
         );
  NAND3X1 U976 ( .A(n932), .B(n383), .C(origin_x[2]), .Y(n661) );
  OA21XL U977 ( .A0(count_out[1]), .A1(n970), .B0(n671), .Y(n670) );
  NAND3XL U978 ( .A(n969), .B(n400), .C(output_valid), .Y(n636) );
  CLKBUFX3 U979 ( .A(n812), .Y(n923) );
  OAI21XL U980 ( .A0(count_out[2]), .A1(n970), .B0(n670), .Y(n667) );
  OR4X1 U981 ( .A(count_out[3]), .B(n669), .C(n378), .D(n379), .Y(n668) );
  NAND2X1 U982 ( .A(n778), .B(n383), .Y(n639) );
  NAND2X1 U983 ( .A(n75), .B(n866), .Y(n640) );
  OAI31XL U984 ( .A0(n765), .A1(n397), .A2(n396), .B0(n969), .Y(n738) );
  NAND2X1 U985 ( .A(origin_x[1]), .B(origin_x[2]), .Y(n643) );
  NAND2X1 U986 ( .A(origin_y[1]), .B(origin_y[2]), .Y(n644) );
  AOI2BB1X1 U987 ( .A0N(count_out[3]), .A1N(n736), .B0(n970), .Y(n730) );
  AOI33X1 U988 ( .A0(n834), .A1(n378), .A2(count_out[1]), .B0(count_out[0]), 
        .B1(n379), .B2(count_out[2]), .Y(n736) );
  OAI22XL U989 ( .A0(n968), .A1(n834), .B0(count_out[0]), .B1(n659), .Y(n744)
         );
  AND2X1 U990 ( .A(\r443/carry [5]), .B(N241), .Y(N248) );
  XOR2X1 U991 ( .A(N240), .B(\r443/carry [4]), .Y(N246) );
  AND2X1 U992 ( .A(\r443/carry [3]), .B(N239), .Y(\r443/carry [4]) );
  XOR2X1 U993 ( .A(N239), .B(\r443/carry [3]), .Y(N245) );
  AND2X1 U994 ( .A(N237), .B(origin_x[1]), .Y(\r443/carry [2]) );
endmodule

