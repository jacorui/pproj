// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Thu Dec 28 19:46:40 2023
//
// Verilog Description of module top_lserial
//

module top_lserial (sysclk, sw, pb, led, master_i2c_int, master_i2c_sda, 
            master_i2c_scl, spi_clk, spi_miso, spi_mosi, usb_uart_rx, 
            usb_uart_tx) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(11[8:19])
    input sysclk;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    input [3:0]sw;   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    input [1:0]pb;   // c:/pproj/lserial/lserial/source/top_lserial.v(20[21:23])
    output [7:0]led;   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    input master_i2c_int;   // c:/pproj/lserial/lserial/source/top_lserial.v(26[19:33])
    input master_i2c_sda /* synthesis .original_dir=IN_OUT */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(27[20:34])
    output master_i2c_scl;   // c:/pproj/lserial/lserial/source/top_lserial.v(28[20:34])
    input spi_clk /* synthesis .original_dir=IN_OUT */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(33[19:26])
    input spi_miso /* synthesis .original_dir=IN_OUT */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(34[19:27])
    input spi_mosi /* synthesis .original_dir=IN_OUT */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(35[19:27])
    input usb_uart_rx;   // c:/pproj/lserial/lserial/source/top_lserial.v(37[19:30])
    output usb_uart_tx;   // c:/pproj/lserial/lserial/source/top_lserial.v(38[18:29])
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    
    wire GND_net, led_c_3_c, sw_c_2, sw_c_1, sw_c_0, led_c_6, led_c_5, 
        led_c_4, n6149, led_c_2, led_c_1, led_c_0, usb_uart_rx_c, 
        usb_uart_tx_c, VCC_net, n14539, n14538;
    
    VHI i2 (.Z(VCC_net));
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    IB usb_uart_rx_pad (.I(usb_uart_rx), .O(usb_uart_rx_c));   // c:/pproj/lserial/lserial/source/top_lserial.v(37[19:30])
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    IB led_c_3_pad (.I(sw[3]), .O(led_c_3_c));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    IB sysclk_pad (.I(sysclk), .O(sysclk_c));   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    OB usb_uart_tx_pad (.I(usb_uart_tx_c), .O(usb_uart_tx));   // c:/pproj/lserial/lserial/source/top_lserial.v(38[18:29])
    OB master_i2c_scl_pad (.I(GND_net), .O(master_i2c_scl));   // c:/pproj/lserial/lserial/source/top_lserial.v(28[20:34])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_3 (.I(n6149), .O(led[3]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    VLO i1 (.Z(GND_net));
    debCom debCom_inst (.led_c_4(led_c_4), .led_c_5(led_c_5), .led_c_6(led_c_6), 
           .led_c_0(led_c_0), .sysclk_c(sysclk_c), .sw_c_0(sw_c_0), .led_c_1(led_c_1), 
           .led_c_2(led_c_2), .n6149(n6149), .led_c_3_c(led_c_3_c), .GND_net(GND_net), 
           .sw_c_2(sw_c_2), .sw_c_1(sw_c_1), .n14539(n14539), .n14538(n14538), 
           .usb_uart_tx_c(usb_uart_tx_c), .usb_uart_rx_c(usb_uart_rx_c)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(66[9] 83[4])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_7 (.I(led_c_3_c), .O(led[7]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n14539)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 m0_lut (.Z(n14538)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module debCom
//

module debCom (led_c_4, led_c_5, led_c_6, led_c_0, sysclk_c, sw_c_0, 
            led_c_1, led_c_2, n6149, led_c_3_c, GND_net, sw_c_2, 
            sw_c_1, n14539, n14538, usb_uart_tx_c, usb_uart_rx_c) /* synthesis syn_module_defined=1 */ ;
    output led_c_4;
    output led_c_5;
    output led_c_6;
    output led_c_0;
    input sysclk_c;
    input sw_c_0;
    output led_c_1;
    output led_c_2;
    output n6149;
    input led_c_3_c;
    input GND_net;
    input sw_c_2;
    input sw_c_1;
    input n14539;
    input n14538;
    output usb_uart_tx_c;
    input usb_uart_rx_c;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    wire [4:0]recCte;   // c:/pproj/lserial/lserial/source/debcom.v(85[13:19])
    
    wire n14236, n14242;
    wire [7:0]rxRecv;   // c:/pproj/lserial/lserial/source/debcom.v(49[14:20])
    
    wire n13436;
    wire [31:0]preFullVal;   // c:/pproj/lserial/lserial/source/debcom.v(99[13:23])
    
    wire n2883;
    wire [7:0]\recBuf[0] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    wire [7:0]preAddress;   // c:/pproj/lserial/lserial/source/debcom.v(97[13:23])
    
    wire n13923, recv, n14220;
    wire [7:0]led_7__N_5;
    
    wire n13438, n13439;
    wire [7:0]n739;
    
    wire n13656, n14;
    wire [7:0]stm;   // c:/pproj/lserial/lserial/source/debcom.v(87[13:16])
    wire [7:0]n2589;
    
    wire n11232, recBuf_12__7__N_1281, n8758;
    wire [103:0]recBuf_12__7__N_75;
    
    wire recBuf_12__7__N_1280, n13435, n14253, n14208, sysclk_c_enable_124, 
        n13440, n14254, n14222, n14230, sysclk_c_enable_131, n183, 
        recBuf_12__7__N_1278, n8756, recBuf_12__7__N_1277, n13444, sysclk_c_enable_92, 
        recBuf_12__7__N_1276, n15, n14237;
    wire [4:0]n32;
    
    wire recBuf_12__7__N_1275, n13415, sysclk_c_enable_108, recBuf_12__7__N_1273, 
        n13997, recBuf_12__7__N_1272;
    wire [7:0]devOut;   // c:/pproj/lserial/lserial/source/debcom.v(24[22:28])
    
    wire sysclk_c_enable_145, n14231, sysclk_c_enable_128;
    wire [7:0]\bufferL1[5] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[1] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire lns;
    wire [90:0]n5167;
    wire [7:0]\bufferL1[8] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[8] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14019, n14245;
    wire [7:0]n734;
    
    wire n14241, n13453;
    wire [7:0]n736;
    wire [2:0]cmd;   // c:/pproj/lserial/lserial/source/debcom.v(92[13:16])
    
    wire n2789, n7, n13053, n14270;
    wire [7:0]\bufferL1[10] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[10] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n9, n14243;
    wire [7:0]n737;
    
    wire n14211, sysclk_c_enable_100, n13640, n13641, n13642, sysclk_c_enable_84, 
        stm_7__N_1424, txAct, n14224, flag, sysclk_c_enable_225, n14248, 
        n14535, n14198, n13647, n13648, n13649, n14228, sysclk_c_enable_88, 
        n14244, sysclk_c_enable_104, n69;
    wire [7:0]n3911;
    
    wire tick;
    wire [7:0]n2652;
    
    wire n13203, n14251, n6556, n6400, n13422;
    wire [7:0]\bufferL1[9] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[9] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n13628;
    wire [7:0]\bufferL2[0] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14192, n1949, n14216, n6698, n13636, n13637, n14175, 
        n13639, n13627, n13643, n13644;
    wire [7:0]\bufferL2[5] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n13938, n14018, n14534, n14022;
    wire [7:0]\bufferL1[3] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[2] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n8299, n13532, n14256;
    wire [7:0]\bufferL1[7] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[7] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n13634, n6590;
    wire [7:0]\bufferL1[0] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[3] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    wire [7:0]\bufferL1[6] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[6] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n13633, n14255, n13557, n14263, n13625, n14024, n14025, 
        n14214, n13624, n5, n13345, n14536, n175, recBuf_12__7__N_1294, 
        n8760, n12757, n14234, n13622, n14204, n14179, n13646, 
        n13484, n13621, n13619, n13378, n14537, n13618, n14266, 
        n14269;
    wire [0:0]n2817;
    
    wire n13650, n13651, n13654, n14225, n13401, n13616, n14226, 
        n13615, n12721, n14020, n13607, n14_adj_1729, n14181, n13653, 
        n13655, n14258, n14206, recBuf_12__7__N_1293, n13419, sysclk_c_enable_18, 
        n10, n6714, n14276, recBuf_12__7__N_1284, n4, n8752, n14275, 
        n14199, sysclk_c_enable_17, n14279, n6712, n13588, n13589, 
        n13591, n14278, n13363, n14282, n14281, n14285, n6704, 
        n13613, n6702, n13593, n13594, n13595, n14210, sysclk_c_enable_96, 
        n13612, n11411, n14221;
    wire [7:0]txSend_7__N_66;
    
    wire n14284, n13989, n14288;
    wire [7:0]txSend;   // c:/pproj/lserial/lserial/source/debcom.v(45[14:20])
    
    wire sysclk_c_enable_138, n14287, sysclk_c_enable_10, n14047, n14152, 
        n14147, n14153, n13596, n13597, n13598;
    wire [7:0]\recBuf[5] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    
    wire bufferL1_10__5__N_195, n12766, n13635, n7_adj_1730, n13457, 
        n14219;
    wire [2:0]cmd_2__N_1071;
    
    wire n13463, n13462, sysclk_c_enable_8, n6728, n13998, n13990, 
        n13951, n6720, n13924, n14103, n6708, n6700, sysclk_c_enable_72, 
        n14271, n6690, n14265, n6682, n14289, n14286, n14268, 
        n6666, sysclk_c_enable_73, n13475, n6654, n13507, n6646, 
        n6642, n6638, n13388, n6630, n13477, n6622, n13506, n6614, 
        n6610, n6606, n13426, n6598, n14150, n14149, n14151, sysclk_c_enable_58, 
        n6578, n13049, n6570;
    wire [7:0]\bufferL2[4] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n6548, n13427, n14259, n6390, n13424, bufferL1_10__4__N_198, 
        n6332, n13390, n14246, n13508, n14200, n11383, n13393, 
        n13432;
    wire [7:0]n735;
    
    wire n13614, n10_adj_1731, sysclk_c_enable_65, n11395, n6370, 
        n6360, n13493, n13495, n13494, n6312, lns_N_1588;
    wire [7:0]rxConv;   // c:/pproj/lserial/lserial/source/debcom.v(101[13:19])
    
    wire n13988, n13592;
    wire [7:0]\recBuf[4] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    wire [7:0]\recBuf[3] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    wire [7:0]\recBuf[2] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    wire [7:0]\recBuf[1] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    
    wire flag_N_1578, n13461, n13460, n13458, n13459, recBuf_12__7__N_1283, 
        n13937, n13434, n13940, n14046, n13547, n13437, n14232, 
        bufferL1_10__3__N_201, bufferL1_10__2__N_204, n13546, bufferL1_10__1__N_207, 
        bufferL1_10__0__N_210, n10100, recBuf_12__7__N_1259, bufferL1_9__7__N_213;
    wire [7:0]n738;
    
    wire bufferL1_9__6__N_216, recBuf_12__7__N_1298, bufferL1_9__5__N_219, 
        recBuf_12__7__N_1287, n14121, n14120, n14122, bufferL1_9__4__N_222, 
        bufferL1_9__3__N_225, bufferL1_9__2__N_228, bufferL1_9__1__N_231, 
        recBuf_12__7__N_1292, recBuf_12__7__N_1291, sysclk_c_enable_111, 
        bufferL1_9__0__N_234, bufferL1_8__7__N_237, n6, recBuf_12__7__N_1290;
    wire [0:0]n2607;
    
    wire n14112, n14111, n14113, bufferL1_8__6__N_240, txDone, n6007, 
        n14247, n13939, n10_adj_1732, n13569, bufferL1_8__5__N_243, 
        n14212, n6_adj_1733, n14_adj_1734, n10_adj_1735, n14202, n14249;
    wire [0:0]n2041;
    wire [0:0]n2047;
    
    wire recBuf_12__7__N_1256, bufferL1_8__4__N_246, bufferL1_8__3__N_249, 
        bufferL1_8__2__N_252, n8320, n12259, n14283, n37, n30, n14267, 
        highRead, n14250, bufferL1_8__1__N_255, bufferL1_8__0__N_258, 
        recBuf_12__7__N_1282, recBuf_12__7__N_1289;
    wire [0:0]n2012;
    
    wire n14280, bufferL1_7__7__N_261, bufferL1_7__6__N_264, bufferL1_7__5__N_267, 
        bufferL1_7__4__N_270, bufferL1_7__3__N_273;
    wire [0:0]n1831;
    
    wire bufferL1_7__2__N_276, bufferL1_7__1__N_279, recBuf_12__7__N_1288, 
        bufferL1_7__0__N_282, n14252, n14261, n9617, n9627, n9621;
    wire [0:0]n1656;
    
    wire bufferL1_6__7__N_285, rstOutCall, bufferL1_6__6__N_288, n9619, 
        bufferL1_6__5__N_291, recBuf_12__7__N_1274, n9623, bufferL1_6__4__N_294, 
        n8, n9625, n13982, n14166, bufferL1_6__3__N_297, n14215, 
        bufferL1_6__2__N_300, bufferL1_6__1__N_303, recBuf_12__7__N_1302, 
        n8750, bufferL1_6__0__N_306;
    wire [0:0]n1691;
    
    wire n14102, n14205, recBuf_12__7__N_1301, n13548, n7_adj_1736, 
        n9615, recBuf_12__7__N_1300, bufferL1_5__7__N_309;
    wire [0:0]n1726;
    
    wire bufferL1_5__6__N_312, n9595, recBuf_12__7__N_1299, n9_adj_1737, 
        lns_N_1591, n13629, n10_adj_1738, recBuf_12__7__N_1303, recBuf_12__7__N_1297, 
        recBuf_12__7__N_1296, bufferL1_5__5__N_315, recBuf_12__7__N_1271, 
        n8754, recBuf_12__7__N_1295, recBuf_12__7__N_1257, n13950, recBuf_12__7__N_1270, 
        bufferL1_5__4__N_318;
    wire [0:0]n1796;
    
    wire bufferL1_5__3__N_321, recBuf_12__7__N_1286, recBuf_12__7__N_1269, 
        recBuf_12__7__N_1285, sysclk_c_enable_228, bufferL1_5__2__N_324, 
        recBuf_12__7__N_1268, n12749, n12748, n13, n13626, n14148, 
        n14026, n14023, n14027;
    wire [0:0]n3;
    
    wire bufferL1_5__1__N_327, n14233, n12747;
    wire [0:0]n1971;
    wire [2:0]r_SM_Main_2__N_1696;
    
    wire sysclk_c_enable_146, n13504, bufferL1_5__0__N_330, recBuf_12__7__N_1267, 
        n13553, n8375, sysclk_c_enable_234, n13620, recBuf_12__7__N_1266, 
        n13631, recBuf_12__7__N_1265, bufferL1_10__7__N_187, sysclk_c_enable_238, 
        bufferL1_10__6__N_192, recBuf_12__7__N_1264, n13623, n14264, 
        recBuf_12__7__N_1263;
    wire [0:0]n2076;
    
    wire rstOut0, sysclk_c_enable_237, recBuf_12__7__N_1262, recBuf_12__7__N_1261, 
        recBuf_12__7__N_1260, n1, n7_adj_1739, recBuf_12__7__N_1258;
    wire [0:0]n2957;
    
    wire n12753, n14146, n14260, n13630, n13632, n13942, n2, n13578, 
        n14_adj_1740, n13941, n14277, lns_N_1590, n8030, n12791, 
        n12852;
    
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(recCte[2]), .B(n14236), .C(n14242), 
         .D(rxRecv[1]), .Z(n13436)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 n13421_bdd_4_lut_12003 (.A(preFullVal[1]), .B(n2883), .C(\recBuf[0] [0]), 
         .D(preAddress[1]), .Z(n13923)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A (B (C (D)))) */ ;
    defparam n13421_bdd_4_lut_12003.init = 16'hc202;
    LUT4 mux_1130_i5_3_lut_4_lut (.A(recv), .B(n14220), .C(led_c_4), .D(preAddress[4]), 
         .Z(led_7__N_5[4])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam mux_1130_i5_3_lut_4_lut.init = 16'h7f08;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_232 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[3]), .Z(n13438)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_232.init = 16'h0100;
    LUT4 mux_1130_i6_3_lut_4_lut (.A(recv), .B(n14220), .C(led_c_5), .D(preAddress[5]), 
         .Z(led_7__N_5[5])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam mux_1130_i6_3_lut_4_lut.init = 16'h7f08;
    LUT4 mux_1130_i7_3_lut_4_lut (.A(recv), .B(n14220), .C(led_c_6), .D(preAddress[6]), 
         .Z(led_7__N_5[6])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam mux_1130_i7_3_lut_4_lut.init = 16'h7f08;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_233 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[4]), .Z(n13439)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_233.init = 16'h0100;
    LUT4 i9248_3_lut_4_lut (.A(recCte[2]), .B(n14236), .C(n14242), .D(rxRecv[5]), 
         .Z(n739[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i9248_3_lut_4_lut.init = 16'hf1f0;
    PFUMX mux_1520_Mux_4_i15 (.BLUT(n13656), .ALUT(n14), .C0(stm[3]), 
          .Z(n2589[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 rxRecv_6__bdd_4_lut_12165 (.A(rxRecv[6]), .B(n11232), .C(recBuf_12__7__N_1281), 
         .D(n8758), .Z(recBuf_12__7__N_75[22])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_6__bdd_4_lut_12165.init = 16'hf088;
    LUT4 rxRecv_7__bdd_4_lut_12166 (.A(rxRecv[7]), .B(n11232), .C(recBuf_12__7__N_1280), 
         .D(n8758), .Z(recBuf_12__7__N_75[23])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_7__bdd_4_lut_12166.init = 16'hf088;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_234 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[7]), .Z(n13435)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_234.init = 16'h0100;
    LUT4 mux_1130_i1_3_lut_4_lut (.A(recv), .B(n14220), .C(led_c_0), .D(preAddress[0]), 
         .Z(led_7__N_5[0])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam mux_1130_i1_3_lut_4_lut.init = 16'h7f08;
    LUT4 i1_3_lut_4_lut (.A(recv), .B(n14220), .C(n14253), .D(n14208), 
         .Z(sysclk_c_enable_124)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_3_lut_4_lut.init = 16'h88f8;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_235 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[6]), .Z(n13440)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_235.init = 16'h0100;
    LUT4 i1_2_lut_4_lut (.A(n14254), .B(n14222), .C(recCte[1]), .D(n14230), 
         .Z(sysclk_c_enable_131)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h4000;
    LUT4 rxRecv_1__bdd_4_lut (.A(rxRecv[1]), .B(n183), .C(recBuf_12__7__N_1278), 
         .D(n8756), .Z(recBuf_12__7__N_75[25])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_1__bdd_4_lut.init = 16'hf088;
    LUT4 rxRecv_2__bdd_4_lut (.A(rxRecv[2]), .B(n183), .C(recBuf_12__7__N_1277), 
         .D(n8756), .Z(recBuf_12__7__N_75[26])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_2__bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_4_lut_adj_236 (.A(n14254), .B(n14222), .C(recCte[1]), 
         .D(n13444), .Z(sysclk_c_enable_92)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_236.init = 16'h4000;
    LUT4 rxRecv_3__bdd_4_lut (.A(rxRecv[3]), .B(n183), .C(recBuf_12__7__N_1276), 
         .D(n8756), .Z(recBuf_12__7__N_75[27])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_3__bdd_4_lut.init = 16'hf088;
    LUT4 i9162_3_lut_4_lut (.A(n14242), .B(n15), .C(n14237), .D(recCte[2]), 
         .Z(n32[2])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9162_3_lut_4_lut.init = 16'h0440;
    LUT4 rxRecv_4__bdd_4_lut (.A(rxRecv[4]), .B(n183), .C(recBuf_12__7__N_1275), 
         .D(n8756), .Z(recBuf_12__7__N_75[28])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_4__bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_4_lut_adj_237 (.A(n14254), .B(n14222), .C(recCte[1]), 
         .D(n13415), .Z(sysclk_c_enable_108)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_237.init = 16'h4000;
    LUT4 rxRecv_6__bdd_4_lut (.A(rxRecv[6]), .B(n183), .C(recBuf_12__7__N_1273), 
         .D(n8756), .Z(recBuf_12__7__N_75[30])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_6__bdd_4_lut.init = 16'hf088;
    LUT4 preAddress_5__bdd_4_lut (.A(preAddress[5]), .B(preFullVal[5]), 
         .C(n2883), .D(\recBuf[0] [0]), .Z(n13997)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C (D))+!B (C (D)+!C !(D)))) */ ;
    defparam preAddress_5__bdd_4_lut.init = 16'haffc;
    LUT4 rxRecv_7__bdd_4_lut_12273 (.A(rxRecv[7]), .B(n183), .C(recBuf_12__7__N_1272), 
         .D(n8756), .Z(recBuf_12__7__N_75[31])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_7__bdd_4_lut_12273.init = 16'hf088;
    FD1P3DX devOut_i0_i0 (.D(preAddress[0]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_238 (.A(n14254), .B(n14222), .C(recCte[1]), 
         .D(n14231), .Z(sysclk_c_enable_128)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_238.init = 16'h4000;
    LUT4 mux_3237_i46_3_lut (.A(\bufferL1[5] [5]), .B(\bufferL2[1] [5]), 
         .C(lns), .Z(n5167[45])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i46_3_lut.init = 16'hcaca;
    LUT4 \bufferL1_9[[0__bdd_3_lut  (.A(\bufferL1[8] [0]), .B(\bufferL2[8] [0]), 
         .C(lns), .Z(n14019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \bufferL1_9[[0__bdd_3_lut .init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_239 (.A(recCte[2]), .B(n14245), .C(n14242), 
         .D(rxRecv[5]), .Z(n734[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_3_lut_4_lut_adj_239.init = 16'hf8f0;
    LUT4 i1_3_lut_4_lut_adj_240 (.A(recCte[2]), .B(n14241), .C(n13453), 
         .D(n14242), .Z(n736[5])) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_3_lut_4_lut_adj_240.init = 16'hff40;
    LUT4 i1_4_lut (.A(cmd[1]), .B(n2789), .C(\recBuf[0] [0]), .D(n7), 
         .Z(n13053)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_4_lut.init = 16'h5111;
    LUT4 n14115_bdd_4_lut_then_3_lut_4_lut (.A(cmd[1]), .B(n2789), .C(n2883), 
         .D(devOut[7]), .Z(n14270)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam n14115_bdd_4_lut_then_3_lut_4_lut.init = 16'h4000;
    LUT4 i9158_4_lut (.A(\bufferL1[10] [4]), .B(stm[0]), .C(\bufferL2[10] [4]), 
         .D(lns), .Z(n9)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[28:31])
    defparam i9158_4_lut.init = 16'h3022;
    LUT4 i1_3_lut_4_lut_adj_241 (.A(recCte[3]), .B(n14243), .C(n13453), 
         .D(n14242), .Z(n737[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_241.init = 16'hff10;
    LUT4 i7531_2_lut_rep_174 (.A(\recBuf[0] [2]), .B(n2883), .Z(n14211)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i7531_2_lut_rep_174.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n14254), .B(recCte[1]), .C(n13415), 
         .D(n14222), .Z(sysclk_c_enable_100)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(115[6:10])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    L6MUX21 i11749 (.D0(n13640), .D1(n13641), .SD(stm[2]), .Z(n13642));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_242 (.A(n14254), .B(recCte[1]), 
         .C(n13444), .D(n14222), .Z(sysclk_c_enable_84)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(115[6:10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_242.init = 16'h1000;
    LUT4 i11985_4_lut (.A(stm_7__N_1424), .B(txAct), .C(n14224), .D(flag), 
         .Z(sysclk_c_enable_225)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam i11985_4_lut.init = 16'hba10;
    LUT4 i1_4_lut_rep_161_4_lut (.A(\recBuf[0] [2]), .B(n2883), .C(n14248), 
         .D(n14535), .Z(n14198)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A ((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i1_4_lut_rep_161_4_lut.init = 16'h2e00;
    L6MUX21 i11756 (.D0(n13647), .D1(n13648), .SD(stm[2]), .Z(n13649));
    LUT4 i2_3_lut_4_lut_4_lut (.A(n14254), .B(n14228), .C(recCte[3]), 
         .D(n14222), .Z(sysclk_c_enable_88)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(115[6:10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i2_3_lut_4_lut_4_lut_adj_243 (.A(n14254), .B(n14244), .C(n14245), 
         .D(n14222), .Z(sysclk_c_enable_104)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(115[6:10])
    defparam i2_3_lut_4_lut_4_lut_adj_243.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_adj_244 (.A(\recBuf[0] [2]), .B(n14248), .C(n2883), 
         .D(n2789), .Z(n69)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i1_2_lut_4_lut_adj_244.init = 16'h3a00;
    LUT4 i9273_2_lut (.A(n3911[1]), .B(tick), .Z(n2652[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9273_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(stm_7__N_1424), .B(flag), .Z(n13203)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2883), .B(n14251), .C(cmd[1]), .D(n2789), 
         .Z(n6556)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0e0f;
    LUT4 i9272_2_lut (.A(n3911[2]), .B(tick), .Z(n2652[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9272_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_245 (.A(n2883), .B(n14251), .C(cmd[1]), 
         .D(n2789), .Z(n6400)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_245.init = 16'hfeff;
    LUT4 i9271_2_lut (.A(n3911[3]), .B(tick), .Z(n2652[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9271_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_246 (.A(n2883), .B(n14251), .C(n2789), 
         .D(cmd[1]), .Z(n13422)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_246.init = 16'h00e0;
    LUT4 i11735_3_lut (.A(\bufferL1[9] [6]), .B(\bufferL2[9] [6]), .C(lns), 
         .Z(n13628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11735_3_lut.init = 16'hcaca;
    LUT4 n2663_bdd_4_lut_4_lut_4_lut (.A(lns), .B(stm[0]), .C(\bufferL2[0] [0]), 
         .D(\bufferL2[1] [2]), .Z(n14192)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam n2663_bdd_4_lut_4_lut_4_lut.init = 16'hec64;
    LUT4 i1_2_lut_3_lut_4_lut_adj_247 (.A(cmd[1]), .B(n1949), .C(preFullVal[8]), 
         .D(n14216), .Z(n6698)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_2_lut_3_lut_4_lut_adj_247.init = 16'h4000;
    L6MUX21 i11747 (.D0(n13636), .D1(n13637), .SD(stm[1]), .Z(n13640));
    L6MUX21 i11748 (.D0(n14175), .D1(n13639), .SD(stm[1]), .Z(n13641));
    LUT4 i11734_3_lut (.A(\bufferL1[8] [6]), .B(\bufferL2[8] [6]), .C(lns), 
         .Z(n13627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11734_3_lut.init = 16'hcaca;
    L6MUX21 i11754 (.D0(n13643), .D1(n13644), .SD(stm[1]), .Z(n13647));
    LUT4 n2663_bdd_3_lut_12017_3_lut_4_lut (.A(lns), .B(stm[0]), .C(\bufferL1[5] [3]), 
         .D(\bufferL2[5] [3]), .Z(n13938)) /* synthesis lut_function=(A (B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam n2663_bdd_3_lut_12017_3_lut_4_lut.init = 16'hd951;
    LUT4 \bufferL1_9[[0__bdd_3_lut_12050  (.A(\bufferL1[9] [0]), .B(lns), 
         .C(\bufferL2[9] [0]), .Z(n14018)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \bufferL1_9[[0__bdd_3_lut_12050 .init = 16'he2e2;
    LUT4 i1_2_lut_rep_220 (.A(cmd[1]), .B(n2789), .Z(n14534)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_220.init = 16'hbbbb;
    LUT4 n2663_bdd_3_lut_12100 (.A(\bufferL1[10] [1]), .B(lns), .C(\bufferL2[10] [1]), 
         .Z(n14022)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n2663_bdd_3_lut_12100.init = 16'he2e2;
    LUT4 mux_3237_i5_3_lut (.A(\bufferL1[3] [2]), .B(\bufferL2[2] [0]), 
         .C(lns), .Z(n5167[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i5_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_248 (.A(n8299), .B(n13532), .C(n14256), .D(\recBuf[0] [4]), 
         .Z(n2883)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_248.init = 16'h3022;
    LUT4 i9270_2_lut (.A(n3911[4]), .B(tick), .Z(n2652[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9270_2_lut.init = 16'h8888;
    LUT4 i11741_3_lut (.A(\bufferL1[7] [7]), .B(\bufferL2[7] [7]), .C(lns), 
         .Z(n13634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11741_3_lut.init = 16'hcaca;
    LUT4 i9230_3_lut_4_lut (.A(\recBuf[0] [0]), .B(n2883), .C(n2789), 
         .D(cmd[1]), .Z(n6590)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (C+(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i9230_3_lut_4_lut.init = 16'h008f;
    LUT4 mux_3237_i29_3_lut (.A(\bufferL1[0] [2]), .B(\bufferL2[3] [4]), 
         .C(lns), .Z(n5167[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i29_3_lut.init = 16'hcaca;
    LUT4 i9269_2_lut (.A(n3911[5]), .B(tick), .Z(n2652[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9269_2_lut.init = 16'h8888;
    LUT4 i11740_3_lut (.A(\bufferL1[6] [7]), .B(\bufferL2[6] [7]), .C(lns), 
         .Z(n13633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11740_3_lut.init = 16'hcaca;
    LUT4 i11664_3_lut_4_lut (.A(\recBuf[0] [5]), .B(n14255), .C(\recBuf[0] [1]), 
         .D(\recBuf[0] [0]), .Z(n13557)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i11664_3_lut_4_lut.init = 16'hefff;
    LUT4 n1415_bdd_4_lut_else_3_lut (.A(\recBuf[0] [2]), .B(n14534), .C(\recBuf[0] [0]), 
         .D(preFullVal[21]), .Z(n14263)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam n1415_bdd_4_lut_else_3_lut.init = 16'hdddc;
    LUT4 i11732_3_lut (.A(\bufferL1[7] [5]), .B(\bufferL2[7] [5]), .C(lns), 
         .Z(n13625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11732_3_lut.init = 16'hcaca;
    LUT4 \bufferL1_8[[1__bdd_3_lut_12056  (.A(\bufferL1[9] [1]), .B(lns), 
         .C(\bufferL2[9] [1]), .Z(n14024)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \bufferL1_8[[1__bdd_3_lut_12056 .init = 16'he2e2;
    LUT4 i9268_2_lut (.A(n3911[6]), .B(tick), .Z(n2652[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9268_2_lut.init = 16'h8888;
    LUT4 \bufferL1_8[[1__bdd_3_lut_12103  (.A(\bufferL1[8] [1]), .B(\bufferL2[8] [1]), 
         .C(lns), .Z(n14025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \bufferL1_8[[1__bdd_3_lut_12103 .init = 16'hcaca;
    LUT4 i11904_2_lut_rep_177 (.A(\recBuf[0] [2]), .B(n2883), .Z(n14214)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i11904_2_lut_rep_177.init = 16'h1111;
    LUT4 i11731_3_lut (.A(\bufferL1[6] [5]), .B(\bufferL2[6] [5]), .C(lns), 
         .Z(n13624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11731_3_lut.init = 16'hcaca;
    LUT4 i9267_2_lut (.A(n3911[7]), .B(tick), .Z(n2652[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9267_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_rep_222 (.A(n5), .B(\recBuf[0] [0]), .C(n13345), .D(\recBuf[0] [1]), 
         .Z(n14536)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B (C+!(D))+!B !(D))) */ ;
    defparam i1_4_lut_rep_222.init = 16'he2ff;
    LUT4 rxRecv_1__bdd_4_lut_12155 (.A(rxRecv[1]), .B(n175), .C(recBuf_12__7__N_1294), 
         .D(n8760), .Z(recBuf_12__7__N_75[9])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_1__bdd_4_lut_12155.init = 16'hf088;
    LUT4 i2_2_lut_4_lut_4_lut (.A(n5), .B(\recBuf[0] [0]), .C(n13345), 
         .D(\recBuf[0] [1]), .Z(n12757)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !((D)+!C))) */ ;
    defparam i2_2_lut_4_lut_4_lut.init = 16'he2fc;
    LUT4 i11926_2_lut_rep_197 (.A(recCte[2]), .B(recCte[4]), .Z(n14234)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i11926_2_lut_rep_197.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_249 (.A(recCte[2]), .B(recCte[4]), .C(recCte[1]), 
         .D(n14241), .Z(n183)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_4_lut_adj_249.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_250 (.A(recCte[2]), .B(recCte[4]), .C(recCte[1]), 
         .D(n14241), .Z(n175)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_4_lut_adj_250.init = 16'h0100;
    LUT4 i11729_3_lut (.A(\bufferL1[9] [5]), .B(\bufferL2[9] [5]), .C(lns), 
         .Z(n13622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11729_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_167 (.A(cmd[1]), .B(n1949), .Z(n14204)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_2_lut_rep_167.init = 16'h4444;
    L6MUX21 i11755 (.D0(n14179), .D1(n13646), .SD(stm[1]), .Z(n13648));
    LUT4 i1_3_lut_3_lut_4_lut (.A(recCte[2]), .B(recCte[4]), .C(n14237), 
         .D(n13484), .Z(n8756)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hff01;
    LUT4 i11728_3_lut (.A(\bufferL1[8] [5]), .B(\bufferL2[8] [5]), .C(lns), 
         .Z(n13621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11728_3_lut.init = 16'hcaca;
    LUT4 i11726_3_lut (.A(\bufferL1[9] [4]), .B(\bufferL2[9] [4]), .C(lns), 
         .Z(n13619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11726_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_3_lut_4_lut_adj_251 (.A(recCte[2]), .B(recCte[4]), .C(n14245), 
         .D(n13484), .Z(n8760)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_3_lut_3_lut_4_lut_adj_251.init = 16'hff01;
    LUT4 i1_3_lut_rep_223 (.A(\recBuf[0] [5]), .B(n13378), .C(\recBuf[0] [4]), 
         .Z(n14537)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i1_3_lut_rep_223.init = 16'hc4c4;
    LUT4 i11725_3_lut (.A(\bufferL1[8] [4]), .B(\bufferL2[8] [4]), .C(lns), 
         .Z(n13618)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11725_3_lut.init = 16'hcaca;
    LUT4 n14109_bdd_4_lut_else_3_lut (.A(n2883), .B(n14535), .C(preFullVal[17]), 
         .D(\recBuf[0] [2]), .Z(n14266)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam n14109_bdd_4_lut_else_3_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_221 (.A(cmd[1]), .B(n2789), .Z(n14535)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_rep_221.init = 16'h4444;
    LUT4 n14115_bdd_4_lut_else_3_lut (.A(n2883), .B(n14535), .C(preFullVal[23]), 
         .D(\recBuf[0] [2]), .Z(n14269)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam n14115_bdd_4_lut_else_3_lut.init = 16'h0040;
    LUT4 mux_1915_i1_3_lut_4_lut_4_lut (.A(\recBuf[0] [5]), .B(n13378), 
         .C(\recBuf[0] [4]), .D(\recBuf[0] [2]), .Z(n2817[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(B+(D))) */ ;
    defparam mux_1915_i1_3_lut_4_lut_4_lut.init = 16'h80bb;
    LUT4 i2_3_lut_rep_199 (.A(recCte[3]), .B(recCte[0]), .C(recCte[1]), 
         .Z(n14236)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i2_3_lut_rep_199.init = 16'hfefe;
    PFUMX i11761 (.BLUT(n13650), .ALUT(n13651), .C0(stm[1]), .Z(n13654));
    LUT4 i1_2_lut_rep_188_4_lut (.A(recCte[3]), .B(recCte[0]), .C(recCte[1]), 
         .D(recCte[2]), .Z(n14225)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_rep_188_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut (.A(\recBuf[0] [2]), .B(n2883), .C(preAddress[1]), 
         .Z(n13401)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i11723_3_lut (.A(\bufferL1[7] [3]), .B(\bufferL2[7] [3]), .C(lns), 
         .Z(n13616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11723_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_189_4_lut (.A(recCte[3]), .B(recCte[0]), .C(recCte[1]), 
         .D(recCte[2]), .Z(n14226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_rep_189_4_lut.init = 16'hfffe;
    LUT4 i11722_3_lut (.A(\bufferL1[6] [3]), .B(\bufferL2[6] [3]), .C(lns), 
         .Z(n13615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11722_3_lut.init = 16'hcaca;
    LUT4 i10837_2_lut_rep_200 (.A(recCte[1]), .B(recCte[0]), .Z(n14237)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i10837_2_lut_rep_200.init = 16'h8888;
    LUT4 i10844_2_lut_3_lut (.A(recCte[1]), .B(recCte[0]), .C(recCte[2]), 
         .Z(n12721)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i10844_2_lut_3_lut.init = 16'h8080;
    LUT4 i9307_2_lut_2_lut_4_lut (.A(stm[2]), .B(n14020), .C(n13607), 
         .D(stm[1]), .Z(n14_adj_1729)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam i9307_2_lut_2_lut_4_lut.init = 16'h5044;
    L6MUX21 i11762 (.D0(n14181), .D1(n13653), .SD(stm[1]), .Z(n13655));
    LUT4 i9329_4_lut_then_4_lut (.A(cmd[1]), .B(n2883), .C(\recBuf[0] [0]), 
         .D(\recBuf[0] [2]), .Z(n14258)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9329_4_lut_then_4_lut.init = 16'h4041;
    LUT4 i9279_2_lut_rep_169_3_lut (.A(\recBuf[0] [2]), .B(n2883), .C(\recBuf[0] [0]), 
         .Z(n14206)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i9279_2_lut_rep_169_3_lut.init = 16'h1010;
    LUT4 rxRecv_2__bdd_4_lut_12156 (.A(rxRecv[2]), .B(n175), .C(recBuf_12__7__N_1293), 
         .D(n8760), .Z(recBuf_12__7__N_75[10])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_2__bdd_4_lut_12156.init = 16'hf088;
    LUT4 i1_4_lut_adj_252 (.A(n13419), .B(cmd[0]), .C(n14204), .D(\recBuf[0] [2]), 
         .Z(sysclk_c_enable_18)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_252.init = 16'h0c4c;
    LUT4 i3_4_lut (.A(\recBuf[0] [3]), .B(n14255), .C(\recBuf[0] [5]), 
         .D(n10), .Z(n13419)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_4_lut.init = 16'h0100;
    LUT4 i2_3_lut (.A(\recBuf[0] [1]), .B(\recBuf[0] [5]), .C(\recBuf[0] [0]), 
         .Z(n8299)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_253 (.A(cmd[1]), .B(n1949), .C(preFullVal[15]), 
         .D(n14216), .Z(n6714)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_2_lut_3_lut_4_lut_adj_253.init = 16'h4000;
    LUT4 preFullVal_6__bdd_4_lut_then_4_lut (.A(\recBuf[0] [0]), .B(preAddress[6]), 
         .C(n2883), .D(\recBuf[0] [2]), .Z(n14276)) /* synthesis lut_function=(A (B (C))+!A !(C+(D))) */ ;
    defparam preFullVal_6__bdd_4_lut_then_4_lut.init = 16'h8085;
    LUT4 rxRecv_3__bdd_4_lut_12163 (.A(rxRecv[3]), .B(n11232), .C(recBuf_12__7__N_1284), 
         .D(n8758), .Z(recBuf_12__7__N_75[19])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_3__bdd_4_lut_12163.init = 16'hf088;
    LUT4 i11974_4_lut (.A(recCte[4]), .B(n14222), .C(n4), .D(recCte[2]), 
         .Z(n8752)) /* synthesis lut_function=(!(A (B)+!A (B (C (D))))) */ ;
    defparam i11974_4_lut.init = 16'h3777;
    LUT4 i1_4_lut_adj_254 (.A(\recBuf[0] [3]), .B(n14256), .C(n14255), 
         .D(\recBuf[0] [2]), .Z(n13378)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_254.init = 16'h0004;
    LUT4 preFullVal_6__bdd_4_lut_else_4_lut (.A(\recBuf[0] [0]), .B(preAddress[6]), 
         .C(n2883), .Z(n14275)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam preFullVal_6__bdd_4_lut_else_4_lut.init = 16'h8080;
    LUT4 mux_3237_i86_3_lut (.A(\bufferL1[10] [5]), .B(\bufferL2[10] [5]), 
         .C(lns), .Z(n5167[85])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i86_3_lut.init = 16'hcaca;
    LUT4 i11935_2_lut (.A(cmd[0]), .B(n14199), .Z(sysclk_c_enable_17)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i11935_2_lut.init = 16'h2222;
    LUT4 preFullVal_2__bdd_4_lut_then_4_lut (.A(\recBuf[0] [0]), .B(preAddress[2]), 
         .C(n2883), .D(\recBuf[0] [2]), .Z(n14279)) /* synthesis lut_function=(A (B (C))+!A !(C+(D))) */ ;
    defparam preFullVal_2__bdd_4_lut_then_4_lut.init = 16'h8085;
    LUT4 i9199_4_lut (.A(preFullVal[14]), .B(cmd[1]), .C(n1949), .D(n14216), 
         .Z(n6712)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9199_4_lut.init = 16'h2303;
    L6MUX21 i11698 (.D0(n13588), .D1(n13589), .SD(stm[1]), .Z(n13591));
    LUT4 preFullVal_2__bdd_4_lut_else_4_lut (.A(\recBuf[0] [0]), .B(preAddress[2]), 
         .C(n2883), .Z(n14278)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam preFullVal_2__bdd_4_lut_else_4_lut.init = 16'h8080;
    LUT4 i1_3_lut (.A(sw_c_0), .B(n2883), .C(\recBuf[0] [2]), .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_3_lut.init = 16'hcece;
    LUT4 i2_4_lut (.A(n14204), .B(\recBuf[0] [4]), .C(preFullVal[13]), 
         .D(n14537), .Z(n13363)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hfdff;
    LUT4 preFullVal_20__bdd_4_lut_then_4_lut (.A(\recBuf[0] [0]), .B(devOut[4]), 
         .C(n2883), .D(\recBuf[0] [2]), .Z(n14282)) /* synthesis lut_function=(A (B (C))+!A !(C+(D))) */ ;
    defparam preFullVal_20__bdd_4_lut_then_4_lut.init = 16'h8085;
    LUT4 preFullVal_20__bdd_4_lut_else_4_lut (.A(\recBuf[0] [0]), .B(devOut[4]), 
         .C(n2883), .Z(n14281)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam preFullVal_20__bdd_4_lut_else_4_lut.init = 16'h8080;
    LUT4 n14118_bdd_4_lut_then_4_lut (.A(\recBuf[0] [5]), .B(devOut[2]), 
         .C(n14535), .D(\recBuf[0] [0]), .Z(n14285)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n14118_bdd_4_lut_then_4_lut.init = 16'hc0a0;
    LUT4 i9198_4_lut (.A(preFullVal[11]), .B(cmd[1]), .C(n1949), .D(n14216), 
         .Z(n6704)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9198_4_lut.init = 16'h2303;
    LUT4 i1_2_lut_rep_204 (.A(recCte[0]), .B(recCte[3]), .Z(n14241)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_rep_204.init = 16'h2222;
    LUT4 i1_2_lut_rep_193_3_lut (.A(recCte[0]), .B(recCte[3]), .C(recCte[2]), 
         .Z(n14230)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_rep_193_3_lut.init = 16'h0202;
    LUT4 i11720_3_lut (.A(\bufferL1[9] [3]), .B(\bufferL2[9] [3]), .C(lns), 
         .Z(n13613)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11720_3_lut.init = 16'hcaca;
    LUT4 i9197_4_lut (.A(preFullVal[10]), .B(cmd[1]), .C(n1949), .D(n14216), 
         .Z(n6702)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9197_4_lut.init = 16'h2303;
    PFUMX i11702 (.BLUT(n13593), .ALUT(n13594), .C0(stm[1]), .Z(n13595));
    LUT4 i8928_3_lut_4_lut (.A(recv), .B(n14220), .C(led_c_1), .D(preAddress[1]), 
         .Z(led_7__N_5[1])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i8928_3_lut_4_lut.init = 16'h7f08;
    LUT4 i2_3_lut_4_lut (.A(recCte[0]), .B(recCte[3]), .C(recCte[2]), 
         .D(n14210), .Z(sysclk_c_enable_96)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i2_3_lut_4_lut.init = 16'h2000;
    LUT4 i11719_3_lut (.A(\bufferL1[8] [3]), .B(\bufferL2[8] [3]), .C(lns), 
         .Z(n13612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11719_3_lut.init = 16'hcaca;
    LUT4 mux_1532_i1_3_lut_4_lut (.A(n11411), .B(n14221), .C(n2589[0]), 
         .D(rxRecv[0]), .Z(txSend_7__N_66[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1532_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 n14118_bdd_4_lut_else_4_lut (.A(\recBuf[0] [2]), .B(n14535), .C(\recBuf[0] [0]), 
         .D(preFullVal[18]), .Z(n14284)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n14118_bdd_4_lut_else_4_lut.init = 16'h0400;
    LUT4 n13421_bdd_4_lut (.A(preAddress[4]), .B(preFullVal[4]), .C(n2883), 
         .D(\recBuf[0] [0]), .Z(n13989)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C (D))+!B (C (D)+!C !(D)))) */ ;
    defparam n13421_bdd_4_lut.init = 16'haffc;
    LUT4 n14124_bdd_4_lut_then_4_lut (.A(\recBuf[0] [5]), .B(devOut[3]), 
         .C(n14535), .D(\recBuf[0] [0]), .Z(n14288)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n14124_bdd_4_lut_then_4_lut.init = 16'hc0a0;
    FD1P3DX txSend_i0 (.D(txSend_7__N_66[0]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i0.GSR = "ENABLED";
    LUT4 n14124_bdd_4_lut_else_4_lut (.A(\recBuf[0] [2]), .B(n14535), .C(\recBuf[0] [0]), 
         .D(preFullVal[19]), .Z(n14287)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n14124_bdd_4_lut_else_4_lut.init = 16'h0400;
    LUT4 mux_3237_i87_3_lut (.A(\bufferL1[10] [6]), .B(\bufferL2[10] [6]), 
         .C(lns), .Z(n5167[86])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i87_3_lut.init = 16'hcaca;
    FD1P3DX \bufferL2_10[[7__1988  (.D(n14047), .SP(sysclk_c_enable_10), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[10] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[7__1988 .GSR = "ENABLED";
    PFUMX i12144 (.BLUT(n14152), .ALUT(n14147), .C0(stm[3]), .Z(n14153));
    LUT4 mux_1130_i3_3_lut_4_lut (.A(recv), .B(n14220), .C(led_c_2), .D(preAddress[2]), 
         .Z(led_7__N_5[2])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam mux_1130_i3_3_lut_4_lut.init = 16'h7f08;
    LUT4 mux_1532_i8_3_lut_4_lut (.A(n11411), .B(n14221), .C(n2589[7]), 
         .D(rxRecv[7]), .Z(txSend_7__N_66[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1532_i8_3_lut_4_lut.init = 16'hfe10;
    L6MUX21 i11705 (.D0(n13596), .D1(n13597), .SD(stm[1]), .Z(n13598));
    LUT4 i9059_2_lut (.A(\recBuf[5] [5]), .B(n15), .Z(bufferL1_10__5__N_195)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9059_2_lut.init = 16'heeee;
    LUT4 mux_1130_i4_3_lut_4_lut (.A(recv), .B(n14220), .C(n6149), .D(preAddress[3]), 
         .Z(led_7__N_5[3])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam mux_1130_i4_3_lut_4_lut.init = 16'h7f08;
    LUT4 i4_4_lut (.A(n14253), .B(n13532), .C(\recBuf[0] [4]), .D(n8299), 
         .Z(sysclk_c_enable_145)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0200;
    LUT4 i11714_4_lut (.A(\bufferL1[10] [0]), .B(lns), .C(stm[0]), .D(\bufferL2[10] [0]), 
         .Z(n13607)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D)))) */ ;
    defparam i11714_4_lut.init = 16'hcec2;
    LUT4 i9213_4_lut (.A(n12766), .B(stm[2]), .C(n13635), .D(stm[1]), 
         .Z(n7_adj_1730)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[28:31])
    defparam i9213_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_255 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[1]), .Z(n13457)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_255.init = 16'h0200;
    LUT4 mux_1532_i6_3_lut_4_lut (.A(n11411), .B(n14221), .C(n14153), 
         .D(rxRecv[5]), .Z(txSend_7__N_66[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1532_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut_adj_256 (.A(n14219), .B(cmd[1]), .C(n12757), .D(cmd[0]), 
         .Z(cmd_2__N_1071[1])) /* synthesis lut_function=(!(A+(B (D)+!B (C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i1_4_lut_adj_256.init = 16'h0144;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_257 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[0]), .Z(n13463)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_257.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_258 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[7]), .Z(n13462)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_258.init = 16'h0200;
    FD1P3DX \bufferL2_10[[6__1989  (.D(n6728), .SP(sysclk_c_enable_8), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[10] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[6__1989 .GSR = "ENABLED";
    FD1P3BX \bufferL2_10[[5__1990  (.D(n13998), .SP(sysclk_c_enable_10), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL2[10] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[5__1990 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[4__1991  (.D(n13990), .SP(sysclk_c_enable_10), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[10] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[4__1991 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[3__1992  (.D(n13951), .SP(sysclk_c_enable_10), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[10] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[3__1992 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[2__1993  (.D(n6720), .SP(sysclk_c_enable_8), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[10] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[2__1993 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[1__1994  (.D(n13924), .SP(sysclk_c_enable_10), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[10] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[1__1994 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[0__1995  (.D(n14103), .SP(sysclk_c_enable_10), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[10] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_10[[0__1995 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[7__1996  (.D(n6714), .SP(sysclk_c_enable_18), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[9] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[7__1996 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[6__1997  (.D(n6712), .SP(sysclk_c_enable_17), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[9] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[6__1997 .GSR = "ENABLED";
    FD1P3BX \bufferL2_9[[5__1998  (.D(n13363), .SP(sysclk_c_enable_18), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL2[9] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[5__1998 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[4__1999  (.D(n6708), .SP(sysclk_c_enable_18), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[9] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[4__1999 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[3__2000  (.D(n6704), .SP(sysclk_c_enable_17), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[9] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[3__2000 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[2__2001  (.D(n6702), .SP(sysclk_c_enable_17), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[9] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[2__2001 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[1__2002  (.D(n6700), .SP(sysclk_c_enable_17), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[9] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[1__2002 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[0__2003  (.D(n6698), .SP(sysclk_c_enable_18), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[9] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_9[[0__2003 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[7__2004  (.D(n14271), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[8] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[7__2004 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[6__2005  (.D(n6690), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[8] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[6__2005 .GSR = "ENABLED";
    FD1P3BX \bufferL2_8[[5__2006  (.D(n14265), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL2[8] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[5__2006 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[4__2007  (.D(n6682), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[8] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[4__2007 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[3__2008  (.D(n14289), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[8] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[3__2008 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[2__2009  (.D(n14286), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[8] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[2__2009 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[1__2010  (.D(n14268), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[8] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[1__2010 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[0__2011  (.D(n6666), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[8] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_8[[0__2011 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[7__2012  (.D(n13475), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[7] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[7__2012 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[6__2013  (.D(n6654), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[7] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[6__2013 .GSR = "ENABLED";
    FD1P3BX \bufferL2_7[[5__2014  (.D(n13507), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL2[7] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[5__2014 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[4__2015  (.D(n6646), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[7] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[4__2015 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[3__2016  (.D(n6642), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[7] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[3__2016 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[2__2017  (.D(n6638), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[7] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[2__2017 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[1__2018  (.D(n13388), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[7] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[1__2018 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[0__2019  (.D(n6630), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[7] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_7[[0__2019 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[7__2020  (.D(n13477), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[6] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[7__2020 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[6__2021  (.D(n6622), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[6] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[6__2021 .GSR = "ENABLED";
    FD1P3BX \bufferL2_6[[5__2022  (.D(n13506), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL2[6] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[5__2022 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[4__2023  (.D(n6614), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[6] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[4__2023 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[3__2024  (.D(n6610), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[6] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[3__2024 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[2__2025  (.D(n6606), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[6] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[2__2025 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[1__2026  (.D(n13426), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[6] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[1__2026 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[0__2027  (.D(n6598), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[6] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_6[[0__2027 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[6__2029  (.D(n6590), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[5] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_5[[6__2029 .GSR = "ENABLED";
    PFUMX i12142 (.BLUT(n14150), .ALUT(n14149), .C0(lns), .Z(n14151));
    FD1P3DX \bufferL2_5[[4__2031  (.D(cmd[1]), .SP(sysclk_c_enable_58), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[5] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_5[[4__2031 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[3__2032  (.D(n6578), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[5] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_5[[3__2032 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[2__2033  (.D(n13049), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[5] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_5[[2__2033 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[1__2034  (.D(n6570), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[5] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_5[[1__2034 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[0__2035  (.D(n13053), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[5] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_5[[0__2035 .GSR = "ENABLED";
    FD1P3DX \bufferL2_4[[6__2037  (.D(n6556), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[4] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_4[[6__2037 .GSR = "ENABLED";
    LUT4 i1_3_lut_rep_205 (.A(recCte[4]), .B(recCte[3]), .C(recCte[2]), 
         .Z(n14242)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_rep_205.init = 16'heaea;
    FD1P3DX \bufferL2_4[[4__2039  (.D(n6548), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[4] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_4[[4__2039 .GSR = "ENABLED";
    FD1P3DX \bufferL2_4[[2__2041  (.D(n13427), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[4] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_4[[2__2041 .GSR = "ENABLED";
    FD1P3DX \bufferL2_4[[0__2043  (.D(n14259), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[4] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_4[[0__2043 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[6__2045  (.D(n13422), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[3] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_3[[6__2045 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[4__2047  (.D(n6390), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[3] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_3[[4__2047 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[3__2048  (.D(n13424), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[3] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_3[[3__2048 .GSR = "ENABLED";
    LUT4 i9060_2_lut (.A(\recBuf[5] [4]), .B(n15), .Z(bufferL1_10__4__N_198)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9060_2_lut.init = 16'h2222;
    FD1P3DX \bufferL2_3[[1__2050  (.D(n6332), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[3] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_3[[1__2050 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[0__2051  (.D(n13390), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[3] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_3[[0__2051 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[6__2053  (.D(n14246), .SP(sysclk_c_enable_58), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[2] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_2[[6__2053 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[4__2055  (.D(n13508), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[2] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_2[[4__2055 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[3__2056  (.D(n14200), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[2] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_2[[3__2056 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[2__2057  (.D(n11383), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[2] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_2[[2__2057 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[1__2058  (.D(n13393), .SP(sysclk_c_enable_73), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[2] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_2[[1__2058 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[0__2059  (.D(n13432), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[2] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_2[[0__2059 .GSR = "ENABLED";
    LUT4 i9339_3_lut_4_lut (.A(recCte[2]), .B(n14236), .C(n14242), .D(rxRecv[5]), 
         .Z(n735[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i9339_3_lut_4_lut.init = 16'hf2f0;
    FD1P3BX \bufferL2_1[[5__2062  (.D(n6400), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .PD(n14254), .Q(\bufferL2[1] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_1[[5__2062 .GSR = "ENABLED";
    LUT4 mux_1520_Mux_3_i10_4_lut (.A(n13614), .B(n5167[83]), .C(stm[1]), 
         .D(stm[0]), .Z(n10_adj_1731)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[28:31])
    defparam mux_1520_Mux_3_i10_4_lut.init = 16'hfaca;
    FD1P3DX \bufferL2_1[[3__2064  (.D(n11395), .SP(sysclk_c_enable_65), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[1] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_1[[3__2064 .GSR = "ENABLED";
    FD1P3DX \bufferL2_1[[2__2065  (.D(n6370), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[1] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_1[[2__2065 .GSR = "ENABLED";
    FD1P3DX \bufferL2_1[[1__2066  (.D(n6360), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[1] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_1[[1__2066 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[6__2069  (.D(n6400), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[0] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_0[[6__2069 .GSR = "ENABLED";
    FD1P3BX \bufferL2_0[[5__2070  (.D(n6332), .SP(sysclk_c_enable_72), .CK(sysclk_c), 
            .PD(n14254), .Q(\bufferL2[0] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_0[[5__2070 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[3__2072  (.D(n13493), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[0] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_0[[3__2072 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[2__2073  (.D(n13495), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[0] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_0[[2__2073 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[1__2074  (.D(n13494), .SP(sysclk_c_enable_72), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL2[0] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_0[[1__2074 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[0__2075  (.D(n6312), .SP(sysclk_c_enable_73), .CK(sysclk_c), 
            .CD(n14254), .Q(\bufferL2[0] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL2_0[[0__2075 .GSR = "ENABLED";
    FD1S3DX lns_2076 (.D(lns_N_1588), .CK(sysclk_c), .CD(n14254), .Q(lns)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam lns_2076.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i0 (.D(rxConv[0]), .SP(sysclk_c_enable_131), .CK(sysclk_c), 
            .Q(preAddress[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i0.GSR = "ENABLED";
    FD1S3DX \recBuf_5[[7__2142  (.D(recBuf_12__7__N_75[47]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[5] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[7__2142 .GSR = "ENABLED";
    LUT4 i11699_3_lut (.A(n13988), .B(n13591), .C(stm[2]), .Z(n13592)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11699_3_lut.init = 16'hcaca;
    LUT4 mux_3237_i26_3_lut (.A(\bufferL1[0] [2]), .B(\bufferL2[3] [1]), 
         .C(lns), .Z(n5167[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i26_3_lut.init = 16'hcaca;
    FD1S3DX \recBuf_5[[6__2143  (.D(recBuf_12__7__N_75[46]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[5] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[6__2143 .GSR = "ENABLED";
    FD1S3BX \recBuf_5[[5__2144  (.D(recBuf_12__7__N_75[45]), .CK(sysclk_c), 
            .PD(n14254), .Q(\recBuf[5] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[5__2144 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[4__2145  (.D(recBuf_12__7__N_75[44]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[5] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[4__2145 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[3__2146  (.D(recBuf_12__7__N_75[43]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[5] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[3__2146 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[2__2147  (.D(recBuf_12__7__N_75[42]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[5] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[2__2147 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[1__2148  (.D(recBuf_12__7__N_75[41]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[5] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[1__2148 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[0__2149  (.D(recBuf_12__7__N_75[40]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[5] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_5[[0__2149 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[7__2150  (.D(recBuf_12__7__N_75[39]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[4] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[7__2150 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[6__2151  (.D(recBuf_12__7__N_75[38]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[4] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[6__2151 .GSR = "ENABLED";
    FD1S3BX \recBuf_4[[5__2152  (.D(recBuf_12__7__N_75[37]), .CK(sysclk_c), 
            .PD(n14254), .Q(\recBuf[4] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[5__2152 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[4__2153  (.D(recBuf_12__7__N_75[36]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[4] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[4__2153 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[3__2154  (.D(recBuf_12__7__N_75[35]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[4] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[3__2154 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[2__2155  (.D(recBuf_12__7__N_75[34]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[4] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[2__2155 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[1__2156  (.D(recBuf_12__7__N_75[33]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[4] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[1__2156 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[0__2157  (.D(recBuf_12__7__N_75[32]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[4] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_4[[0__2157 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[7__2158  (.D(recBuf_12__7__N_75[31]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[3] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[7__2158 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[6__2159  (.D(recBuf_12__7__N_75[30]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[3] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[6__2159 .GSR = "ENABLED";
    FD1S3BX \recBuf_3[[5__2160  (.D(recBuf_12__7__N_75[29]), .CK(sysclk_c), 
            .PD(n14254), .Q(\recBuf[3] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[5__2160 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[4__2161  (.D(recBuf_12__7__N_75[28]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[3] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[4__2161 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[3__2162  (.D(recBuf_12__7__N_75[27]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[3] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[3__2162 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[2__2163  (.D(recBuf_12__7__N_75[26]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[3] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[2__2163 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[1__2164  (.D(recBuf_12__7__N_75[25]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[3] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[1__2164 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[0__2165  (.D(recBuf_12__7__N_75[24]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[3] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_3[[0__2165 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[7__2166  (.D(recBuf_12__7__N_75[23]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[2] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[7__2166 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[6__2167  (.D(recBuf_12__7__N_75[22]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[2] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[6__2167 .GSR = "ENABLED";
    FD1S3BX \recBuf_2[[5__2168  (.D(recBuf_12__7__N_75[21]), .CK(sysclk_c), 
            .PD(n14254), .Q(\recBuf[2] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[5__2168 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[4__2169  (.D(recBuf_12__7__N_75[20]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[2] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[4__2169 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[3__2170  (.D(recBuf_12__7__N_75[19]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[2] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[3__2170 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[2__2171  (.D(recBuf_12__7__N_75[18]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[2] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[2__2171 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[1__2172  (.D(recBuf_12__7__N_75[17]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[2] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[1__2172 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[0__2173  (.D(recBuf_12__7__N_75[16]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[2] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_2[[0__2173 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[7__2174  (.D(recBuf_12__7__N_75[15]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[1] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[7__2174 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[6__2175  (.D(recBuf_12__7__N_75[14]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[1] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[6__2175 .GSR = "ENABLED";
    FD1S3BX \recBuf_1[[5__2176  (.D(recBuf_12__7__N_75[13]), .CK(sysclk_c), 
            .PD(n14254), .Q(\recBuf[1] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[5__2176 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[4__2177  (.D(recBuf_12__7__N_75[12]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[1] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[4__2177 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[3__2178  (.D(recBuf_12__7__N_75[11]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[1] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[3__2178 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[2__2179  (.D(recBuf_12__7__N_75[10]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[1] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[2__2179 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[1__2180  (.D(recBuf_12__7__N_75[9]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[1] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[1__2180 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[0__2181  (.D(recBuf_12__7__N_75[8]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[1] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_1[[0__2181 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[7__2182  (.D(recBuf_12__7__N_75[7]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[0] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[7__2182 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[6__2183  (.D(recBuf_12__7__N_75[6]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[0] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[6__2183 .GSR = "ENABLED";
    FD1S3BX \recBuf_0[[5__2184  (.D(recBuf_12__7__N_75[5]), .CK(sysclk_c), 
            .PD(n14254), .Q(\recBuf[0] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[5__2184 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[4__2185  (.D(recBuf_12__7__N_75[4]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[0] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[4__2185 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[3__2186  (.D(recBuf_12__7__N_75[3]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[0] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[3__2186 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[2__2187  (.D(recBuf_12__7__N_75[2]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[0] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[2__2187 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[1__2188  (.D(recBuf_12__7__N_75[1]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[0] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[1__2188 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[0__2189  (.D(recBuf_12__7__N_75[0]), .CK(sysclk_c), 
            .CD(n14254), .Q(\recBuf[0] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \recBuf_0[[0__2189 .GSR = "ENABLED";
    FD1S3DX flag_2190 (.D(flag_N_1578), .CK(sysclk_c), .CD(n14254), .Q(flag)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam flag_2190.GSR = "ENABLED";
    FD1P3DX led_i1 (.D(led_7__N_5[0]), .SP(sysclk_c_enable_124), .CK(sysclk_c), 
            .CD(n14254), .Q(led_c_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam led_i1.GSR = "ENABLED";
    FD1S3DX cmd_i0 (.D(cmd_2__N_1071[0]), .CK(sysclk_c), .CD(n14254), 
            .Q(cmd[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam cmd_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_259 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[6]), .Z(n13461)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_259.init = 16'h0200;
    LUT4 i5422_2_lut_rep_183_4_lut (.A(recCte[4]), .B(recCte[3]), .C(recCte[2]), 
         .D(n15), .Z(n14220)) /* synthesis lut_function=(A+(B (C+!(D))+!B !(D))) */ ;
    defparam i5422_2_lut_rep_183_4_lut.init = 16'heaff;
    LUT4 i1_2_lut_rep_206 (.A(recCte[0]), .B(recCte[2]), .Z(n14243)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_206.init = 16'heeee;
    LUT4 i11929_2_lut_rep_194_3_lut (.A(recCte[0]), .B(recCte[2]), .C(recCte[3]), 
         .Z(n14231)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i11929_2_lut_rep_194_3_lut.init = 16'h0101;
    LUT4 mux_3237_i84_3_lut (.A(\bufferL1[10] [3]), .B(\bufferL2[10] [3]), 
         .C(lns), .Z(n5167[83])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i84_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_260 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[4]), .Z(n13460)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_260.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_261 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[3]), .Z(n13458)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_261.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_262 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[2]), .Z(n13459)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_262.init = 16'h0200;
    LUT4 rxRecv_4__bdd_4_lut_12164 (.A(rxRecv[4]), .B(n11232), .C(recBuf_12__7__N_1283), 
         .D(n8758), .Z(recBuf_12__7__N_75[20])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_4__bdd_4_lut_12164.init = 16'hf088;
    LUT4 n2663_bdd_3_lut_11992 (.A(n13615), .B(n13616), .C(stm[0]), .Z(n13937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2663_bdd_3_lut_11992.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_263 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[0]), .Z(n13434)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_263.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_264 (.A(recCte[0]), .B(recCte[2]), .C(recCte[3]), 
         .Z(n13415)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_264.init = 16'h1010;
    LUT4 n5255_bdd_4_lut (.A(n5167[3]), .B(lns), .C(\bufferL2[1] [3]), 
         .D(stm[0]), .Z(n13940)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam n5255_bdd_4_lut.init = 16'hc0aa;
    LUT4 mux_1532_i5_3_lut_4_lut (.A(n11411), .B(n14221), .C(n2589[4]), 
         .D(rxRecv[4]), .Z(txSend_7__N_66[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1532_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 preFullVal_7__bdd_4_lut (.A(preFullVal[7]), .B(n2883), .C(\recBuf[0] [0]), 
         .D(preAddress[7]), .Z(n14046)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A (B (C (D)))) */ ;
    defparam preFullVal_7__bdd_4_lut.init = 16'hc202;
    LUT4 i3917_2_lut_3_lut_4_lut (.A(rxRecv[0]), .B(rxRecv[4]), .C(rxRecv[2]), 
         .D(rxRecv[1]), .Z(rxConv[2])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(108[15:58])
    defparam i3917_2_lut_3_lut_4_lut.init = 16'hd2f0;
    LUT4 i11654_3_lut (.A(\bufferL2[2] [6]), .B(\bufferL2[3] [6]), .C(stm[0]), 
         .Z(n13547)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11654_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_265 (.A(recCte[2]), .B(n14236), 
         .C(n14242), .D(rxRecv[2]), .Z(n13437)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_265.init = 16'h0100;
    FD1P3DX recCte_3541__i4 (.D(n32[4]), .SP(recv), .CK(sysclk_c), .CD(n14254), 
            .Q(recCte[4]));   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam recCte_3541__i4.GSR = "ENABLED";
    LUT4 i3912_2_lut_rep_195_3_lut (.A(rxRecv[0]), .B(rxRecv[4]), .C(rxRecv[1]), 
         .Z(n14232)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(108[15:58])
    defparam i3912_2_lut_rep_195_3_lut.init = 16'h2020;
    LUT4 i9061_2_lut (.A(\recBuf[5] [3]), .B(n15), .Z(bufferL1_10__3__N_201)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9061_2_lut.init = 16'h2222;
    LUT4 i3910_2_lut_3_lut (.A(rxRecv[0]), .B(rxRecv[4]), .C(rxRecv[1]), 
         .Z(rxConv[1])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(108[15:58])
    defparam i3910_2_lut_3_lut.init = 16'hd2d2;
    LUT4 mux_1532_i4_3_lut_4_lut (.A(n11411), .B(n14221), .C(n2589[3]), 
         .D(rxRecv[3]), .Z(txSend_7__N_66[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1532_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9062_2_lut (.A(\recBuf[5] [2]), .B(n15), .Z(bufferL1_10__2__N_204)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9062_2_lut.init = 16'heeee;
    LUT4 i11653_3_lut (.A(\bufferL2[0] [6]), .B(\bufferL2[2] [6]), .C(stm[0]), 
         .Z(n13546)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11653_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(recCte[1]), .B(n13484), .C(n14234), 
         .D(recCte[0]), .Z(n8758)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hfcdc;
    LUT4 i9063_2_lut (.A(\recBuf[5] [1]), .B(n15), .Z(bufferL1_10__1__N_207)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9063_2_lut.init = 16'heeee;
    LUT4 i11763_3_lut (.A(n13654), .B(n13655), .C(stm[2]), .Z(n13656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11763_3_lut.init = 16'hcaca;
    LUT4 i9064_2_lut (.A(\recBuf[5] [0]), .B(n15), .Z(bufferL1_10__0__N_210)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9064_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut (.A(recCte[1]), .B(rxRecv[4]), .C(n10100), 
         .D(n14241), .Z(n734[4])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i9005_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [4]), 
         .Z(recBuf_12__7__N_1259)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9005_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i11962_3_lut_4_lut_4_lut (.A(recCte[1]), .B(n14234), .C(recCte[3]), 
         .D(recCte[0]), .Z(n11232)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i11962_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_4_lut_4_lut_adj_266 (.A(recCte[1]), .B(rxRecv[7]), .C(n10100), 
         .D(n14241), .Z(n734[7])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_4_lut_4_lut_adj_266.init = 16'h4000;
    LUT4 i9065_2_lut (.A(\recBuf[4] [7]), .B(n15), .Z(bufferL1_9__7__N_213)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9065_2_lut.init = 16'h2222;
    LUT4 i9196_4_lut (.A(preFullVal[9]), .B(cmd[1]), .C(n1949), .D(n14216), 
         .Z(n6700)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9196_4_lut.init = 16'h2303;
    LUT4 mux_1532_i3_3_lut_4_lut (.A(n11411), .B(n14221), .C(n2589[2]), 
         .D(rxRecv[2]), .Z(txSend_7__N_66[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1532_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut_4_lut (.A(recCte[1]), .B(n14230), .C(n14242), .D(rxRecv[5]), 
         .Z(n738[5])) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_4_lut_4_lut.init = 16'hf4f0;
    LUT4 i1_2_lut_4_lut_4_lut_adj_267 (.A(recCte[1]), .B(rxRecv[3]), .C(n10100), 
         .D(n14241), .Z(n734[3])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_4_lut_4_lut_adj_267.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_268 (.A(recCte[1]), .B(rxRecv[6]), .C(n10100), 
         .D(n14241), .Z(n734[6])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_4_lut_4_lut_adj_268.init = 16'h4000;
    LUT4 mux_3237_i47_3_lut (.A(\bufferL1[5] [6]), .B(\bufferL2[5] [6]), 
         .C(lns), .Z(n5167[46])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i47_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_4_lut_adj_269 (.A(recCte[1]), .B(rxRecv[2]), .C(n10100), 
         .D(n14241), .Z(n734[2])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_4_lut_4_lut_adj_269.init = 16'h4000;
    LUT4 i9066_2_lut (.A(\recBuf[4] [6]), .B(n15), .Z(bufferL1_9__6__N_216)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9066_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut_adj_270 (.A(recCte[1]), .B(rxRecv[1]), .C(n10100), 
         .D(n14241), .Z(n734[1])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_4_lut_4_lut_adj_270.init = 16'h4000;
    LUT4 i9044_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [5]), 
         .Z(recBuf_12__7__N_1298)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9044_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i9067_2_lut (.A(\recBuf[4] [5]), .B(n15), .Z(bufferL1_9__5__N_219)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9067_2_lut.init = 16'heeee;
    LUT4 i9161_3_lut_4_lut (.A(n14242), .B(n15), .C(n12721), .D(recCte[3]), 
         .Z(n32[3])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9161_3_lut_4_lut.init = 16'h0440;
    LUT4 rxRecv_0__bdd_4_lut (.A(rxRecv[0]), .B(n11232), .C(recBuf_12__7__N_1287), 
         .D(n8758), .Z(recBuf_12__7__N_75[16])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_0__bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_4_lut_4_lut_adj_271 (.A(recCte[1]), .B(rxRecv[0]), .C(n10100), 
         .D(n14241), .Z(n734[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_4_lut_4_lut_adj_271.init = 16'h4000;
    PFUMX i12125 (.BLUT(n14121), .ALUT(n14120), .C0(n2883), .Z(n14122));
    LUT4 i9068_2_lut (.A(\recBuf[4] [4]), .B(n15), .Z(bufferL1_9__4__N_222)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9068_2_lut.init = 16'h2222;
    LUT4 i9069_2_lut (.A(\recBuf[4] [3]), .B(n15), .Z(bufferL1_9__3__N_225)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9069_2_lut.init = 16'heeee;
    LUT4 i9070_2_lut (.A(\recBuf[4] [2]), .B(n15), .Z(bufferL1_9__2__N_228)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9070_2_lut.init = 16'heeee;
    LUT4 mux_1532_i2_3_lut_4_lut (.A(n11411), .B(n14221), .C(n2589[1]), 
         .D(rxRecv[1]), .Z(txSend_7__N_66[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1532_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_207 (.A(recCte[3]), .B(recCte[2]), .Z(n14244)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_rep_207.init = 16'h2222;
    LUT4 i9133_2_lut (.A(\bufferL2[4] [6]), .B(lns), .Z(n5167[38])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9133_2_lut.init = 16'h8888;
    LUT4 i9071_2_lut (.A(\recBuf[4] [1]), .B(n15), .Z(bufferL1_9__1__N_231)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9071_2_lut.init = 16'heeee;
    LUT4 rxRecv_3__bdd_4_lut_12157 (.A(rxRecv[3]), .B(n175), .C(recBuf_12__7__N_1292), 
         .D(n8760), .Z(recBuf_12__7__N_75[11])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_3__bdd_4_lut_12157.init = 16'hf088;
    LUT4 rxRecv_4__bdd_4_lut_12158 (.A(rxRecv[4]), .B(n175), .C(recBuf_12__7__N_1291), 
         .D(n8760), .Z(recBuf_12__7__N_75[12])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_4__bdd_4_lut_12158.init = 16'hf088;
    LUT4 i1_3_lut_adj_272 (.A(cmd[1]), .B(n2789), .C(n14122), .Z(n6690)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_adj_272.init = 16'h5151;
    LUT4 i2_3_lut_4_lut_adj_273 (.A(recCte[3]), .B(recCte[2]), .C(n14210), 
         .D(recCte[0]), .Z(sysclk_c_enable_111)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i2_3_lut_4_lut_adj_273.init = 16'h2000;
    LUT4 i1_2_lut_rep_208 (.A(recCte[1]), .B(recCte[0]), .Z(n14245)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_rep_208.init = 16'h4444;
    LUT4 mux_3237_i63_3_lut (.A(\bufferL1[7] [6]), .B(\bufferL2[7] [6]), 
         .C(lns), .Z(n5167[62])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i63_3_lut.init = 16'hcaca;
    LUT4 mux_3237_i55_3_lut (.A(\bufferL1[6] [6]), .B(\bufferL2[6] [6]), 
         .C(lns), .Z(n5167[54])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i55_3_lut.init = 16'hcaca;
    PFUMX i11743 (.BLUT(n5167[1]), .ALUT(n5167[9]), .C0(stm[0]), .Z(n13636));
    LUT4 i9072_2_lut (.A(\recBuf[4] [0]), .B(n15), .Z(bufferL1_9__0__N_234)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9072_2_lut.init = 16'h2222;
    FD1P3DX recCte_3541__i3 (.D(n32[3]), .SP(recv), .CK(sysclk_c), .CD(n14254), 
            .Q(recCte[3]));   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam recCte_3541__i3.GSR = "ENABLED";
    FD1P3DX recCte_3541__i2 (.D(n32[2]), .SP(recv), .CK(sysclk_c), .CD(n14254), 
            .Q(recCte[2]));   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam recCte_3541__i2.GSR = "ENABLED";
    FD1P3DX recCte_3541__i1 (.D(n32[1]), .SP(recv), .CK(sysclk_c), .CD(n14254), 
            .Q(recCte[1]));   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam recCte_3541__i1.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i0 (.D(rxConv[0]), .SP(sysclk_c_enable_111), .CK(sysclk_c), 
            .Q(preFullVal[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_191_3_lut (.A(recCte[1]), .B(recCte[0]), .C(recCte[2]), 
         .Z(n14228)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_rep_191_3_lut.init = 16'h4040;
    LUT4 i9507_2_lut_rep_184 (.A(stm_7__N_1424), .B(txAct), .Z(n14221)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9507_2_lut_rep_184.init = 16'heeee;
    LUT4 i9073_2_lut (.A(\recBuf[3] [7]), .B(n15), .Z(bufferL1_8__7__N_237)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9073_2_lut.init = 16'h2222;
    LUT4 mux_3237_i75_3_lut (.A(\bufferL1[9] [2]), .B(\bufferL2[9] [2]), 
         .C(lns), .Z(n5167[74])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i75_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_274 (.A(recCte[1]), .B(recCte[0]), .C(recCte[3]), 
         .Z(n4)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_3_lut_adj_274.init = 16'hf4f4;
    LUT4 i1_4_lut_adj_275 (.A(cmd[1]), .B(\recBuf[0] [0]), .C(n6), .D(n2789), 
         .Z(n6548)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_4_lut_adj_275.init = 16'hbaaa;
    LUT4 i2_2_lut (.A(\recBuf[0] [5]), .B(n2883), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    PFUMX mux_1407_i14 (.BLUT(n738[5]), .ALUT(recBuf_12__7__N_1290), .C0(n8760), 
          .Z(recBuf_12__7__N_75[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i2_1_lut_rep_209 (.A(cmd[1]), .Z(n14246)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut_rep_209.init = 16'h5555;
    LUT4 i9120_3_lut_3_lut (.A(cmd[1]), .B(n1949), .C(n2607[0]), .Z(n6360)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i9120_3_lut_3_lut.init = 16'h5151;
    PFUMX i12114 (.BLUT(n14112), .ALUT(n14111), .C0(n2883), .Z(n14113));
    LUT4 i9119_3_lut_3_lut (.A(cmd[1]), .B(n1949), .C(n2817[0]), .Z(n6370)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i9119_3_lut_3_lut.init = 16'h5151;
    LUT4 i9074_2_lut (.A(\recBuf[3] [6]), .B(n15), .Z(bufferL1_8__6__N_240)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9074_2_lut.init = 16'heeee;
    LUT4 i7639_3_lut_4_lut (.A(n11411), .B(n14221), .C(txDone), .D(tick), 
         .Z(n6007)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)))) */ ;
    defparam i7639_3_lut_4_lut.init = 16'hef11;
    LUT4 i9323_2_lut_rep_210 (.A(\recBuf[0] [5]), .B(\recBuf[0] [4]), .Z(n14247)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i9323_2_lut_rep_210.init = 16'h8888;
    PFUMX i11993 (.BLUT(n13938), .ALUT(n13937), .C0(stm[1]), .Z(n13939));
    LUT4 i3454_2_lut_rep_211 (.A(\recBuf[0] [5]), .B(\recBuf[0] [0]), .Z(n14248)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i3454_2_lut_rep_211.init = 16'heeee;
    LUT4 mux_3237_i67_3_lut (.A(\bufferL1[8] [2]), .B(\bufferL2[8] [2]), 
         .C(lns), .Z(n5167[66])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i67_3_lut.init = 16'hcaca;
    LUT4 i5_4_lut (.A(rxRecv[5]), .B(n10_adj_1732), .C(rxRecv[2]), .D(n13569), 
         .Z(n15)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut.init = 16'hefff;
    LUT4 i9075_2_lut (.A(\recBuf[3] [5]), .B(n15), .Z(bufferL1_8__5__N_243)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9075_2_lut.init = 16'h2222;
    LUT4 i5315_3_lut_rep_175_4_lut (.A(\recBuf[0] [5]), .B(\recBuf[0] [0]), 
         .C(n2883), .D(\recBuf[0] [2]), .Z(n14212)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i5315_3_lut_rep_175_4_lut.init = 16'h1f10;
    LUT4 i4_4_lut_adj_276 (.A(rxRecv[7]), .B(rxRecv[6]), .C(rxRecv[4]), 
         .D(rxRecv[1]), .Z(n10_adj_1732)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_276.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_277 (.A(stm_7__N_1424), .B(txAct), .C(n14222), 
         .D(n11411), .Z(sysclk_c_enable_138)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_277.init = 16'hf0f1;
    PFUMX i11746 (.BLUT(n5167[49]), .ALUT(n5167[57]), .C0(stm[0]), .Z(n13639));
    LUT4 i11676_2_lut (.A(rxRecv[3]), .B(rxRecv[0]), .Z(n13569)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11676_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_278 (.A(stm[5]), .B(stm[7]), .C(stm[6]), .D(n6_adj_1733), 
         .Z(n11411)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_278.init = 16'hfffe;
    LUT4 i1_3_lut_adj_279 (.A(stm[2]), .B(stm[4]), .C(stm[3]), .Z(n6_adj_1733)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_279.init = 16'hecec;
    LUT4 i7_4_lut (.A(stm[2]), .B(n14_adj_1734), .C(n10_adj_1735), .D(stm[7]), 
         .Z(stm_7__N_1424)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_165 (.A(cmd[1]), .B(n1949), .Z(n14202)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_165.init = 16'hbbbb;
    LUT4 i9473_2_lut_rep_212 (.A(\recBuf[0] [1]), .B(\recBuf[0] [2]), .Z(n14249)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9473_2_lut_rep_212.init = 16'heeee;
    LUT4 mux_1343_i1_3_lut_4_lut (.A(\recBuf[0] [1]), .B(\recBuf[0] [2]), 
         .C(n14537), .D(n2041[0]), .Z(n2047[0])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam mux_1343_i1_3_lut_4_lut.init = 16'hf101;
    LUT4 i11701_4_lut (.A(\bufferL1[10] [2]), .B(lns), .C(stm[0]), .D(\bufferL2[10] [2]), 
         .Z(n13594)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D)))) */ ;
    defparam i11701_4_lut.init = 16'hcec2;
    LUT4 mux_3237_i57_3_lut (.A(\bufferL1[7] [0]), .B(\bufferL2[7] [0]), 
         .C(lns), .Z(n5167[56])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i57_3_lut.init = 16'hcaca;
    LUT4 i9002_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [7]), 
         .Z(recBuf_12__7__N_1256)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9002_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9076_2_lut (.A(\recBuf[3] [4]), .B(n15), .Z(bufferL1_8__4__N_246)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9076_2_lut.init = 16'h2222;
    LUT4 i9077_2_lut (.A(\recBuf[3] [3]), .B(n15), .Z(bufferL1_8__3__N_249)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9077_2_lut.init = 16'heeee;
    LUT4 mux_3237_i49_3_lut (.A(\bufferL1[6] [0]), .B(\bufferL2[6] [0]), 
         .C(lns), .Z(n5167[48])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i49_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut (.A(stm[0]), .B(stm[3]), .C(stm[4]), .D(stm[6]), .Z(n14_adj_1734)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    PFUMX i11750 (.BLUT(n5167[2]), .ALUT(n5167[10]), .C0(stm[0]), .Z(n13643));
    LUT4 i9078_2_lut (.A(\recBuf[3] [2]), .B(n15), .Z(bufferL1_8__2__N_252)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9078_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_2_lut (.A(\recBuf[0] [5]), .B(n8320), .Z(n12259)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i9146_3_lut (.A(n14283), .B(cmd[1]), .C(n2789), .Z(n6682)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9146_3_lut.init = 16'hecec;
    LUT4 i1_2_lut_rep_163_3_lut_4_lut (.A(n14537), .B(\recBuf[0] [4]), .C(n1949), 
         .D(cmd[1]), .Z(n14200)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_163_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_4_lut_4_lut (.A(\recBuf[0] [2]), .B(n10), .C(n37), .D(\recBuf[0] [5]), 
         .Z(n30)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4454;
    LUT4 mux_3237_i41_3_lut (.A(\bufferL1[5] [0]), .B(\bufferL2[5] [0]), 
         .C(lns), .Z(n5167[40])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i41_3_lut.init = 16'hcaca;
    LUT4 n14109_bdd_4_lut_then_3_lut_4_lut (.A(cmd[1]), .B(n2789), .C(n2883), 
         .D(devOut[1]), .Z(n14267)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam n14109_bdd_4_lut_then_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut_rep_213 (.A(cmd[0]), .B(cmd[1]), .C(highRead), .Z(n14250)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_3_lut_rep_213.init = 16'ha2a2;
    PFUMX i11744 (.BLUT(n5167[17]), .ALUT(n5167[25]), .C0(stm[0]), .Z(n13637));
    LUT4 i9079_2_lut (.A(\recBuf[3] [1]), .B(n15), .Z(bufferL1_8__1__N_255)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9079_2_lut.init = 16'h2222;
    PFUMX i11751 (.BLUT(n5167[18]), .ALUT(n5167[26]), .C0(stm[0]), .Z(n13644));
    FD1P3AX preFullVal_i0_i31 (.D(rxConv[3]), .SP(sysclk_c_enable_84), .CK(sysclk_c), 
            .Q(preFullVal[31])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i31.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_280 (.A(cmd[1]), .B(n1949), .C(preFullVal[12]), 
         .D(n14216), .Z(n6708)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_2_lut_3_lut_4_lut_adj_280.init = 16'h4000;
    LUT4 i11901_2_lut_2_lut_4_lut (.A(cmd[0]), .B(cmd[1]), .C(highRead), 
         .D(n14199), .Z(sysclk_c_enable_73)) /* synthesis lut_function=(!((B ((D)+!C)+!B (D))+!A)) */ ;
    defparam i11901_2_lut_2_lut_4_lut.init = 16'h00a2;
    LUT4 i9137_2_lut (.A(\bufferL2[4] [0]), .B(lns), .Z(n5167[32])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9137_2_lut.init = 16'h8888;
    LUT4 mux_3237_i18_3_lut (.A(\bufferL1[3] [2]), .B(\bufferL2[2] [1]), 
         .C(lns), .Z(n5167[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i18_3_lut.init = 16'hcaca;
    PFUMX i11753 (.BLUT(n5167[50]), .ALUT(n5167[58]), .C0(stm[0]), .Z(n13646));
    LUT4 i11899_2_lut_2_lut_4_lut (.A(cmd[0]), .B(cmd[1]), .C(highRead), 
         .D(n14198), .Z(sysclk_c_enable_72)) /* synthesis lut_function=(!((B ((D)+!C)+!B (D))+!A)) */ ;
    defparam i11899_2_lut_2_lut_4_lut.init = 16'h00a2;
    LUT4 i9154_3_lut_4_lut (.A(n14537), .B(\recBuf[0] [4]), .C(cmd[1]), 
         .D(n1949), .Z(n6312)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i9154_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i9080_2_lut (.A(\recBuf[3] [0]), .B(n15), .Z(bufferL1_8__0__N_258)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9080_2_lut.init = 16'h2222;
    PFUMX i11760 (.BLUT(n5167[52]), .ALUT(n5167[60]), .C0(stm[0]), .Z(n13653));
    PFUMX mux_1407_i22 (.BLUT(n737[5]), .ALUT(recBuf_12__7__N_1282), .C0(n8758), 
          .Z(recBuf_12__7__N_75[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i1_3_lut_adj_281 (.A(cmd[1]), .B(n2789), .C(n14113), .Z(n6666)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_adj_281.init = 16'h5151;
    LUT4 rxRecv_6__bdd_4_lut_12159 (.A(rxRecv[6]), .B(n175), .C(recBuf_12__7__N_1289), 
         .D(n8760), .Z(recBuf_12__7__N_75[14])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_6__bdd_4_lut_12159.init = 16'hf088;
    LUT4 i11933_2_lut_rep_214 (.A(\recBuf[0] [2]), .B(\recBuf[0] [0]), .Z(n14251)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i11933_2_lut_rep_214.init = 16'h1111;
    LUT4 mux_1317_i1_4_lut_4_lut (.A(\recBuf[0] [2]), .B(\recBuf[0] [0]), 
         .C(n2883), .D(preAddress[4]), .Z(n2012[0])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam mux_1317_i1_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i9200_3_lut (.A(n14280), .B(cmd[1]), .C(n2789), .Z(n6720)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9200_3_lut.init = 16'h2323;
    LUT4 i9081_2_lut (.A(\recBuf[2] [7]), .B(n15), .Z(bufferL1_7__7__N_261)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9081_2_lut.init = 16'h2222;
    LUT4 i9082_2_lut (.A(\recBuf[2] [6]), .B(n15), .Z(bufferL1_7__6__N_264)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9082_2_lut.init = 16'heeee;
    LUT4 i9083_2_lut (.A(\recBuf[2] [5]), .B(n15), .Z(bufferL1_7__5__N_267)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9083_2_lut.init = 16'heeee;
    LUT4 i9084_2_lut (.A(\recBuf[2] [4]), .B(n15), .Z(bufferL1_7__4__N_270)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9084_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_282 (.A(cmd[1]), .B(n1949), .C(preFullVal[31]), 
         .D(n14216), .Z(n13475)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_2_lut_3_lut_4_lut_adj_282.init = 16'h4000;
    LUT4 i9085_2_lut (.A(\recBuf[2] [3]), .B(n15), .Z(bufferL1_7__3__N_273)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9085_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_283 (.A(cmd[1]), .B(n1949), .C(n14537), .D(n1831[0]), 
         .Z(n13388)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i2_3_lut_4_lut_adj_283.init = 16'h4000;
    LUT4 i9086_2_lut (.A(\recBuf[2] [2]), .B(n15), .Z(bufferL1_7__2__N_276)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9086_2_lut.init = 16'heeee;
    LUT4 i9087_2_lut (.A(\recBuf[2] [1]), .B(n15), .Z(bufferL1_7__1__N_279)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9087_2_lut.init = 16'heeee;
    PFUMX i12168 (.BLUT(n14246), .ALUT(n14258), .C0(n2789), .Z(n14259));
    LUT4 rxRecv_7__bdd_4_lut_12160 (.A(rxRecv[7]), .B(n175), .C(recBuf_12__7__N_1288), 
         .D(n8760), .Z(recBuf_12__7__N_75[15])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_7__bdd_4_lut_12160.init = 16'hf088;
    LUT4 i1_2_lut_3_lut_adj_284 (.A(cmd[1]), .B(n1949), .C(n2817[0]), 
         .Z(n13393)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_2_lut_3_lut_adj_284.init = 16'h4040;
    LUT4 i9088_2_lut (.A(\recBuf[2] [0]), .B(n15), .Z(bufferL1_7__0__N_282)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9088_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_285 (.A(cmd[1]), .B(n1949), .C(preAddress[7]), 
         .D(n14216), .Z(n13477)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_2_lut_3_lut_4_lut_adj_285.init = 16'h4000;
    LUT4 i5919_1_lut_rep_215 (.A(lns), .Z(n14252)) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i5919_1_lut_rep_215.init = 16'h5555;
    LUT4 i1_4_lut_rep_162_then_4_lut (.A(n14204), .B(n13378), .C(\recBuf[0] [5]), 
         .D(\recBuf[0] [4]), .Z(n14261)) /* synthesis lut_function=(!((B (C (D)+!C !(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_4_lut_rep_162_then_4_lut.init = 16'h2aa2;
    LUT4 mux_3237_i61_3_lut (.A(\bufferL1[7] [4]), .B(\bufferL2[7] [4]), 
         .C(lns), .Z(n5167[60])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i61_3_lut.init = 16'hcaca;
    LUT4 i56_3_lut (.A(\recBuf[0] [4]), .B(\recBuf[0] [1]), .C(\recBuf[0] [0]), 
         .Z(n37)) /* synthesis lut_function=(A (B)+!A !(B (C)+!B !(C))) */ ;
    defparam i56_3_lut.init = 16'h9c9c;
    LUT4 i9261_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[6]), .D(n13203), 
         .Z(n9617)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9261_4_lut_4_lut.init = 16'h0074;
    LUT4 \bufferL2_5[[6__bdd_4_lut_4_lut  (.A(lns), .B(stm[0]), .C(n5167[41]), 
         .D(\bufferL2[5] [6]), .Z(n14175)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam \bufferL2_5[[6__bdd_4_lut_4_lut .init = 16'hf3d1;
    LUT4 i9266_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[1]), .D(n13203), 
         .Z(n9627)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9266_4_lut_4_lut.init = 16'h0074;
    LUT4 i9263_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[4]), .D(n13203), 
         .Z(n9621)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9263_4_lut_4_lut.init = 16'h0074;
    LUT4 i9176_4_lut (.A(n1656[0]), .B(cmd[1]), .C(n1949), .D(n14537), 
         .Z(n6654)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9176_4_lut.init = 16'h2303;
    LUT4 i9089_2_lut (.A(\recBuf[1] [7]), .B(n15), .Z(bufferL1_6__7__N_285)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9089_2_lut.init = 16'h2222;
    LUT4 mux_1053_i1_3_lut (.A(preFullVal[30]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1656[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1053_i1_3_lut.init = 16'hcaca;
    LUT4 i11891_2_lut_rep_217 (.A(led_c_3_c), .B(rstOutCall), .Z(n14254)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(115[6:10])
    defparam i11891_2_lut_rep_217.init = 16'h1111;
    LUT4 i9090_2_lut (.A(\recBuf[1] [6]), .B(n15), .Z(bufferL1_6__6__N_288)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9090_2_lut.init = 16'heeee;
    LUT4 i9262_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[5]), .D(n13203), 
         .Z(n9619)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9262_4_lut_4_lut.init = 16'h0074;
    LUT4 i9091_2_lut (.A(\recBuf[1] [5]), .B(n15), .Z(bufferL1_6__5__N_291)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9091_2_lut.init = 16'heeee;
    PFUMX mux_1407_i30 (.BLUT(n736[5]), .ALUT(recBuf_12__7__N_1274), .C0(n8756), 
          .Z(recBuf_12__7__N_75[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 mux_3237_i53_3_lut (.A(\bufferL1[6] [4]), .B(\bufferL2[6] [4]), 
         .C(lns), .Z(n5167[52])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i53_3_lut.init = 16'hcaca;
    LUT4 i9264_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[3]), .D(n13203), 
         .Z(n9623)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9264_4_lut_4_lut.init = 16'h0074;
    LUT4 i9092_2_lut (.A(\recBuf[1] [4]), .B(n15), .Z(bufferL1_6__4__N_294)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9092_2_lut.init = 16'h2222;
    LUT4 master_i2c_scl_c_31_bdd_2_lut_12063_3_lut (.A(cmd[1]), .B(n2789), 
         .C(n13989), .Z(n13990)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam master_i2c_scl_c_31_bdd_2_lut_12063_3_lut.init = 16'h4040;
    LUT4 i19_3_lut (.A(\recBuf[0] [2]), .B(\recBuf[0] [5]), .C(n2883), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i19_3_lut.init = 16'hc5c5;
    PFUMX i11695 (.BLUT(n5167[32]), .ALUT(n5167[40]), .C0(stm[0]), .Z(n13588));
    LUT4 mux_3237_i45_3_lut (.A(\bufferL1[5] [4]), .B(\bufferL2[5] [4]), 
         .C(lns), .Z(n5167[44])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i45_3_lut.init = 16'hcaca;
    LUT4 n3879_bdd_2_lut_12049_3_lut (.A(cmd[1]), .B(n2789), .C(n13997), 
         .Z(n13998)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam n3879_bdd_2_lut_12049_3_lut.init = 16'hfbfb;
    LUT4 i9265_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[2]), .D(n13203), 
         .Z(n9625)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9265_4_lut_4_lut.init = 16'h0074;
    LUT4 master_i2c_scl_c_31_bdd_2_lut_12075_3_lut (.A(cmd[1]), .B(n2789), 
         .C(n14046), .Z(n14047)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam master_i2c_scl_c_31_bdd_2_lut_12075_3_lut.init = 16'h4040;
    LUT4 n2663_bdd_4_lut_12167_4_lut (.A(lns), .B(stm[0]), .C(n13982), 
         .D(\bufferL2[2] [0]), .Z(n14166)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam n2663_bdd_4_lut_12167_4_lut.init = 16'hf3d1;
    FD1P3AX preFullVal_i0_i30 (.D(rxConv[2]), .SP(sysclk_c_enable_84), .CK(sysclk_c), 
            .Q(preFullVal[30])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i30.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i29 (.D(rxConv[1]), .SP(sysclk_c_enable_84), .CK(sysclk_c), 
            .Q(preFullVal[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i29.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i28 (.D(rxConv[0]), .SP(sysclk_c_enable_84), .CK(sysclk_c), 
            .Q(preFullVal[28])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i28.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i27 (.D(rxConv[3]), .SP(sysclk_c_enable_88), .CK(sysclk_c), 
            .Q(preFullVal[27])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i27.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i26 (.D(rxConv[2]), .SP(sysclk_c_enable_88), .CK(sysclk_c), 
            .Q(preFullVal[26])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i26.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i25 (.D(rxConv[1]), .SP(sysclk_c_enable_88), .CK(sysclk_c), 
            .Q(preFullVal[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i25.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i24 (.D(rxConv[0]), .SP(sysclk_c_enable_88), .CK(sysclk_c), 
            .Q(preFullVal[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i24.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i23 (.D(rxConv[3]), .SP(sysclk_c_enable_92), .CK(sysclk_c), 
            .Q(preFullVal[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i23.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i22 (.D(rxConv[2]), .SP(sysclk_c_enable_92), .CK(sysclk_c), 
            .Q(preFullVal[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i22.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i21 (.D(rxConv[1]), .SP(sysclk_c_enable_92), .CK(sysclk_c), 
            .Q(preFullVal[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i21.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i20 (.D(rxConv[0]), .SP(sysclk_c_enable_92), .CK(sysclk_c), 
            .Q(preFullVal[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i20.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i19 (.D(rxConv[3]), .SP(sysclk_c_enable_96), .CK(sysclk_c), 
            .Q(preFullVal[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i19.GSR = "ENABLED";
    LUT4 i9093_2_lut (.A(\recBuf[1] [3]), .B(n15), .Z(bufferL1_6__3__N_297)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9093_2_lut.init = 16'heeee;
    FD1P3AX preFullVal_i0_i18 (.D(rxConv[2]), .SP(sysclk_c_enable_96), .CK(sysclk_c), 
            .Q(preFullVal[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i18.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i17 (.D(rxConv[1]), .SP(sysclk_c_enable_96), .CK(sysclk_c), 
            .Q(preFullVal[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i17.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i16 (.D(rxConv[0]), .SP(sysclk_c_enable_96), .CK(sysclk_c), 
            .Q(preFullVal[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i16.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i15 (.D(rxConv[3]), .SP(sysclk_c_enable_100), 
            .CK(sysclk_c), .Q(preFullVal[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i15.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i14 (.D(rxConv[2]), .SP(sysclk_c_enable_100), 
            .CK(sysclk_c), .Q(preFullVal[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i14.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i13 (.D(rxConv[1]), .SP(sysclk_c_enable_100), 
            .CK(sysclk_c), .Q(preFullVal[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i13.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i12 (.D(rxConv[0]), .SP(sysclk_c_enable_100), 
            .CK(sysclk_c), .Q(preFullVal[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i12.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i11 (.D(rxConv[3]), .SP(sysclk_c_enable_104), 
            .CK(sysclk_c), .Q(preFullVal[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i11.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i10 (.D(rxConv[2]), .SP(sysclk_c_enable_104), 
            .CK(sysclk_c), .Q(preFullVal[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i10.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i9 (.D(rxConv[1]), .SP(sysclk_c_enable_104), .CK(sysclk_c), 
            .Q(preFullVal[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i9.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i8 (.D(rxConv[0]), .SP(sysclk_c_enable_104), .CK(sysclk_c), 
            .Q(preFullVal[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i8.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i7 (.D(rxConv[3]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(preFullVal[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i7.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i6 (.D(rxConv[2]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(preFullVal[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i6.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i5 (.D(rxConv[1]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(preFullVal[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i5.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i4 (.D(rxConv[0]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(preFullVal[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i4.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i3 (.D(rxConv[3]), .SP(sysclk_c_enable_111), .CK(sysclk_c), 
            .Q(preFullVal[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i3.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i2 (.D(rxConv[2]), .SP(sysclk_c_enable_111), .CK(sysclk_c), 
            .Q(preFullVal[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i2.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i1 (.D(rxConv[1]), .SP(sysclk_c_enable_111), .CK(sysclk_c), 
            .Q(preFullVal[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preFullVal_i0_i1.GSR = "ENABLED";
    LUT4 i9521_2_lut_rep_178_3_lut (.A(stm_7__N_1424), .B(txAct), .C(n11411), 
         .Z(n14215)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9521_2_lut_rep_178_3_lut.init = 16'hfefe;
    LUT4 i9094_2_lut (.A(\recBuf[1] [2]), .B(n15), .Z(bufferL1_6__2__N_300)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9094_2_lut.init = 16'heeee;
    LUT4 \bufferL2_4[[4__bdd_4_lut_4_lut  (.A(lns), .B(stm[0]), .C(n5167[44]), 
         .D(\bufferL2[4] [4]), .Z(n14181)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam \bufferL2_4[[4__bdd_4_lut_4_lut .init = 16'hf3d1;
    LUT4 mux_3237_i59_3_lut (.A(\bufferL1[7] [2]), .B(\bufferL2[7] [2]), 
         .C(lns), .Z(n5167[58])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i59_3_lut.init = 16'hcaca;
    PFUMX i11696 (.BLUT(n5167[48]), .ALUT(n5167[56]), .C0(stm[0]), .Z(n13589));
    LUT4 mux_3237_i51_3_lut (.A(\bufferL1[6] [2]), .B(\bufferL2[6] [2]), 
         .C(lns), .Z(n5167[50])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i51_3_lut.init = 16'hcaca;
    LUT4 i9095_2_lut (.A(\recBuf[1] [1]), .B(n15), .Z(bufferL1_6__1__N_303)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9095_2_lut.init = 16'heeee;
    PFUMX mux_1407_i2 (.BLUT(n13436), .ALUT(recBuf_12__7__N_1302), .C0(n8750), 
          .Z(recBuf_12__7__N_75[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9096_2_lut (.A(\recBuf[1] [0]), .B(n15), .Z(bufferL1_6__0__N_306)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9096_2_lut.init = 16'heeee;
    LUT4 mux_3237_i43_3_lut (.A(\bufferL1[5] [2]), .B(\bufferL2[5] [2]), 
         .C(lns), .Z(n5167[42])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i43_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_286 (.A(\recBuf[0] [2]), .B(n14202), .C(n1691[0]), 
         .D(n14537), .Z(n13507)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_286.init = 16'hfcdd;
    LUT4 master_i2c_scl_c_31_bdd_2_lut_12107_3_lut (.A(cmd[1]), .B(n2789), 
         .C(n14102), .Z(n14103)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam master_i2c_scl_c_31_bdd_2_lut_12107_3_lut.init = 16'h4040;
    LUT4 i9455_3_lut_rep_168 (.A(n14536), .B(cmd[0]), .C(cmd[1]), .Z(n14205)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i9455_3_lut_rep_168.init = 16'hc8c8;
    LUT4 i2_3_lut_rep_171 (.A(n13345), .B(\recBuf[0] [1]), .C(\recBuf[0] [0]), 
         .Z(n14208)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(212[13:18])
    defparam i2_3_lut_rep_171.init = 16'hfefe;
    LUT4 \bufferL2_4[[2__bdd_4_lut_4_lut  (.A(lns), .B(stm[0]), .C(n5167[42]), 
         .D(\bufferL2[4] [2]), .Z(n14179)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam \bufferL2_4[[2__bdd_4_lut_4_lut .init = 16'hf3d1;
    LUT4 i9204_2_lut (.A(preFullVal[29]), .B(\recBuf[0] [4]), .Z(n1691[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i9204_2_lut.init = 16'h2222;
    PFUMX mux_1407_i3 (.BLUT(n13437), .ALUT(recBuf_12__7__N_1301), .C0(n8750), 
          .Z(recBuf_12__7__N_75[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 mux_1520_Mux_6_i7_4_lut_4_lut (.A(lns), .B(stm[2]), .C(n13598), 
         .D(n13548), .Z(n7_adj_1736)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_1520_Mux_6_i7_4_lut_4_lut.init = 16'hf3d1;
    LUT4 mux_3237_i27_3_lut (.A(\bufferL1[3] [2]), .B(\bufferL2[4] [2]), 
         .C(lns), .Z(n5167[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i27_3_lut.init = 16'hcaca;
    LUT4 i9260_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[7]), .D(n13203), 
         .Z(n9615)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9260_4_lut_4_lut.init = 16'h0074;
    PFUMX mux_1407_i4 (.BLUT(n13438), .ALUT(recBuf_12__7__N_1300), .C0(n8750), 
          .Z(recBuf_12__7__N_75[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    PFUMX i11704 (.BLUT(n5167[54]), .ALUT(n5167[62]), .C0(stm[0]), .Z(n13597));
    LUT4 i1_2_lut_adj_287 (.A(n15), .B(\recBuf[0] [7]), .Z(bufferL1_5__7__N_309)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(503[8:21])
    defparam i1_2_lut_adj_287.init = 16'h4444;
    LUT4 i9185_4_lut (.A(n1949), .B(cmd[1]), .C(n1726[0]), .D(n14537), 
         .Z(n6646)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9185_4_lut.init = 16'heccc;
    LUT4 master_i2c_scl_c_31_bdd_2_lut_11989_3_lut (.A(cmd[1]), .B(n2789), 
         .C(n13923), .Z(n13924)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam master_i2c_scl_c_31_bdd_2_lut_11989_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_adj_288 (.A(n15), .B(\recBuf[0] [6]), .Z(bufferL1_5__6__N_312)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(503[8:21])
    defparam i1_2_lut_adj_288.init = 16'heeee;
    LUT4 i9106_4_lut_4_lut (.A(lns), .B(n11411), .C(n2652[0]), .D(n13203), 
         .Z(n9595)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i9106_4_lut_4_lut.init = 16'h0074;
    PFUMX mux_1407_i5 (.BLUT(n13439), .ALUT(recBuf_12__7__N_1299), .C0(n8750), 
          .Z(recBuf_12__7__N_75[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    PFUMX i11703 (.BLUT(n5167[38]), .ALUT(n5167[46]), .C0(stm[0]), .Z(n13596));
    FD1S3DX cmd_i1 (.D(cmd_2__N_1071[1]), .CK(sysclk_c), .CD(n14254), 
            .Q(cmd[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam cmd_i1.GSR = "ENABLED";
    LUT4 mux_3237_i19_3_lut (.A(\bufferL1[0] [2]), .B(\bufferL2[2] [2]), 
         .C(lns), .Z(n5167[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i19_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_3_lut (.A(lns), .B(stm[0]), .C(\bufferL1[5] [7]), .Z(n12766)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 mux_1105_i1_3_lut (.A(preFullVal[28]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1726[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1105_i1_3_lut.init = 16'hcaca;
    PFUMX mux_1407_i6 (.BLUT(n739[5]), .ALUT(recBuf_12__7__N_1298), .C0(n8750), 
          .Z(recBuf_12__7__N_75[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9212_4_lut_4_lut (.A(stm[0]), .B(lns), .C(\bufferL2[10] [7]), 
         .D(\bufferL1[10] [7]), .Z(n9_adj_1737)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(581[7:17])
    defparam i9212_4_lut_4_lut.init = 16'h5140;
    LUT4 i9114_2_lut_4_lut (.A(n14536), .B(cmd[0]), .C(cmd[1]), .D(lns), 
         .Z(lns_N_1591)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i9114_2_lut_4_lut.init = 16'hffc8;
    LUT4 mux_1520_Mux_6_i10_4_lut_4_lut (.A(stm[0]), .B(stm[1]), .C(n5167[86]), 
         .D(n13629), .Z(n10_adj_1738)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(581[7:17])
    defparam mux_1520_Mux_6_i10_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_216 (.A(cmd[1]), .B(cmd[0]), .Z(n14253)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_2_lut_rep_216.init = 16'h4444;
    LUT4 i2_2_lut_adj_289 (.A(stm[1]), .B(stm[5]), .Z(n10_adj_1735)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_289.init = 16'h8888;
    LUT4 i9048_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [0]), 
         .Z(recBuf_12__7__N_1303)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9048_2_lut_2_lut_3_lut.init = 16'hb0b0;
    PFUMX mux_1407_i7 (.BLUT(n13440), .ALUT(recBuf_12__7__N_1297), .C0(n8750), 
          .Z(recBuf_12__7__N_75[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i10863_2_lut (.A(\bufferL2[1] [2]), .B(lns), .Z(n5167[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i10863_2_lut.init = 16'h8888;
    LUT4 i9040_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [1]), 
         .Z(recBuf_12__7__N_1294)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9040_2_lut_2_lut_3_lut.init = 16'hb0b0;
    PFUMX i11655 (.BLUT(n13546), .ALUT(n13547), .C0(stm[1]), .Z(n13548));
    PFUMX mux_1407_i8 (.BLUT(n13435), .ALUT(recBuf_12__7__N_1296), .C0(n8750), 
          .Z(recBuf_12__7__N_75[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    FD1P3DX led_i7 (.D(led_7__N_5[6]), .SP(sysclk_c_enable_124), .CK(sysclk_c), 
            .CD(n14254), .Q(led_c_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam led_i7.GSR = "ENABLED";
    LUT4 i9099_2_lut (.A(\recBuf[0] [5]), .B(n15), .Z(bufferL1_5__5__N_315)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9099_2_lut.init = 16'h2222;
    LUT4 i9186_4_lut (.A(preFullVal[27]), .B(cmd[1]), .C(n1949), .D(n14216), 
         .Z(n6642)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9186_4_lut.init = 16'h2303;
    PFUMX mux_1407_i33 (.BLUT(n13463), .ALUT(recBuf_12__7__N_1271), .C0(n8754), 
          .Z(recBuf_12__7__N_75[32])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9041_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [0]), 
         .Z(recBuf_12__7__N_1295)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9041_2_lut_2_lut_3_lut.init = 16'hb0b0;
    FD1P3DX led_i6 (.D(led_7__N_5[5]), .SP(sysclk_c_enable_124), .CK(sysclk_c), 
            .CD(n14254), .Q(led_c_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam led_i6.GSR = "ENABLED";
    FD1P3DX led_i5 (.D(led_7__N_5[4]), .SP(sysclk_c_enable_124), .CK(sysclk_c), 
            .CD(n14254), .Q(led_c_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam led_i5.GSR = "ENABLED";
    FD1P3DX led_i4 (.D(led_7__N_5[3]), .SP(sysclk_c_enable_124), .CK(sysclk_c), 
            .CD(n14254), .Q(n6149)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam led_i4.GSR = "ENABLED";
    FD1P3DX led_i3 (.D(led_7__N_5[2]), .SP(sysclk_c_enable_124), .CK(sysclk_c), 
            .CD(n14254), .Q(led_c_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam led_i3.GSR = "ENABLED";
    FD1P3DX led_i2 (.D(led_7__N_5[1]), .SP(sysclk_c_enable_124), .CK(sysclk_c), 
            .CD(n14254), .Q(led_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam led_i2.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i7 (.D(rxConv[3]), .SP(sysclk_c_enable_128), .CK(sysclk_c), 
            .Q(preAddress[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i7.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i6 (.D(rxConv[2]), .SP(sysclk_c_enable_128), .CK(sysclk_c), 
            .Q(preAddress[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i6.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i5 (.D(rxConv[1]), .SP(sysclk_c_enable_128), .CK(sysclk_c), 
            .Q(preAddress[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i5.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i4 (.D(rxConv[0]), .SP(sysclk_c_enable_128), .CK(sysclk_c), 
            .Q(preAddress[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i4.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i3 (.D(rxConv[3]), .SP(sysclk_c_enable_131), .CK(sysclk_c), 
            .Q(preAddress[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i3.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i2 (.D(rxConv[2]), .SP(sysclk_c_enable_131), .CK(sysclk_c), 
            .Q(preAddress[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i2.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i1 (.D(rxConv[1]), .SP(sysclk_c_enable_131), .CK(sysclk_c), 
            .Q(preAddress[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam preAddress_i0_i1.GSR = "ENABLED";
    FD1P3DX txSend_i7 (.D(txSend_7__N_66[7]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i7.GSR = "ENABLED";
    FD1P3DX txSend_i6 (.D(txSend_7__N_66[6]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i6.GSR = "ENABLED";
    FD1P3DX txSend_i5 (.D(txSend_7__N_66[5]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i5.GSR = "ENABLED";
    FD1P3DX txSend_i4 (.D(txSend_7__N_66[4]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i4.GSR = "ENABLED";
    FD1P3DX txSend_i3 (.D(txSend_7__N_66[3]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i3.GSR = "ENABLED";
    FD1P3DX txSend_i2 (.D(txSend_7__N_66[2]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i2.GSR = "ENABLED";
    FD1P3DX txSend_i1 (.D(txSend_7__N_66[1]), .SP(sysclk_c_enable_138), 
            .CK(sysclk_c), .CD(n14254), .Q(txSend[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam txSend_i1.GSR = "ENABLED";
    FD1P3DX devOut_i0_i7 (.D(preAddress[7]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i7.GSR = "ENABLED";
    LUT4 i9003_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [6]), 
         .Z(recBuf_12__7__N_1257)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9003_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 n13421_bdd_4_lut_12027 (.A(preAddress[3]), .B(preFullVal[3]), .C(n2883), 
         .D(\recBuf[0] [0]), .Z(n13950)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam n13421_bdd_4_lut_12027.init = 16'ha00c;
    PFUMX mux_1407_i34 (.BLUT(n13457), .ALUT(recBuf_12__7__N_1270), .C0(n8754), 
          .Z(recBuf_12__7__N_75[33])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9109_3_lut (.A(stm[0]), .B(tick), .C(txDone), .Z(n2652[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(596[17] 607[11])
    defparam i9109_3_lut.init = 16'h4848;
    LUT4 i9036_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [5]), 
         .Z(recBuf_12__7__N_1290)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9036_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i9100_2_lut (.A(\recBuf[0] [4]), .B(n15), .Z(bufferL1_5__4__N_318)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9100_2_lut.init = 16'heeee;
    LUT4 preAddress_0__bdd_4_lut (.A(preAddress[0]), .B(preFullVal[0]), 
         .C(n2883), .D(\recBuf[0] [0]), .Z(n14102)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam preAddress_0__bdd_4_lut.init = 16'ha00c;
    LUT4 i9187_4_lut (.A(n1796[0]), .B(cmd[1]), .C(n1949), .D(n14537), 
         .Z(n6638)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9187_4_lut.init = 16'h2303;
    LUT4 i9039_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [2]), 
         .Z(recBuf_12__7__N_1293)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9039_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9038_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [3]), 
         .Z(recBuf_12__7__N_1292)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9038_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9101_2_lut (.A(\recBuf[0] [3]), .B(n15), .Z(bufferL1_5__3__N_321)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9101_2_lut.init = 16'h2222;
    LUT4 mux_3237_i3_3_lut (.A(\bufferL1[0] [2]), .B(\bufferL2[0] [2]), 
         .C(lns), .Z(n5167[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i3_3_lut.init = 16'hcaca;
    LUT4 mux_1157_i1_3_lut (.A(preFullVal[26]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1796[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1157_i1_3_lut.init = 16'hcaca;
    FD1P3DX devOut_i0_i6 (.D(preAddress[6]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i6.GSR = "ENABLED";
    FD1P3DX devOut_i0_i5 (.D(preAddress[5]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i5.GSR = "ENABLED";
    FD1P3DX devOut_i0_i4 (.D(preAddress[4]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i4.GSR = "ENABLED";
    FD1P3DX devOut_i0_i3 (.D(preAddress[3]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i3.GSR = "ENABLED";
    FD1P3DX devOut_i0_i2 (.D(preAddress[2]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i2.GSR = "ENABLED";
    FD1P3DX devOut_i0_i1 (.D(preAddress[1]), .SP(sysclk_c_enable_145), .CK(sysclk_c), 
            .CD(n14254), .Q(devOut[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam devOut_i0_i1.GSR = "ENABLED";
    LUT4 i9037_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [4]), 
         .Z(recBuf_12__7__N_1291)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9037_2_lut_2_lut_3_lut.init = 16'hb0b0;
    PFUMX i11721 (.BLUT(n13612), .ALUT(n13613), .C0(stm[0]), .Z(n13614));
    LUT4 master_i2c_scl_c_31_bdd_2_lut_12004_3_lut (.A(cmd[1]), .B(n2789), 
         .C(n13950), .Z(n13951)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam master_i2c_scl_c_31_bdd_2_lut_12004_3_lut.init = 16'h4040;
    LUT4 i9035_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [6]), 
         .Z(recBuf_12__7__N_1289)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9035_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 mux_3237_i58_3_lut (.A(\bufferL1[7] [1]), .B(\bufferL2[7] [1]), 
         .C(lns), .Z(n5167[57])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i58_3_lut.init = 16'hcaca;
    LUT4 i9034_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[1] [7]), 
         .Z(recBuf_12__7__N_1288)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9034_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 mux_3237_i50_3_lut (.A(\bufferL1[6] [1]), .B(\bufferL2[6] [1]), 
         .C(lns), .Z(n5167[49])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i50_3_lut.init = 16'hcaca;
    LUT4 i9033_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [0]), 
         .Z(recBuf_12__7__N_1287)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9033_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9032_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [1]), 
         .Z(recBuf_12__7__N_1286)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9032_2_lut_2_lut_3_lut.init = 16'hb0b0;
    PFUMX mux_1407_i35 (.BLUT(n13459), .ALUT(recBuf_12__7__N_1269), .C0(n8754), 
          .Z(recBuf_12__7__N_75[34])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9031_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [2]), 
         .Z(recBuf_12__7__N_1285)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9031_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5392_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(n14536), .Z(sysclk_c_enable_228)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i5392_2_lut_3_lut.init = 16'h0404;
    LUT4 i9102_2_lut (.A(\recBuf[0] [2]), .B(n15), .Z(bufferL1_5__2__N_324)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9102_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_290 (.A(cmd[1]), .B(n2789), .C(cmd[0]), .D(n14212), 
         .Z(sysclk_c_enable_10)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_4_lut_adj_290.init = 16'hb0f0;
    LUT4 i9030_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [3]), 
         .Z(recBuf_12__7__N_1284)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9030_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 mux_1183_i1_3_lut (.A(preFullVal[25]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1831[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1183_i1_3_lut.init = 16'hcaca;
    PFUMX mux_1407_i36 (.BLUT(n13458), .ALUT(recBuf_12__7__N_1268), .C0(n8754), 
          .Z(recBuf_12__7__N_75[35])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    CCU2D add_2697_8 (.A0(stm[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(stm[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12749), 
          .S0(n3911[6]), .S1(n3911[7]));   // c:/pproj/lserial/lserial/source/debcom.v(605[18:25])
    defparam add_2697_8.INIT0 = 16'h5aaa;
    defparam add_2697_8.INIT1 = 16'h5aaa;
    defparam add_2697_8.INJECT1_0 = "NO";
    defparam add_2697_8.INJECT1_1 = "NO";
    LUT4 i9029_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [4]), 
         .Z(recBuf_12__7__N_1283)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9029_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9027_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [6]), 
         .Z(recBuf_12__7__N_1281)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9027_2_lut_2_lut_3_lut.init = 16'hb0b0;
    CCU2D add_2697_6 (.A0(stm[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(stm[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12748), 
          .COUT(n12749), .S0(n3911[4]), .S1(n3911[5]));   // c:/pproj/lserial/lserial/source/debcom.v(605[18:25])
    defparam add_2697_6.INIT0 = 16'h5aaa;
    defparam add_2697_6.INIT1 = 16'h5aaa;
    defparam add_2697_6.INJECT1_0 = "NO";
    defparam add_2697_6.INJECT1_1 = "NO";
    LUT4 i9026_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [7]), 
         .Z(recBuf_12__7__N_1280)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9026_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i1_3_lut_adj_291 (.A(\recBuf[0] [6]), .B(\recBuf[0] [7]), .C(n13), 
         .Z(n2789)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_adj_291.init = 16'h2020;
    LUT4 i3772_2_lut_rep_182 (.A(n15), .B(recv), .Z(n14219)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i3772_2_lut_rep_182.init = 16'h4444;
    LUT4 i1_2_lut_rep_218 (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), .Z(n14255)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_rep_218.init = 16'hbbbb;
    LUT4 i9054_3_lut_4_lut (.A(n15), .B(recv), .C(cmd[0]), .D(cmd[1]), 
         .Z(cmd_2__N_1071[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9054_3_lut_4_lut.init = 16'h4f44;
    LUT4 n5213_bdd_4_lut (.A(n5167[45]), .B(stm[0]), .C(stm[1]), .D(n13626), 
         .Z(n14148)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n5213_bdd_4_lut.init = 16'hfb0b;
    LUT4 i9188_4_lut (.A(preFullVal[24]), .B(cmd[1]), .C(n1949), .D(n14216), 
         .Z(n6630)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9188_4_lut.init = 16'h2303;
    L6MUX21 i12059 (.D0(n14026), .D1(n14023), .SD(stm[1]), .Z(n14027));
    LUT4 i9024_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[3] [1]), 
         .Z(recBuf_12__7__N_1278)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9024_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9023_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[3] [2]), 
         .Z(recBuf_12__7__N_1277)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9023_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9022_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[3] [3]), 
         .Z(recBuf_12__7__N_1276)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9022_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 mux_3237_i42_3_lut (.A(\bufferL1[5] [1]), .B(\bufferL2[5] [1]), 
         .C(lns), .Z(n5167[41])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i42_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_292 (.A(cmd[1]), .B(n2789), .C(n8), .D(\recBuf[0] [0]), 
         .Z(n13427)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i2_3_lut_4_lut_adj_292.init = 16'h0040;
    LUT4 i9192_4_lut (.A(n3[0]), .B(cmd[1]), .C(n1949), .D(n14537), 
         .Z(n6622)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9192_4_lut.init = 16'h2303;
    LUT4 i2_3_lut_4_lut_adj_293 (.A(cmd[1]), .B(n2789), .C(n14211), .D(\recBuf[0] [0]), 
         .Z(n13424)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i2_3_lut_4_lut_adj_293.init = 16'h0400;
    LUT4 mux_1261_i1_3_lut (.A(preAddress[6]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n3[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1261_i1_3_lut.init = 16'hcaca;
    LUT4 n2883_bdd_2_lut_12116 (.A(\recBuf[0] [0]), .B(devOut[0]), .Z(n14111)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2883_bdd_2_lut_12116.init = 16'h8888;
    LUT4 i9021_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[3] [4]), 
         .Z(recBuf_12__7__N_1275)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9021_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9019_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[3] [6]), 
         .Z(recBuf_12__7__N_1273)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9019_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9103_2_lut (.A(\recBuf[0] [1]), .B(n15), .Z(bufferL1_5__1__N_327)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9103_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_196_3_lut (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), 
         .C(\recBuf[0] [5]), .Z(n14233)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_rep_196_3_lut.init = 16'hfbfb;
    LUT4 i2_2_lut_3_lut_4_lut (.A(\recBuf[0] [0]), .B(n14214), .C(n2789), 
         .D(cmd[1]), .Z(n6332)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 n2883_bdd_3_lut_12117 (.A(\recBuf[0] [0]), .B(preFullVal[16]), 
         .C(\recBuf[0] [2]), .Z(n14112)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n2883_bdd_3_lut_12117.init = 16'h0404;
    LUT4 i9018_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[3] [7]), 
         .Z(recBuf_12__7__N_1272)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9018_2_lut_2_lut_3_lut.init = 16'hb0b0;
    CCU2D add_2697_4 (.A0(stm[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(stm[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12747), 
          .COUT(n12748), .S0(n3911[2]), .S1(n3911[3]));   // c:/pproj/lserial/lserial/source/debcom.v(605[18:25])
    defparam add_2697_4.INIT0 = 16'h5aaa;
    defparam add_2697_4.INIT1 = 16'h5aaa;
    defparam add_2697_4.INJECT1_0 = "NO";
    defparam add_2697_4.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_294 (.A(\recBuf[0] [2]), .B(n14202), .C(n1971[0]), 
         .D(n14537), .Z(n13506)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_294.init = 16'hfcdd;
    FD1P3DX send_1882 (.D(n13504), .SP(sysclk_c_enable_146), .CK(sysclk_c), 
            .CD(n14254), .Q(r_SM_Main_2__N_1696[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam send_1882.GSR = "ENABLED";
    LUT4 i9226_2_lut (.A(preAddress[5]), .B(\recBuf[0] [4]), .Z(n1971[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i9226_2_lut.init = 16'h2222;
    LUT4 i9047_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [1]), 
         .Z(recBuf_12__7__N_1302)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9047_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9046_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [2]), 
         .Z(recBuf_12__7__N_1301)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9046_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9216_3_lut (.A(n2012[0]), .B(cmd[1]), .C(n2789), .Z(n6614)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9216_3_lut.init = 16'hecec;
    LUT4 i1_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [3]), 
         .Z(recBuf_12__7__N_1300)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_2_lut_2_lut_3_lut.init = 16'hb0b0;
    PFUMX i12057 (.BLUT(n14025), .ALUT(n14024), .C0(stm[0]), .Z(n14026));
    LUT4 i9104_2_lut (.A(\recBuf[0] [0]), .B(n15), .Z(bufferL1_5__0__N_330)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9104_2_lut.init = 16'h2222;
    PFUMX mux_1407_i37 (.BLUT(n13460), .ALUT(recBuf_12__7__N_1267), .C0(n8754), 
          .Z(recBuf_12__7__N_75[36])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9045_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [4]), 
         .Z(recBuf_12__7__N_1299)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9045_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i2_4_lut_adj_295 (.A(n13553), .B(n14253), .C(n13557), .D(n8375), 
         .Z(sysclk_c_enable_234)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i2_4_lut_adj_295.init = 16'h004c;
    LUT4 i11660_4_lut (.A(\recBuf[0] [5]), .B(n14255), .C(\recBuf[0] [1]), 
         .D(\recBuf[0] [0]), .Z(n13553)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i11660_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_2_lut_3_lut_adj_296 (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [6]), 
         .Z(recBuf_12__7__N_1297)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_2_lut_2_lut_3_lut_adj_296.init = 16'hb0b0;
    PFUMX i11727 (.BLUT(n13618), .ALUT(n13619), .C0(stm[0]), .Z(n13620));
    LUT4 i1_2_lut_2_lut_3_lut_adj_297 (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[0] [7]), 
         .Z(recBuf_12__7__N_1296)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i1_2_lut_2_lut_3_lut_adj_297.init = 16'hb0b0;
    LUT4 i9017_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [0]), 
         .Z(recBuf_12__7__N_1271)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9017_2_lut_2_lut_3_lut.init = 16'hb0b0;
    PFUMX mux_1407_i38 (.BLUT(n735[5]), .ALUT(recBuf_12__7__N_1266), .C0(n8754), 
          .Z(recBuf_12__7__N_75[37])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9016_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [1]), 
         .Z(recBuf_12__7__N_1270)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9016_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i11738_3_lut (.A(\bufferL1[9] [7]), .B(\bufferL2[9] [7]), .C(lns), 
         .Z(n13631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11738_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_298 (.A(\recBuf[0] [0]), .B(n14214), .C(n2789), 
         .D(cmd[1]), .Z(n13493)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i1_2_lut_3_lut_4_lut_adj_298.init = 16'hff8f;
    PFUMX mux_1407_i39 (.BLUT(n13461), .ALUT(recBuf_12__7__N_1265), .C0(n8754), 
          .Z(recBuf_12__7__N_75[38])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9015_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [2]), 
         .Z(recBuf_12__7__N_1269)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9015_2_lut_2_lut_3_lut.init = 16'hb0b0;
    FD1P3BX stm__i1 (.D(n9627), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i1.GSR = "ENABLED";
    LUT4 mux_3237_i10_3_lut (.A(\bufferL1[0] [2]), .B(\bufferL2[1] [1]), 
         .C(lns), .Z(n5167[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i10_3_lut.init = 16'hcaca;
    FD1P3BX stm__i2 (.D(n9625), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i2.GSR = "ENABLED";
    LUT4 i9057_2_lut (.A(\recBuf[5] [7]), .B(n15), .Z(bufferL1_10__7__N_187)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9057_2_lut.init = 16'h2222;
    FD1P3BX stm__i3 (.D(n9623), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i3.GSR = "ENABLED";
    FD1P3BX stm__i4 (.D(n9621), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i4.GSR = "ENABLED";
    FD1P3BX stm__i5 (.D(n9619), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i5.GSR = "ENABLED";
    FD1P3BX stm__i6 (.D(n9617), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i6.GSR = "ENABLED";
    LUT4 i9014_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [3]), 
         .Z(recBuf_12__7__N_1268)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9014_2_lut_2_lut_3_lut.init = 16'hb0b0;
    FD1P3BX stm__i7 (.D(n9615), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i7.GSR = "ENABLED";
    LUT4 i5702_2_lut_rep_172_3_lut (.A(n14242), .B(n15), .C(recv), .Z(sysclk_c_enable_238)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i5702_2_lut_rep_172_3_lut.init = 16'hb0b0;
    LUT4 i9058_2_lut (.A(\recBuf[5] [6]), .B(n15), .Z(bufferL1_10__6__N_192)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(519[14] 579[8])
    defparam i9058_2_lut.init = 16'heeee;
    LUT4 i10862_2_lut (.A(\bufferL2[0] [1]), .B(lns), .Z(n5167[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam i10862_2_lut.init = 16'h8888;
    LUT4 i9013_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [4]), 
         .Z(recBuf_12__7__N_1267)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9013_2_lut_2_lut_3_lut.init = 16'hb0b0;
    CCU2D add_2697_2 (.A0(stm[0]), .B0(txDone), .C0(GND_net), .D0(GND_net), 
          .A1(stm[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12747), 
          .S1(n3911[1]));   // c:/pproj/lserial/lserial/source/debcom.v(605[18:25])
    defparam add_2697_2.INIT0 = 16'h7000;
    defparam add_2697_2.INIT1 = 16'h5aaa;
    defparam add_2697_2.INJECT1_0 = "NO";
    defparam add_2697_2.INJECT1_1 = "NO";
    PFUMX mux_1407_i40 (.BLUT(n13462), .ALUT(recBuf_12__7__N_1264), .C0(n8754), 
          .Z(recBuf_12__7__N_75[39])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    PFUMX i11730 (.BLUT(n13621), .ALUT(n13622), .C0(stm[0]), .Z(n13623));
    LUT4 i9217_3_lut (.A(n2047[0]), .B(cmd[1]), .C(n1949), .Z(n6610)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9217_3_lut.init = 16'h2323;
    LUT4 mux_1339_i1_3_lut (.A(preAddress[3]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n2041[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1339_i1_3_lut.init = 16'hcaca;
    LUT4 i9011_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [6]), 
         .Z(recBuf_12__7__N_1265)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9011_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9010_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [7]), 
         .Z(recBuf_12__7__N_1264)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9010_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 n1415_bdd_4_lut_then_3_lut_4_lut (.A(cmd[1]), .B(n2789), .C(\recBuf[0] [0]), 
         .D(devOut[5]), .Z(n14264)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;
    defparam n1415_bdd_4_lut_then_3_lut_4_lut.init = 16'hfbbb;
    LUT4 i9009_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [0]), 
         .Z(recBuf_12__7__N_1263)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9009_2_lut_2_lut_3_lut.init = 16'hb0b0;
    PFUMX mux_1407_i41 (.BLUT(n734[0]), .ALUT(recBuf_12__7__N_1263), .C0(n8752), 
          .Z(recBuf_12__7__N_75[40])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9218_4_lut (.A(n2076[0]), .B(cmd[1]), .C(n1949), .D(n14537), 
         .Z(n6606)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9218_4_lut.init = 16'h2303;
    LUT4 i2_3_lut_adj_299 (.A(rstOut0), .B(cmd[1]), .C(cmd[0]), .Z(sysclk_c_enable_237)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_adj_299.init = 16'h0202;
    PFUMX mux_1407_i42 (.BLUT(n734[1]), .ALUT(recBuf_12__7__N_1262), .C0(n8752), 
          .Z(recBuf_12__7__N_75[41])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 mux_1365_i1_3_lut (.A(preAddress[2]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n2076[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1365_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_300 (.A(n13401), .B(n14535), .C(n2883), .D(\recBuf[0] [0]), 
         .Z(n13426)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_300.init = 16'hc088;
    LUT4 rxRecv_0__bdd_4_lut_12154 (.A(rxRecv[0]), .B(n175), .C(recBuf_12__7__N_1295), 
         .D(n8760), .Z(recBuf_12__7__N_75[8])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_0__bdd_4_lut_12154.init = 16'hf088;
    LUT4 i9008_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [1]), 
         .Z(recBuf_12__7__N_1262)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9008_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 mux_3237_i4_3_lut (.A(\bufferL1[0] [2]), .B(\bufferL2[0] [3]), 
         .C(lns), .Z(n5167[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(599[18] 601[12])
    defparam mux_3237_i4_3_lut.init = 16'hcaca;
    LUT4 i9007_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [2]), 
         .Z(recBuf_12__7__N_1261)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9007_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9223_4_lut (.A(preAddress[0]), .B(cmd[1]), .C(n1949), .D(n14216), 
         .Z(n6598)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9223_4_lut.init = 16'h2303;
    PFUMX i11733 (.BLUT(n13624), .ALUT(n13625), .C0(stm[0]), .Z(n13626));
    LUT4 i9006_2_lut_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [3]), 
         .Z(recBuf_12__7__N_1260)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9006_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 \recBuf_0[[2__bdd_3_lut_12124  (.A(\recBuf[0] [0]), .B(devOut[6]), 
         .C(\recBuf[0] [5]), .Z(n14120)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam \recBuf_0[[2__bdd_3_lut_12124 .init = 16'hd8d8;
    LUT4 i1_4_lut_adj_301 (.A(n1), .B(n14250), .C(n14233), .D(cmd[1]), 
         .Z(sysclk_c_enable_58)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_301.init = 16'hccc4;
    LUT4 i10362_4_lut (.A(\recBuf[0] [2]), .B(n8320), .C(\recBuf[0] [3]), 
         .D(n10), .Z(n1)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i10362_4_lut.init = 16'hc5c0;
    PFUMX mux_1407_i43 (.BLUT(n734[2]), .ALUT(recBuf_12__7__N_1261), .C0(n8752), 
          .Z(recBuf_12__7__N_75[42])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 \recBuf_0[[2__bdd_3_lut_12127  (.A(\recBuf[0] [2]), .B(\recBuf[0] [0]), 
         .C(preFullVal[22]), .Z(n14121)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam \recBuf_0[[2__bdd_3_lut_12127 .init = 16'h1010;
    LUT4 i2_4_lut_adj_302 (.A(\recBuf[0] [1]), .B(\recBuf[0] [4]), .C(\recBuf[0] [0]), 
         .D(\recBuf[0] [2]), .Z(n8320)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_302.init = 16'h2100;
    LUT4 i9012_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[4] [5]), 
         .Z(recBuf_12__7__N_1266)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9012_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i9163_3_lut_4_lut (.A(n14242), .B(n15), .C(recCte[0]), .D(recCte[1]), 
         .Z(n32[1])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9163_3_lut_4_lut.init = 16'h0440;
    PFUMX mux_1407_i44 (.BLUT(n734[3]), .ALUT(recBuf_12__7__N_1260), .C0(n8752), 
          .Z(recBuf_12__7__N_75[43])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i9238_4_lut (.A(led_c_3_c), .B(cmd[1]), .C(n2789), .D(n14206), 
         .Z(n6578)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9238_4_lut.init = 16'h2303;
    LUT4 i9028_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[2] [5]), 
         .Z(recBuf_12__7__N_1282)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9028_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i1_4_lut_adj_303 (.A(cmd[1]), .B(n2789), .C(\recBuf[0] [0]), 
         .D(n7_adj_1739), .Z(n13049)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_4_lut_adj_303.init = 16'h5111;
    PFUMX i12054 (.BLUT(n14022), .ALUT(n14252), .C0(stm[0]), .Z(n14023));
    LUT4 i1_3_lut_adj_304 (.A(sw_c_2), .B(n2883), .C(\recBuf[0] [2]), 
         .Z(n7_adj_1739)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_3_lut_adj_304.init = 16'hcece;
    LUT4 i9004_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[5] [5]), 
         .Z(recBuf_12__7__N_1258)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9004_2_lut_3_lut.init = 16'hf4f4;
    PFUMX i11736 (.BLUT(n13627), .ALUT(n13628), .C0(stm[0]), .Z(n13629));
    LUT4 i1_2_lut_3_lut_adj_305 (.A(cmd[1]), .B(n2789), .C(n2957[0]), 
         .Z(n13432)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_3_lut_adj_305.init = 16'h4040;
    LUT4 i11639_3_lut_4_lut (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), .C(\recBuf[0] [3]), 
         .D(\recBuf[0] [2]), .Z(n13532)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i11639_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_306 (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), 
         .C(n8375), .D(\recBuf[0] [5]), .Z(n5)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_3_lut_4_lut_adj_306.init = 16'hfffb;
    LUT4 i9253_4_lut (.A(sw_c_1), .B(cmd[1]), .C(n2789), .D(n14206), 
         .Z(n6570)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9253_4_lut.init = 16'h2303;
    PFUMX mux_1407_i45 (.BLUT(n734[4]), .ALUT(recBuf_12__7__N_1259), .C0(n8752), 
          .Z(recBuf_12__7__N_75[44])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i2_2_lut_3_lut (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), .C(n13), 
         .Z(n1949)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i2_2_lut_3_lut.init = 16'h4040;
    LUT4 i11983_2_lut_3_lut (.A(n14242), .B(n15), .C(recCte[0]), .Z(n12753)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i11983_2_lut_3_lut.init = 16'h0404;
    LUT4 n5173_bdd_4_lut (.A(n5167[85]), .B(stm[0]), .C(stm[1]), .D(n13623), 
         .Z(n14146)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam n5173_bdd_4_lut.init = 16'h2f20;
    PFUMX i12051 (.BLUT(n14019), .ALUT(n14018), .C0(stm[0]), .Z(n14020));
    LUT4 i1_2_lut_3_lut_adj_307 (.A(cmd[1]), .B(n1949), .C(n2817[0]), 
         .Z(n13508)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_307.init = 16'hfbfb;
    LUT4 i9020_2_lut_3_lut (.A(cmd[1]), .B(cmd[0]), .C(\recBuf[3] [5]), 
         .Z(recBuf_12__7__N_1274)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i9020_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i2_2_lut_rep_219 (.A(\recBuf[0] [1]), .B(\recBuf[0] [0]), .Z(n14256)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i2_2_lut_rep_219.init = 16'h2222;
    LUT4 i2_2_lut_3_lut_adj_308 (.A(\recBuf[0] [1]), .B(\recBuf[0] [0]), 
         .C(\recBuf[0] [4]), .Z(n10)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam i2_2_lut_3_lut_adj_308.init = 16'h2020;
    PFUMX mux_1407_i46 (.BLUT(n734[5]), .ALUT(recBuf_12__7__N_1258), .C0(n8752), 
          .Z(recBuf_12__7__N_75[45])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 i1_4_lut_rep_162_else_4_lut (.A(n14204), .B(n13378), .C(\recBuf[0] [5]), 
         .D(\recBuf[0] [4]), .Z(n14260)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_4_lut_rep_162_else_4_lut.init = 16'h0800;
    LUT4 i9155_4_lut_4_lut (.A(stm[2]), .B(stm[1]), .C(n9), .D(n13620), 
         .Z(n14)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam i9155_4_lut_4_lut.init = 16'h5140;
    PFUMX i11739 (.BLUT(n13630), .ALUT(n13631), .C0(stm[0]), .Z(n13632));
    PFUMX mux_1407_i47 (.BLUT(n734[6]), .ALUT(recBuf_12__7__N_1257), .C0(n8752), 
          .Z(recBuf_12__7__N_75[46])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 mux_1520_Mux_1_i15_4_lut_4_lut (.A(stm[2]), .B(stm[3]), .C(n14027), 
         .D(n13642), .Z(n2589[1])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam mux_1520_Mux_1_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_1520_Mux_2_i15_4_lut_4_lut (.A(stm[2]), .B(stm[3]), .C(n13595), 
         .D(n13649), .Z(n2589[2])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam mux_1520_Mux_2_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_1520_Mux_3_i15_4_lut_4_lut (.A(stm[2]), .B(stm[3]), .C(n10_adj_1731), 
         .D(n13942), .Z(n2589[3])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam mux_1520_Mux_3_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i2_4_lut_adj_309 (.A(n14234), .B(rxRecv[0]), .C(n14241), .D(recCte[1]), 
         .Z(n2)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_309.init = 16'h8000;
    LUT4 i11978_2_lut_3_lut_4_lut (.A(stm_7__N_1424), .B(txAct), .C(stm[3]), 
         .D(n11411), .Z(n13578)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11978_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i9049_3_lut (.A(n2607[0]), .B(cmd[1]), .C(n1949), .Z(n6390)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9049_3_lut.init = 16'hecec;
    PFUMX mux_1407_i48 (.BLUT(n734[7]), .ALUT(recBuf_12__7__N_1256), .C0(n8752), 
          .Z(recBuf_12__7__N_75[47])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 master_i2c_scl_c_31_bdd_2_lut_12146_2_lut (.A(stm[2]), .B(n14146), 
         .Z(n14147)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam master_i2c_scl_c_31_bdd_2_lut_12146_2_lut.init = 16'h4444;
    LUT4 i9211_4_lut_4_lut (.A(stm[2]), .B(stm[1]), .C(n9_adj_1737), .D(n13632), 
         .Z(n14_adj_1740)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam i9211_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_adj_310 (.A(n14222), .B(n10100), .C(n14234), .D(recCte[3]), 
         .Z(n13484)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i1_4_lut_adj_310.init = 16'hf5dd;
    LUT4 i1_2_lut_adj_311 (.A(recCte[2]), .B(recCte[4]), .Z(n10100)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i1_2_lut_adj_311.init = 16'h2222;
    PFUMX mux_1532_i7 (.BLUT(n7_adj_1736), .ALUT(n2589[6]), .C0(n13578), 
          .Z(txSend_7__N_66[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    FD1P3BX \bufferL1_10[[5__1894  (.D(bufferL1_10__5__N_195), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL1[10] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[5__1894 .GSR = "ENABLED";
    LUT4 mux_1520_Mux_6_i15_4_lut_4_lut (.A(stm[2]), .B(n14215), .C(rxRecv[6]), 
         .D(n10_adj_1738), .Z(n2589[6])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(587[10:19])
    defparam mux_1520_Mux_6_i15_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i9128_2_lut_rep_185 (.A(n15), .B(recv), .Z(n14222)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9128_2_lut_rep_185.init = 16'h8888;
    L6MUX21 i11997 (.D0(n13941), .D1(n13939), .SD(stm[2]), .Z(n13942));
    LUT4 i11911_2_lut (.A(cmd[0]), .B(n14198), .Z(sysclk_c_enable_8)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i11911_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_rep_173_4_lut (.A(n15), .B(recv), .C(recCte[1]), .D(n14254), 
         .Z(n14210)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_173_4_lut.init = 16'h0080;
    LUT4 i11737_3_lut (.A(\bufferL1[8] [7]), .B(\bufferL2[8] [7]), .C(lns), 
         .Z(n13630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11737_3_lut.init = 16'hcaca;
    LUT4 mux_1759_i1_4_lut (.A(\recBuf[0] [1]), .B(\recBuf[0] [4]), .C(n14537), 
         .D(\recBuf[0] [2]), .Z(n2607[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_1759_i1_4_lut.init = 16'h303a;
    LUT4 \bufferL2_0[[5__bdd_4_lut  (.A(\bufferL2[0] [5]), .B(stm[0]), .C(\bufferL2[1] [5]), 
         .D(stm[1]), .Z(n14149)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam \bufferL2_0[[5__bdd_4_lut .init = 16'hfce2;
    LUT4 \bufferL2_0[[5__bdd_3_lut  (.A(stm[0]), .B(stm[1]), .C(\bufferL1[0] [2]), 
         .Z(n14150)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam \bufferL2_0[[5__bdd_3_lut .init = 16'hd0d0;
    LUT4 i6799_3_lut_4_lut (.A(n15), .B(recv), .C(n14226), .D(n14242), 
         .Z(n8750)) /* synthesis lut_function=(!(A (B ((D)+!C)))) */ ;
    defparam i6799_3_lut_4_lut.init = 16'h77f7;
    LUT4 i1_4_lut_adj_312 (.A(n14249), .B(n14204), .C(n14247), .D(n14537), 
         .Z(n13390)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i1_4_lut_adj_312.init = 16'hc044;
    LUT4 i6803_3_lut_4_lut (.A(n15), .B(recv), .C(n14242), .D(n14225), 
         .Z(n8754)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i6803_3_lut_4_lut.init = 16'h7f77;
    PFUMX mux_1407_i1 (.BLUT(n13434), .ALUT(recBuf_12__7__N_1303), .C0(n8750), 
          .Z(recBuf_12__7__N_75[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    LUT4 n14151_bdd_3_lut (.A(n14151), .B(n14148), .C(stm[2]), .Z(n14152)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14151_bdd_3_lut.init = 16'hcaca;
    LUT4 rxRecv_1__bdd_4_lut_12161 (.A(rxRecv[1]), .B(n11232), .C(recBuf_12__7__N_1286), 
         .D(n8758), .Z(recBuf_12__7__N_75[17])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_1__bdd_4_lut_12161.init = 16'hf088;
    LUT4 i1_2_lut_rep_179_3_lut (.A(\recBuf[0] [5]), .B(n13378), .C(\recBuf[0] [4]), 
         .Z(n14216)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_rep_179_3_lut.init = 16'h0404;
    LUT4 i9201_3_lut (.A(n14277), .B(cmd[1]), .C(n2789), .Z(n6728)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 501[11])
    defparam i9201_3_lut.init = 16'h2323;
    LUT4 i11897_4_lut (.A(\recBuf[0] [0]), .B(cmd[1]), .C(n2789), .D(n14211), 
         .Z(n11383)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C)))) */ ;
    defparam i11897_4_lut.init = 16'h0323;
    LUT4 i7694_4_lut_4_lut (.A(txAct), .B(stm_7__N_1424), .C(n11411), 
         .D(lns), .Z(sysclk_c_enable_146)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam i7694_4_lut_4_lut.init = 16'h2333;
    LUT4 i1_2_lut_rep_187 (.A(tick), .B(n11411), .Z(n14224)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_187.init = 16'heeee;
    LUT4 i11803_3_lut (.A(n5167[66]), .B(n5167[74]), .C(stm[0]), .Z(n13593)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11803_3_lut.init = 16'hcaca;
    FD1P3DX \bufferL1_10[[4__1895  (.D(bufferL1_10__4__N_198), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[10] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[4__1895 .GSR = "ENABLED";
    FD1P3DX \bufferL1_10[[3__1896  (.D(bufferL1_10__3__N_201), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[10] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[3__1896 .GSR = "ENABLED";
    LUT4 i11894_2_lut_2_lut_3_lut_4_lut (.A(tick), .B(n11411), .C(stm_7__N_1424), 
         .D(txAct), .Z(n13504)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i11894_2_lut_2_lut_3_lut_4_lut.init = 16'h1011;
    FD1P3DX \bufferL1_10[[2__1897  (.D(bufferL1_10__2__N_204), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[10] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[2__1897 .GSR = "ENABLED";
    FD1P3DX \bufferL1_10[[1__1898  (.D(bufferL1_10__1__N_207), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[10] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[1__1898 .GSR = "ENABLED";
    FD1P3DX \bufferL1_10[[0__1899  (.D(bufferL1_10__0__N_210), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[10] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[0__1899 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[7__1900  (.D(bufferL1_9__7__N_213), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[9] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[7__1900 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[6__1901  (.D(bufferL1_9__6__N_216), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[9] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[6__1901 .GSR = "ENABLED";
    FD1P3BX \bufferL1_9[[5__1902  (.D(bufferL1_9__5__N_219), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL1[9] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[5__1902 .GSR = "ENABLED";
    LUT4 mux_2019_i1_4_lut (.A(\recBuf[0] [2]), .B(\recBuf[0] [0]), .C(n2883), 
         .D(\recBuf[0] [5]), .Z(n2957[0])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 303[13])
    defparam mux_2019_i1_4_lut.init = 16'h3505;
    FD1P3DX \bufferL1_9[[4__1903  (.D(bufferL1_9__4__N_222), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[9] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[4__1903 .GSR = "ENABLED";
    LUT4 i1_4_lut_adj_313 (.A(cmd[0]), .B(n69), .C(highRead), .D(cmd[1]), 
         .Z(sysclk_c_enable_65)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(92[13:16])
    defparam i1_4_lut_adj_313.init = 16'ha022;
    LUT4 i2_4_lut_adj_314 (.A(rxRecv[2]), .B(rxRecv[4]), .C(n14232), .D(rxRecv[3]), 
         .Z(rxConv[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i2_4_lut_adj_314.init = 16'h6c93;
    LUT4 i11914_2_lut (.A(n2789), .B(cmd[1]), .Z(n11395)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i11914_2_lut.init = 16'h1111;
    FD1P3DX \bufferL1_9[[3__1904  (.D(bufferL1_9__3__N_225), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[9] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[3__1904 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[2__1905  (.D(bufferL1_9__2__N_228), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[9] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[2__1905 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[1__1906  (.D(bufferL1_9__1__N_231), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[9] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[1__1906 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[0__1907  (.D(bufferL1_9__0__N_234), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[9] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_9[[0__1907 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[7__1908  (.D(bufferL1_8__7__N_237), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[8] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[7__1908 .GSR = "ENABLED";
    LUT4 \recBuf_3[[0__bdd_4_lut_4_lut  (.A(n14253), .B(n8756), .C(n2), 
         .D(\recBuf[3] [0]), .Z(recBuf_12__7__N_75[24])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam \recBuf_3[[0__bdd_4_lut_4_lut .init = 16'h7430;
    FD1P3DX \bufferL1_8[[6__1909  (.D(bufferL1_8__6__N_240), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[8] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[6__1909 .GSR = "ENABLED";
    FD1P3BX \bufferL1_8[[5__1910  (.D(bufferL1_8__5__N_243), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL1[8] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[5__1910 .GSR = "ENABLED";
    LUT4 i1_3_lut_adj_315 (.A(recCte[2]), .B(recCte[3]), .C(recCte[0]), 
         .Z(n13444)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(502[4] 580[7])
    defparam i1_3_lut_adj_315.init = 16'h0202;
    LUT4 i11758_4_lut (.A(\bufferL2[2] [4]), .B(n5167[28]), .C(stm[0]), 
         .D(lns), .Z(n13651)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i11758_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_316 (.A(\recBuf[0] [2]), .B(n14534), .C(\recBuf[0] [0]), 
         .D(n2883), .Z(n13495)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_316.init = 16'hfcdd;
    FD1P3DX \bufferL1_8[[4__1911  (.D(bufferL1_8__4__N_246), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[8] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[4__1911 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[3__1912  (.D(bufferL1_8__3__N_249), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[8] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[3__1912 .GSR = "ENABLED";
    LUT4 i11757_3_lut (.A(n5167[4]), .B(n5167[28]), .C(stm[0]), .Z(n13650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11757_3_lut.init = 16'hcaca;
    FD1P3DX \bufferL1_8[[2__1913  (.D(bufferL1_8__2__N_252), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[8] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[2__1913 .GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_317 (.A(cmd[1]), .B(n2789), .C(n2957[0]), 
         .Z(n13494)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_317.init = 16'hfbfb;
    LUT4 i9291_4_lut (.A(lns_N_1590), .B(n11411), .C(n14221), .D(lns), 
         .Z(lns_N_1588)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(585[13] 621[7])
    defparam i9291_4_lut.init = 16'ha2aa;
    FD1P3DX \bufferL1_8[[1__1914  (.D(bufferL1_8__1__N_255), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[8] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[1__1914 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[0__1915  (.D(bufferL1_8__0__N_258), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[8] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_8[[0__1915 .GSR = "ENABLED";
    PFUMX i11995 (.BLUT(n13940), .ALUT(n8030), .C0(stm[1]), .Z(n13941));
    LUT4 rxRecv_2__bdd_4_lut_12162 (.A(rxRecv[2]), .B(n11232), .C(recBuf_12__7__N_1285), 
         .D(n8758), .Z(recBuf_12__7__N_75[18])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_2__bdd_4_lut_12162.init = 16'hf088;
    FD1P3DX \bufferL1_7[[7__1916  (.D(bufferL1_7__7__N_261), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[7] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[7__1916 .GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[6__1917  (.D(bufferL1_7__6__N_264), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[7] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[6__1917 .GSR = "ENABLED";
    FD1P3BX \bufferL1_7[[5__1918  (.D(bufferL1_7__5__N_267), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL1[7] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[5__1918 .GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[4__1919  (.D(bufferL1_7__4__N_270), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[7] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[4__1919 .GSR = "ENABLED";
    LUT4 lns_I_225_4_lut (.A(n15), .B(lns_N_1591), .C(n14242), .D(recv), 
         .Z(lns_N_1590)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B+(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(502[4] 580[7])
    defparam lns_I_225_4_lut.init = 16'h5dcc;
    FD1P3DX \bufferL1_7[[3__1920  (.D(bufferL1_7__3__N_273), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[7] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[3__1920 .GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[2__1921  (.D(bufferL1_7__2__N_276), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[7] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[2__1921 .GSR = "ENABLED";
    LUT4 n2663_bdd_3_lut_12053 (.A(lns), .B(\bufferL1[3] [2]), .C(\bufferL2[3] [0]), 
         .Z(n13982)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n2663_bdd_3_lut_12053.init = 16'he4e4;
    FD1P3DX \bufferL1_7[[1__1922  (.D(bufferL1_7__1__N_279), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[7] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[1__1922 .GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[0__1923  (.D(bufferL1_7__0__N_282), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[7] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_7[[0__1923 .GSR = "ENABLED";
    LUT4 i2_4_lut_adj_318 (.A(n14233), .B(\recBuf[0] [2]), .C(\recBuf[0] [4]), 
         .D(\recBuf[0] [3]), .Z(n13345)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_318.init = 16'hfbff;
    LUT4 i2_3_lut_adj_319 (.A(\recBuf[0] [3]), .B(\recBuf[0] [4]), .C(\recBuf[0] [2]), 
         .Z(n8375)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(235[10:15])
    defparam i2_3_lut_adj_319.init = 16'hfbfb;
    PFUMX i10373 (.BLUT(n30), .ALUT(n12259), .C0(\recBuf[0] [3]), .Z(n13));
    FD1P3DX \bufferL1_6[[7__1924  (.D(bufferL1_6__7__N_285), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[6] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[7__1924 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[6__1925  (.D(bufferL1_6__6__N_288), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[6] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[6__1925 .GSR = "ENABLED";
    LUT4 i1_2_lut_adj_320 (.A(rxRecv[0]), .B(rxRecv[4]), .Z(rxConv[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_320.init = 16'h9999;
    FD1P3BX \bufferL1_6[[5__1926  (.D(bufferL1_6__5__N_291), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL1[6] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[5__1926 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[4__1927  (.D(bufferL1_6__4__N_294), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[6] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[4__1927 .GSR = "ENABLED";
    LUT4 i9287_4_lut (.A(n12791), .B(n12852), .C(flag), .D(n14205), 
         .Z(flag_N_1578)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(585[13] 621[7])
    defparam i9287_4_lut.init = 16'hccc8;
    FD1P3DX \bufferL1_6[[3__1928  (.D(bufferL1_6__3__N_297), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[6] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[3__1928 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[2__1929  (.D(bufferL1_6__2__N_300), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[6] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[2__1929 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[1__1930  (.D(bufferL1_6__1__N_303), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[6] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[1__1930 .GSR = "ENABLED";
    LUT4 i2_3_lut_adj_321 (.A(recv), .B(n15), .C(n14242), .Z(n12791)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(502[4] 580[7])
    defparam i2_3_lut_adj_321.init = 16'h8080;
    FD1P3DX \bufferL1_6[[0__1931  (.D(bufferL1_6__0__N_306), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[6] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_6[[0__1931 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[7__1932  (.D(bufferL1_5__7__N_309), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[5] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[7__1932 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[6__1933  (.D(bufferL1_5__6__N_312), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[5] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[6__1933 .GSR = "ENABLED";
    LUT4 i3_4_lut_adj_322 (.A(lns), .B(stm_7__N_1424), .C(txAct), .D(n11411), 
         .Z(n12852)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(585[13] 621[7])
    defparam i3_4_lut_adj_322.init = 16'hfeff;
    FD1P3BX \bufferL1_5[[5__1934  (.D(bufferL1_5__5__N_315), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL1[5] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[5__1934 .GSR = "ENABLED";
    FD1P3BX stm__i0 (.D(n9595), .SP(sysclk_c_enable_225), .CK(sysclk_c), 
            .PD(n14254), .Q(stm[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam stm__i0.GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[4__1935  (.D(bufferL1_5__4__N_318), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[5] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[4__1935 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[3__1936  (.D(bufferL1_5__3__N_321), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[5] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[3__1936 .GSR = "ENABLED";
    FD1P3DX highRead_2201 (.D(n14539), .SP(sysclk_c_enable_228), .CK(sysclk_c), 
            .CD(n14254), .Q(highRead)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam highRead_2201.GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[2__1937  (.D(bufferL1_5__2__N_324), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[5] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[2__1937 .GSR = "ENABLED";
    PFUMX mux_1520_Mux_0_i15 (.BLUT(n13592), .ALUT(n14_adj_1729), .C0(stm[3]), 
          .Z(n2589[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    FD1P3DX \bufferL1_5[[1__1938  (.D(bufferL1_5__1__N_327), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[5] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[1__1938 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[0__1939  (.D(bufferL1_5__0__N_330), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[5] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_5[[0__1939 .GSR = "ENABLED";
    FD1P3DX \bufferL1_3[[2__1953  (.D(n14539), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[3] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_3[[2__1953 .GSR = "ENABLED";
    LUT4 i9141_4_lut (.A(\bufferL2[2] [3]), .B(lns), .C(\bufferL2[3] [3]), 
         .D(stm[0]), .Z(n8030)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[28:31])
    defparam i9141_4_lut.init = 16'hc088;
    PFUMX mux_1520_Mux_7_i15 (.BLUT(n7_adj_1730), .ALUT(n14_adj_1740), .C0(stm[3]), 
          .Z(n2589[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;
    PFUMX i12188 (.BLUT(n14287), .ALUT(n14288), .C0(n2883), .Z(n14289));
    FD1P3DX rstOut0_2203 (.D(n14539), .SP(sysclk_c_enable_234), .CK(sysclk_c), 
            .CD(n14254), .Q(rstOut0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam rstOut0_2203.GSR = "ENABLED";
    FD1P3DX \bufferL1_10[[7__1892  (.D(bufferL1_10__7__N_187), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[10] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[7__1892 .GSR = "ENABLED";
    PFUMX i12186 (.BLUT(n14284), .ALUT(n14285), .C0(n2883), .Z(n14286));
    L6MUX21 i12025 (.D0(n14192), .D1(n14166), .SD(stm[1]), .Z(n13988));
    FD1P3DX \bufferL1_10[[6__1893  (.D(bufferL1_10__6__N_192), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .CD(n14254), .Q(\bufferL1[10] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_10[[6__1893 .GSR = "ENABLED";
    PFUMX i12184 (.BLUT(n14281), .ALUT(n14282), .C0(preFullVal[20]), .Z(n14283));
    FD1S3DX tick_2193 (.D(n6007), .CK(sysclk_c), .CD(n14254), .Q(tick)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam tick_2193.GSR = "ENABLED";
    PFUMX i12182 (.BLUT(n14278), .ALUT(n14279), .C0(preFullVal[2]), .Z(n14280));
    LUT4 i9160_4_lut (.A(recCte[4]), .B(n14220), .C(recCte[3]), .D(n12721), 
         .Z(n32[4])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam i9160_4_lut.init = 16'h1222;
    PFUMX i12180 (.BLUT(n14275), .ALUT(n14276), .C0(preFullVal[6]), .Z(n14277));
    FD1P3BX rstOut_2199 (.D(n14538), .SP(sysclk_c_enable_237), .CK(sysclk_c), 
            .PD(n14254), .Q(rstOutCall)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam rstOut_2199.GSR = "ENABLED";
    FD1P3BX \bufferL1_0[[2__1977  (.D(n14538), .SP(sysclk_c_enable_238), 
            .CK(sysclk_c), .PD(n14254), .Q(\bufferL1[0] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=66, LSE_RLINE=83 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 622[6])
    defparam \bufferL1_0[[2__1977 .GSR = "ENABLED";
    FD1P3DX recCte_3541__i0 (.D(n12753), .SP(recv), .CK(sysclk_c), .CD(n14254), 
            .Q(recCte[0]));   // c:/pproj/lserial/lserial/source/debcom.v(577[19:31])
    defparam recCte_3541__i0.GSR = "ENABLED";
    PFUMX i11742 (.BLUT(n13633), .ALUT(n13634), .C0(stm[0]), .Z(n13635));
    PFUMX i12176 (.BLUT(n14269), .ALUT(n14270), .C0(\recBuf[0] [0]), .Z(n14271));
    PFUMX i12174 (.BLUT(n14266), .ALUT(n14267), .C0(\recBuf[0] [0]), .Z(n14268));
    PFUMX i12172 (.BLUT(n14263), .ALUT(n14264), .C0(n2883), .Z(n14265));
    PFUMX i12170 (.BLUT(n14260), .ALUT(n14261), .C0(\recBuf[0] [2]), .Z(n14199));
    \uart(CLKS_PER_BIT=104)  URT (.GND_net(GND_net), .\r_SM_Main_2__N_1696[0] (r_SM_Main_2__N_1696[0]), 
            .sysclk_c(sysclk_c), .usb_uart_tx_c(usb_uart_tx_c), .txSend({txSend}), 
            .txAct(txAct), .txDone(txDone), .usb_uart_rx_c(usb_uart_rx_c), 
            .rxRecv({rxRecv}), .recv(recv), .\recCte[1] (recCte[1]), .n13453(n13453)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(67[35] 79[22])
    
endmodule
//
// Verilog Description of module \uart(CLKS_PER_BIT=104) 
//

module \uart(CLKS_PER_BIT=104)  (GND_net, \r_SM_Main_2__N_1696[0] , sysclk_c, 
            usb_uart_tx_c, txSend, txAct, txDone, usb_uart_rx_c, rxRecv, 
            recv, \recCte[1] , n13453) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \r_SM_Main_2__N_1696[0] ;
    input sysclk_c;
    output usb_uart_tx_c;
    input [7:0]txSend;
    output txAct;
    output txDone;
    input usb_uart_rx_c;
    output [7:0]rxRecv;
    output recv;
    input \recCte[1] ;
    output n13453;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    
    \uart_tx(CLKS_PER_BIT=104)  UART_TX_INST (.GND_net(GND_net), .\r_SM_Main_2__N_1696[0] (\r_SM_Main_2__N_1696[0] ), 
            .sysclk_c(sysclk_c), .usb_uart_tx_c(usb_uart_tx_c), .txSend({txSend}), 
            .txAct(txAct), .txDone(txDone)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(25[42] 32[7])
    \uart_rx(CLKS_PER_BIT=104)  UART_RX_INST (.GND_net(GND_net), .sysclk_c(sysclk_c), 
            .usb_uart_rx_c(usb_uart_rx_c), .rxRecv({rxRecv}), .recv(recv), 
            .\recCte[1] (\recCte[1] ), .n13453(n13453)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(18[42] 23[7])
    
endmodule
//
// Verilog Description of module \uart_tx(CLKS_PER_BIT=104) 
//

module \uart_tx(CLKS_PER_BIT=104)  (GND_net, \r_SM_Main_2__N_1696[0] , sysclk_c, 
            usb_uart_tx_c, txSend, txAct, txDone) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \r_SM_Main_2__N_1696[0] ;
    input sysclk_c;
    output usb_uart_tx_c;
    input [7:0]txSend;
    output txAct;
    output txDone;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    
    wire n12741;
    wire [7:0]r_Clock_Count;   // c:/pproj/lserial/lserial/source/uart.v(194[16:29])
    wire [7:0]n37;
    wire [7:0]r_Tx_Data;   // c:/pproj/lserial/lserial/source/uart.v(196[16:25])
    wire [2:0]r_Bit_Index;   // c:/pproj/lserial/lserial/source/uart.v(195[16:27])
    
    wire n13600, n13599;
    wire [2:0]r_SM_Main;   // c:/pproj/lserial/lserial/source/uart.v(193[16:25])
    
    wire n13335;
    wire [2:0]r_SM_Main_2__N_1693;
    
    wire n14273, n13373, n14227, n14229, n14272, sysclk_c_enable_180, 
        sysclk_c_enable_118, n13442, sysclk_c_enable_223, n13602, n13603, 
        n13604, o_Tx_Serial_N_1723, n13601, o_Tx_Done_N_1724, sysclk_c_enable_169, 
        n13343, n3, n7101, n12738, n9636, n3_adj_1727, n12739, 
        n12740, sysclk_c_enable_189, n12842, n4, n7100;
    
    CCU2D r_Clock_Count_3543_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12741), .S0(n37[7]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_9.INIT1 = 16'h0000;
    defparam r_Clock_Count_3543_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_9.INJECT1_1 = "NO";
    LUT4 i11707_3_lut (.A(r_Tx_Data[2]), .B(r_Tx_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n13600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11707_3_lut.init = 16'hcaca;
    LUT4 i11706_3_lut (.A(r_Tx_Data[0]), .B(r_Tx_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n13599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11706_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n13335)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i11917_4_lut_then_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_1693[1]), 
         .C(r_SM_Main[1]), .Z(n14273)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i11917_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .C(r_SM_Main[1]), 
         .D(r_Bit_Index[2]), .Z(n13373)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1_4_lut_3_lut_4_lut.init = 16'h7080;
    LUT4 i2_2_lut_rep_190_3_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), 
         .C(r_Bit_Index[2]), .Z(n14227)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_rep_190_3_lut.init = 16'h8080;
    LUT4 i7508_2_lut_rep_192_3_lut (.A(\r_SM_Main_2__N_1696[0] ), .B(r_SM_Main[0]), 
         .C(r_SM_Main[1]), .Z(n14229)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i7508_2_lut_rep_192_3_lut.init = 16'h0202;
    LUT4 i11917_4_lut_else_3_lut (.A(r_SM_Main[2]), .B(\r_SM_Main_2__N_1696[0] ), 
         .C(r_SM_Main[1]), .Z(n14272)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i11917_4_lut_else_3_lut.init = 16'h0404;
    LUT4 i1_1_lut_rep_203 (.A(r_SM_Main[2]), .Z(sysclk_c_enable_180)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_203.init = 16'h5555;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), 
         .C(r_SM_Main[0]), .D(\r_SM_Main_2__N_1696[0] ), .Z(sysclk_c_enable_118)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i11960_2_lut_3_lut_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .Z(n13442)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i11960_2_lut_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i14_4_lut_4_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_1693[1]), 
         .C(r_SM_Main[0]), .D(r_SM_Main[1]), .Z(sysclk_c_enable_223)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i14_4_lut_4_lut_4_lut.init = 16'h400f;
    LUT4 i11709_3_lut (.A(r_Tx_Data[6]), .B(r_Tx_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n13602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11709_3_lut.init = 16'hcaca;
    L6MUX21 i11712 (.D0(n13603), .D1(n13604), .SD(r_Bit_Index[2]), .Z(o_Tx_Serial_N_1723));
    LUT4 i11708_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n13601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i11708_3_lut.init = 16'hcaca;
    LUT4 r_SM_Main_2__N_1693_1__bdd_4_lut (.A(r_SM_Main_2__N_1693[1]), .B(r_SM_Main[2]), 
         .C(r_SM_Main[1]), .D(r_SM_Main[0]), .Z(o_Tx_Done_N_1724)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam r_SM_Main_2__N_1693_1__bdd_4_lut.init = 16'h200c;
    FD1P3AX r_Bit_Index_i0 (.D(n13343), .SP(sysclk_c_enable_169), .CK(sysclk_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3AX o_Tx_Serial_44 (.D(n3), .SP(sysclk_c_enable_180), .CK(sysclk_c), 
            .Q(usb_uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam o_Tx_Serial_44.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(txSend[0]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n7101), .CK(sysclk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    CCU2D r_Clock_Count_3543_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n12738), .S1(n37[0]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_3543_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_3543_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_1.INJECT1_1 = "NO";
    LUT4 i11968_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_1693[1]), 
         .D(r_SM_Main[2]), .Z(n9636)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(203[7] 302[14])
    defparam i11968_3_lut_4_lut.init = 16'h00f1;
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_1727), .CK(sysclk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(txSend[7]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(txSend[6]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(txSend[5]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(txSend[4]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(txSend[3]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(txSend[2]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i1 (.D(txSend[1]), .SP(sysclk_c_enable_118), .CK(sysclk_c), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    PFUMX i11711 (.BLUT(n13601), .ALUT(n13602), .C0(r_Bit_Index[1]), .Z(n13604));
    PFUMX i11710 (.BLUT(n13599), .ALUT(n13600), .C0(r_Bit_Index[1]), .Z(n13603));
    CCU2D r_Clock_Count_3543_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12738), .COUT(n12739), .S0(n37[1]), 
          .S1(n37[2]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_3.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_3543__i1 (.D(n37[1]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i2 (.D(n37[2]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i3 (.D(n37[3]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i4 (.D(n37[4]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i5 (.D(n37[5]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i6 (.D(n37[6]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i7 (.D(n37[7]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i7.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n13335), .SP(sysclk_c_enable_169), .CK(sysclk_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n13373), .SP(sysclk_c_enable_169), .CK(sysclk_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_1693[1]), .CK(sysclk_c), .CD(n13442), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    CCU2D r_Clock_Count_3543_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12740), .COUT(n12741), .S0(n37[5]), 
          .S1(n37[6]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_3543_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12739), .COUT(n12740), .S0(n37[3]), 
          .S1(n37[4]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_5.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_3543__i0 (.D(n37[0]), .SP(sysclk_c_enable_180), 
            .CD(n9636), .CK(sysclk_c), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i0.GSR = "ENABLED";
    LUT4 i5993_2_lut_3_lut (.A(r_SM_Main_2__N_1693[1]), .B(r_SM_Main[0]), 
         .C(r_SM_Main[1]), .Z(n3_adj_1727)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i5993_2_lut_3_lut.init = 16'h7878;
    FD1P3AX r_Tx_Active_46 (.D(n14229), .SP(sysclk_c_enable_189), .CK(sysclk_c), 
            .Q(txAct)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Active_46.GSR = "ENABLED";
    FD1P3AX r_Tx_Done_43 (.D(o_Tx_Done_N_1724), .SP(sysclk_c_enable_223), 
            .CK(sysclk_c), .Q(txDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Done_43.GSR = "ENABLED";
    LUT4 i11965_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_1693[1]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(sysclk_c_enable_169)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;
    defparam i11965_4_lut.init = 16'h0405;
    LUT4 i1_2_lut (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n13343)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i9505_4_lut (.A(r_Clock_Count[6]), .B(r_Clock_Count[7]), .C(n12842), 
         .D(r_Clock_Count[5]), .Z(r_SM_Main_2__N_1693[1])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i9505_4_lut.init = 16'heccc;
    LUT4 i2_4_lut (.A(r_Clock_Count[4]), .B(r_Clock_Count[2]), .C(r_Clock_Count[3]), 
         .D(n4), .Z(n12842)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i1_2_lut_adj_231 (.A(r_Clock_Count[0]), .B(r_Clock_Count[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_231.init = 16'h8888;
    LUT4 r_SM_Main_2__I_0_55_i3_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_1723), 
         .C(r_SM_Main[1]), .Z(n3)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(203[7] 302[14])
    defparam r_SM_Main_2__I_0_55_i3_3_lut.init = 16'he5e5;
    LUT4 i5175_3_lut (.A(n7100), .B(r_SM_Main_2__N_1693[1]), .C(r_SM_Main[0]), 
         .Z(n7101)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(203[7] 302[14])
    defparam i5175_3_lut.init = 16'h3a3a;
    LUT4 i5174_4_lut (.A(\r_SM_Main_2__N_1696[0] ), .B(n14227), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_1693[1]), .Z(n7100)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(203[7] 302[14])
    defparam i5174_4_lut.init = 16'hca0a;
    PFUMX i12178 (.BLUT(n14272), .ALUT(n14273), .C0(r_SM_Main[0]), .Z(sysclk_c_enable_189));
    
endmodule
//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=104) 
//

module \uart_rx(CLKS_PER_BIT=104)  (GND_net, sysclk_c, usb_uart_rx_c, 
            rxRecv, recv, \recCte[1] , n13453) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sysclk_c;
    input usb_uart_rx_c;
    output [7:0]rxRecv;
    output recv;
    input \recCte[1] ;
    output n13453;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    wire [7:0]r_Clock_Count;   // c:/pproj/lserial/lserial/source/uart.v(57[17:30])
    wire [7:0]n37;
    
    wire n12742;
    wire [2:0]r_Bit_Index;   // c:/pproj/lserial/lserial/source/uart.v(58[17:28])
    
    wire n14235;
    wire [2:0]r_SM_Main;   // c:/pproj/lserial/lserial/source/uart.v(61[17:26])
    wire [2:0]r_SM_Main_2__N_1623;
    
    wire n11454, n6, sysclk_c_enable_233, r_Rx_Data;
    wire [2:0]r_SM_Main_2__N_1629;
    
    wire n13575, n9629, n13377, sysclk_c_enable_179, n14217, n13337, 
        sysclk_c_enable_173, sysclk_c_enable_182, n3, r_Rx_Data_R, n13329, 
        n1, sysclk_c_enable_176, sysclk_c_enable_174, n13470, o_Rx_DV_N_1662, 
        sysclk_c_enable_181, n11451, n14218, sysclk_c_enable_172, n12743, 
        sysclk_c_enable_170, sysclk_c_enable_171, sysclk_c_enable_175, 
        n12745, n12744, n12843, n4, n13573, n6_adj_1726;
    
    CCU2D r_Clock_Count_3545_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n12742), .S1(n37[0]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_3545_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_3545_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_1.INJECT1_1 = "NO";
    LUT4 i9516_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n14235), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1623[2]), .Z(n11454)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i9516_3_lut_4_lut.init = 16'h08f0;
    LUT4 i11977_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(n6), .D(r_SM_Main[0]), 
         .Z(sysclk_c_enable_233)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(77[7] 168[14])
    defparam i11977_4_lut.init = 16'h4555;
    LUT4 i2_2_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_1629[0]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i1_4_lut (.A(r_SM_Main[2]), .B(n13575), .C(r_SM_Main_2__N_1623[2]), 
         .D(r_SM_Main[1]), .Z(n9629)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h5011;
    LUT4 i1_2_lut_rep_198 (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n14235)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_198.init = 16'h8888;
    LUT4 i1_4_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .C(r_SM_Main[1]), 
         .D(r_Bit_Index[2]), .Z(n13377)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1_4_lut_3_lut_4_lut.init = 16'h7080;
    LUT4 i11907_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_1623[2]), .Z(sysclk_c_enable_179)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i11907_3_lut_4_lut.init = 16'h1101;
    LUT4 i2_3_lut_rep_180_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_1623[2]), .Z(n14217)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_3_lut_rep_180_4_lut.init = 16'hefff;
    LUT4 i1_3_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n13337)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i11947_3_lut_4_lut (.A(r_Bit_Index[1]), .B(n14217), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[2]), .Z(sysclk_c_enable_173)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i11947_3_lut_4_lut.init = 16'h0100;
    LUT4 i11920_2_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(n14217), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[2]), .Z(sysclk_c_enable_182)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i11920_2_lut_3_lut_4_lut.init = 16'h0001;
    FD1S3IX r_SM_Main_i0 (.D(n3), .CK(sysclk_c), .CD(r_SM_Main[2]), .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_50 (.D(r_Rx_Data_R), .CK(sysclk_c), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(66[10] 70[8])
    defparam r_Rx_Data_50.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n13329), .SP(sysclk_c_enable_179), .CK(sysclk_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_49 (.D(usb_uart_rx_c), .CK(sysclk_c), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(66[10] 70[8])
    defparam r_Rx_Data_R_49.GSR = "ENABLED";
    PFUMX r_SM_Main_2__I_0_56_Mux_0_i3 (.BLUT(n1), .ALUT(n11454), .C0(r_SM_Main[1]), 
          .Z(n3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;
    LUT4 i11940_2_lut_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), 
         .C(n14217), .D(r_Bit_Index[1]), .Z(sysclk_c_enable_176)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i11940_2_lut_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i11944_2_lut_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), 
         .C(n14217), .D(r_Bit_Index[1]), .Z(sysclk_c_enable_174)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i11944_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i11957_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n13470)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/pproj/lserial/lserial/source/uart.v(77[7] 168[14])
    defparam i11957_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1623[2]), .Z(o_Rx_DV_N_1662)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/uart.v(77[7] 168[14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i14_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1623[2]), .Z(sysclk_c_enable_181)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(77[7] 168[14])
    defparam i14_4_lut_4_lut.init = 16'h2505;
    FD1S3IX r_SM_Main_i1 (.D(n11451), .CK(sysclk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_181 (.A(r_Rx_Data), .B(r_SM_Main_2__N_1629[0]), .Z(n14218)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_181.init = 16'heeee;
    LUT4 i11949_3_lut_4_lut (.A(r_Bit_Index[1]), .B(n14217), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[0]), .Z(sysclk_c_enable_172)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i11949_3_lut_4_lut.init = 16'h0200;
    LUT4 i11682_2_lut_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_1629[0]), 
         .C(r_SM_Main[0]), .Z(n13575)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i11682_2_lut_3_lut.init = 16'he0e0;
    CCU2D r_Clock_Count_3545_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12742), .COUT(n12743), .S0(n37[1]), 
          .S1(n37[2]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_3.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_3545__i1 (.D(n37[1]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i2 (.D(n37[2]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i3 (.D(n37[3]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i4 (.D(n37[4]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i5 (.D(n37[5]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i6 (.D(n37[6]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i7 (.D(n37[7]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i7.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_1623[2]), .CK(sysclk_c), .CD(n13470), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(sysclk_c_enable_170), .CK(sysclk_c), 
            .Q(rxRecv[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(sysclk_c_enable_171), .CK(sysclk_c), 
            .Q(rxRecv[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(sysclk_c_enable_172), .CK(sysclk_c), 
            .Q(rxRecv[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(sysclk_c_enable_173), .CK(sysclk_c), 
            .Q(rxRecv[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(sysclk_c_enable_174), .CK(sysclk_c), 
            .Q(rxRecv[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    LUT4 i11942_2_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(n14217), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[0]), .Z(sysclk_c_enable_175)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i11942_2_lut_3_lut_4_lut.init = 16'h0020;
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(sysclk_c_enable_175), .CK(sysclk_c), 
            .Q(rxRecv[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    CCU2D r_Clock_Count_3545_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12745), .S0(n37[7]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_9.INIT1 = 16'h0000;
    defparam r_Clock_Count_3545_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_3545_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12744), .COUT(n12745), .S0(n37[5]), 
          .S1(n37[6]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_7.INJECT1_1 = "NO";
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(sysclk_c_enable_176), .CK(sysclk_c), 
            .Q(rxRecv[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    CCU2D r_Clock_Count_3545_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12743), .COUT(n12744), .S0(n37[3]), 
          .S1(n37[4]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_5.INJECT1_1 = "NO";
    FD1P3AX r_Bit_Index_i1 (.D(n13337), .SP(sysclk_c_enable_179), .CK(sysclk_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    LUT4 i11952_2_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(n14217), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[0]), .Z(sysclk_c_enable_171)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i11952_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 r_SM_Main_2__I_0_56_Mux_0_i1_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_1629[0]), 
         .C(r_SM_Main[0]), .Z(n1)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(77[7] 168[14])
    defparam r_SM_Main_2__I_0_56_Mux_0_i1_3_lut.init = 16'hc5c5;
    FD1P3AX r_Bit_Index_i2 (.D(n13377), .SP(sysclk_c_enable_179), .CK(sysclk_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_DV_52 (.D(o_Rx_DV_N_1662), .SP(sysclk_c_enable_181), .CK(sysclk_c), 
            .Q(recv)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_DV_52.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i0 (.D(r_Rx_Data), .SP(sysclk_c_enable_182), .CK(sysclk_c), 
            .Q(rxRecv[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i0.GSR = "ENABLED";
    LUT4 r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut (.A(r_SM_Main_2__N_1623[2]), 
         .B(r_SM_Main[0]), .C(n14218), .D(r_SM_Main[1]), .Z(n11451)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut.init = 16'h770c;
    LUT4 i1_2_lut (.A(\recCte[1] ), .B(rxRecv[5]), .Z(n13453)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_228 (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n13329)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_228.init = 16'h4444;
    FD1P3IX r_Clock_Count_3545__i0 (.D(n37[0]), .SP(sysclk_c_enable_233), 
            .CD(n9629), .CK(sysclk_c), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i0.GSR = "ENABLED";
    LUT4 i9511_4_lut (.A(r_Clock_Count[6]), .B(r_Clock_Count[7]), .C(n12843), 
         .D(r_Clock_Count[5]), .Z(r_SM_Main_2__N_1623[2])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i9511_4_lut.init = 16'heccc;
    LUT4 i2_4_lut (.A(r_Clock_Count[4]), .B(r_Clock_Count[2]), .C(r_Clock_Count[3]), 
         .D(n4), .Z(n12843)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i1_2_lut_adj_229 (.A(r_Clock_Count[0]), .B(r_Clock_Count[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_229.init = 16'h8888;
    LUT4 i4_4_lut (.A(r_Clock_Count[3]), .B(n13573), .C(r_Clock_Count[7]), 
         .D(n6_adj_1726), .Z(r_SM_Main_2__N_1629[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i11680_4_lut (.A(r_Clock_Count[0]), .B(r_Clock_Count[1]), .C(r_Clock_Count[5]), 
         .D(r_Clock_Count[4]), .Z(n13573)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11680_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_230 (.A(r_Clock_Count[6]), .B(r_Clock_Count[2]), .Z(n6_adj_1726)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_230.init = 16'heeee;
    LUT4 i11954_2_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(n14217), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[2]), .Z(sysclk_c_enable_170)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i11954_2_lut_3_lut_4_lut.init = 16'h0010;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

