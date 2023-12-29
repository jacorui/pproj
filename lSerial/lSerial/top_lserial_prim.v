// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Fri Dec 29 18:33:10 2023
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
    
    wire GND_net, sw_c_3, sw_c_2, sw_c_1, sw_c_0, led_c_7_c, usb_uart_tx_c, 
        led_c_5, led_c_4, led_c_3, led_c_2, led_c_1, led_c_0, VCC_net, 
        n15303, n15302;
    
    VHI i2 (.Z(VCC_net));
    IB sw_pad_3 (.I(sw[3]), .O(sw_c_3));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    IB sysclk_pad (.I(sysclk), .O(sysclk_c));   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    OB usb_uart_tx_pad (.I(usb_uart_tx_c), .O(usb_uart_tx));   // c:/pproj/lserial/lserial/source/top_lserial.v(38[18:29])
    OB master_i2c_scl_pad (.I(GND_net), .O(master_i2c_scl));   // c:/pproj/lserial/lserial/source/top_lserial.v(28[20:34])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    OB led_pad_6 (.I(usb_uart_tx_c), .O(led[6]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    IB led_c_7_pad (.I(usb_uart_rx), .O(led_c_7_c));   // c:/pproj/lserial/lserial/source/top_lserial.v(37[19:30])
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // c:/pproj/lserial/lserial/source/top_lserial.v(15[21:23])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    OB led_pad_7 (.I(led_c_7_c), .O(led[7]));   // c:/pproj/lserial/lserial/source/top_lserial.v(21[21:24])
    LUT4 m1_lut (.Z(n15303)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 m0_lut (.Z(n15302)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    debCom debCom_inst (.sysclk_c(sysclk_c), .led_c_0(led_c_0), .sw_c_3(sw_c_3), 
           .sw_c_2(sw_c_2), .GND_net(GND_net), .led_c_5(led_c_5), .led_c_4(led_c_4), 
           .led_c_3(led_c_3), .led_c_2(led_c_2), .led_c_1(led_c_1), .sw_c_1(sw_c_1), 
           .sw_c_0(sw_c_0), .n15303(n15303), .n15302(n15302), .usb_uart_tx_c(usb_uart_tx_c), 
           .led_c_7_c(led_c_7_c)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(67[9] 84[4])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module debCom
//

module debCom (sysclk_c, led_c_0, sw_c_3, sw_c_2, GND_net, led_c_5, 
            led_c_4, led_c_3, led_c_2, led_c_1, sw_c_1, sw_c_0, 
            n15303, n15302, usb_uart_tx_c, led_c_7_c) /* synthesis syn_module_defined=1 */ ;
    input sysclk_c;
    output led_c_0;
    input sw_c_3;
    input sw_c_2;
    input GND_net;
    output led_c_5;
    output led_c_4;
    output led_c_3;
    output led_c_2;
    output led_c_1;
    input sw_c_1;
    input sw_c_0;
    input n15303;
    input n15302;
    output usb_uart_tx_c;
    input led_c_7_c;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    
    wire n7;
    wire [7:0]n2561;
    
    wire n14276;
    wire [7:0]txSend_7__N_66;
    wire [7:0]\bufferL1[8] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    
    wire sysclk_c_enable_235, n14975, bufferL1_8__3__N_249, bufferL1_8__2__N_252, 
        bufferL1_8__1__N_255, bufferL1_8__0__N_258;
    wire [7:0]\recBuf[0] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    
    wire n14924, n2345, n14945, n14188;
    wire [4:0]recCte;   // c:/pproj/lserial/lserial/source/debcom.v(85[13:19])
    
    wire recv, n13415, n14, n6, n7_adj_1736, n14101, n4, n5;
    wire [7:0]\bufferL1[7] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    
    wire bufferL1_7__7__N_261, n14100, n14_adj_1737, n11, n14099, 
        n4_adj_1738, n5_adj_1739, n14349, n14350;
    wire [7:0]stm;   // c:/pproj/lserial/lserial/source/debcom.v(87[13:16])
    
    wire n14351, n14098, n12, n13, n14972, bufferL1_7__6__N_264, 
        n14102, n5_adj_1740, n6_adj_1741;
    wire [7:0]\bufferL1[6] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[6] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire lns;
    wire [90:0]n5257;
    
    wire n14929;
    wire [31:0]preFullVal;   // c:/pproj/lserial/lserial/source/debcom.v(99[13:23])
    
    wire n14923, n13631;
    wire [7:0]\bufferL1[9] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[9] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14870, n2146;
    wire [2:0]cmd;   // c:/pproj/lserial/lserial/source/debcom.v(92[13:16])
    wire [7:0]\bufferL2[8] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14871, n14141;
    wire [7:0]\bufferL2[3] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    wire [7:0]\bufferL2[2] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14279;
    wire [7:0]\bufferL2[0] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n1, n14920, n9, sysclk_c_enable_24, n14797, n14326, n14_adj_1742, 
        n14784, n14320, n14_adj_1743, n38;
    wire [7:0]rxRecv;   // c:/pproj/lserial/lserial/source/debcom.v(49[14:20])
    
    wire n14987, n14095, n14_adj_1744, n11_adj_1745;
    wire [0:0]n1923;
    
    wire n14113, n14986, n14916, n2496, n14190, n14199, n14993;
    wire [7:0]\recBuf[3] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    
    wire n15, n14126;
    wire [0:0]n1506;
    
    wire n14992;
    wire [7:0]\bufferL1[10] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    wire [7:0]\bufferL2[10] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    wire [0:0]n1509;
    
    wire n14192;
    wire [7:0]\bufferL2[7] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14347, n14962, n14189, n14346, sysclk_c_enable_158;
    wire [7:0]rxConv;   // c:/pproj/lserial/lserial/source/debcom.v(101[13:19])
    
    wire n4_adj_1746, n12_adj_1747, n10, n14959, n14996, n14995, 
        n14973, n14948;
    wire [7:0]n826;
    
    wire n10_adj_1748, n14263, n14344, n14938, n14343, n14352, n14353, 
        n14354, n14173, n14172, n14925, n14980, n14181, n10_adj_1749, 
        n14311, n16;
    wire [0:0]n978;
    
    wire n14_adj_1750, n14338;
    wire [7:0]preAddress;   // c:/pproj/lserial/lserial/source/debcom.v(97[13:23])
    
    wire n13_adj_1751, n14706, n18, n8332, n21, n10_adj_1752, n14733, 
        n14873, n14_adj_1753, n7_adj_1754, n14_adj_1755, n14337, n9_adj_1756, 
        n14342, n14_adj_1757, n14308, n14329, n9_adj_1758, n10231, 
        recBuf_12__7__N_1308, n8746;
    wire [103:0]recBuf_12__7__N_75;
    
    wire n14171, n14808, n14928, n14974, n14335;
    wire [7:0]txSend;   // c:/pproj/lserial/lserial/source/debcom.v(45[14:20])
    
    wire sysclk_c_enable_127, sysclk_c_enable_16, n6895, n14298, n14170, 
        n14168, n14731, n14169, n14741, n14949, n14165, n14868, 
        n14869, n14291;
    wire [7:0]\bufferL2[1] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14788, n11710;
    wire [7:0]n2624;
    
    wire n403, n9747, n9743, n14164, n9741, n14163, n9745, n9749, 
        n9751, n9739, sysclk_c_enable_14, n6780, n6778, n13781, 
        n6774, n6772, n6770, n6768, n14127, n6764, n14071, n6752, 
        n6750, n6748, sysclk_c_enable_79, n14083, n6738, n6730, 
        n14830, n14826, n14086, n6714, sysclk_c_enable_80, n14185, 
        n6706, n14224, n6698, n6694, n6690, n6682, n14186, n13719, 
        n14222, n6666, n6662, n13721, n14089, n7_adj_1759;
    wire [7:0]\bufferL2[5] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n14985, sysclk_c_enable_77, n6474, sysclk_c_enable_65, n6630, 
        n13771, n6622, n6618;
    wire [7:0]\bufferL2[4] ;   // c:/pproj/lserial/lserial/source/debcom.v(84[13:21])
    
    wire n6610, n14982, n14088, n14162, n6586, n14092, n6570, 
        n14179, n6470, n14112, n14963, n14223, n6526, n14108, 
        n14093, n11362, n6490, n6486, n14193, n6428, lns_N_1596, 
        bufferL1_7__5__N_267, sysclk_c_enable_120;
    wire [7:0]\recBuf[5] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    
    wire n14341, n14914, n14161;
    wire [7:0]\recBuf[4] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    wire [7:0]\recBuf[2] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    wire [7:0]\recBuf[1] ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    
    wire flag, flag_N_1586;
    wire [2:0]cmd_2__N_1087;
    
    wire bufferL1_7__4__N_270, bufferL1_7__3__N_273, sysclk_c_enable_113;
    wire [7:0]n17;
    
    wire bufferL1_7__2__N_276, bufferL1_7__1__N_279, n14104, n14103;
    wire [7:0]\bufferL1[5] ;   // c:/pproj/lserial/lserial/source/debcom.v(83[13:21])
    
    wire n13436, n14160, stm_7__N_1432, txAct, n14937, sysclk_c_enable_217, 
        n14284, n14166, sysclk_c_enable_159, n13670, n14340, bufferL1_7__0__N_282, 
        n14728;
    wire [7:0]n3883;
    
    wire tick, n14919, n14912;
    wire [7:0]devOut;   // c:/pproj/lserial/lserial/source/debcom.v(24[22:28])
    
    wire sysclk_c_enable_101, n14730, n14913, n14984, n14214, n14330, 
        n14258, n9710, bufferL1_6__7__N_285, n14278, n14303, n14302, 
        n13694;
    wire [0:0]n1538;
    wire [0:0]n1544;
    
    wire rstOutCall, n13385;
    wire [4:0]n32;
    
    wire n14968, n14927, n14943, n14077, n14081, n14075;
    wire [7:0]n828;
    
    wire n14828, n14827, n14829;
    wire [7:0]n830;
    
    wire n10_adj_1760, n14080, n14079, n14078;
    wire [0:0]n1503;
    
    wire n14076, n14951, n10236, n14740, n14961, n10237, n14936, 
        n8750, n14950;
    wire [7:0]n827;
    
    wire n14824, n14823, n14825;
    wire [0:0]n946;
    wire [0:0]n943;
    wire [0:0]n949;
    
    wire n8754, n14988, n14965;
    wire [7:0]n829;
    
    wire n14932, n14960, n14128, sysclk_c_enable_139, n14156, sysclk_c_enable_135, 
        n14917, n10243, sysclk_c_enable_131, sysclk_c_enable_143, n14122;
    wire [0:0]n2699;
    
    wire n14309, n14310, n15_adj_1761, n10841, n38_adj_1762, n14922, 
        n11234, sysclk_c_enable_219, recBuf_12__7__N_1298, recBuf_12__7__N_1306, 
        n14288, n14290, recBuf_12__7__N_1282, sysclk_c_enable_218, recBuf_12__7__N_1265, 
        recBuf_12__7__N_1297, n14295, n14297, recBuf_12__7__N_1283, 
        n13403, n13404, n14806, n14805, n14807, txDone, recBuf_12__7__N_1266, 
        recBuf_12__7__N_1295, n14282, recBuf_12__7__N_1281, recBuf_12__7__N_1280, 
        n14_adj_1763, recBuf_12__7__N_1264, recBuf_12__7__N_1268, recBuf_12__7__N_1267, 
        recBuf_12__7__N_1294, recBuf_12__7__N_1269, recBuf_12__7__N_1270, 
        recBuf_12__7__N_1284, recBuf_12__7__N_1285, recBuf_12__7__N_1287, 
        n4_adj_1764, recBuf_12__7__N_1296, recBuf_12__7__N_1286, recBuf_12__7__N_1271, 
        n13405, recBuf_12__7__N_1299, recBuf_12__7__N_1300, recBuf_12__7__N_1301, 
        recBuf_12__7__N_1302, recBuf_12__7__N_1303, sysclk_c_enable_147, 
        n2, n14280, n14281, n14283, n14306, n3, n14782, n14305, 
        n14307, recBuf_12__7__N_1272, recBuf_12__7__N_1291, bufferL1_8__4__N_246, 
        recBuf_12__7__N_1273, recBuf_12__7__N_1275, recBuf_12__7__N_1276, 
        sysclk_c_enable_151, recBuf_12__7__N_1277, recBuf_12__7__N_1278, 
        n14783, n11_adj_1765, recBuf_12__7__N_1279;
    wire [0:0]n2028;
    
    wire n13_adj_1766, sysclk_c_enable_155, recBuf_12__7__N_1288, bufferL1_6__6__N_288, 
        recBuf_12__7__N_1289, highRead, n10_adj_1767, recBuf_12__7__N_1292, 
        recBuf_12__7__N_1293, n14915, recBuf_12__7__N_1310, lns_N_1599, 
        n14221, n14964, n14796, n14795, n14967, recBuf_12__7__N_1307, 
        n14918, recBuf_12__7__N_1305, bufferL1_6__5__N_291, n14257, 
        n14328, n14789, n14790;
    wire [0:0]n1748;
    
    wire recBuf_12__7__N_1309, n14941, n14256, bufferL1_6__4__N_294, 
        bufferL1_6__3__N_297;
    wire [0:0]n1783;
    
    wire bufferL1_6__2__N_300, bufferL1_6__1__N_303, bufferL1_6__0__N_306, 
        n14940, bufferL1_5__7__N_309, bufferL1_5__6__N_312, n14934, 
        n14334, bufferL1_5__5__N_315, bufferL1_5__4__N_318, n15_adj_1768;
    wire [0:0]n1818;
    
    wire n2_adj_1769;
    wire [0:0]n1888;
    
    wire n5_adj_1770, bufferL1_5__3__N_321, bufferL1_5__2__N_324, bufferL1_5__1__N_327, 
        n14983;
    wire [0:0]n2168;
    
    wire n13_adj_1771, bufferL1_5__0__N_330, n14336, bufferL1_10__7__N_187, 
        sysclk_c_enable_117, n6067, n14939, bufferL1_10__6__N_192, bufferL1_10__5__N_195, 
        n14958, n8756, bufferL1_10__4__N_198;
    wire [0:0]n2063;
    
    wire n14708;
    wire [0:0]n3189;
    
    wire bufferL1_10__3__N_201;
    wire [0:0]n2139;
    
    wire n8043, bufferL1_10__2__N_204, n11565, bufferL1_10__1__N_207, 
        bufferL1_10__0__N_210, bufferL1_9__7__N_213;
    wire [0:0]n2133;
    
    wire n14804, bufferL1_9__6__N_216, bufferL1_9__5__N_219, bufferL1_9__4__N_222, 
        bufferL1_9__3__N_225, bufferL1_9__2__N_228;
    wire [0:0]n2979;
    
    wire bufferL1_9__1__N_231, bufferL1_9__0__N_234, bufferL1_8__7__N_237, 
        bufferL1_8__6__N_240, n8296, bufferL1_8__5__N_243, n14970, n14931, 
        rstOut0, sysclk_c_enable_220;
    wire [2:0]r_SM_Main_2__N_1704;
    
    wire n14707, n10_adj_1772, n14944, n14348, n14345, n14966, n14218, 
        n14947, n8295, n8, n2_adj_1773, n8_adj_1774;
    wire [0:0]n2454;
    
    wire n14969, n14946, n14742, n8752, lns_N_1598, n6_adj_1775, 
        n14_adj_1776, n10_adj_1777, n4_adj_1778, n13458, n13492, n13467, 
        n14732, n14729, n14935, n14981, n8748, n14971, n14174, 
        n14872;
    
    PFUMX mux_1536_i7 (.BLUT(n7), .ALUT(n2561[6]), .C0(n14276), .Z(txSend_7__N_66[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    FD1P3DX \bufferL1_8[[3__1916  (.D(bufferL1_8__3__N_249), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[8] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[3__1916 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[2__1917  (.D(bufferL1_8__2__N_252), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[8] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[2__1917 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[1__1918  (.D(bufferL1_8__1__N_255), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[8] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[1__1918 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[0__1919  (.D(bufferL1_8__0__N_258), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[8] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[0__1919 .GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_4_lut (.A(\recBuf[0] [2]), .B(n14924), .C(n2345), 
         .D(n14945), .Z(n14188)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+((D)+!C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hfdcd;
    FD1P3DX recCte_3541__i0 (.D(n13415), .SP(recv), .CK(sysclk_c), .CD(n14975), 
            .Q(recCte[0]));   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam recCte_3541__i0.GSR = "ENABLED";
    PFUMX i13 (.BLUT(n14), .ALUT(n6), .C0(\recBuf[0] [0]), .Z(n7_adj_1736));
    PFUMX i11 (.BLUT(n14101), .ALUT(n4), .C0(\recBuf[0] [0]), .Z(n5));
    FD1P3DX \bufferL1_7[[7__1920  (.D(bufferL1_7__7__N_261), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[7] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[7__1920 .GSR = "ENABLED";
    PFUMX i9078 (.BLUT(n14100), .ALUT(n14_adj_1737), .C0(\recBuf[0] [0]), 
          .Z(n11));
    PFUMX i11_adj_242 (.BLUT(n14099), .ALUT(n4_adj_1738), .C0(\recBuf[0] [0]), 
          .Z(n5_adj_1739));
    PFUMX i12393 (.BLUT(n14349), .ALUT(n14350), .C0(stm[0]), .Z(n14351));
    PFUMX i19 (.BLUT(n14098), .ALUT(n12), .C0(\recBuf[0] [0]), .Z(n13));
    LUT4 i1_2_lut_rep_213 (.A(\recBuf[0] [6]), .B(\recBuf[0] [7]), .Z(n14972)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_2_lut_rep_213.init = 16'h2222;
    FD1P3DX \bufferL1_7[[6__1921  (.D(bufferL1_7__6__N_264), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[7] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[6__1921 .GSR = "ENABLED";
    PFUMX i12 (.BLUT(n14102), .ALUT(n5_adj_1740), .C0(\recBuf[0] [0]), 
          .Z(n6_adj_1741));
    LUT4 mux_3239_i50_3_lut (.A(\bufferL1[6] [1]), .B(\bufferL2[6] [1]), 
         .C(lns), .Z(n5257[49])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i50_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(\recBuf[0] [4]), .B(n14929), .C(preFullVal[8]), 
         .D(n14923), .Z(n13631)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 \bufferL1_8[[1__bdd_3_lut_12790  (.A(\bufferL1[9] [1]), .B(lns), 
         .C(\bufferL2[9] [1]), .Z(n14870)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \bufferL1_8[[1__bdd_3_lut_12790 .init = 16'he2e2;
    LUT4 i5874_2_lut_rep_164 (.A(n2146), .B(cmd[1]), .Z(n14923)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i5874_2_lut_rep_164.init = 16'h2222;
    LUT4 \bufferL1_8[[1__bdd_3_lut_12805  (.A(\bufferL1[8] [1]), .B(\bufferL2[8] [1]), 
         .C(lns), .Z(n14871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \bufferL1_8[[1__bdd_3_lut_12805 .init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\recBuf[0] [6]), .B(\recBuf[0] [7]), .C(\recBuf[0] [2]), 
         .D(\recBuf[0] [3]), .Z(n14141)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i12321_4_lut_4_lut_4_lut (.A(lns), .B(stm[0]), .C(\bufferL2[3] [0]), 
         .D(\bufferL2[2] [0]), .Z(n14279)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i12321_4_lut_4_lut_4_lut.init = 16'hb391;
    LUT4 mux_1524_Mux_5_i1_4_lut_4_lut_4_lut (.A(lns), .B(stm[0]), .C(\bufferL2[2] [5]), 
         .D(\bufferL2[0] [5]), .Z(n1)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_1524_Mux_5_i1_4_lut_4_lut_4_lut.init = 16'hb391;
    LUT4 i1_3_lut_rep_161 (.A(n2345), .B(\recBuf[0] [0]), .C(\recBuf[0] [2]), 
         .Z(n14920)) /* synthesis lut_function=(A+!(B+(C))) */ ;
    defparam i1_3_lut_rep_161.init = 16'habab;
    LUT4 i12564_3_lut_4_lut (.A(n2146), .B(cmd[1]), .C(n9), .D(cmd[0]), 
         .Z(sysclk_c_enable_24)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i12564_3_lut_4_lut.init = 16'hdf00;
    LUT4 i9559_2_lut_2_lut_4_lut (.A(stm[2]), .B(n14797), .C(n14326), 
         .D(stm[1]), .Z(n14_adj_1742)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam i9559_2_lut_2_lut_4_lut.init = 16'h5044;
    LUT4 i9506_2_lut_2_lut_4_lut (.A(stm[2]), .B(n14784), .C(n14320), 
         .D(stm[1]), .Z(n14_adj_1743)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam i9506_2_lut_2_lut_4_lut.init = 16'h5044;
    LUT4 i2_3_lut_4_lut_adj_243 (.A(\recBuf[0] [6]), .B(\recBuf[0] [7]), 
         .C(\recBuf[0] [5]), .D(\recBuf[0] [4]), .Z(n38)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i2_3_lut_4_lut_adj_243.init = 16'h0002;
    LUT4 i1_4_lut_then_4_lut (.A(rxRecv[5]), .B(recCte[2]), .C(recCte[3]), 
         .D(recCte[4]), .Z(n14987)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(85[13:19])
    defparam i1_4_lut_then_4_lut.init = 16'hffc2;
    PFUMX i9111 (.BLUT(n14095), .ALUT(n14_adj_1744), .C0(\recBuf[0] [0]), 
          .Z(n11_adj_1745));
    LUT4 i2_3_lut_4_lut_adj_244 (.A(n2146), .B(cmd[1]), .C(n14929), .D(n1923[0]), 
         .Z(n14113)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i2_3_lut_4_lut_adj_244.init = 16'h2000;
    LUT4 i1_4_lut_else_4_lut (.A(recCte[2]), .B(recCte[3]), .C(recCte[4]), 
         .Z(n14986)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(85[13:19])
    defparam i1_4_lut_else_4_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_157_3_lut_4_lut (.A(n2146), .B(cmd[1]), .C(\recBuf[0] [4]), 
         .D(n14929), .Z(n14916)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_2_lut_rep_157_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_165 (.A(cmd[1]), .B(n2496), .Z(n14924)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_165.init = 16'hbbbb;
    LUT4 i1_2_lut_4_lut (.A(n2345), .B(\recBuf[0] [0]), .C(\recBuf[0] [2]), 
         .D(n14924), .Z(n14190)) /* synthesis lut_function=(A+(B (D)+!B ((D)+!C))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hffab;
    LUT4 i1_4_lut_then_4_lut_adj_245 (.A(n14199), .B(\recBuf[0] [4]), .C(\recBuf[0] [1]), 
         .D(\recBuf[0] [5]), .Z(n14993)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut_adj_245.init = 16'h0001;
    LUT4 i9311_2_lut (.A(\recBuf[3] [3]), .B(n15), .Z(bufferL1_8__3__N_249)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9311_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut_adj_246 (.A(\recBuf[0] [4]), .B(n14929), .C(preFullVal[12]), 
         .D(n14923), .Z(n14126)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_246.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_3_lut (.A(\recBuf[0] [2]), .B(preFullVal[21]), .C(\recBuf[0] [0]), 
         .Z(n1506[0])) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_4_lut_4_lut_3_lut.init = 16'h5e5e;
    LUT4 i1_4_lut_else_4_lut_adj_247 (.A(n14199), .B(\recBuf[0] [4]), .C(\recBuf[0] [1]), 
         .Z(n14992)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_4_lut_else_4_lut_adj_247.init = 16'h4040;
    LUT4 i12362_4_lut (.A(\bufferL1[10] [0]), .B(lns), .C(stm[0]), .D(\bufferL2[10] [0]), 
         .Z(n14320)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D)))) */ ;
    defparam i12362_4_lut.init = 16'hcec2;
    LUT4 i1_2_lut_3_lut (.A(cmd[1]), .B(n2496), .C(n1509[0]), .Z(n14192)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i12389_3_lut (.A(\bufferL1[7] [5]), .B(\bufferL2[7] [5]), .C(lns), 
         .Z(n14347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12389_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(cmd[1]), .B(n2496), .C(n2345), .D(n14962), 
         .Z(n14189)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hbfbb;
    LUT4 i12388_3_lut (.A(\bufferL1[6] [5]), .B(\bufferL2[6] [5]), .C(lns), 
         .Z(n14346)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12388_3_lut.init = 16'hcaca;
    FD1P3AX preFullVal_i0_i0 (.D(rxConv[0]), .SP(sysclk_c_enable_158), .CK(sysclk_c), 
            .Q(preFullVal[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i0.GSR = "ENABLED";
    PFUMX i9018 (.BLUT(n4_adj_1746), .ALUT(n12_adj_1747), .C0(\recBuf[0] [0]), 
          .Z(n10));
    LUT4 i1_4_lut_then_4_lut_adj_248 (.A(n2496), .B(cmd[1]), .C(n2345), 
         .D(n14959), .Z(n14996)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_4_lut_then_4_lut_adj_248.init = 16'hfdff;
    LUT4 i1_4_lut_else_4_lut_adj_249 (.A(n2496), .B(cmd[1]), .C(n2345), 
         .D(n14959), .Z(n14995)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;
    defparam i1_4_lut_else_4_lut_adj_249.init = 16'hdddf;
    LUT4 i9435_3_lut (.A(rxRecv[5]), .B(n14973), .C(n14948), .Z(n826[5])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:12])
    defparam i9435_3_lut.init = 16'hcece;
    LUT4 i1_3_lut_rep_214 (.A(recCte[4]), .B(recCte[3]), .C(recCte[2]), 
         .Z(n14973)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_rep_214.init = 16'heaea;
    LUT4 i5_4_lut (.A(rxRecv[5]), .B(n10_adj_1748), .C(rxRecv[2]), .D(n14263), 
         .Z(n15)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut.init = 16'hefff;
    LUT4 i12386_3_lut (.A(\bufferL1[9] [5]), .B(\bufferL2[9] [5]), .C(lns), 
         .Z(n14344)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12386_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(rxRecv[7]), .B(rxRecv[6]), .C(rxRecv[4]), .D(rxRecv[1]), 
         .Z(n10_adj_1748)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_179_4_lut (.A(recCte[4]), .B(recCte[3]), .C(recCte[2]), 
         .D(n15), .Z(n14938)) /* synthesis lut_function=(A+(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_rep_179_4_lut.init = 16'heaff;
    LUT4 i12385_3_lut (.A(\bufferL1[8] [5]), .B(\bufferL2[8] [5]), .C(lns), 
         .Z(n14343)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12385_3_lut.init = 16'hcaca;
    PFUMX i12396 (.BLUT(n14352), .ALUT(n14353), .C0(stm[0]), .Z(n14354));
    LUT4 i1_2_lut_3_lut_3_lut (.A(n14948), .B(rxRecv[6]), .C(n14973), 
         .Z(n14173)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_3_lut_adj_250 (.A(n14948), .B(rxRecv[4]), .C(n14973), 
         .Z(n14172)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_250.init = 16'h0404;
    LUT4 i12557_2_lut_rep_166 (.A(\recBuf[0] [2]), .B(n2345), .Z(n14925)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12557_2_lut_rep_166.init = 16'h1111;
    LUT4 i9482_4_lut_else_4_lut (.A(\recBuf[0] [0]), .B(cmd[1]), .C(n2496), 
         .D(\recBuf[0] [2]), .Z(n14980)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9482_4_lut_else_4_lut.init = 16'hdccc;
    LUT4 i1_2_lut_3_lut_adj_251 (.A(\recBuf[0] [2]), .B(n2345), .C(\recBuf[0] [0]), 
         .Z(n14181)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_251.init = 16'h1010;
    LUT4 mux_1524_Mux_5_i15_4_lut_4_lut (.A(stm[2]), .B(stm[3]), .C(n10_adj_1749), 
         .D(n14311), .Z(n2561[5])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam mux_1524_Mux_5_i15_4_lut_4_lut.init = 16'h7340;
    PFUMX i28 (.BLUT(n16), .ALUT(n978[0]), .C0(n2345), .Z(n14_adj_1750));
    LUT4 i12380_3_lut (.A(\bufferL1[7] [3]), .B(\bufferL2[7] [3]), .C(lns), 
         .Z(n14338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12380_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_252 (.A(\recBuf[0] [2]), .B(n2345), .C(preAddress[1]), 
         .Z(n13_adj_1751)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_252.init = 16'h1010;
    LUT4 \recBuf_0[[1__bdd_2_lut  (.A(preAddress[4]), .B(\recBuf[0] [4]), 
         .Z(n14706)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam \recBuf_0[[1__bdd_2_lut .init = 16'h2222;
    PFUMX i34 (.BLUT(n18), .ALUT(n8332), .C0(\recBuf[0] [5]), .Z(n21));
    LUT4 mux_1524_Mux_3_i15_4_lut_4_lut (.A(stm[2]), .B(stm[3]), .C(n10_adj_1752), 
         .D(n14733), .Z(n2561[3])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam mux_1524_Mux_3_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i9556_2_lut_2_lut (.A(stm[2]), .B(n14873), .Z(n14_adj_1753)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam i9556_2_lut_2_lut.init = 16'h4444;
    PFUMX mux_1524_Mux_7_i15 (.BLUT(n7_adj_1754), .ALUT(n14_adj_1755), .C0(stm[3]), 
          .Z(n2561[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i12379_3_lut (.A(\bufferL1[6] [3]), .B(\bufferL2[6] [3]), .C(lns), 
         .Z(n14337)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12379_3_lut.init = 16'hcaca;
    LUT4 i9573_4_lut_4_lut (.A(stm[2]), .B(stm[1]), .C(n9_adj_1756), .D(n14342), 
         .Z(n14_adj_1757)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam i9573_4_lut_4_lut.init = 16'h5140;
    PFUMX mux_1524_Mux_4_i15 (.BLUT(n14308), .ALUT(n14_adj_1757), .C0(stm[3]), 
          .Z(n2561[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    PFUMX i12371 (.BLUT(n5257[54]), .ALUT(n5257[62]), .C0(stm[0]), .Z(n14329));
    LUT4 i9605_4_lut_4_lut (.A(stm[2]), .B(stm[1]), .C(n9_adj_1758), .D(n14351), 
         .Z(n14_adj_1755)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam i9605_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_3_lut_adj_253 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[2]), 
         .Z(n14095)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_253.init = 16'h1010;
    LUT4 n10231_bdd_4_lut_12814 (.A(n10231), .B(rxRecv[3]), .C(recBuf_12__7__N_1308), 
         .D(n8746), .Z(recBuf_12__7__N_75[3])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n10231_bdd_4_lut_12814.init = 16'hf088;
    LUT4 i1_2_lut_3_lut_adj_254 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[7]), 
         .Z(n14102)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_254.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_3_lut_adj_255 (.A(n14948), .B(rxRecv[3]), .C(n14973), 
         .Z(n14171)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_255.init = 16'h0404;
    LUT4 mux_1524_Mux_6_i15_4_lut_4_lut (.A(stm[2]), .B(n14808), .C(n14928), 
         .D(rxRecv[6]), .Z(n2561[6])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(600[10:19])
    defparam mux_1524_Mux_6_i15_4_lut_4_lut.init = 16'hf404;
    LUT4 i5860_1_lut_rep_215 (.A(lns), .Z(n14974)) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i5860_1_lut_rep_215.init = 16'h5555;
    LUT4 i12377_3_lut (.A(\bufferL1[9] [3]), .B(\bufferL2[9] [3]), .C(lns), 
         .Z(n14335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12377_3_lut.init = 16'hcaca;
    FD1P3DX txSend_i0 (.D(txSend_7__N_66[0]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i0.GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[7__1992  (.D(n6895), .SP(sysclk_c_enable_16), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[10] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[7__1992 .GSR = "ENABLED";
    PFUMX mux_1524_Mux_2_i15 (.BLUT(n14298), .ALUT(n14_adj_1742), .C0(stm[3]), 
          .Z(n2561[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i1_2_lut_3_lut_3_lut_adj_256 (.A(n14948), .B(rxRecv[2]), .C(n14973), 
         .Z(n14170)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_256.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_3_lut_adj_257 (.A(n14948), .B(rxRecv[1]), .C(n14973), 
         .Z(n14168)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_257.init = 16'h0404;
    LUT4 n5305_bdd_3_lut_3_lut (.A(lns), .B(\bufferL2[0] [3]), .C(stm[2]), 
         .Z(n14731)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam n5305_bdd_3_lut_3_lut.init = 16'h5d5d;
    LUT4 i1_2_lut_3_lut_3_lut_adj_258 (.A(n14948), .B(rxRecv[0]), .C(n14973), 
         .Z(n14169)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_258.init = 16'h0404;
    LUT4 \bufferL2_0[[2__bdd_4_lut_4_lut  (.A(lns), .B(\bufferL2[2] [2]), 
         .C(stm[1]), .D(\bufferL2[0] [2]), .Z(n14741)) /* synthesis lut_function=((B (C+(D))+!B !(C+!(D)))+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam \bufferL2_0[[2__bdd_4_lut_4_lut .init = 16'hdfd5;
    LUT4 i1_2_lut_3_lut_3_lut_adj_259 (.A(n14949), .B(rxRecv[7]), .C(n14973), 
         .Z(n14165)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_259.init = 16'h0404;
    LUT4 i12305_2_lut (.A(rxRecv[3]), .B(rxRecv[0]), .Z(n14263)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12305_2_lut.init = 16'h8888;
    PFUMX i12788 (.BLUT(n14868), .ALUT(n14974), .C0(stm[0]), .Z(n14869));
    PFUMX mux_1524_Mux_1_i15 (.BLUT(n14291), .ALUT(n14_adj_1753), .C0(stm[3]), 
          .Z(n2561[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 \bufferL2_0[[1__bdd_4_lut_12723_4_lut  (.A(lns), .B(\bufferL2[3] [1]), 
         .C(\bufferL2[1] [1]), .D(stm[1]), .Z(n14788)) /* synthesis lut_function=((B (C+(D))+!B !((D)+!C))+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam \bufferL2_0[[1__bdd_4_lut_12723_4_lut .init = 16'hddf5;
    LUT4 i9471_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[3]), .D(n403), 
         .Z(n9747)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9471_4_lut_4_lut.init = 16'h0074;
    LUT4 i9469_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[5]), .D(n403), 
         .Z(n9743)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9469_4_lut_4_lut.init = 16'h0074;
    LUT4 i1_2_lut_3_lut_3_lut_adj_260 (.A(n14949), .B(rxRecv[6]), .C(n14973), 
         .Z(n14164)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_260.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_261 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[0]), 
         .Z(n14098)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_261.init = 16'h1010;
    LUT4 i9468_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[6]), .D(n403), 
         .Z(n9741)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9468_4_lut_4_lut.init = 16'h0074;
    LUT4 i1_2_lut_3_lut_3_lut_adj_262 (.A(n14949), .B(rxRecv[4]), .C(n14973), 
         .Z(n14163)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_262.init = 16'h0404;
    LUT4 i9470_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[4]), .D(n403), 
         .Z(n9745)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9470_4_lut_4_lut.init = 16'h0074;
    LUT4 i9472_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[2]), .D(n403), 
         .Z(n9749)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9472_4_lut_4_lut.init = 16'h0074;
    LUT4 i1_2_lut_3_lut_adj_263 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[3]), 
         .Z(n14099)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_263.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_264 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[6]), 
         .Z(n14100)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_264.init = 16'h1010;
    LUT4 i9473_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[1]), .D(n403), 
         .Z(n9751)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9473_4_lut_4_lut.init = 16'h0074;
    LUT4 i9467_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[7]), .D(n403), 
         .Z(n9739)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9467_4_lut_4_lut.init = 16'h0074;
    FD1P3DX \bufferL2_10[[6__1993  (.D(n6780), .SP(sysclk_c_enable_14), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[10] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[6__1993 .GSR = "ENABLED";
    FD1P3BX \bufferL2_10[[5__1994  (.D(n6778), .SP(sysclk_c_enable_16), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL2[10] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[5__1994 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[4__1995  (.D(n13781), .SP(sysclk_c_enable_16), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[10] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[4__1995 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[3__1996  (.D(n6774), .SP(sysclk_c_enable_16), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[10] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[3__1996 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[2__1997  (.D(n6772), .SP(sysclk_c_enable_14), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[10] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[2__1997 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[1__1998  (.D(n6770), .SP(sysclk_c_enable_16), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[10] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[1__1998 .GSR = "ENABLED";
    FD1P3DX \bufferL2_10[[0__1999  (.D(n6768), .SP(sysclk_c_enable_16), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[10] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_10[[0__1999 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[7__2000  (.D(n14127), .SP(sysclk_c_enable_24), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[9] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[7__2000 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[6__2001  (.D(n6764), .SP(sysclk_c_enable_24), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[9] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[6__2001 .GSR = "ENABLED";
    FD1P3BX \bufferL2_9[[5__2002  (.D(n14071), .SP(sysclk_c_enable_24), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL2[9] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[5__2002 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[4__2003  (.D(n14126), .SP(sysclk_c_enable_24), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[9] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[4__2003 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[3__2004  (.D(n6752), .SP(sysclk_c_enable_24), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[9] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[3__2004 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[2__2005  (.D(n6750), .SP(sysclk_c_enable_24), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[9] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[2__2005 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[1__2006  (.D(n6748), .SP(sysclk_c_enable_24), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[9] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[1__2006 .GSR = "ENABLED";
    FD1P3DX \bufferL2_9[[0__2007  (.D(n13631), .SP(sysclk_c_enable_24), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[9] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_9[[0__2007 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[7__2008  (.D(n14083), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[8] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[7__2008 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[6__2009  (.D(n6738), .SP(sysclk_c_enable_79), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[8] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[6__2009 .GSR = "ENABLED";
    FD1P3BX \bufferL2_8[[5__2010  (.D(n14192), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL2[8] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[5__2010 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[4__2011  (.D(n6730), .SP(sysclk_c_enable_79), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[8] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[4__2011 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[3__2012  (.D(n14830), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[8] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[3__2012 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[2__2013  (.D(n14826), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[8] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[2__2013 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[1__2014  (.D(n14086), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[8] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[1__2014 .GSR = "ENABLED";
    FD1P3DX \bufferL2_8[[0__2015  (.D(n6714), .SP(sysclk_c_enable_79), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[8] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_8[[0__2015 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[7__2016  (.D(n14185), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[7] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[7__2016 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[6__2017  (.D(n6706), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[7] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[6__2017 .GSR = "ENABLED";
    FD1P3BX \bufferL2_7[[5__2018  (.D(n14224), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL2[7] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[5__2018 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[4__2019  (.D(n6698), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[7] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[4__2019 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[3__2020  (.D(n6694), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[7] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[3__2020 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[2__2021  (.D(n6690), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[7] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[2__2021 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[1__2022  (.D(n14113), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[7] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[1__2022 .GSR = "ENABLED";
    FD1P3DX \bufferL2_7[[0__2023  (.D(n6682), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[7] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_7[[0__2023 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[7__2024  (.D(n14186), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[6] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[7__2024 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[6__2025  (.D(n13719), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[6] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[6__2025 .GSR = "ENABLED";
    FD1P3BX \bufferL2_6[[5__2026  (.D(n14222), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL2[6] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[5__2026 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[4__2027  (.D(n6666), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[6] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[4__2027 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[3__2028  (.D(n6662), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[6] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[3__2028 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[2__2029  (.D(n13721), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[6] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[2__2029 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[1__2030  (.D(n14089), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[6] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[1__2030 .GSR = "ENABLED";
    FD1P3DX \bufferL2_6[[0__2031  (.D(n7_adj_1759), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[6] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_6[[0__2031 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[6__2033  (.D(n14985), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[5] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_5[[6__2033 .GSR = "ENABLED";
    FD1P3BX \bufferL2_5[[5__2034  (.D(n6474), .SP(sysclk_c_enable_77), .CK(sysclk_c), 
            .PD(n14975), .Q(\bufferL2[5] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_5[[5__2034 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[4__2035  (.D(cmd[1]), .SP(sysclk_c_enable_65), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[5] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_5[[4__2035 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[3__2036  (.D(n6630), .SP(sysclk_c_enable_77), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[5] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_5[[3__2036 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[2__2037  (.D(n13771), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[5] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_5[[2__2037 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[1__2038  (.D(n6622), .SP(sysclk_c_enable_77), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[5] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_5[[1__2038 .GSR = "ENABLED";
    FD1P3DX \bufferL2_5[[0__2039  (.D(n6618), .SP(sysclk_c_enable_79), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[5] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_5[[0__2039 .GSR = "ENABLED";
    FD1P3DX \bufferL2_4[[6__2041  (.D(n6610), .SP(sysclk_c_enable_77), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[4] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_4[[6__2041 .GSR = "ENABLED";
    FD1P3DX \bufferL2_4[[4__2043  (.D(n14982), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[4] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_4[[4__2043 .GSR = "ENABLED";
    FD1P3DX \bufferL2_4[[2__2045  (.D(n14088), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[4] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_4[[2__2045 .GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_adj_265 (.A(n14949), .B(rxRecv[3]), .C(n14973), 
         .Z(n14162)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_265.init = 16'h0404;
    FD1P3DX \bufferL2_4[[0__2047  (.D(n6586), .SP(sysclk_c_enable_79), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[4] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_4[[0__2047 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[6__2049  (.D(n14092), .SP(sysclk_c_enable_77), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[3] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_3[[6__2049 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[4__2051  (.D(n6570), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[3] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_3[[4__2051 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[3__2052  (.D(n14179), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[3] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_3[[3__2052 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[1__2054  (.D(n6470), .SP(sysclk_c_enable_77), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[3] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_3[[1__2054 .GSR = "ENABLED";
    FD1P3DX \bufferL2_3[[0__2055  (.D(n14112), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[3] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_3[[0__2055 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[6__2057  (.D(n14963), .SP(sysclk_c_enable_65), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[2] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_2[[6__2057 .GSR = "ENABLED";
    FD1P3BX \bufferL2_2[[5__2058  (.D(n14190), .SP(sysclk_c_enable_77), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL2[2] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_2[[5__2058 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[4__2059  (.D(n14223), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[2] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_2[[4__2059 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[3__2060  (.D(n14916), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[2] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_2[[3__2060 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[2__2061  (.D(n6526), .SP(sysclk_c_enable_79), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[2] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_2[[2__2061 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[1__2062  (.D(n14108), .SP(sysclk_c_enable_80), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[2] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_2[[1__2062 .GSR = "ENABLED";
    FD1P3DX \bufferL2_2[[0__2063  (.D(n14093), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[2] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_2[[0__2063 .GSR = "ENABLED";
    FD1P3DX \bufferL2_1[[3__2068  (.D(n11362), .SP(sysclk_c_enable_77), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[1] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_1[[3__2068 .GSR = "ENABLED";
    FD1P3DX \bufferL2_1[[2__2069  (.D(n6490), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[1] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_1[[2__2069 .GSR = "ENABLED";
    FD1P3DX \bufferL2_1[[1__2070  (.D(n6486), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[1] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_1[[1__2070 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[6__2073  (.D(n6474), .SP(sysclk_c_enable_77), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[0] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_0[[6__2073 .GSR = "ENABLED";
    FD1P3BX \bufferL2_0[[5__2074  (.D(n6470), .SP(sysclk_c_enable_77), .CK(sysclk_c), 
            .PD(n14975), .Q(\bufferL2[0] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_0[[5__2074 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[3__2076  (.D(n14189), .SP(sysclk_c_enable_77), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[0] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_0[[3__2076 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[2__2077  (.D(n14193), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[0] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_0[[2__2077 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[1__2078  (.D(n14188), .SP(sysclk_c_enable_79), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL2[0] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_0[[1__2078 .GSR = "ENABLED";
    FD1P3DX \bufferL2_0[[0__2079  (.D(n6428), .SP(sysclk_c_enable_80), .CK(sysclk_c), 
            .CD(n14975), .Q(\bufferL2[0] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL2_0[[0__2079 .GSR = "ENABLED";
    FD1S3DX lns_2080 (.D(lns_N_1596), .CK(sysclk_c), .CD(n14975), .Q(lns)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam lns_2080.GSR = "ENABLED";
    FD1P3BX \bufferL1_7[[5__1922  (.D(bufferL1_7__5__N_267), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL1[7] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[5__1922 .GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_266 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[17]), 
         .Z(n14101)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_266.init = 16'h1010;
    FD1P3AX preAddress_i0_i0 (.D(rxConv[0]), .SP(sysclk_c_enable_120), .CK(sysclk_c), 
            .Q(preAddress[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i0.GSR = "ENABLED";
    FD1S3DX \recBuf_5[[7__2146  (.D(recBuf_12__7__N_75[47]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[5] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[7__2146 .GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_267 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[1]), 
         .Z(n14)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_267.init = 16'h1010;
    LUT4 i12383_3_lut (.A(\bufferL1[9] [4]), .B(\bufferL2[9] [4]), .C(lns), 
         .Z(n14341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12383_3_lut.init = 16'hcaca;
    LUT4 \bufferL2_5[[6__bdd_4_lut_4_lut  (.A(lns), .B(stm[0]), .C(n5257[41]), 
         .D(\bufferL2[5] [6]), .Z(n14914)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam \bufferL2_5[[6__bdd_4_lut_4_lut .init = 16'hf3d1;
    LUT4 i1_2_lut_3_lut_3_lut_adj_268 (.A(n14949), .B(rxRecv[2]), .C(n14973), 
         .Z(n14161)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_268.init = 16'h0404;
    FD1S3DX \recBuf_5[[6__2147  (.D(recBuf_12__7__N_75[46]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[5] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[6__2147 .GSR = "ENABLED";
    FD1S3BX \recBuf_5[[5__2148  (.D(recBuf_12__7__N_75[45]), .CK(sysclk_c), 
            .PD(n14975), .Q(\recBuf[5] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[5__2148 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[4__2149  (.D(recBuf_12__7__N_75[44]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[5] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[4__2149 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[3__2150  (.D(recBuf_12__7__N_75[43]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[5] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[3__2150 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[2__2151  (.D(recBuf_12__7__N_75[42]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[5] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[2__2151 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[1__2152  (.D(recBuf_12__7__N_75[41]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[5] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[1__2152 .GSR = "ENABLED";
    FD1S3DX \recBuf_5[[0__2153  (.D(recBuf_12__7__N_75[40]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[5] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_5[[0__2153 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[7__2154  (.D(recBuf_12__7__N_75[39]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[4] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[7__2154 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[6__2155  (.D(recBuf_12__7__N_75[38]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[4] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[6__2155 .GSR = "ENABLED";
    FD1S3BX \recBuf_4[[5__2156  (.D(recBuf_12__7__N_75[37]), .CK(sysclk_c), 
            .PD(n14975), .Q(\recBuf[4] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[5__2156 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[4__2157  (.D(recBuf_12__7__N_75[36]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[4] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[4__2157 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[3__2158  (.D(recBuf_12__7__N_75[35]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[4] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[3__2158 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[2__2159  (.D(recBuf_12__7__N_75[34]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[4] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[2__2159 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[1__2160  (.D(recBuf_12__7__N_75[33]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[4] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[1__2160 .GSR = "ENABLED";
    FD1S3DX \recBuf_4[[0__2161  (.D(recBuf_12__7__N_75[32]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[4] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_4[[0__2161 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[7__2162  (.D(recBuf_12__7__N_75[31]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[3] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[7__2162 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[6__2163  (.D(recBuf_12__7__N_75[30]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[3] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[6__2163 .GSR = "ENABLED";
    FD1S3BX \recBuf_3[[5__2164  (.D(recBuf_12__7__N_75[29]), .CK(sysclk_c), 
            .PD(n14975), .Q(\recBuf[3] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[5__2164 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[4__2165  (.D(recBuf_12__7__N_75[28]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[3] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[4__2165 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[3__2166  (.D(recBuf_12__7__N_75[27]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[3] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[3__2166 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[2__2167  (.D(recBuf_12__7__N_75[26]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[3] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[2__2167 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[1__2168  (.D(recBuf_12__7__N_75[25]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[3] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[1__2168 .GSR = "ENABLED";
    FD1S3DX \recBuf_3[[0__2169  (.D(recBuf_12__7__N_75[24]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[3] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_3[[0__2169 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[7__2170  (.D(recBuf_12__7__N_75[23]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[2] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[7__2170 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[6__2171  (.D(recBuf_12__7__N_75[22]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[2] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[6__2171 .GSR = "ENABLED";
    FD1S3BX \recBuf_2[[5__2172  (.D(recBuf_12__7__N_75[21]), .CK(sysclk_c), 
            .PD(n14975), .Q(\recBuf[2] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[5__2172 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[4__2173  (.D(recBuf_12__7__N_75[20]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[2] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[4__2173 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[3__2174  (.D(recBuf_12__7__N_75[19]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[2] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[3__2174 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[2__2175  (.D(recBuf_12__7__N_75[18]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[2] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[2__2175 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[1__2176  (.D(recBuf_12__7__N_75[17]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[2] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[1__2176 .GSR = "ENABLED";
    FD1S3DX \recBuf_2[[0__2177  (.D(recBuf_12__7__N_75[16]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[2] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_2[[0__2177 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[7__2178  (.D(recBuf_12__7__N_75[15]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[1] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[7__2178 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[6__2179  (.D(recBuf_12__7__N_75[14]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[1] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[6__2179 .GSR = "ENABLED";
    FD1S3BX \recBuf_1[[5__2180  (.D(recBuf_12__7__N_75[13]), .CK(sysclk_c), 
            .PD(n14975), .Q(\recBuf[1] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[5__2180 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[4__2181  (.D(recBuf_12__7__N_75[12]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[1] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[4__2181 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[3__2182  (.D(recBuf_12__7__N_75[11]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[1] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[3__2182 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[2__2183  (.D(recBuf_12__7__N_75[10]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[1] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[2__2183 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[1__2184  (.D(recBuf_12__7__N_75[9]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[1] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[1__2184 .GSR = "ENABLED";
    FD1S3DX \recBuf_1[[0__2185  (.D(recBuf_12__7__N_75[8]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[1] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_1[[0__2185 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[7__2186  (.D(recBuf_12__7__N_75[7]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[0] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[7__2186 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[6__2187  (.D(recBuf_12__7__N_75[6]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[0] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[6__2187 .GSR = "ENABLED";
    FD1S3BX \recBuf_0[[5__2188  (.D(recBuf_12__7__N_75[5]), .CK(sysclk_c), 
            .PD(n14975), .Q(\recBuf[0] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[5__2188 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[4__2189  (.D(recBuf_12__7__N_75[4]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[0] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[4__2189 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[3__2190  (.D(recBuf_12__7__N_75[3]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[0] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[3__2190 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[2__2191  (.D(recBuf_12__7__N_75[2]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[0] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[2__2191 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[1__2192  (.D(recBuf_12__7__N_75[1]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[0] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[1__2192 .GSR = "ENABLED";
    FD1S3DX \recBuf_0[[0__2193  (.D(recBuf_12__7__N_75[0]), .CK(sysclk_c), 
            .CD(n14975), .Q(\recBuf[0] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \recBuf_0[[0__2193 .GSR = "ENABLED";
    FD1S3DX flag_2194 (.D(flag_N_1586), .CK(sysclk_c), .CD(n14975), .Q(flag)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam flag_2194.GSR = "ENABLED";
    FD1S3DX cmd_i0 (.D(cmd_2__N_1087[0]), .CK(sysclk_c), .CD(n14975), 
            .Q(cmd[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam cmd_i0.GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[4__1923  (.D(bufferL1_7__4__N_270), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[7] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[4__1923 .GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[3__1924  (.D(bufferL1_7__3__N_273), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[7] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[3__1924 .GSR = "ENABLED";
    FD1P3DX led__0__i1 (.D(n17[0]), .SP(sysclk_c_enable_113), .CK(sysclk_c), 
            .CD(n14975), .Q(led_c_0));   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam led__0__i1.GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[2__1925  (.D(bufferL1_7__2__N_276), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[7] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[2__1925 .GSR = "ENABLED";
    FD1P3DX \bufferL1_7[[1__1926  (.D(bufferL1_7__1__N_279), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[7] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[1__1926 .GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_269 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[16]), 
         .Z(n14104)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_269.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_270 (.A(\recBuf[0] [2]), .B(n2345), .C(preFullVal[23]), 
         .Z(n14103)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_270.init = 16'h1010;
    LUT4 i2_3_lut_3_lut (.A(lns), .B(stm[0]), .C(\bufferL1[5] [7]), .Z(n13436)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_3_lut_adj_271 (.A(n14949), .B(rxRecv[1]), .C(n14973), 
         .Z(n14160)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_271.init = 16'h0404;
    LUT4 i12625_4_lut (.A(stm_7__N_1432), .B(txAct), .C(n14937), .D(flag), 
         .Z(sysclk_c_enable_217)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam i12625_4_lut.init = 16'hba10;
    PFUMX mux_1524_Mux_0_i15 (.BLUT(n14284), .ALUT(n14_adj_1743), .C0(stm[3]), 
          .Z(n2561[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i1_2_lut_3_lut_3_lut_adj_272 (.A(n14949), .B(rxRecv[0]), .C(n14973), 
         .Z(n14166)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_272.init = 16'h0404;
    LUT4 i7727_4_lut_4_lut (.A(txAct), .B(stm_7__N_1432), .C(n11710), 
         .D(lns), .Z(sysclk_c_enable_159)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i7727_4_lut_4_lut.init = 16'h2333;
    LUT4 i2_3_lut_3_lut_adj_273 (.A(lns), .B(\bufferL2[2] [5]), .C(stm[0]), 
         .Z(n13670)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i2_3_lut_3_lut_adj_273.init = 16'hfdfd;
    LUT4 i12382_3_lut (.A(\bufferL1[8] [4]), .B(\bufferL2[8] [4]), .C(lns), 
         .Z(n14340)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12382_3_lut.init = 16'hcaca;
    FD1P3DX \bufferL1_7[[0__1927  (.D(bufferL1_7__0__N_282), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[7] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_7[[0__1927 .GSR = "ENABLED";
    LUT4 n8043_bdd_3_lut (.A(n14337), .B(n14338), .C(stm[0]), .Z(n14728)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8043_bdd_3_lut.init = 16'hcaca;
    LUT4 i9481_2_lut (.A(n3883[1]), .B(tick), .Z(n2624[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9481_2_lut.init = 16'h8888;
    LUT4 i195_2_lut (.A(stm_7__N_1432), .B(flag), .Z(n403)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(598[13] 634[7])
    defparam i195_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_178 (.A(tick), .B(n11710), .Z(n14937)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_178.init = 16'heeee;
    LUT4 mux_2023_i1_3_lut_rep_160_4_lut_4_lut_4_lut (.A(\recBuf[0] [2]), 
         .B(\recBuf[0] [5]), .C(n2345), .D(\recBuf[0] [0]), .Z(n14919)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam mux_2023_i1_3_lut_rep_160_4_lut_4_lut_4_lut.init = 16'h05c5;
    LUT4 \bufferL2_4[[2__bdd_4_lut_4_lut  (.A(lns), .B(stm[0]), .C(n5257[42]), 
         .D(\bufferL2[4] [2]), .Z(n14912)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam \bufferL2_4[[2__bdd_4_lut_4_lut .init = 16'hf3d1;
    FD1P3DX devOut_i0_i0 (.D(preAddress[0]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i0.GSR = "ENABLED";
    LUT4 n5305_bdd_4_lut (.A(n5257[43]), .B(stm[2]), .C(lns), .D(\bufferL2[1] [3]), 
         .Z(n14730)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n5305_bdd_4_lut.init = 16'hb888;
    LUT4 i9480_2_lut (.A(n3883[2]), .B(tick), .Z(n2624[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9480_2_lut.init = 16'h8888;
    LUT4 \bufferL2_4[[4__bdd_4_lut_4_lut  (.A(lns), .B(stm[0]), .C(n5257[44]), 
         .D(\bufferL2[4] [4]), .Z(n14913)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam \bufferL2_4[[4__bdd_4_lut_4_lut .init = 16'hf3d1;
    LUT4 i9431_4_lut_then_3_lut (.A(cmd[1]), .B(\recBuf[0] [0]), .C(n2496), 
         .Z(n14984)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9431_4_lut_then_3_lut.init = 16'h4545;
    LUT4 i12618_2_lut_2_lut_3_lut_4_lut (.A(tick), .B(n11710), .C(stm_7__N_1432), 
         .D(txAct), .Z(n14214)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i12618_2_lut_2_lut_3_lut_4_lut.init = 16'h1011;
    LUT4 i1_2_lut_3_lut_adj_274 (.A(n14973), .B(n15), .C(recv), .Z(sysclk_c_enable_235)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_274.init = 16'hb0b0;
    LUT4 mux_1524_Mux_6_i7_4_lut_4_lut (.A(lns), .B(stm[2]), .C(n14330), 
         .D(n14258), .Z(n7)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_1524_Mux_6_i7_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i9479_2_lut (.A(n3883[3]), .B(tick), .Z(n2624[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9479_2_lut.init = 16'h8888;
    LUT4 i9289_4_lut_4_lut (.A(lns), .B(n11710), .C(n2624[0]), .D(n403), 
         .Z(n9710)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9289_4_lut_4_lut.init = 16'h0074;
    FD1P3DX \bufferL1_6[[7__1928  (.D(bufferL1_6__7__N_285), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[6] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[7__1928 .GSR = "ENABLED";
    LUT4 i12320_4_lut_4_lut (.A(lns), .B(\bufferL2[1] [2]), .C(stm[0]), 
         .D(\bufferL2[0] [0]), .Z(n14278)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i12320_4_lut_4_lut.init = 16'hdad0;
    LUT4 i12345_4_lut_4_lut (.A(lns), .B(\bufferL2[3] [4]), .C(stm[0]), 
         .D(\bufferL2[2] [4]), .Z(n14303)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i12345_4_lut_4_lut.init = 16'hdad0;
    LUT4 i12344_4_lut_4_lut (.A(lns), .B(\bufferL2[3] [4]), .C(stm[0]), 
         .D(\bufferL2[2] [0]), .Z(n14302)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i12344_4_lut_4_lut.init = 16'hdad0;
    PFUMX mux_905_i1 (.BLUT(n13694), .ALUT(n1538[0]), .C0(n2345), .Z(n1544[0]));
    LUT4 i12532_2_lut_3_lut (.A(n14973), .B(n15), .C(recCte[0]), .Z(n13415)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i12532_2_lut_3_lut.init = 16'h0404;
    LUT4 i12542_2_lut_rep_216 (.A(sw_c_3), .B(rstOutCall), .Z(n14975)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12542_2_lut_rep_216.init = 16'h1111;
    LUT4 mux_3239_i42_3_lut (.A(\bufferL1[5] [1]), .B(\bufferL2[5] [1]), 
         .C(lns), .Z(n5257[41])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i42_3_lut.init = 16'hcaca;
    LUT4 i9602_3_lut_4_lut (.A(n14973), .B(n15), .C(n13385), .D(recCte[3]), 
         .Z(n32[3])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i9602_3_lut_4_lut.init = 16'h0440;
    LUT4 i9603_3_lut_4_lut (.A(n14973), .B(n15), .C(n14968), .D(recCte[2]), 
         .Z(n32[2])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i9603_3_lut_4_lut.init = 16'h0440;
    LUT4 i9604_3_lut_4_lut (.A(n14973), .B(n15), .C(recCte[0]), .D(recCte[1]), 
         .Z(n32[1])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i9604_3_lut_4_lut.init = 16'h0440;
    LUT4 i9444_2_lut_rep_168_3_lut_3_lut_4_lut (.A(sw_c_3), .B(rstOutCall), 
         .C(n15), .D(recv), .Z(n14927)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i9444_2_lut_rep_168_3_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i9312_2_lut (.A(\recBuf[3] [2]), .B(n15), .Z(bufferL1_8__2__N_252)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9312_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(recCte[1]), .B(n14943), .C(n14973), 
         .D(rxRecv[1]), .Z(n14077)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i9478_2_lut (.A(n3883[4]), .B(tick), .Z(n2624[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9478_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_275 (.A(recCte[1]), .B(n14943), 
         .C(n14973), .D(rxRecv[0]), .Z(n14081)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_275.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_276 (.A(recCte[1]), .B(n14943), 
         .C(n14973), .D(rxRecv[7]), .Z(n14075)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_276.init = 16'h0400;
    LUT4 i9608_3_lut (.A(rxRecv[5]), .B(n14973), .C(n14949), .Z(n828[5])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:12])
    defparam i9608_3_lut.init = 16'hcece;
    PFUMX i12754 (.BLUT(n14828), .ALUT(n14827), .C0(n2345), .Z(n14829));
    LUT4 i9609_3_lut_4_lut (.A(recCte[1]), .B(n14943), .C(n14973), .D(rxRecv[5]), 
         .Z(n830[5])) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i9609_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i1_4_lut_4_lut (.A(\recBuf[0] [2]), .B(sw_c_2), .C(n2345), .D(\recBuf[0] [0]), 
         .Z(n10_adj_1760)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_4_lut_4_lut.init = 16'hf400;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_277 (.A(recCte[1]), .B(n14943), 
         .C(n14973), .D(rxRecv[6]), .Z(n14080)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_277.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_278 (.A(recCte[1]), .B(n14943), 
         .C(n14973), .D(rxRecv[4]), .Z(n14079)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_278.init = 16'h0400;
    LUT4 master_i2c_scl_c_31_bdd_2_lut_12760_3_lut (.A(cmd[1]), .B(n2496), 
         .C(n14829), .Z(n14830)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam master_i2c_scl_c_31_bdd_2_lut_12760_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_279 (.A(recCte[1]), .B(n14943), 
         .C(n14973), .D(rxRecv[3]), .Z(n14078)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_279.init = 16'h0400;
    PFUMX mux_879_i1 (.BLUT(n1506[0]), .ALUT(n1503[0]), .C0(n2345), .Z(n1509[0]));
    LUT4 i9580_4_lut (.A(\recBuf[0] [0]), .B(cmd[1]), .C(n2496), .D(n2345), 
         .Z(n6586)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9580_4_lut.init = 16'h2313;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_280 (.A(recCte[1]), .B(n14943), 
         .C(n14973), .D(rxRecv[2]), .Z(n14076)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_280.init = 16'h0400;
    LUT4 mux_3239_i61_3_lut (.A(\bufferL1[7] [4]), .B(\bufferL2[7] [4]), 
         .C(lns), .Z(n5257[60])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i61_3_lut.init = 16'hcaca;
    LUT4 i12545_2_lut_4_lut (.A(recCte[3]), .B(n14951), .C(recCte[0]), 
         .D(recCte[1]), .Z(n10231)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12545_2_lut_4_lut.init = 16'h0001;
    LUT4 i9476_2_lut (.A(n3883[5]), .B(tick), .Z(n2624[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9476_2_lut.init = 16'h8888;
    LUT4 i12614_2_lut_4_lut (.A(recCte[3]), .B(n14951), .C(recCte[0]), 
         .D(recCte[1]), .Z(n10236)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i12614_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_3239_i53_3_lut (.A(\bufferL1[6] [4]), .B(\bufferL2[6] [4]), 
         .C(lns), .Z(n5257[52])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i53_3_lut.init = 16'hcaca;
    LUT4 i9313_2_lut (.A(\recBuf[3] [1]), .B(n15), .Z(bufferL1_8__1__N_255)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9313_2_lut.init = 16'h2222;
    LUT4 i9475_2_lut (.A(n3883[6]), .B(tick), .Z(n2624[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9475_2_lut.init = 16'h8888;
    LUT4 i9474_2_lut (.A(n3883[7]), .B(tick), .Z(n2624[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9474_2_lut.init = 16'h8888;
    FD1P3DX devOut_i0_i7 (.D(preAddress[7]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i7.GSR = "ENABLED";
    LUT4 \bufferL2_0[[2__bdd_4_lut_12686  (.A(stm[1]), .B(\bufferL2[1] [2]), 
         .C(\bufferL2[4] [2]), .D(lns), .Z(n14740)) /* synthesis lut_function=(A (C (D))+!A (B (D))) */ ;
    defparam \bufferL2_0[[2__bdd_4_lut_12686 .init = 16'he400;
    LUT4 i2_4_lut_4_lut (.A(n14961), .B(n10237), .C(n14936), .D(n14951), 
         .Z(n8750)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h1fff;
    LUT4 \recBuf_4[[5__bdd_4_lut_4_lut  (.A(n14950), .B(n8750), .C(n827[5]), 
         .D(\recBuf[4] [5]), .Z(recBuf_12__7__N_75[37])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam \recBuf_4[[5__bdd_4_lut_4_lut .init = 16'hfc74;
    LUT4 mux_3239_i45_3_lut (.A(\bufferL1[5] [4]), .B(\bufferL2[5] [4]), 
         .C(lns), .Z(n5257[44])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i45_3_lut.init = 16'hcaca;
    PFUMX i12750 (.BLUT(n14824), .ALUT(n14823), .C0(n2345), .Z(n14825));
    PFUMX mux_463_i1 (.BLUT(n946[0]), .ALUT(n943[0]), .C0(n2345), .Z(n949[0]));
    LUT4 \recBuf_2[[5__bdd_4_lut_4_lut  (.A(n14950), .B(n8754), .C(n14988), 
         .D(\recBuf[2] [5]), .Z(recBuf_12__7__N_75[21])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam \recBuf_2[[5__bdd_4_lut_4_lut .init = 16'hfc74;
    LUT4 mux_3239_i55_3_lut (.A(\bufferL1[6] [6]), .B(\bufferL2[6] [6]), 
         .C(lns), .Z(n5257[54])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i55_3_lut.init = 16'hcaca;
    LUT4 i9578_2_lut_3_lut_3_lut_4_lut (.A(recCte[0]), .B(n14965), .C(n10237), 
         .D(rxRecv[7]), .Z(n829[7])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i9578_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i9576_2_lut_3_lut_3_lut_4_lut (.A(recCte[0]), .B(n14965), .C(n10237), 
         .D(rxRecv[6]), .Z(n829[6])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i9576_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i9574_2_lut_3_lut_3_lut_4_lut (.A(recCte[0]), .B(n14965), .C(n10237), 
         .D(rxRecv[4]), .Z(n829[4])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i9574_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 master_i2c_scl_c_31_bdd_2_lut_12756_3_lut (.A(cmd[1]), .B(n2496), 
         .C(n14825), .Z(n14826)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam master_i2c_scl_c_31_bdd_2_lut_12756_3_lut.init = 16'h4040;
    LUT4 mux_3239_i59_3_lut (.A(\bufferL1[7] [2]), .B(\bufferL2[7] [2]), 
         .C(lns), .Z(n5257[58])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i59_3_lut.init = 16'hcaca;
    LUT4 i9565_2_lut_3_lut_3_lut_4_lut (.A(recCte[0]), .B(n14965), .C(n10237), 
         .D(rxRecv[1]), .Z(n829[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i9565_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i9671_2_lut_3_lut_3_lut_4_lut (.A(recCte[0]), .B(n14965), .C(n10237), 
         .D(rxRecv[0]), .Z(n829[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i9671_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i9314_2_lut (.A(\recBuf[3] [0]), .B(n15), .Z(bufferL1_8__0__N_258)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9314_2_lut.init = 16'h2222;
    LUT4 i3774_2_lut_rep_173 (.A(n15), .B(recv), .Z(n14932)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i3774_2_lut_rep_173.init = 16'h4444;
    LUT4 mux_3239_i51_3_lut (.A(\bufferL1[6] [2]), .B(\bufferL2[6] [2]), 
         .C(lns), .Z(n5257[50])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i51_3_lut.init = 16'hcaca;
    LUT4 mux_3239_i43_3_lut (.A(\bufferL1[5] [2]), .B(\bufferL2[5] [2]), 
         .C(lns), .Z(n5257[42])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i43_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n14975), .B(n14960), .C(n14128), 
         .D(n14936), .Z(sysclk_c_enable_139)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_281 (.A(n14975), .B(n14960), .C(n14156), 
         .D(n14936), .Z(sysclk_c_enable_135)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_281.init = 16'h4000;
    LUT4 i12570_3_lut_4_lut (.A(cmd[1]), .B(n2496), .C(n14917), .D(cmd[0]), 
         .Z(sysclk_c_enable_16)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i12570_3_lut_4_lut.init = 16'hbf00;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n14975), .B(n14943), .C(recCte[1]), 
         .D(n14936), .Z(sysclk_c_enable_120)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 recCte_4__bdd_4_lut (.A(recCte[4]), .B(recCte[0]), .C(recCte[3]), 
         .D(recCte[2]), .Z(n10243)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam recCte_4__bdd_4_lut.init = 16'h0554;
    LUT4 i1_3_lut_4_lut_adj_282 (.A(n14936), .B(n10243), .C(n14951), .D(recCte[1]), 
         .Z(n8746)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i1_3_lut_4_lut_adj_282.init = 16'hdfdd;
    LUT4 i1_3_lut_4_lut_adj_283 (.A(n14936), .B(n10243), .C(n14951), .D(recCte[1]), 
         .Z(n8754)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;
    defparam i1_3_lut_4_lut_adj_283.init = 16'hdddf;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_284 (.A(n14975), .B(n14960), .C(n14961), 
         .D(n14936), .Z(sysclk_c_enable_131)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_284.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_285 (.A(n14975), .B(n14960), .C(n14968), 
         .D(n14936), .Z(sysclk_c_enable_143)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_285.init = 16'h4000;
    LUT4 mux_3239_i57_3_lut (.A(\bufferL1[7] [0]), .B(\bufferL2[7] [0]), 
         .C(lns), .Z(n5257[56])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i57_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(cmd[0]), .B(n14122), .Z(sysclk_c_enable_14)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 n2345_bdd_3_lut_12757_3_lut (.A(\recBuf[0] [2]), .B(preFullVal[19]), 
         .C(\recBuf[0] [0]), .Z(n14828)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam n2345_bdd_3_lut_12757_3_lut.init = 16'h0404;
    LUT4 i1_3_lut (.A(cmd[1]), .B(n2496), .C(n11), .Z(n6780)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut.init = 16'h5151;
    LUT4 i9600_3_lut (.A(n2699[0]), .B(cmd[1]), .C(n2146), .Z(n6570)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9600_3_lut.init = 16'hecec;
    LUT4 i1_3_lut_adj_286 (.A(cmd[1]), .B(n2496), .C(n11_adj_1745), .Z(n6772)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_adj_286.init = 16'h5151;
    PFUMX i12353 (.BLUT(n14309), .ALUT(n14310), .C0(stm[2]), .Z(n14311));
    LUT4 i9601_4_lut (.A(recCte[4]), .B(n14938), .C(recCte[3]), .D(n13385), 
         .Z(n32[4])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i9601_4_lut.init = 16'h1222;
    LUT4 i24_4_lut (.A(n14959), .B(\recBuf[0] [5]), .C(n14929), .D(\recBuf[0] [4]), 
         .Z(n9)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i24_4_lut.init = 16'h3a0a;
    LUT4 i1_4_lut (.A(n15_adj_1761), .B(n10841), .C(n14141), .D(n38_adj_1762), 
         .Z(n2146)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 cmd_2__I_0_2304_i5_2_lut_rep_191 (.A(cmd[0]), .B(cmd[1]), .Z(n14950)) /* synthesis lut_function=((B)+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam cmd_2__I_0_2304_i5_2_lut_rep_191.init = 16'hdddd;
    LUT4 i9406_4_lut (.A(preFullVal[14]), .B(cmd[1]), .C(n2146), .D(n14922), 
         .Z(n6764)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9406_4_lut.init = 16'h2303;
    LUT4 i12535_2_lut_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(n11234), 
         .Z(sysclk_c_enable_219)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i12535_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 i9273_2_lut_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [5]), 
         .Z(recBuf_12__7__N_1298)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9273_2_lut_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i9402_4_lut (.A(preFullVal[11]), .B(cmd[1]), .C(n2146), .D(n14922), 
         .Z(n6752)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9402_4_lut.init = 16'h2303;
    LUT4 i9279_2_lut_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [5]), 
         .Z(recBuf_12__7__N_1306)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9279_2_lut_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i9401_4_lut (.A(preFullVal[10]), .B(cmd[1]), .C(n2146), .D(n14922), 
         .Z(n6750)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9401_4_lut.init = 16'h2303;
    L6MUX21 i12332 (.D0(n14914), .D1(n14288), .SD(stm[1]), .Z(n14290));
    LUT4 i9257_2_lut_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [5]), 
         .Z(recBuf_12__7__N_1282)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9257_2_lut_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i9400_4_lut (.A(preFullVal[9]), .B(cmd[1]), .C(n2146), .D(n14922), 
         .Z(n6748)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9400_4_lut.init = 16'h2303;
    LUT4 i2_3_lut_3_lut_4_lut (.A(cmd[0]), .B(cmd[1]), .C(n21), .D(n14972), 
         .Z(sysclk_c_enable_218)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 mux_3239_i49_3_lut (.A(\bufferL1[6] [0]), .B(\bufferL2[6] [0]), 
         .C(lns), .Z(n5257[48])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i49_3_lut.init = 16'hcaca;
    LUT4 i9240_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [6]), 
         .Z(recBuf_12__7__N_1265)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9240_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9272_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [6]), 
         .Z(recBuf_12__7__N_1297)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9272_2_lut_3_lut.init = 16'hd0d0;
    L6MUX21 i12339 (.D0(n14912), .D1(n14295), .SD(stm[1]), .Z(n14297));
    LUT4 i9258_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [4]), 
         .Z(recBuf_12__7__N_1283)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9258_2_lut_3_lut.init = 16'hd0d0;
    CCU2D add_2707_4 (.A0(stm[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(stm[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13403), 
          .COUT(n13404), .S0(n3883[2]), .S1(n3883[3]));   // c:/pproj/lserial/lserial/source/debcom.v(618[18:25])
    defparam add_2707_4.INIT0 = 16'h5aaa;
    defparam add_2707_4.INIT1 = 16'h5aaa;
    defparam add_2707_4.INJECT1_0 = "NO";
    defparam add_2707_4.INJECT1_1 = "NO";
    PFUMX i12737 (.BLUT(n14806), .ALUT(n14805), .C0(lns), .Z(n14807));
    CCU2D add_2707_2 (.A0(stm[0]), .B0(txDone), .C0(GND_net), .D0(GND_net), 
          .A1(stm[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n13403), 
          .S1(n3883[1]));   // c:/pproj/lserial/lserial/source/debcom.v(618[18:25])
    defparam add_2707_2.INIT0 = 16'h7000;
    defparam add_2707_2.INIT1 = 16'h5aaa;
    defparam add_2707_2.INJECT1_0 = "NO";
    defparam add_2707_2.INJECT1_1 = "NO";
    LUT4 i9241_2_lut_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [5]), 
         .Z(recBuf_12__7__N_1266)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9241_2_lut_2_lut_3_lut.init = 16'hf2f2;
    PFUMX mux_1412_i17 (.BLUT(n829[0]), .ALUT(recBuf_12__7__N_1295), .C0(n8754), 
          .Z(recBuf_12__7__N_75[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    PFUMX i12324 (.BLUT(n14278), .ALUT(n14279), .C0(stm[1]), .Z(n14282));
    LUT4 i9256_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [6]), 
         .Z(recBuf_12__7__N_1281)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9256_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9255_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [7]), 
         .Z(recBuf_12__7__N_1280)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9255_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_adj_287 (.A(n2345), .B(devOut[0]), .Z(n14_adj_1763)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_287.init = 16'h8888;
    LUT4 i9239_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [7]), 
         .Z(recBuf_12__7__N_1264)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9239_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9243_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [3]), 
         .Z(recBuf_12__7__N_1268)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9243_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9242_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [4]), 
         .Z(recBuf_12__7__N_1267)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9242_2_lut_3_lut.init = 16'hd0d0;
    PFUMX mux_1412_i18 (.BLUT(n829[1]), .ALUT(recBuf_12__7__N_1294), .C0(n8754), 
          .Z(recBuf_12__7__N_75[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9244_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [2]), 
         .Z(recBuf_12__7__N_1269)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9244_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9245_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [1]), 
         .Z(recBuf_12__7__N_1270)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9245_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9259_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [3]), 
         .Z(recBuf_12__7__N_1284)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9259_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9260_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [2]), 
         .Z(recBuf_12__7__N_1285)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9260_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9262_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [0]), 
         .Z(recBuf_12__7__N_1287)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9262_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_3_lut_adj_288 (.A(cmd[1]), .B(n2496), .C(n10), .Z(n6738)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_adj_288.init = 16'h5151;
    LUT4 i1_2_lut_adj_289 (.A(n2345), .B(devOut[7]), .Z(n4_adj_1764)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_289.init = 16'h8888;
    LUT4 i9271_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [7]), 
         .Z(recBuf_12__7__N_1296)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9271_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9261_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[3] [1]), 
         .Z(recBuf_12__7__N_1286)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9261_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9246_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[5] [0]), 
         .Z(recBuf_12__7__N_1271)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9246_2_lut_3_lut.init = 16'hd0d0;
    CCU2D add_2707_6 (.A0(stm[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(stm[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13404), 
          .COUT(n13405), .S0(n3883[4]), .S1(n3883[5]));   // c:/pproj/lserial/lserial/source/debcom.v(618[18:25])
    defparam add_2707_6.INIT0 = 16'h5aaa;
    defparam add_2707_6.INIT1 = 16'h5aaa;
    defparam add_2707_6.INJECT1_0 = "NO";
    defparam add_2707_6.INJECT1_1 = "NO";
    LUT4 i9274_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [4]), 
         .Z(recBuf_12__7__N_1299)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9274_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9275_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [3]), 
         .Z(recBuf_12__7__N_1300)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9275_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9276_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [2]), 
         .Z(recBuf_12__7__N_1301)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9276_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9277_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [1]), 
         .Z(recBuf_12__7__N_1302)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9277_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9278_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[1] [0]), 
         .Z(recBuf_12__7__N_1303)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9278_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_4_lut_adj_290 (.A(recCte[2]), .B(n14927), .C(recCte[3]), 
         .D(n14961), .Z(sysclk_c_enable_147)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_290.init = 16'h4000;
    LUT4 mux_3239_i41_3_lut (.A(\bufferL1[5] [0]), .B(\bufferL2[5] [0]), 
         .C(lns), .Z(n5257[40])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i41_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_291 (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [7]), 
         .Z(n2)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i1_2_lut_3_lut_adj_291.init = 16'hd0d0;
    LUT4 i9367_2_lut (.A(\bufferL2[4] [0]), .B(lns), .Z(n5257[32])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9367_2_lut.init = 16'h8888;
    L6MUX21 i12325 (.D0(n14280), .D1(n14281), .SD(stm[1]), .Z(n14283));
    PFUMX i12348 (.BLUT(n14302), .ALUT(n14303), .C0(stm[1]), .Z(n14306));
    LUT4 i1_2_lut_3_lut_adj_292 (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [0]), 
         .Z(n3)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i1_2_lut_3_lut_adj_292.init = 16'hd0d0;
    LUT4 \bufferL1_9[[0__bdd_3_lut_12717  (.A(\bufferL1[9] [0]), .B(lns), 
         .C(\bufferL2[9] [0]), .Z(n14782)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \bufferL1_9[[0__bdd_3_lut_12717 .init = 16'he2e2;
    LUT4 i9405_3_lut (.A(n1544[0]), .B(cmd[1]), .C(n2496), .Z(n6730)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9405_3_lut.init = 16'hecec;
    L6MUX21 i12349 (.D0(n14913), .D1(n14305), .SD(stm[1]), .Z(n14307));
    LUT4 i9247_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[4] [7]), 
         .Z(recBuf_12__7__N_1272)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9247_2_lut_3_lut.init = 16'hd0d0;
    PFUMX mux_1412_i21 (.BLUT(n829[4]), .ALUT(recBuf_12__7__N_1291), .C0(n8754), 
          .Z(recBuf_12__7__N_75[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9310_2_lut (.A(\recBuf[3] [4]), .B(n15), .Z(bufferL1_8__4__N_246)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9310_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_293 (.A(recCte[2]), .B(n14927), .C(recCte[3]), 
         .D(n14968), .Z(sysclk_c_enable_158)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_293.init = 16'h4000;
    LUT4 i9248_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[4] [6]), 
         .Z(recBuf_12__7__N_1273)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9248_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9250_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[4] [4]), 
         .Z(recBuf_12__7__N_1275)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9250_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9251_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[4] [3]), 
         .Z(recBuf_12__7__N_1276)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9251_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_4_lut_adj_294 (.A(recCte[2]), .B(n14927), .C(recCte[3]), 
         .D(n14156), .Z(sysclk_c_enable_151)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_294.init = 16'h4000;
    LUT4 i9252_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[4] [2]), 
         .Z(recBuf_12__7__N_1277)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9252_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9253_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[4] [1]), 
         .Z(recBuf_12__7__N_1278)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9253_2_lut_3_lut.init = 16'hd0d0;
    LUT4 \bufferL1_9[[0__bdd_3_lut  (.A(\bufferL1[8] [0]), .B(\bufferL2[8] [0]), 
         .C(lns), .Z(n14783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \bufferL1_9[[0__bdd_3_lut .init = 16'hcaca;
    LUT4 i1_3_lut_adj_295 (.A(cmd[1]), .B(n2496), .C(n11_adj_1765), .Z(n6714)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_adj_295.init = 16'h5151;
    LUT4 i9254_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[4] [0]), 
         .Z(recBuf_12__7__N_1279)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9254_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i20_3_lut_4_lut_4_lut (.A(\recBuf[0] [2]), .B(n2028[0]), .C(n14929), 
         .D(\recBuf[0] [0]), .Z(n13_adj_1766)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i20_3_lut_4_lut_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_4_lut_adj_296 (.A(recCte[2]), .B(n14927), .C(recCte[3]), 
         .D(n14128), .Z(sysclk_c_enable_155)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_296.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_adj_297 (.A(cmd[1]), .B(n2496), .C(n6_adj_1741), 
         .Z(n6895)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_297.init = 16'h4040;
    LUT4 i9263_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[2] [7]), 
         .Z(recBuf_12__7__N_1288)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9263_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9324_2_lut (.A(\recBuf[1] [6]), .B(n15), .Z(bufferL1_6__6__N_288)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9324_2_lut.init = 16'heeee;
    LUT4 i9264_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[2] [6]), 
         .Z(recBuf_12__7__N_1289)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9264_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i12368_4_lut (.A(\bufferL1[10] [2]), .B(lns), .C(stm[0]), .D(\bufferL2[10] [2]), 
         .Z(n14326)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D)))) */ ;
    defparam i12368_4_lut.init = 16'hcec2;
    PFUMX mux_1412_i23 (.BLUT(n829[6]), .ALUT(recBuf_12__7__N_1289), .C0(n8754), 
          .Z(recBuf_12__7__N_75[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 mux_3239_i47_3_lut (.A(\bufferL1[5] [6]), .B(\bufferL2[5] [6]), 
         .C(lns), .Z(n5257[46])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i47_3_lut.init = 16'hcaca;
    LUT4 i12566_4_lut (.A(cmd[0]), .B(highRead), .C(n10_adj_1767), .D(cmd[1]), 
         .Z(sysclk_c_enable_80)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam i12566_4_lut.init = 16'h880a;
    LUT4 i1_2_lut_adj_298 (.A(n2146), .B(n9), .Z(n10_adj_1767)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_298.init = 16'h8888;
    LUT4 i9266_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[2] [4]), 
         .Z(recBuf_12__7__N_1291)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9266_2_lut_3_lut.init = 16'hd0d0;
    PFUMX mux_1412_i24 (.BLUT(n829[7]), .ALUT(recBuf_12__7__N_1288), .C0(n8754), 
          .Z(recBuf_12__7__N_75[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9267_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[2] [3]), 
         .Z(recBuf_12__7__N_1292)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9267_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9268_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[2] [2]), 
         .Z(recBuf_12__7__N_1293)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9268_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9315_2_lut (.A(\recBuf[2] [7]), .B(n15), .Z(bufferL1_7__7__N_261)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9315_2_lut.init = 16'h2222;
    LUT4 i9316_2_lut (.A(\recBuf[2] [6]), .B(n15), .Z(bufferL1_7__6__N_264)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9316_2_lut.init = 16'heeee;
    LUT4 i9689_2_lut_rep_156_3_lut (.A(n11234), .B(cmd[1]), .C(cmd[0]), 
         .Z(n14915)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i9689_2_lut_rep_156_3_lut.init = 16'he0e0;
    LUT4 n10231_bdd_4_lut_12812 (.A(n10231), .B(rxRecv[1]), .C(recBuf_12__7__N_1310), 
         .D(n8746), .Z(recBuf_12__7__N_75[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n10231_bdd_4_lut_12812.init = 16'hf088;
    LUT4 i9363_2_lut (.A(\bufferL2[4] [6]), .B(lns), .Z(n5257[38])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam i9363_2_lut.init = 16'h8888;
    LUT4 i9341_2_lut_3_lut_4_lut (.A(n11234), .B(cmd[1]), .C(lns), .D(cmd[0]), 
         .Z(lns_N_1599)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i9341_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_4_lut_4_lut_adj_299 (.A(\recBuf[0] [2]), .B(n14221), .C(n14929), 
         .D(n14964), .Z(n14223)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+((D)+!C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_4_lut_4_lut_adj_299.init = 16'hfdcd;
    LUT4 i9659_2_lut_3_lut (.A(cmd[1]), .B(n2496), .C(n949[0]), .Z(n6778)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i9659_2_lut_3_lut.init = 16'hfbfb;
    PFUMX i12729 (.BLUT(n14796), .ALUT(n14795), .C0(stm[0]), .Z(n14797));
    LUT4 i1_4_lut_adj_300 (.A(n14967), .B(n14923), .C(n14964), .D(n14929), 
         .Z(n14112)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_4_lut_adj_300.init = 16'hc044;
    LUT4 i9269_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[2] [1]), 
         .Z(recBuf_12__7__N_1294)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9269_2_lut_3_lut.init = 16'hd0d0;
    LUT4 n10231_bdd_4_lut_12815 (.A(n10231), .B(rxRecv[4]), .C(recBuf_12__7__N_1307), 
         .D(n8746), .Z(recBuf_12__7__N_75[4])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n10231_bdd_4_lut_12815.init = 16'hf088;
    LUT4 i9270_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[2] [0]), 
         .Z(recBuf_12__7__N_1295)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9270_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_3_lut_4_lut_4_lut (.A(\recBuf[0] [2]), .B(n2345), .C(n14918), 
         .D(\recBuf[0] [0]), .Z(n14179)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hd000;
    LUT4 i9577_4_lut (.A(n14961), .B(n14973), .C(rxRecv[5]), .D(n14960), 
         .Z(n827[5])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(534[6:12])
    defparam i9577_4_lut.init = 16'heccc;
    LUT4 n10231_bdd_4_lut_12818 (.A(n10231), .B(rxRecv[6]), .C(recBuf_12__7__N_1305), 
         .D(n8746), .Z(recBuf_12__7__N_75[6])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n10231_bdd_4_lut_12818.init = 16'hf088;
    LUT4 i1_2_lut_3_lut_adj_301 (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [6]), 
         .Z(recBuf_12__7__N_1305)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i1_2_lut_3_lut_adj_301.init = 16'hd0d0;
    LUT4 i1_2_lut_3_lut_adj_302 (.A(cmd[1]), .B(n2496), .C(n14_adj_1750), 
         .Z(n13781)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_302.init = 16'h4040;
    LUT4 rxRecv_2__bdd_4_lut_12816 (.A(rxRecv[2]), .B(n10236), .C(recBuf_12__7__N_1293), 
         .D(n8754), .Z(recBuf_12__7__N_75[18])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_2__bdd_4_lut_12816.init = 16'hf088;
    LUT4 i9325_2_lut (.A(\recBuf[1] [5]), .B(n15), .Z(bufferL1_6__5__N_291)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9325_2_lut.init = 16'heeee;
    LUT4 i12299_3_lut (.A(\bufferL2[2] [6]), .B(\bufferL2[3] [6]), .C(stm[0]), 
         .Z(n14257)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12299_3_lut.init = 16'hcaca;
    LUT4 i9280_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [4]), 
         .Z(recBuf_12__7__N_1307)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9280_2_lut_3_lut.init = 16'hd0d0;
    L6MUX21 i12372 (.D0(n14328), .D1(n14329), .SD(stm[1]), .Z(n14330));
    LUT4 rxRecv_3__bdd_4_lut_12817 (.A(rxRecv[3]), .B(n10236), .C(recBuf_12__7__N_1292), 
         .D(n8754), .Z(recBuf_12__7__N_75[19])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_3__bdd_4_lut_12817.init = 16'hf088;
    PFUMX i12724 (.BLUT(n14789), .ALUT(n14788), .C0(stm[0]), .Z(n14790));
    LUT4 i12326_3_lut (.A(n14282), .B(n14283), .C(stm[2]), .Z(n14284)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12326_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_303 (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [3]), 
         .Z(recBuf_12__7__N_1308)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i1_2_lut_3_lut_adj_303.init = 16'hd0d0;
    LUT4 i1_2_lut_adj_304 (.A(rxRecv[0]), .B(rxRecv[4]), .Z(rxConv[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_304.init = 16'h9999;
    LUT4 i9415_4_lut (.A(n1748[0]), .B(cmd[1]), .C(n2146), .D(n14929), 
         .Z(n6706)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9415_4_lut.init = 16'h2303;
    LUT4 i9281_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [2]), 
         .Z(recBuf_12__7__N_1309)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9281_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i9282_2_lut_3_lut (.A(cmd[0]), .B(cmd[1]), .C(\recBuf[0] [1]), 
         .Z(recBuf_12__7__N_1310)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(182[5:13])
    defparam i9282_2_lut_3_lut.init = 16'hd0d0;
    LUT4 mux_1057_i1_3_lut (.A(preFullVal[30]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1748[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam mux_1057_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_192 (.A(recCte[2]), .B(recCte[4]), .Z(n14951)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_192.init = 16'heeee;
    LUT4 i2_3_lut_rep_182_4_lut (.A(recCte[2]), .B(recCte[4]), .C(recCte[0]), 
         .D(recCte[3]), .Z(n14941)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_182_4_lut.init = 16'hfffe;
    PFUMX i12300 (.BLUT(n14256), .ALUT(n14257), .C0(stm[1]), .Z(n14258));
    LUT4 i9326_2_lut (.A(\recBuf[1] [4]), .B(n15), .Z(bufferL1_6__4__N_294)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9326_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_305 (.A(cmd[1]), .B(n2496), .C(n5_adj_1739), 
         .Z(n6774)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_305.init = 16'h4040;
    LUT4 i9327_2_lut (.A(\recBuf[1] [3]), .B(n15), .Z(bufferL1_6__3__N_297)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9327_2_lut.init = 16'heeee;
    LUT4 i3889_2_lut_3_lut_4_lut (.A(rxRecv[0]), .B(rxRecv[4]), .C(rxRecv[2]), 
         .D(rxRecv[1]), .Z(rxConv[2])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(108[15:58])
    defparam i3889_2_lut_3_lut_4_lut.init = 16'hd2f0;
    LUT4 i1_4_lut_adj_306 (.A(n14959), .B(n14221), .C(n1783[0]), .D(n14929), 
         .Z(n14224)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_306.init = 16'hfcdd;
    LUT4 i9328_2_lut (.A(\recBuf[1] [2]), .B(n15), .Z(bufferL1_6__2__N_300)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9328_2_lut.init = 16'heeee;
    LUT4 i12298_3_lut (.A(\bufferL2[0] [6]), .B(\bufferL2[2] [6]), .C(stm[0]), 
         .Z(n14256)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12298_3_lut.init = 16'hcaca;
    LUT4 i9329_2_lut (.A(\recBuf[1] [1]), .B(n15), .Z(bufferL1_6__1__N_303)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9329_2_lut.init = 16'heeee;
    LUT4 i9330_2_lut (.A(\recBuf[1] [0]), .B(n15), .Z(bufferL1_6__0__N_306)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9330_2_lut.init = 16'heeee;
    LUT4 i9416_2_lut (.A(preFullVal[29]), .B(\recBuf[0] [4]), .Z(n1783[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i9416_2_lut.init = 16'h2222;
    LUT4 i3884_2_lut_rep_181_3_lut (.A(rxRecv[0]), .B(rxRecv[4]), .C(rxRecv[1]), 
         .Z(n14940)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(108[15:58])
    defparam i3884_2_lut_rep_181_3_lut.init = 16'h2020;
    LUT4 i3882_2_lut_3_lut (.A(rxRecv[0]), .B(rxRecv[4]), .C(rxRecv[1]), 
         .Z(rxConv[1])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(108[15:58])
    defparam i3882_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i1_2_lut_adj_307 (.A(n15), .B(\recBuf[0] [7]), .Z(bufferL1_5__7__N_309)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(518[8:21])
    defparam i1_2_lut_adj_307.init = 16'h4444;
    LUT4 i1_2_lut_adj_308 (.A(cmd[1]), .B(n2146), .Z(n14221)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_308.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_309 (.A(n15), .B(\recBuf[0] [6]), .Z(bufferL1_5__6__N_312)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(518[8:21])
    defparam i1_2_lut_adj_309.init = 16'heeee;
    PFUMX i12718 (.BLUT(n14783), .ALUT(n14782), .C0(stm[0]), .Z(n14784));
    LUT4 \bufferL2_0[[1__bdd_4_lut  (.A(\bufferL2[0] [1]), .B(stm[1]), .C(\bufferL2[2] [1]), 
         .D(lns), .Z(n14789)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (C (D)))) */ ;
    defparam \bufferL2_0[[1__bdd_4_lut .init = 16'he200;
    FD1P3DX devOut_i0_i6 (.D(preAddress[6]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i6.GSR = "ENABLED";
    FD1P3DX devOut_i0_i5 (.D(preAddress[5]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i5.GSR = "ENABLED";
    FD1P3DX devOut_i0_i4 (.D(preAddress[4]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i4.GSR = "ENABLED";
    FD1P3DX devOut_i0_i3 (.D(preAddress[3]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i3.GSR = "ENABLED";
    FD1P3DX devOut_i0_i2 (.D(preAddress[2]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i2.GSR = "ENABLED";
    FD1P3DX devOut_i0_i1 (.D(preAddress[1]), .SP(sysclk_c_enable_101), .CK(sysclk_c), 
            .CD(n14975), .Q(devOut[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam devOut_i0_i1.GSR = "ENABLED";
    PFUMX i12370 (.BLUT(n5257[38]), .ALUT(n5257[46]), .C0(stm[0]), .Z(n14328));
    LUT4 mux_1536_i1_3_lut_4_lut (.A(n11710), .B(n14934), .C(n2561[0]), 
         .D(rxRecv[0]), .Z(txSend_7__N_66[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1536_i1_3_lut_4_lut.init = 16'hfe10;
    LUT4 n10231_bdd_4_lut_12813 (.A(n10231), .B(rxRecv[2]), .C(recBuf_12__7__N_1309), 
         .D(n8746), .Z(recBuf_12__7__N_75[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n10231_bdd_4_lut_12813.init = 16'hf088;
    LUT4 i1_2_lut_3_lut_adj_310 (.A(cmd[1]), .B(n2496), .C(n7_adj_1736), 
         .Z(n6770)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_310.init = 16'h4040;
    LUT4 i12376_3_lut (.A(\bufferL1[8] [3]), .B(\bufferL2[8] [3]), .C(lns), 
         .Z(n14334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12376_3_lut.init = 16'hcaca;
    LUT4 i9331_2_lut (.A(\recBuf[0] [5]), .B(n15), .Z(bufferL1_5__5__N_315)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9331_2_lut.init = 16'h2222;
    LUT4 i9332_2_lut (.A(\recBuf[0] [4]), .B(n15), .Z(bufferL1_5__4__N_318)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9332_2_lut.init = 16'heeee;
    PFUMX i20 (.BLUT(n15_adj_1768), .ALUT(recBuf_12__7__N_1306), .C0(n8746), 
          .Z(recBuf_12__7__N_75[5]));
    LUT4 i1_2_lut_3_lut_adj_311 (.A(cmd[1]), .B(n2496), .C(n13), .Z(n6768)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_311.init = 16'h4040;
    LUT4 i9417_4_lut (.A(n2146), .B(cmd[1]), .C(n1818[0]), .D(n14929), 
         .Z(n6698)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9417_4_lut.init = 16'heccc;
    LUT4 mux_1109_i1_3_lut (.A(preFullVal[28]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1818[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam mux_1109_i1_3_lut.init = 16'hcaca;
    LUT4 i9418_4_lut (.A(preFullVal[27]), .B(cmd[1]), .C(n2146), .D(n14922), 
         .Z(n6694)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9418_4_lut.init = 16'h2303;
    PFUMX i11_adj_312 (.BLUT(n2_adj_1769), .ALUT(n3), .C0(n8746), .Z(recBuf_12__7__N_75[0]));
    LUT4 mux_1536_i8_3_lut_4_lut (.A(n11710), .B(n14934), .C(n2561[7]), 
         .D(rxRecv[7]), .Z(txSend_7__N_66[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1536_i8_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9419_4_lut (.A(n1888[0]), .B(cmd[1]), .C(n2146), .D(n14929), 
         .Z(n6690)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9419_4_lut.init = 16'h2303;
    LUT4 i1_2_lut_3_lut_adj_313 (.A(cmd[1]), .B(n2496), .C(n5_adj_1770), 
         .Z(n14083)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_313.init = 16'h4040;
    LUT4 i1_2_lut_adj_314 (.A(n15), .B(\recBuf[0] [3]), .Z(bufferL1_5__3__N_321)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(518[8:21])
    defparam i1_2_lut_adj_314.init = 16'h4444;
    LUT4 mux_1161_i1_3_lut (.A(preFullVal[26]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1888[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam mux_1161_i1_3_lut.init = 16'hcaca;
    LUT4 mux_1536_i6_3_lut_4_lut (.A(n11710), .B(n14934), .C(n2561[5]), 
         .D(rxRecv[5]), .Z(txSend_7__N_66[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1536_i6_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9333_2_lut (.A(\recBuf[0] [2]), .B(n15), .Z(bufferL1_5__2__N_324)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9333_2_lut.init = 16'heeee;
    LUT4 i9334_2_lut (.A(\recBuf[0] [1]), .B(n15), .Z(bufferL1_5__1__N_327)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9334_2_lut.init = 16'h2222;
    LUT4 mux_1536_i5_3_lut_4_lut (.A(n11710), .B(n14934), .C(n2561[4]), 
         .D(rxRecv[4]), .Z(txSend_7__N_66[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1536_i5_3_lut_4_lut.init = 16'hfe10;
    LUT4 \bufferL1_9[[2__bdd_3_lut  (.A(\bufferL1[8] [2]), .B(\bufferL2[8] [2]), 
         .C(lns), .Z(n14796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \bufferL1_9[[2__bdd_3_lut .init = 16'hcaca;
    LUT4 mux_1187_i1_3_lut (.A(preFullVal[25]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n1923[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam mux_1187_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_315 (.A(cmd[1]), .B(n2496), .C(n14925), 
         .D(\recBuf[0] [0]), .Z(n6470)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_315.init = 16'h4000;
    LUT4 mux_1536_i4_3_lut_4_lut (.A(n11710), .B(n14934), .C(n2561[3]), 
         .D(rxRecv[3]), .Z(txSend_7__N_66[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1536_i4_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9431_4_lut_else_3_lut (.A(cmd[1]), .B(\recBuf[0] [0]), .C(n2496), 
         .D(\recBuf[0] [2]), .Z(n14983)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9431_4_lut_else_3_lut.init = 16'h1505;
    LUT4 i20_3_lut_4_lut_4_lut_adj_316 (.A(\recBuf[0] [2]), .B(n2168[0]), 
         .C(n14929), .D(\recBuf[0] [0]), .Z(n13_adj_1771)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i20_3_lut_4_lut_4_lut_adj_316.init = 16'hc0ca;
    LUT4 i9335_2_lut (.A(\recBuf[0] [0]), .B(n15), .Z(bufferL1_5__0__N_330)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9335_2_lut.init = 16'h2222;
    PFUMX i12378 (.BLUT(n14334), .ALUT(n14335), .C0(stm[0]), .Z(n14336));
    LUT4 mux_1536_i3_3_lut_4_lut (.A(n11710), .B(n14934), .C(n2561[2]), 
         .D(rxRecv[2]), .Z(txSend_7__N_66[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1536_i3_3_lut_4_lut.init = 16'hfe10;
    LUT4 i9291_2_lut (.A(\recBuf[5] [7]), .B(n15), .Z(bufferL1_10__7__N_187)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9291_2_lut.init = 16'h2222;
    LUT4 i9423_4_lut (.A(preFullVal[24]), .B(cmd[1]), .C(n2146), .D(n14922), 
         .Z(n6682)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9423_4_lut.init = 16'h2303;
    PFUMX i12322 (.BLUT(n5257[32]), .ALUT(n5257[40]), .C0(stm[0]), .Z(n14280));
    LUT4 \bufferL1_9[[2__bdd_3_lut_12728  (.A(\bufferL1[9] [2]), .B(lns), 
         .C(\bufferL2[9] [2]), .Z(n14795)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \bufferL1_9[[2__bdd_3_lut_12728 .init = 16'he2e2;
    FD1P3DX led__0__i6 (.D(n17[5]), .SP(sysclk_c_enable_113), .CK(sysclk_c), 
            .CD(n14975), .Q(led_c_5));   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam led__0__i6.GSR = "ENABLED";
    FD1P3DX led__0__i5 (.D(n17[4]), .SP(sysclk_c_enable_113), .CK(sysclk_c), 
            .CD(n14975), .Q(led_c_4));   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam led__0__i5.GSR = "ENABLED";
    FD1P3DX led__0__i4 (.D(n17[3]), .SP(sysclk_c_enable_113), .CK(sysclk_c), 
            .CD(n14975), .Q(led_c_3));   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam led__0__i4.GSR = "ENABLED";
    FD1P3DX led__0__i3 (.D(n17[2]), .SP(sysclk_c_enable_113), .CK(sysclk_c), 
            .CD(n14975), .Q(led_c_2));   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam led__0__i3.GSR = "ENABLED";
    FD1P3DX led__0__i2 (.D(n17[1]), .SP(sysclk_c_enable_113), .CK(sysclk_c), 
            .CD(n14975), .Q(led_c_1));   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam led__0__i2.GSR = "ENABLED";
    FD1S3DX cmd_i1 (.D(cmd_2__N_1087[1]), .CK(sysclk_c), .CD(n14975), 
            .Q(cmd[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam cmd_i1.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i7 (.D(rxConv[3]), .SP(sysclk_c_enable_117), .CK(sysclk_c), 
            .Q(preAddress[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i7.GSR = "ENABLED";
    PFUMX i11_adj_317 (.BLUT(n14103), .ALUT(n4_adj_1764), .C0(\recBuf[0] [0]), 
          .Z(n5_adj_1770));
    LUT4 i1_3_lut_adj_318 (.A(cmd[1]), .B(n2146), .C(n13_adj_1766), .Z(n13719)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_3_lut_adj_318.init = 16'h5151;
    LUT4 i1_2_lut_rep_184_3_lut (.A(recCte[3]), .B(recCte[2]), .C(recCte[0]), 
         .Z(n14943)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_184_3_lut.init = 16'h1010;
    PFUMX i8985 (.BLUT(n14104), .ALUT(n14_adj_1763), .C0(\recBuf[0] [0]), 
          .Z(n11_adj_1765));
    FD1P3AX preAddress_i0_i6 (.D(rxConv[2]), .SP(sysclk_c_enable_117), .CK(sysclk_c), 
            .Q(preAddress[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i6.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i5 (.D(rxConv[1]), .SP(sysclk_c_enable_117), .CK(sysclk_c), 
            .Q(preAddress[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i5.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i4 (.D(rxConv[0]), .SP(sysclk_c_enable_117), .CK(sysclk_c), 
            .Q(preAddress[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i4.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i3 (.D(rxConv[3]), .SP(sysclk_c_enable_120), .CK(sysclk_c), 
            .Q(preAddress[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i3.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i2 (.D(rxConv[2]), .SP(sysclk_c_enable_120), .CK(sysclk_c), 
            .Q(preAddress[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i2.GSR = "ENABLED";
    FD1P3AX preAddress_i0_i1 (.D(rxConv[1]), .SP(sysclk_c_enable_120), .CK(sysclk_c), 
            .Q(preAddress[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preAddress_i0_i1.GSR = "ENABLED";
    FD1P3DX txSend_i7 (.D(txSend_7__N_66[7]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i7.GSR = "ENABLED";
    LUT4 mux_1536_i2_3_lut_4_lut (.A(n11710), .B(n14934), .C(n2561[1]), 
         .D(rxRecv[1]), .Z(txSend_7__N_66[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1536_i2_3_lut_4_lut.init = 16'hfe10;
    LUT4 i7662_3_lut_4_lut (.A(n11710), .B(n14934), .C(txDone), .D(tick), 
         .Z(n6067)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)))) */ ;
    defparam i7662_3_lut_4_lut.init = 16'hef11;
    FD1P3DX txSend_i6 (.D(txSend_7__N_66[6]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i6.GSR = "ENABLED";
    FD1P3DX txSend_i5 (.D(txSend_7__N_66[5]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i5.GSR = "ENABLED";
    FD1P3DX txSend_i4 (.D(txSend_7__N_66[4]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i4.GSR = "ENABLED";
    LUT4 i9079_3_lut (.A(preAddress[6]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n2028[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i9079_3_lut.init = 16'hcaca;
    FD1P3DX txSend_i3 (.D(txSend_7__N_66[3]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i3.GSR = "ENABLED";
    FD1P3DX txSend_i2 (.D(txSend_7__N_66[2]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i2.GSR = "ENABLED";
    FD1P3DX txSend_i1 (.D(txSend_7__N_66[1]), .SP(sysclk_c_enable_127), 
            .CK(sysclk_c), .CD(n14975), .Q(txSend[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam txSend_i1.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i31 (.D(rxConv[3]), .SP(sysclk_c_enable_131), 
            .CK(sysclk_c), .Q(preFullVal[31])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i31.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_180_3_lut_4_lut (.A(recCte[3]), .B(recCte[2]), .C(recCte[1]), 
         .D(recCte[0]), .Z(n14939)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_180_3_lut_4_lut.init = 16'hfeff;
    LUT4 i9292_2_lut (.A(\recBuf[5] [6]), .B(n15), .Z(bufferL1_10__6__N_192)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9292_2_lut.init = 16'heeee;
    LUT4 i9293_2_lut (.A(\recBuf[5] [5]), .B(n15), .Z(bufferL1_10__5__N_195)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9293_2_lut.init = 16'heeee;
    LUT4 i3455_2_lut_rep_199 (.A(\recBuf[0] [5]), .B(\recBuf[0] [0]), .Z(n14958)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i3455_2_lut_rep_199.init = 16'heeee;
    PFUMX mux_1412_i9 (.BLUT(n14081), .ALUT(recBuf_12__7__N_1303), .C0(n8756), 
          .Z(recBuf_12__7__N_75[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 \bufferL1_8[[6__bdd_3_lut_12887  (.A(\bufferL1[8] [6]), .B(stm[0]), 
         .C(\bufferL1[9] [6]), .Z(n14806)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \bufferL1_8[[6__bdd_3_lut_12887 .init = 16'he2e2;
    LUT4 i9294_2_lut (.A(\recBuf[5] [4]), .B(n15), .Z(bufferL1_10__4__N_198)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9294_2_lut.init = 16'h2222;
    LUT4 i9338_3_lut (.A(stm[0]), .B(tick), .C(txDone), .Z(n2624[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(609[17] 620[11])
    defparam i9338_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_3_lut_adj_319 (.A(cmd[1]), .B(n2496), .C(n5), .Z(n14086)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_319.init = 16'h4040;
    LUT4 i1_4_lut_adj_320 (.A(n14959), .B(n14221), .C(n2063[0]), .D(n14929), 
         .Z(n14222)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_320.init = 16'hfcdd;
    LUT4 i7200_2_lut_rep_200 (.A(\recBuf[0] [0]), .B(\recBuf[0] [2]), .Z(n14959)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i7200_2_lut_rep_200.init = 16'h8888;
    LUT4 i9430_2_lut (.A(preAddress[5]), .B(\recBuf[0] [4]), .Z(n2063[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i9430_2_lut.init = 16'h2222;
    PFUMX mux_1412_i10 (.BLUT(n14077), .ALUT(recBuf_12__7__N_1302), .C0(n8756), 
          .Z(recBuf_12__7__N_75[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9427_3_lut (.A(n14708), .B(cmd[1]), .C(n2146), .Z(n6666)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9427_3_lut.init = 16'hecec;
    LUT4 i1_4_lut_4_lut_adj_321 (.A(\recBuf[0] [0]), .B(\recBuf[0] [2]), 
         .C(n2345), .D(n14924), .Z(n14193)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_4_lut_4_lut_adj_321.init = 16'hffa7;
    PFUMX i12323 (.BLUT(n5257[48]), .ALUT(n5257[56]), .C0(stm[0]), .Z(n14281));
    LUT4 mux_2127_i1_3_lut_4_lut (.A(\recBuf[0] [0]), .B(\recBuf[0] [2]), 
         .C(n14929), .D(n14964), .Z(n3189[0])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam mux_2127_i1_3_lut_4_lut.init = 16'hf707;
    LUT4 i9295_2_lut (.A(\recBuf[5] [3]), .B(n15), .Z(bufferL1_10__3__N_201)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9295_2_lut.init = 16'h2222;
    LUT4 i5280_3_lut_rep_158_4_lut_4_lut (.A(\recBuf[0] [0]), .B(\recBuf[0] [2]), 
         .C(n2345), .D(\recBuf[0] [5]), .Z(n14917)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((D)+!C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i5280_3_lut_rep_158_4_lut_4_lut.init = 16'h0858;
    LUT4 i9428_3_lut (.A(n2139[0]), .B(cmd[1]), .C(n2146), .Z(n6662)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9428_3_lut.init = 16'h2323;
    LUT4 i1_2_lut_2_lut (.A(recCte[1]), .B(recCte[0]), .Z(n14156)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i9496_4_lut (.A(\bufferL2[2] [3]), .B(lns), .C(\bufferL2[3] [3]), 
         .D(stm[0]), .Z(n8043)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(613[28:31])
    defparam i9496_4_lut.init = 16'hc088;
    LUT4 \bufferL1_8[[6__bdd_3_lut_12736  (.A(\bufferL2[8] [6]), .B(stm[0]), 
         .C(\bufferL2[9] [6]), .Z(n14805)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \bufferL1_8[[6__bdd_3_lut_12736 .init = 16'he2e2;
    LUT4 i9296_2_lut (.A(\recBuf[5] [2]), .B(n15), .Z(bufferL1_10__2__N_204)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9296_2_lut.init = 16'heeee;
    LUT4 rxRecv_0__bdd_4_lut (.A(rxRecv[0]), .B(n11565), .C(recBuf_12__7__N_1279), 
         .D(n8750), .Z(recBuf_12__7__N_75[32])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_0__bdd_4_lut.init = 16'hf088;
    LUT4 i9297_2_lut (.A(\recBuf[5] [1]), .B(n15), .Z(bufferL1_10__1__N_207)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9297_2_lut.init = 16'heeee;
    LUT4 i9298_2_lut (.A(\recBuf[5] [0]), .B(n15), .Z(bufferL1_10__0__N_210)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9298_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_3_lut_adj_322 (.A(recCte[1]), .B(n14941), .C(rxRecv[0]), 
         .Z(n2_adj_1769)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i2_3_lut_3_lut_adj_322.init = 16'h1010;
    LUT4 i32_4_lut_4_lut (.A(recCte[1]), .B(rxRecv[5]), .C(n10243), .D(n14973), 
         .Z(n15_adj_1768)) /* synthesis lut_function=(A (D)+!A !(B (C)+!B !(D))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i32_4_lut_4_lut.init = 16'hbf04;
    LUT4 i1_2_lut_rep_201 (.A(recCte[3]), .B(recCte[2]), .Z(n14960)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i1_2_lut_rep_201.init = 16'h4444;
    LUT4 i2_3_lut_rep_189_4_lut (.A(recCte[3]), .B(recCte[2]), .C(recCte[0]), 
         .D(recCte[1]), .Z(n14948)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i2_3_lut_rep_189_4_lut.init = 16'hffbf;
    LUT4 i9299_2_lut (.A(\recBuf[4] [7]), .B(n15), .Z(bufferL1_9__7__N_213)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9299_2_lut.init = 16'h2222;
    LUT4 mux_1343_i1_3_lut (.A(preAddress[3]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n2133[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam mux_1343_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_323 (.A(cmd[1]), .B(n2496), .C(n14920), .Z(n14092)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_323.init = 16'h4040;
    LUT4 \bufferL1_8[[6__bdd_4_lut  (.A(lns), .B(stm[0]), .C(\bufferL1[10] [6]), 
         .D(\bufferL2[10] [6]), .Z(n14804)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C)))) */ ;
    defparam \bufferL1_8[[6__bdd_4_lut .init = 16'h3210;
    LUT4 i12575_2_lut_rep_202 (.A(recCte[0]), .B(recCte[1]), .Z(n14961)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12575_2_lut_rep_202.init = 16'h1111;
    LUT4 i1_3_lut_adj_324 (.A(cmd[1]), .B(n2146), .C(n13_adj_1771), .Z(n13721)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_3_lut_adj_324.init = 16'h5151;
    LUT4 i12609_3_lut_4_lut (.A(recCte[0]), .B(recCte[1]), .C(recCte[2]), 
         .D(n10237), .Z(n11565)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i12609_3_lut_4_lut.init = 16'h0010;
    LUT4 i9112_3_lut (.A(preAddress[2]), .B(\recBuf[0] [5]), .C(\recBuf[0] [4]), 
         .Z(n2168[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i9112_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_325 (.A(n13_adj_1751), .B(n14918), .C(n2345), .D(\recBuf[0] [0]), 
         .Z(n14089)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_325.init = 16'hc088;
    LUT4 i9300_2_lut (.A(\recBuf[4] [6]), .B(n15), .Z(bufferL1_9__6__N_216)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9300_2_lut.init = 16'heeee;
    LUT4 i9301_2_lut (.A(\recBuf[4] [5]), .B(n15), .Z(bufferL1_9__5__N_219)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9301_2_lut.init = 16'heeee;
    LUT4 i9302_2_lut (.A(\recBuf[4] [4]), .B(n15), .Z(bufferL1_9__4__N_222)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9302_2_lut.init = 16'h2222;
    LUT4 i9303_2_lut (.A(\recBuf[4] [3]), .B(n15), .Z(bufferL1_9__3__N_225)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9303_2_lut.init = 16'heeee;
    LUT4 i7567_2_lut_rep_203 (.A(\recBuf[0] [0]), .B(\recBuf[0] [2]), .Z(n14962)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i7567_2_lut_rep_203.init = 16'h6666;
    LUT4 i9304_2_lut (.A(\recBuf[4] [2]), .B(n15), .Z(bufferL1_9__2__N_228)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9304_2_lut.init = 16'heeee;
    LUT4 mux_1971_i1_3_lut_3_lut (.A(\recBuf[0] [0]), .B(\recBuf[0] [2]), 
         .C(n2345), .Z(n2979[0])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam mux_1971_i1_3_lut_3_lut.init = 16'ha6a6;
    LUT4 i9305_2_lut (.A(\recBuf[4] [1]), .B(n15), .Z(bufferL1_9__1__N_231)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9305_2_lut.init = 16'heeee;
    LUT4 i9064_1_lut_rep_204 (.A(cmd[1]), .Z(n14963)) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i9064_1_lut_rep_204.init = 16'h5555;
    LUT4 i9424_3_lut_3_lut (.A(cmd[1]), .B(n2496), .C(n2979[0]), .Z(n6526)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i9424_3_lut_3_lut.init = 16'h5151;
    LUT4 n14807_bdd_3_lut_12833 (.A(n14807), .B(n14804), .C(stm[1]), .Z(n14808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14807_bdd_3_lut_12833.init = 16'hcaca;
    LUT4 i9237_3_lut_3_lut (.A(cmd[1]), .B(n2146), .C(n3189[0]), .Z(n6490)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i9237_3_lut_3_lut.init = 16'h5151;
    PFUMX mux_1412_i11 (.BLUT(n14076), .ALUT(recBuf_12__7__N_1301), .C0(n8756), 
          .Z(recBuf_12__7__N_75[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9306_2_lut (.A(\recBuf[4] [0]), .B(n15), .Z(bufferL1_9__0__N_234)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9306_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_326 (.A(n14929), .B(\recBuf[0] [4]), .C(preFullVal[31]), 
         .D(n14923), .Z(n14185)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_3_lut_4_lut_adj_326.init = 16'h2000;
    LUT4 mux_3239_i44_3_lut (.A(\bufferL1[5] [3]), .B(\bufferL2[5] [3]), 
         .C(lns), .Z(n5257[43])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i44_3_lut.init = 16'hcaca;
    LUT4 i9238_3_lut_3_lut (.A(cmd[1]), .B(n2146), .C(n2699[0]), .Z(n6486)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i9238_3_lut_3_lut.init = 16'h5151;
    LUT4 i1_2_lut_3_lut_4_lut_adj_327 (.A(n14929), .B(\recBuf[0] [4]), .C(preAddress[7]), 
         .D(n14923), .Z(n14186)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_3_lut_4_lut_adj_327.init = 16'h2000;
    FD1P3AX preFullVal_i0_i30 (.D(rxConv[2]), .SP(sysclk_c_enable_131), 
            .CK(sysclk_c), .Q(preFullVal[30])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i30.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i29 (.D(rxConv[1]), .SP(sysclk_c_enable_131), 
            .CK(sysclk_c), .Q(preFullVal[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i29.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i28 (.D(rxConv[0]), .SP(sysclk_c_enable_131), 
            .CK(sysclk_c), .Q(preFullVal[28])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i28.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i27 (.D(rxConv[3]), .SP(sysclk_c_enable_135), 
            .CK(sysclk_c), .Q(preFullVal[27])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i27.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i26 (.D(rxConv[2]), .SP(sysclk_c_enable_135), 
            .CK(sysclk_c), .Q(preFullVal[26])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i26.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i25 (.D(rxConv[1]), .SP(sysclk_c_enable_135), 
            .CK(sysclk_c), .Q(preFullVal[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i25.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i24 (.D(rxConv[0]), .SP(sysclk_c_enable_135), 
            .CK(sysclk_c), .Q(preFullVal[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i24.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i23 (.D(rxConv[3]), .SP(sysclk_c_enable_139), 
            .CK(sysclk_c), .Q(preFullVal[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i23.GSR = "ENABLED";
    LUT4 i9307_2_lut (.A(\recBuf[3] [7]), .B(n15), .Z(bufferL1_8__7__N_237)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9307_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_328 (.A(cmd[1]), .B(preAddress[0]), .C(n2146), .D(n14922), 
         .Z(n7_adj_1759)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_4_lut_adj_328.init = 16'h4505;
    LUT4 i9308_2_lut (.A(\recBuf[3] [6]), .B(n15), .Z(bufferL1_8__6__N_240)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9308_2_lut.init = 16'heeee;
    FD1P3AX preFullVal_i0_i22 (.D(rxConv[2]), .SP(sysclk_c_enable_139), 
            .CK(sysclk_c), .Q(preFullVal[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i22.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i21 (.D(rxConv[1]), .SP(sysclk_c_enable_139), 
            .CK(sysclk_c), .Q(preFullVal[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i21.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i20 (.D(rxConv[0]), .SP(sysclk_c_enable_139), 
            .CK(sysclk_c), .Q(preFullVal[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i20.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i19 (.D(rxConv[3]), .SP(sysclk_c_enable_143), 
            .CK(sysclk_c), .Q(preFullVal[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i19.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i18 (.D(rxConv[2]), .SP(sysclk_c_enable_143), 
            .CK(sysclk_c), .Q(preFullVal[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i18.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i17 (.D(rxConv[1]), .SP(sysclk_c_enable_143), 
            .CK(sysclk_c), .Q(preFullVal[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i17.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i16 (.D(rxConv[0]), .SP(sysclk_c_enable_143), 
            .CK(sysclk_c), .Q(preFullVal[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i16.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i15 (.D(rxConv[3]), .SP(sysclk_c_enable_147), 
            .CK(sysclk_c), .Q(preFullVal[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i15.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i14 (.D(rxConv[2]), .SP(sysclk_c_enable_147), 
            .CK(sysclk_c), .Q(preFullVal[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i14.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i13 (.D(rxConv[1]), .SP(sysclk_c_enable_147), 
            .CK(sysclk_c), .Q(preFullVal[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i13.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i12 (.D(rxConv[0]), .SP(sysclk_c_enable_147), 
            .CK(sysclk_c), .Q(preFullVal[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i12.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i11 (.D(rxConv[3]), .SP(sysclk_c_enable_151), 
            .CK(sysclk_c), .Q(preFullVal[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i11.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i10 (.D(rxConv[2]), .SP(sysclk_c_enable_151), 
            .CK(sysclk_c), .Q(preFullVal[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i10.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i9 (.D(rxConv[1]), .SP(sysclk_c_enable_151), .CK(sysclk_c), 
            .Q(preFullVal[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i9.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i8 (.D(rxConv[0]), .SP(sysclk_c_enable_151), .CK(sysclk_c), 
            .Q(preFullVal[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i8.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i7 (.D(rxConv[3]), .SP(sysclk_c_enable_155), .CK(sysclk_c), 
            .Q(preFullVal[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i7.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i6 (.D(rxConv[2]), .SP(sysclk_c_enable_155), .CK(sysclk_c), 
            .Q(preFullVal[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i6.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i5 (.D(rxConv[1]), .SP(sysclk_c_enable_155), .CK(sysclk_c), 
            .Q(preFullVal[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i5.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i4 (.D(rxConv[0]), .SP(sysclk_c_enable_155), .CK(sysclk_c), 
            .Q(preFullVal[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i4.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i3 (.D(rxConv[3]), .SP(sysclk_c_enable_158), .CK(sysclk_c), 
            .Q(preFullVal[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i3.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i2 (.D(rxConv[2]), .SP(sysclk_c_enable_158), .CK(sysclk_c), 
            .Q(preFullVal[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i2.GSR = "ENABLED";
    FD1P3AX preFullVal_i0_i1 (.D(rxConv[1]), .SP(sysclk_c_enable_158), .CK(sysclk_c), 
            .Q(preFullVal[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam preFullVal_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_4_lut_adj_329 (.A(cmd[1]), .B(n8296), .C(cmd[0]), 
         .D(n38), .Z(sysclk_c_enable_113)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_2_lut_4_lut_4_lut_adj_329.init = 16'h4000;
    LUT4 i9309_2_lut (.A(\recBuf[3] [5]), .B(n15), .Z(bufferL1_8__5__N_243)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9309_2_lut.init = 16'h2222;
    LUT4 i2_4_lut_rep_170 (.A(n14970), .B(n14199), .C(\recBuf[0] [5]), 
         .D(\recBuf[0] [4]), .Z(n14929)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i2_4_lut_rep_170.init = 16'h2202;
    LUT4 i1_2_lut_3_lut_adj_330 (.A(cmd[1]), .B(n2496), .C(n14919), .Z(n14093)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_330.init = 16'h4040;
    LUT4 i2_3_lut_rep_172_3_lut (.A(cmd[1]), .B(cmd[0]), .C(n38), .Z(n14931)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i2_3_lut_rep_172_3_lut.init = 16'h4040;
    LUT4 n2345_bdd_3_lut_12749 (.A(devOut[2]), .B(\recBuf[0] [0]), .C(\recBuf[0] [5]), 
         .Z(n14823)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam n2345_bdd_3_lut_12749.init = 16'hb8b8;
    LUT4 i1_2_lut_rep_163_4_lut (.A(n14970), .B(n14199), .C(\recBuf[0] [5]), 
         .D(\recBuf[0] [4]), .Z(n14922)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_163_4_lut.init = 16'h0002;
    LUT4 n2635_bdd_3_lut_12802 (.A(\bufferL1[10] [1]), .B(lns), .C(\bufferL2[10] [1]), 
         .Z(n14868)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n2635_bdd_3_lut_12802.init = 16'he2e2;
    LUT4 i2_3_lut_3_lut_adj_331 (.A(cmd[1]), .B(rstOut0), .C(cmd[0]), 
         .Z(sysclk_c_enable_220)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i2_3_lut_3_lut_adj_331.init = 16'h0404;
    LUT4 i9557_2_lut_rep_205 (.A(\recBuf[0] [5]), .B(\recBuf[0] [4]), .Z(n14964)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i9557_2_lut_rep_205.init = 16'h8888;
    LUT4 i12443_3_lut (.A(n1), .B(n13670), .C(stm[1]), .Z(n14309)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12443_3_lut.init = 16'hcaca;
    FD1P3DX send_1886 (.D(n14214), .SP(sysclk_c_enable_159), .CK(sysclk_c), 
            .CD(n14975), .Q(r_SM_Main_2__N_1704[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam send_1886.GSR = "ENABLED";
    LUT4 \recBuf_0[[1__bdd_3_lut  (.A(\recBuf[0] [1]), .B(\recBuf[0] [0]), 
         .C(\recBuf[0] [2]), .Z(n14707)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam \recBuf_0[[1__bdd_3_lut .init = 16'h3535;
    PFUMX mux_1412_i12 (.BLUT(n14078), .ALUT(recBuf_12__7__N_1300), .C0(n8756), 
          .Z(recBuf_12__7__N_75[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i1_2_lut_rep_206 (.A(recCte[1]), .B(recCte[2]), .Z(n14965)) /* synthesis lut_function=((B)+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i1_2_lut_rep_206.init = 16'hdddd;
    LUT4 i1_2_lut_4_lut_adj_332 (.A(n14959), .B(n14958), .C(n2345), .D(n2496), 
         .Z(n10_adj_1772)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i1_2_lut_4_lut_adj_332.init = 16'h3a00;
    LUT4 i1_2_lut_rep_185_3_lut (.A(recCte[1]), .B(recCte[2]), .C(recCte[0]), 
         .Z(n14944)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i1_2_lut_rep_185_3_lut.init = 16'hfdfd;
    FD1P3BX stm__i1 (.D(n9751), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i1.GSR = "ENABLED";
    FD1P3BX stm__i2 (.D(n9749), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i2.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_190_4_lut (.A(recCte[1]), .B(recCte[2]), .C(recCte[0]), 
         .D(recCte[3]), .Z(n14949)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i2_3_lut_rep_190_4_lut.init = 16'hffdf;
    FD1P3BX stm__i3 (.D(n9747), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i3.GSR = "ENABLED";
    FD1P3BX stm__i4 (.D(n9745), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_159 (.A(cmd[1]), .B(n2496), .Z(n14918)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_159.init = 16'h4444;
    FD1P3BX stm__i5 (.D(n9743), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i5.GSR = "ENABLED";
    LUT4 i12352_4_lut_4_lut (.A(stm[0]), .B(stm[1]), .C(n14348), .D(n5257[45]), 
         .Z(n14310)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(594[7:17])
    defparam i12352_4_lut_4_lut.init = 16'hf3d1;
    FD1P3BX stm__i6 (.D(n9741), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i6.GSR = "ENABLED";
    FD1P3BX stm__i7 (.D(n9739), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i7.GSR = "ENABLED";
    LUT4 mux_1524_Mux_5_i10_4_lut_4_lut (.A(stm[0]), .B(stm[1]), .C(n5257[85]), 
         .D(n14345), .Z(n10_adj_1749)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(594[7:17])
    defparam mux_1524_Mux_5_i10_4_lut_4_lut.init = 16'h7340;
    PFUMX mux_1412_i13 (.BLUT(n14079), .ALUT(recBuf_12__7__N_1299), .C0(n8756), 
          .Z(recBuf_12__7__N_75[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i1_2_lut_rep_207 (.A(\recBuf[0] [2]), .B(\recBuf[0] [3]), .Z(n14966)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_207.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_333 (.A(\recBuf[0] [2]), .B(\recBuf[0] [3]), 
         .C(\recBuf[0] [1]), .D(\recBuf[0] [0]), .Z(n8296)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_333.init = 16'h0008;
    LUT4 i2_2_lut_3_lut (.A(\recBuf[0] [2]), .B(\recBuf[0] [3]), .C(\recBuf[0] [4]), 
         .Z(n14218)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i3_4_lut_4_lut (.A(\recBuf[0] [0]), .B(n14218), .C(\recBuf[0] [1]), 
         .D(n14947), .Z(n8295)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i3_4_lut_4_lut.init = 16'hffdf;
    LUT4 i9221_4_lut (.A(\recBuf[0] [4]), .B(n8295), .C(n8), .D(\recBuf[0] [2]), 
         .Z(n11234)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i9221_4_lut.init = 16'hccc4;
    LUT4 i1_2_lut_4_lut_4_lut_adj_334 (.A(\recBuf[0] [0]), .B(cmd[1]), .C(n2345), 
         .D(n2496), .Z(n6474)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_2_lut_4_lut_4_lut_adj_334.init = 16'hfdff;
    LUT4 i9352_2_lut_2_lut (.A(\recBuf[0] [0]), .B(preAddress[5]), .Z(n943[0])) /* synthesis lut_function=((B)+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9352_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_adj_335 (.A(cmd[1]), .B(sw_c_3), .C(n2496), .D(n14181), 
         .Z(n6630)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_4_lut_adj_335.init = 16'h4505;
    LUT4 i1_4_lut_adj_336 (.A(cmd[1]), .B(n2496), .C(n2_adj_1773), .D(n10_adj_1760), 
         .Z(n13771)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_4_lut_adj_336.init = 16'h5551;
    LUT4 n2345_bdd_3_lut_12753 (.A(devOut[3]), .B(\recBuf[0] [0]), .C(\recBuf[0] [5]), 
         .Z(n14827)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam n2345_bdd_3_lut_12753.init = 16'hb8b8;
    LUT4 i9439_4_lut (.A(sw_c_1), .B(cmd[1]), .C(n2496), .D(n14181), 
         .Z(n6622)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9439_4_lut.init = 16'h2303;
    LUT4 i2_3_lut_4_lut_4_lut_adj_337 (.A(\recBuf[0] [0]), .B(n8_adj_1774), 
         .C(n2496), .D(cmd[1]), .Z(n14088)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i2_3_lut_4_lut_4_lut_adj_337.init = 16'h0040;
    LUT4 i9442_3_lut (.A(n2454[0]), .B(cmd[1]), .C(n2496), .Z(n6618)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9442_3_lut.init = 16'h2323;
    LUT4 i9462_2_lut_4_lut_4_lut (.A(\recBuf[0] [0]), .B(cmd[1]), .C(n2345), 
         .D(n2496), .Z(n6610)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9462_2_lut_4_lut_4_lut.init = 16'h3133;
    LUT4 i1_2_lut_4_lut_4_lut_adj_338 (.A(\recBuf[0] [0]), .B(n14969), .C(\recBuf[0] [4]), 
         .D(\recBuf[0] [1]), .Z(n8332)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_2_lut_4_lut_4_lut_adj_338.init = 16'h4000;
    LUT4 i9399_2_lut (.A(devOut[5]), .B(\recBuf[0] [0]), .Z(n1503[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i9399_2_lut.init = 16'h8888;
    LUT4 i9477_2_lut_rep_186_2_lut (.A(\recBuf[0] [0]), .B(\recBuf[0] [5]), 
         .Z(n14945)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9477_2_lut_rep_186_2_lut.init = 16'h4444;
    LUT4 mux_3239_i46_3_lut (.A(\bufferL1[5] [5]), .B(\bufferL2[5] [5]), 
         .C(lns), .Z(n5257[45])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i46_3_lut.init = 16'hcaca;
    LUT4 i9228_2_lut_2_lut (.A(\recBuf[0] [0]), .B(preAddress[4]), .Z(n978[0])) /* synthesis lut_function=((B)+!A) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9228_2_lut_2_lut.init = 16'hdddd;
    PFUMX mux_1412_i14 (.BLUT(n830[5]), .ALUT(recBuf_12__7__N_1298), .C0(n8756), 
          .Z(recBuf_12__7__N_75[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i2_3_lut_rep_187_3_lut (.A(\recBuf[0] [0]), .B(\recBuf[0] [4]), 
         .C(\recBuf[0] [1]), .Z(n14946)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i2_3_lut_rep_187_3_lut.init = 16'h4040;
    LUT4 rxRecv_1__bdd_4_lut (.A(rxRecv[1]), .B(n11565), .C(recBuf_12__7__N_1278), 
         .D(n8750), .Z(recBuf_12__7__N_75[33])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_1__bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_4_lut_adj_339 (.A(\recBuf[0] [0]), .B(\recBuf[0] [1]), 
         .C(\recBuf[0] [4]), .D(\recBuf[0] [5]), .Z(n38_adj_1762)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A ((D)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i1_2_lut_4_lut_adj_339.init = 16'h00c6;
    LUT4 i9403_2_lut (.A(devOut[4]), .B(\recBuf[0] [0]), .Z(n1538[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i9403_2_lut.init = 16'h8888;
    LUT4 i9606_4_lut (.A(\bufferL1[10] [7]), .B(stm[0]), .C(\bufferL2[10] [7]), 
         .D(lns), .Z(n9_adj_1758)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(613[28:31])
    defparam i9606_4_lut.init = 16'h3022;
    LUT4 rxRecv_2__bdd_4_lut (.A(rxRecv[2]), .B(n11565), .C(recBuf_12__7__N_1277), 
         .D(n8750), .Z(recBuf_12__7__N_75[34])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_2__bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_3_lut_adj_340 (.A(\recBuf[0] [2]), .B(\recBuf[0] [0]), 
         .C(n2345), .Z(n2_adj_1773)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_2_lut_3_lut_adj_340.init = 16'h0202;
    PFUMX i12687 (.BLUT(n14741), .ALUT(n14740), .C0(stm[0]), .Z(n14742));
    LUT4 i9575_4_lut (.A(\bufferL1[10] [4]), .B(stm[0]), .C(\bufferL2[10] [4]), 
         .D(lns), .Z(n9_adj_1756)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(613[28:31])
    defparam i9575_4_lut.init = 16'h3022;
    PFUMX mux_1412_i15 (.BLUT(n14080), .ALUT(recBuf_12__7__N_1297), .C0(n8756), 
          .Z(recBuf_12__7__N_75[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    PFUMX i12337 (.BLUT(n5257[50]), .ALUT(n5257[58]), .C0(stm[0]), .Z(n14295));
    LUT4 i9233_2_lut_rep_208 (.A(\recBuf[0] [2]), .B(\recBuf[0] [1]), .Z(n14967)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9233_2_lut_rep_208.init = 16'heeee;
    LUT4 mux_1347_i1_3_lut_4_lut (.A(\recBuf[0] [2]), .B(\recBuf[0] [1]), 
         .C(n14929), .D(n2133[0]), .Z(n2139[0])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam mux_1347_i1_3_lut_4_lut.init = 16'hf101;
    LUT4 rxRecv_3__bdd_4_lut (.A(rxRecv[3]), .B(n11565), .C(recBuf_12__7__N_1276), 
         .D(n8750), .Z(recBuf_12__7__N_75[35])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_3__bdd_4_lut.init = 16'hf088;
    LUT4 i2_3_lut_3_lut_3_lut (.A(\recBuf[0] [2]), .B(preFullVal[20]), .C(\recBuf[0] [0]), 
         .Z(n13694)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i9344_3_lut_4_lut (.A(n14929), .B(\recBuf[0] [4]), .C(cmd[1]), 
         .D(n2146), .Z(n6428)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i9344_3_lut_4_lut.init = 16'hf2f0;
    LUT4 mux_1763_i1_4_lut_4_lut (.A(\recBuf[0] [2]), .B(n14929), .C(\recBuf[0] [4]), 
         .D(\recBuf[0] [1]), .Z(n2699[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam mux_1763_i1_4_lut_4_lut.init = 16'h1d0c;
    LUT4 i9290_3_lut_4_lut (.A(n15), .B(recv), .C(cmd[1]), .D(cmd[0]), 
         .Z(cmd_2__N_1087[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i9290_3_lut_4_lut.init = 16'h44f4;
    LUT4 i19_3_lut_3_lut (.A(\recBuf[0] [2]), .B(n2345), .C(\recBuf[0] [5]), 
         .Z(n8_adj_1774)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i19_3_lut_3_lut.init = 16'hd1d1;
    PFUMX mux_1412_i16 (.BLUT(n14075), .ALUT(recBuf_12__7__N_1296), .C0(n8756), 
          .Z(recBuf_12__7__N_75[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i1_2_lut_adj_341 (.A(recCte[1]), .B(recCte[0]), .Z(n14128)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i1_2_lut_adj_341.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_3_lut_adj_342 (.A(\recBuf[0] [2]), .B(preFullVal[4]), 
         .C(\recBuf[0] [0]), .Z(n16)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_4_lut_4_lut_3_lut_adj_342.init = 16'h5e5e;
    LUT4 i1_2_lut_adj_343 (.A(recCte[3]), .B(recCte[4]), .Z(n10237)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i1_2_lut_adj_343.init = 16'heeee;
    LUT4 i1_4_lut_adj_344 (.A(cmd[0]), .B(n10_adj_1772), .C(highRead), 
         .D(cmd[1]), .Z(sysclk_c_enable_77)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_344.init = 16'ha022;
    LUT4 i12551_2_lut (.A(n2496), .B(cmd[1]), .Z(n11362)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12551_2_lut.init = 16'h1111;
    LUT4 n2345_bdd_3_lut_12752_3_lut (.A(\recBuf[0] [2]), .B(preFullVal[18]), 
         .C(\recBuf[0] [0]), .Z(n14824)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam n2345_bdd_3_lut_12752_3_lut.init = 16'h0404;
    FD1P3DX recCte_3541__i4 (.D(n32[4]), .SP(recv), .CK(sysclk_c), .CD(n14975), 
            .Q(recCte[4]));   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam recCte_3541__i4.GSR = "ENABLED";
    CCU2D add_2707_8 (.A0(stm[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(stm[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13405), 
          .S0(n3883[6]), .S1(n3883[7]));   // c:/pproj/lserial/lserial/source/debcom.v(618[18:25])
    defparam add_2707_8.INIT0 = 16'h5aaa;
    defparam add_2707_8.INIT1 = 16'h5aaa;
    defparam add_2707_8.INJECT1_0 = "NO";
    defparam add_2707_8.INJECT1_1 = "NO";
    LUT4 rxRecv_4__bdd_4_lut (.A(rxRecv[4]), .B(n11565), .C(recBuf_12__7__N_1275), 
         .D(n8750), .Z(recBuf_12__7__N_75[36])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_4__bdd_4_lut.init = 16'hf088;
    PFUMX mux_1412_i25 (.BLUT(n14166), .ALUT(recBuf_12__7__N_1287), .C0(n8752), 
          .Z(recBuf_12__7__N_75[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i12333_3_lut (.A(n14790), .B(n14290), .C(stm[2]), .Z(n14291)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12333_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_3_lut_adj_345 (.A(\recBuf[0] [2]), .B(preFullVal[5]), 
         .C(\recBuf[0] [0]), .Z(n946[0])) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_4_lut_4_lut_3_lut_adj_345.init = 16'h5e5e;
    LUT4 i9715_2_lut_rep_175 (.A(stm_7__N_1432), .B(txAct), .Z(n14934)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9715_2_lut_rep_175.init = 16'heeee;
    LUT4 i12340_3_lut (.A(n14742), .B(n14297), .C(stm[2]), .Z(n14298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12340_3_lut.init = 16'hcaca;
    LUT4 i9486_4_lut (.A(lns_N_1598), .B(n11710), .C(n14934), .D(lns), 
         .Z(lns_N_1596)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(598[13] 634[7])
    defparam i9486_4_lut.init = 16'ha2aa;
    LUT4 lns_I_235_4_lut (.A(n15), .B(lns_N_1599), .C(n14973), .D(recv), 
         .Z(lns_N_1598)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B+(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(517[4] 593[7])
    defparam lns_I_235_4_lut.init = 16'h5dcc;
    LUT4 i12615_2_lut_3_lut_4_lut (.A(stm_7__N_1432), .B(txAct), .C(stm[3]), 
         .D(n11710), .Z(n14276)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12615_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i9010_4_lut_4_lut (.A(\recBuf[0] [2]), .B(preFullVal[22]), .C(n2345), 
         .D(\recBuf[0] [5]), .Z(n4_adj_1746)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i9010_4_lut_4_lut.init = 16'hf404;
    PFUMX mux_1412_i26 (.BLUT(n14160), .ALUT(recBuf_12__7__N_1286), .C0(n8752), 
          .Z(recBuf_12__7__N_75[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9725_2_lut_rep_169_3_lut (.A(stm_7__N_1432), .B(txAct), .C(n11710), 
         .Z(n14928)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9725_2_lut_rep_169_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_346 (.A(stm_7__N_1432), .B(txAct), .C(n14936), 
         .D(n11710), .Z(sysclk_c_enable_127)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_346.init = 16'hf0f1;
    LUT4 i4_4_lut_adj_347 (.A(stm[5]), .B(stm[7]), .C(stm[6]), .D(n6_adj_1775), 
         .Z(n11710)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_347.init = 16'hfffe;
    LUT4 i1_3_lut_adj_348 (.A(stm[2]), .B(stm[4]), .C(stm[3]), .Z(n6_adj_1775)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_348.init = 16'hecec;
    LUT4 i1_2_lut_4_lut_4_lut_adj_349 (.A(\recBuf[0] [2]), .B(n14923), .C(n14929), 
         .D(n14964), .Z(n14108)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_2_lut_4_lut_4_lut_adj_349.init = 16'hc404;
    PFUMX mux_1412_i27 (.BLUT(n14161), .ALUT(recBuf_12__7__N_1285), .C0(n8752), 
          .Z(recBuf_12__7__N_75[26])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 mux_1581_i1_4_lut_4_lut_4_lut (.A(\recBuf[0] [2]), .B(sw_c_0), 
         .C(n2345), .D(\recBuf[0] [0]), .Z(n2454[0])) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (D)+!B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam mux_1581_i1_4_lut_4_lut_4_lut.init = 16'hf40a;
    LUT4 i7_4_lut (.A(stm[2]), .B(n14_adj_1776), .C(n10_adj_1777), .D(stm[6]), 
         .Z(stm_7__N_1432)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i12350_3_lut (.A(n14306), .B(n14307), .C(stm[2]), .Z(n14308)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12350_3_lut.init = 16'hcaca;
    LUT4 i9607_4_lut (.A(n13436), .B(stm[2]), .C(n14354), .D(stm[1]), 
         .Z(n7_adj_1754)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(613[28:31])
    defparam i9607_4_lut.init = 16'hc088;
    LUT4 i6_4_lut (.A(stm[4]), .B(stm[5]), .C(stm[1]), .D(stm[7]), .Z(n14_adj_1776)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i35_4_lut (.A(n8296), .B(\recBuf[0] [1]), .C(\recBuf[0] [4]), 
         .D(n4_adj_1778), .Z(n18)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(194[6] 318[13])
    defparam i35_4_lut.init = 16'hca0a;
    LUT4 i2_2_lut (.A(stm[3]), .B(stm[0]), .Z(n10_adj_1777)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i12395_3_lut (.A(\bufferL1[7] [7]), .B(\bufferL2[7] [7]), .C(lns), 
         .Z(n14353)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12395_3_lut.init = 16'hcaca;
    LUT4 rxRecv_6__bdd_4_lut (.A(rxRecv[6]), .B(n11565), .C(recBuf_12__7__N_1273), 
         .D(n8750), .Z(recBuf_12__7__N_75[38])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_6__bdd_4_lut.init = 16'hf088;
    LUT4 rxRecv_7__bdd_4_lut_12991 (.A(rxRecv[7]), .B(n11565), .C(recBuf_12__7__N_1272), 
         .D(n8750), .Z(recBuf_12__7__N_75[39])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam rxRecv_7__bdd_4_lut_12991.init = 16'hf088;
    PFUMX mux_1412_i28 (.BLUT(n14162), .ALUT(recBuf_12__7__N_1284), .C0(n8752), 
          .Z(recBuf_12__7__N_75[27])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9317_2_lut (.A(\recBuf[2] [5]), .B(n15), .Z(bufferL1_7__5__N_267)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9317_2_lut.init = 16'heeee;
    LUT4 i12394_3_lut (.A(\bufferL1[6] [7]), .B(\bufferL2[6] [7]), .C(lns), 
         .Z(n14352)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12394_3_lut.init = 16'hcaca;
    LUT4 inv_8_i6_1_lut (.A(preAddress[5]), .Z(n17[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(216[18:34])
    defparam inv_8_i6_1_lut.init = 16'h5555;
    LUT4 n10231_bdd_4_lut (.A(n10231), .B(rxRecv[7]), .C(n2), .D(n8746), 
         .Z(recBuf_12__7__N_75[7])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n10231_bdd_4_lut.init = 16'hf088;
    LUT4 inv_8_i5_1_lut (.A(preAddress[4]), .Z(n17[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(216[18:34])
    defparam inv_8_i5_1_lut.init = 16'h5555;
    PFUMX i12347 (.BLUT(n5257[52]), .ALUT(n5257[60]), .C0(stm[0]), .Z(n14305));
    LUT4 i12392_3_lut (.A(\bufferL1[9] [7]), .B(\bufferL2[9] [7]), .C(lns), 
         .Z(n14350)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12392_3_lut.init = 16'hcaca;
    LUT4 i9484_4_lut (.A(n13458), .B(n13492), .C(flag), .D(n14915), 
         .Z(flag_N_1586)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(598[13] 634[7])
    defparam i9484_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut_4_lut_adj_350 (.A(\recBuf[0] [4]), .B(n14929), .C(n14923), 
         .D(preFullVal[13]), .Z(n14071)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_4_lut_adj_350.init = 16'hffbf;
    LUT4 inv_8_i4_1_lut (.A(preAddress[3]), .Z(n17[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(216[18:34])
    defparam inv_8_i4_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_209 (.A(recCte[0]), .B(recCte[1]), .Z(n14968)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i1_2_lut_rep_209.init = 16'h8888;
    LUT4 i2_3_lut (.A(recv), .B(n15), .C(n14973), .Z(n13458)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(517[4] 593[7])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 inv_8_i3_1_lut (.A(preAddress[2]), .Z(n17[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(216[18:34])
    defparam inv_8_i3_1_lut.init = 16'h5555;
    LUT4 i3_4_lut (.A(lns), .B(stm_7__N_1432), .C(txAct), .D(n11710), 
         .Z(n13492)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(598[13] 634[7])
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 inv_8_i2_1_lut (.A(preAddress[1]), .Z(n17[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(216[18:34])
    defparam inv_8_i2_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_351 (.A(n14946), .B(n10841), .C(n14141), .D(n38_adj_1762), 
         .Z(n2496)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i1_4_lut_adj_351.init = 16'hfcec;
    LUT4 i1_2_lut_adj_352 (.A(n2345), .B(devOut[6]), .Z(n12_adj_1747)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_352.init = 16'h8888;
    LUT4 i1_4_lut_adj_353 (.A(n14932), .B(cmd[1]), .C(n13467), .D(cmd[0]), 
         .Z(cmd_2__N_1087[1])) /* synthesis lut_function=(!(A+(B (D)+!B (C+!(D))))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i1_4_lut_adj_353.init = 16'h0144;
    PFUMX mux_1412_i29 (.BLUT(n14163), .ALUT(recBuf_12__7__N_1283), .C0(n8752), 
          .Z(recBuf_12__7__N_75[28])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i11441_2_lut_3_lut (.A(recCte[0]), .B(recCte[1]), .C(recCte[2]), 
         .Z(n13385)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam i11441_2_lut_3_lut.init = 16'h8080;
    L6MUX21 i12680 (.D0(n14732), .D1(n14729), .SD(stm[1]), .Z(n14733));
    LUT4 i2_4_lut (.A(n14218), .B(n11234), .C(\recBuf[0] [1]), .D(n14935), 
         .Z(n13467)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hccc8;
    FD1P3DX \bufferL1_8[[4__1915  (.D(bufferL1_8__4__N_246), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[8] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[4__1915 .GSR = "ENABLED";
    PFUMX mux_1412_i30 (.BLUT(n828[5]), .ALUT(recBuf_12__7__N_1282), .C0(n8752), 
          .Z(recBuf_12__7__N_75[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i3_3_lut_4_lut (.A(\recBuf[0] [0]), .B(n14947), .C(\recBuf[0] [3]), 
         .D(\recBuf[0] [1]), .Z(n8)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(257[10:15])
    defparam i3_3_lut_4_lut.init = 16'hfeff;
    LUT4 i12548_4_lut (.A(recCte[3]), .B(n14936), .C(n14975), .D(n14944), 
         .Z(sysclk_c_enable_117)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12548_4_lut.init = 16'h0004;
    LUT4 i12529_2_lut_rep_210 (.A(\recBuf[0] [3]), .B(\recBuf[0] [2]), .Z(n14969)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i12529_2_lut_rep_210.init = 16'h1111;
    LUT4 i9318_2_lut (.A(\recBuf[2] [4]), .B(n15), .Z(bufferL1_7__4__N_270)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9318_2_lut.init = 16'h2222;
    LUT4 i9319_2_lut (.A(\recBuf[2] [3]), .B(n15), .Z(bufferL1_7__3__N_273)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9319_2_lut.init = 16'heeee;
    LUT4 inv_8_i1_1_lut (.A(preAddress[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(216[18:34])
    defparam inv_8_i1_1_lut.init = 16'h5555;
    PFUMX i12678 (.BLUT(n14731), .ALUT(n14730), .C0(stm[0]), .Z(n14732));
    LUT4 i9320_2_lut (.A(\recBuf[2] [2]), .B(n15), .Z(bufferL1_7__2__N_276)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9320_2_lut.init = 16'heeee;
    FD1P3DX recCte_3541__i3 (.D(n32[3]), .SP(recv), .CK(sysclk_c), .CD(n14975), 
            .Q(recCte[3]));   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam recCte_3541__i3.GSR = "ENABLED";
    FD1P3DX recCte_3541__i2 (.D(n32[2]), .SP(recv), .CK(sysclk_c), .CD(n14975), 
            .Q(recCte[2]));   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam recCte_3541__i2.GSR = "ENABLED";
    FD1P3DX recCte_3541__i1 (.D(n32[1]), .SP(recv), .CK(sysclk_c), .CD(n14975), 
            .Q(recCte[1]));   // c:/pproj/lserial/lserial/source/debcom.v(590[19:31])
    defparam recCte_3541__i1.GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[6__1929  (.D(bufferL1_6__6__N_288), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[6] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[6__1929 .GSR = "ENABLED";
    LUT4 i9321_2_lut (.A(\recBuf[2] [1]), .B(n15), .Z(bufferL1_7__1__N_279)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9321_2_lut.init = 16'heeee;
    PFUMX mux_1412_i31 (.BLUT(n14164), .ALUT(recBuf_12__7__N_1281), .C0(n8752), 
          .Z(recBuf_12__7__N_75[30])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9482_4_lut_then_4_lut (.A(\recBuf[0] [0]), .B(cmd[1]), .C(n2496), 
         .D(\recBuf[0] [5]), .Z(n14981)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(181[4] 516[11])
    defparam i9482_4_lut_then_4_lut.init = 16'hdccc;
    PFUMX i12821 (.BLUT(n14980), .ALUT(n14981), .C0(n2345), .Z(n14982));
    LUT4 i1_2_lut_3_lut_adj_354 (.A(\recBuf[0] [3]), .B(\recBuf[0] [2]), 
         .C(\recBuf[0] [0]), .Z(n4_adj_1778)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_354.init = 16'h1010;
    PFUMX mux_1412_i32 (.BLUT(n14165), .ALUT(recBuf_12__7__N_1280), .C0(n8752), 
          .Z(recBuf_12__7__N_75[31])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i9322_2_lut (.A(\recBuf[2] [0]), .B(n15), .Z(bufferL1_7__0__N_282)) /* synthesis lut_function=(A+(B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9322_2_lut.init = 16'heeee;
    PFUMX i12384 (.BLUT(n14340), .ALUT(n14341), .C0(stm[0]), .Z(n14342));
    PFUMX mux_1412_i41 (.BLUT(n14169), .ALUT(recBuf_12__7__N_1271), .C0(n8748), 
          .Z(recBuf_12__7__N_75[40])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    FD1P3BX \bufferL1_6[[5__1930  (.D(bufferL1_6__5__N_291), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL1[6] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[5__1930 .GSR = "ENABLED";
    LUT4 i9323_2_lut (.A(\recBuf[1] [7]), .B(n15), .Z(bufferL1_6__7__N_285)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(533[14] 592[8])
    defparam i9323_2_lut.init = 16'h2222;
    FD1P3DX \bufferL1_6[[4__1931  (.D(bufferL1_6__4__N_294), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[6] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[4__1931 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[3__1932  (.D(bufferL1_6__3__N_297), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[6] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[3__1932 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[2__1933  (.D(bufferL1_6__2__N_300), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[6] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[2__1933 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[1__1934  (.D(bufferL1_6__1__N_303), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[6] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[1__1934 .GSR = "ENABLED";
    FD1P3DX \bufferL1_6[[0__1935  (.D(bufferL1_6__0__N_306), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[6] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_6[[0__1935 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[7__1936  (.D(bufferL1_5__7__N_309), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[5] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[7__1936 .GSR = "ENABLED";
    LUT4 i1_2_lut_adj_355 (.A(n2345), .B(preAddress[2]), .Z(n14_adj_1744)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_355.init = 16'h8888;
    LUT4 i2_4_lut_adj_356 (.A(rxRecv[2]), .B(rxRecv[4]), .C(n14940), .D(rxRecv[3]), 
         .Z(rxConv[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i2_4_lut_adj_356.init = 16'h6c93;
    PFUMX mux_1412_i42 (.BLUT(n14168), .ALUT(recBuf_12__7__N_1270), .C0(n8748), 
          .Z(recBuf_12__7__N_75[41])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    FD1P3DX \bufferL1_5[[6__1937  (.D(bufferL1_5__6__N_312), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[5] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[6__1937 .GSR = "ENABLED";
    FD1P3BX \bufferL1_5[[5__1938  (.D(bufferL1_5__5__N_315), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL1[5] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[5__1938 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[4__1939  (.D(bufferL1_5__4__N_318), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[5] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[4__1939 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[3__1940  (.D(bufferL1_5__3__N_321), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[5] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[3__1940 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[2__1941  (.D(bufferL1_5__2__N_324), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[5] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[2__1941 .GSR = "ENABLED";
    LUT4 i2_4_lut_adj_357 (.A(n14966), .B(\recBuf[0] [1]), .C(n38), .D(\recBuf[0] [0]), 
         .Z(n10841)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(82[13:19])
    defparam i2_4_lut_adj_357.init = 16'h8020;
    FD1P3DX \bufferL1_5[[1__1942  (.D(bufferL1_5__1__N_327), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[5] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[1__1942 .GSR = "ENABLED";
    FD1P3DX \bufferL1_5[[0__1943  (.D(bufferL1_5__0__N_330), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[5] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_5[[0__1943 .GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_4_lut_adj_358 (.A(\recBuf[0] [4]), .B(n14929), .C(preFullVal[15]), 
         .D(n14923), .Z(n14127)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_358.init = 16'h4000;
    PFUMX mux_1412_i43 (.BLUT(n14170), .ALUT(recBuf_12__7__N_1269), .C0(n8748), 
          .Z(recBuf_12__7__N_75[42])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    FD1P3DX \bufferL1_10[[7__1896  (.D(bufferL1_10__7__N_187), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[10] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[7__1896 .GSR = "ENABLED";
    LUT4 i9355_2_lut_rep_177 (.A(n15), .B(recv), .Z(n14936)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9355_2_lut_rep_177.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_359 (.A(\recBuf[0] [3]), .B(\recBuf[0] [2]), 
         .C(n14931), .D(n14971), .Z(sysclk_c_enable_101)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_359.init = 16'h1000;
    LUT4 i1_2_lut_rep_188_3_lut (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), 
         .C(\recBuf[0] [5]), .Z(n14947)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_2_lut_rep_188_3_lut.init = 16'hfbfb;
    PFUMX i12676 (.BLUT(n8043), .ALUT(n14728), .C0(stm[2]), .Z(n14729));
    LUT4 i1_2_lut_rep_176_3_lut_4_lut (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), 
         .C(\recBuf[0] [0]), .D(\recBuf[0] [5]), .Z(n14935)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_2_lut_rep_176_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_adj_360 (.A(n2345), .B(preAddress[7]), .Z(n5_adj_1740)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_360.init = 16'h8888;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(\recBuf[0] [7]), .B(\recBuf[0] [6]), 
         .C(\recBuf[0] [2]), .D(\recBuf[0] [3]), .Z(n14199)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_211 (.A(\recBuf[0] [0]), .B(\recBuf[0] [1]), .Z(n14970)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_211.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_361 (.A(\recBuf[0] [0]), .B(\recBuf[0] [1]), 
         .C(\recBuf[0] [4]), .Z(n15_adj_1761)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_361.init = 16'h4040;
    PFUMX i12667 (.BLUT(n14707), .ALUT(n14706), .C0(n14929), .Z(n14708));
    LUT4 i1_2_lut_adj_362 (.A(n2345), .B(preAddress[0]), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_362.init = 16'h8888;
    LUT4 i6722_3_lut_4_lut (.A(n15), .B(recv), .C(n14973), .D(n14939), 
         .Z(n8756)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i6722_3_lut_4_lut.init = 16'h7f77;
    LUT4 i1_2_lut_rep_212 (.A(\recBuf[0] [0]), .B(\recBuf[0] [1]), .Z(n14971)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_212.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_363 (.A(highRead), .B(cmd[0]), .C(cmd[1]), 
         .D(n14122), .Z(sysclk_c_enable_79)) /* synthesis lut_function=(A (B (D))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_363.init = 16'h8c00;
    LUT4 i6718_3_lut_4_lut (.A(n15), .B(recv), .C(n14973), .D(n14949), 
         .Z(n8752)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i6718_3_lut_4_lut.init = 16'h7f77;
    PFUMX mux_1412_i44 (.BLUT(n14171), .ALUT(recBuf_12__7__N_1268), .C0(n8748), 
          .Z(recBuf_12__7__N_75[43])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i2_2_lut_3_lut_4_lut (.A(highRead), .B(cmd[0]), .C(cmd[1]), .D(n11234), 
         .Z(sysclk_c_enable_65)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8c80;
    LUT4 i12391_3_lut (.A(\bufferL1[8] [7]), .B(\bufferL2[8] [7]), .C(lns), 
         .Z(n14349)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12391_3_lut.init = 16'hcaca;
    PFUMX i12387 (.BLUT(n14343), .ALUT(n14344), .C0(stm[0]), .Z(n14345));
    LUT4 i1_2_lut_adj_364 (.A(n2345), .B(preAddress[3]), .Z(n4_adj_1738)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_364.init = 16'h8888;
    LUT4 mux_3239_i63_3_lut (.A(\bufferL1[7] [6]), .B(\bufferL2[7] [6]), 
         .C(lns), .Z(n5257[62])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i63_3_lut.init = 16'hcaca;
    PFUMX mux_1412_i45 (.BLUT(n14172), .ALUT(recBuf_12__7__N_1267), .C0(n8748), 
          .Z(recBuf_12__7__N_75[44])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    LUT4 i1_2_lut_adj_365 (.A(n2345), .B(preAddress[6]), .Z(n14_adj_1737)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_365.init = 16'h8888;
    LUT4 i6714_3_lut_4_lut (.A(n15), .B(recv), .C(n14973), .D(n14948), 
         .Z(n8748)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i6714_3_lut_4_lut.init = 16'h7f77;
    LUT4 mux_3239_i86_3_lut (.A(\bufferL1[10] [5]), .B(\bufferL2[10] [5]), 
         .C(lns), .Z(n5257[85])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i86_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_366 (.A(n2345), .B(devOut[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_366.init = 16'h8888;
    FD1P3DX \bufferL1_10[[6__1897  (.D(bufferL1_10__6__N_192), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[10] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[6__1897 .GSR = "ENABLED";
    FD1P3BX \bufferL1_10[[5__1898  (.D(bufferL1_10__5__N_195), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL1[10] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[5__1898 .GSR = "ENABLED";
    LUT4 i1_2_lut_adj_367 (.A(n2345), .B(preAddress[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_367.init = 16'h8888;
    FD1P3DX \bufferL1_10[[4__1899  (.D(bufferL1_10__4__N_198), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[10] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[4__1899 .GSR = "ENABLED";
    PFUMX i12390 (.BLUT(n14346), .ALUT(n14347), .C0(stm[0]), .Z(n14348));
    FD1P3BX stm__i0 (.D(n9710), .SP(sysclk_c_enable_217), .CK(sysclk_c), 
            .PD(n14975), .Q(stm[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam stm__i0.GSR = "ENABLED";
    LUT4 mux_3239_i58_3_lut (.A(\bufferL1[7] [1]), .B(\bufferL2[7] [1]), 
         .C(lns), .Z(n5257[57])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i58_3_lut.init = 16'hcaca;
    FD1P3DX rstOut0_2207 (.D(n15303), .SP(sysclk_c_enable_218), .CK(sysclk_c), 
            .CD(n14975), .Q(rstOut0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam rstOut0_2207.GSR = "ENABLED";
    PFUMX mux_1412_i46 (.BLUT(n826[5]), .ALUT(recBuf_12__7__N_1266), .C0(n8748), 
          .Z(recBuf_12__7__N_75[45])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    FD1S3DX tick_2197 (.D(n6067), .CK(sysclk_c), .CD(n14975), .Q(tick)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam tick_2197.GSR = "ENABLED";
    PFUMX i12831 (.BLUT(n14995), .ALUT(n14996), .C0(n14958), .Z(n14122));
    LUT4 mux_1524_Mux_3_i10_4_lut (.A(n14336), .B(n5257[83]), .C(stm[1]), 
         .D(stm[0]), .Z(n10_adj_1752)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(613[28:31])
    defparam mux_1524_Mux_3_i10_4_lut.init = 16'hfaca;
    PFUMX i12829 (.BLUT(n14992), .ALUT(n14993), .C0(\recBuf[0] [0]), .Z(n2345));
    LUT4 mux_3239_i84_3_lut (.A(\bufferL1[10] [3]), .B(\bufferL2[10] [3]), 
         .C(lns), .Z(n5257[83])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/pproj/lserial/lserial/source/debcom.v(612[18] 614[12])
    defparam mux_3239_i84_3_lut.init = 16'hcaca;
    PFUMX mux_1412_i47 (.BLUT(n14173), .ALUT(recBuf_12__7__N_1265), .C0(n8748), 
          .Z(recBuf_12__7__N_75[46])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    FD1P3DX highRead_2205 (.D(n15303), .SP(sysclk_c_enable_219), .CK(sysclk_c), 
            .CD(n14975), .Q(highRead)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam highRead_2205.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_adj_368 (.A(n14948), .B(rxRecv[7]), .C(n14973), 
         .Z(n14174)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_368.init = 16'h0404;
    PFUMX mux_1412_i48 (.BLUT(n14174), .ALUT(recBuf_12__7__N_1264), .C0(n8748), 
          .Z(recBuf_12__7__N_75[47])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;
    PFUMX i12825 (.BLUT(n14986), .ALUT(n14987), .C0(n14128), .Z(n14988));
    L6MUX21 i12793 (.D0(n14872), .D1(n14869), .SD(stm[1]), .Z(n14873));
    PFUMX i12823 (.BLUT(n14983), .ALUT(n14984), .C0(n2345), .Z(n14985));
    FD1P3BX rstOut_2203 (.D(n15302), .SP(sysclk_c_enable_220), .CK(sysclk_c), 
            .PD(n14975), .Q(rstOutCall)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam rstOut_2203.GSR = "ENABLED";
    FD1P3DX \bufferL1_10[[3__1900  (.D(bufferL1_10__3__N_201), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[10] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[3__1900 .GSR = "ENABLED";
    PFUMX i12791 (.BLUT(n14871), .ALUT(n14870), .C0(stm[0]), .Z(n14872));
    FD1P3DX \bufferL1_10[[2__1901  (.D(bufferL1_10__2__N_204), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[10] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[2__1901 .GSR = "ENABLED";
    FD1P3DX \bufferL1_10[[1__1902  (.D(bufferL1_10__1__N_207), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[10] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[1__1902 .GSR = "ENABLED";
    FD1P3DX \bufferL1_10[[0__1903  (.D(bufferL1_10__0__N_210), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[10] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_10[[0__1903 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[7__1904  (.D(bufferL1_9__7__N_213), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[9] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[7__1904 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[6__1905  (.D(bufferL1_9__6__N_216), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[9] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[6__1905 .GSR = "ENABLED";
    FD1P3BX \bufferL1_9[[5__1906  (.D(bufferL1_9__5__N_219), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL1[9] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[5__1906 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[4__1907  (.D(bufferL1_9__4__N_222), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[9] [4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[4__1907 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[3__1908  (.D(bufferL1_9__3__N_225), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[9] [3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[3__1908 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[2__1909  (.D(bufferL1_9__2__N_228), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[9] [2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[2__1909 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[1__1910  (.D(bufferL1_9__1__N_231), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[9] [1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[1__1910 .GSR = "ENABLED";
    FD1P3DX \bufferL1_9[[0__1911  (.D(bufferL1_9__0__N_234), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[9] [0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_9[[0__1911 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[7__1912  (.D(bufferL1_8__7__N_237), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[8] [7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[7__1912 .GSR = "ENABLED";
    FD1P3DX \bufferL1_8[[6__1913  (.D(bufferL1_8__6__N_240), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .CD(n14975), .Q(\bufferL1[8] [6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[6__1913 .GSR = "ENABLED";
    FD1P3BX \bufferL1_8[[5__1914  (.D(bufferL1_8__5__N_243), .SP(sysclk_c_enable_235), 
            .CK(sysclk_c), .PD(n14975), .Q(\bufferL1[8] [5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=67, LSE_RLINE=84 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(175[12] 635[6])
    defparam \bufferL1_8[[5__1914 .GSR = "ENABLED";
    PFUMX i12330 (.BLUT(n5257[49]), .ALUT(n5257[57]), .C0(stm[0]), .Z(n14288));
    \uart(CLKS_PER_BIT=104)  URT (.GND_net(GND_net), .\r_SM_Main_2__N_1704[0] (r_SM_Main_2__N_1704[0]), 
            .sysclk_c(sysclk_c), .usb_uart_tx_c(usb_uart_tx_c), .txSend({txSend}), 
            .txAct(txAct), .txDone(txDone), .led_c_7_c(led_c_7_c), .rxRecv({rxRecv}), 
            .recv(recv)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/debcom.v(67[35] 79[22])
    
endmodule
//
// Verilog Description of module \uart(CLKS_PER_BIT=104) 
//

module \uart(CLKS_PER_BIT=104)  (GND_net, \r_SM_Main_2__N_1704[0] , sysclk_c, 
            usb_uart_tx_c, txSend, txAct, txDone, led_c_7_c, rxRecv, 
            recv) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \r_SM_Main_2__N_1704[0] ;
    input sysclk_c;
    output usb_uart_tx_c;
    input [7:0]txSend;
    output txAct;
    output txDone;
    input led_c_7_c;
    output [7:0]rxRecv;
    output recv;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    
    \uart_tx(CLKS_PER_BIT=104)  UART_TX_INST (.GND_net(GND_net), .\r_SM_Main_2__N_1704[0] (\r_SM_Main_2__N_1704[0] ), 
            .sysclk_c(sysclk_c), .usb_uart_tx_c(usb_uart_tx_c), .txSend({txSend}), 
            .txAct(txAct), .txDone(txDone)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(25[42] 32[7])
    \uart_rx(CLKS_PER_BIT=104)  UART_RX_INST (.GND_net(GND_net), .sysclk_c(sysclk_c), 
            .led_c_7_c(led_c_7_c), .rxRecv({rxRecv}), .recv(recv)) /* synthesis syn_module_defined=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(18[42] 23[7])
    
endmodule
//
// Verilog Description of module \uart_tx(CLKS_PER_BIT=104) 
//

module \uart_tx(CLKS_PER_BIT=104)  (GND_net, \r_SM_Main_2__N_1704[0] , sysclk_c, 
            usb_uart_tx_c, txSend, txAct, txDone) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \r_SM_Main_2__N_1704[0] ;
    input sysclk_c;
    output usb_uart_tx_c;
    input [7:0]txSend;
    output txAct;
    output txDone;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    
    wire n13410;
    wire [7:0]r_Clock_Count;   // c:/pproj/lserial/lserial/source/uart.v(194[16:29])
    wire [7:0]n37;
    wire [2:0]r_SM_Main;   // c:/pproj/lserial/lserial/source/uart.v(193[16:25])
    wire [2:0]r_SM_Main_2__N_1701;
    
    wire o_Tx_Done_N_1732, n14990, n14989;
    wire [7:0]r_Tx_Data;   // c:/pproj/lserial/lserial/source/uart.v(196[16:25])
    wire [2:0]r_Bit_Index;   // c:/pproj/lserial/lserial/source/uart.v(195[16:27])
    
    wire n14315, n14314, n14977, n14978, n14979, sysclk_c_enable_182, 
        n7144, sysclk_c_enable_236, n3, sysclk_c_enable_108, n13745, 
        n14313, n14312, n14045, n13485, n3_adj_1735, n13409, n13408, 
        n13407, n14316, n14317, n14318, sysclk_c_enable_212, n14031, 
        n14942, n10561, n13481, n4, sysclk_c_enable_196;
    
    CCU2D r_Clock_Count_3543_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13410), .S0(n37[7]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_9.INIT1 = 16'h0000;
    defparam r_Clock_Count_3543_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_3_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), 
         .C(r_SM_Main[0]), .D(r_SM_Main_2__N_1701[1]), .Z(o_Tx_Done_N_1732)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_3_lut_4_lut.init = 16'h4202;
    LUT4 i12279_3_lut_4_lut_4_lut_then_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_1701[1]), 
         .C(r_SM_Main[0]), .Z(n14990)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i12279_3_lut_4_lut_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i12279_3_lut_4_lut_4_lut_else_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), 
         .C(\r_SM_Main_2__N_1704[0] ), .Z(n14989)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i12279_3_lut_4_lut_4_lut_else_3_lut.init = 16'h1010;
    LUT4 i12357_3_lut (.A(r_Tx_Data[6]), .B(r_Tx_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n14315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12357_3_lut.init = 16'hcaca;
    LUT4 i12356_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n14314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12356_3_lut.init = 16'hcaca;
    PFUMX i12819 (.BLUT(n14977), .ALUT(n14978), .C0(r_SM_Main[1]), .Z(n14979));
    FD1P3AX r_Bit_Index_i0 (.D(n7144), .SP(sysclk_c_enable_182), .CK(sysclk_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3AX o_Tx_Serial_44 (.D(n3), .SP(sysclk_c_enable_236), .CK(sysclk_c), 
            .Q(usb_uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam o_Tx_Serial_44.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(txSend[0]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n13745), .CK(sysclk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    LUT4 i12355_3_lut (.A(r_Tx_Data[2]), .B(r_Tx_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n14313)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12355_3_lut.init = 16'hcaca;
    LUT4 i12354_3_lut (.A(r_Tx_Data[0]), .B(r_Tx_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n14312)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12354_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n14045)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i2_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .Z(n13485)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 i19_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main_2__N_1701[1]), 
         .C(r_SM_Main[1]), .Z(n3_adj_1735)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam i19_2_lut_3_lut.init = 16'h7878;
    LUT4 i23_4_lut_then_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .C(r_Bit_Index[2]), 
         .D(r_SM_Main_2__N_1701[1]), .Z(n14978)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i23_4_lut_then_4_lut.init = 16'h8000;
    CCU2D r_Clock_Count_3543_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13409), .COUT(n13410), .S0(n37[5]), 
          .S1(n37[6]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_3543_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13408), .COUT(n13409), .S0(n37[3]), 
          .S1(n37[4]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_3543_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13407), .COUT(n13408), .S0(n37[1]), 
          .S1(n37[2]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3543_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_3.INJECT1_1 = "NO";
    L6MUX21 i12360 (.D0(n14316), .D1(n14317), .SD(r_Bit_Index[2]), .Z(n14318));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), 
         .C(r_SM_Main_2__N_1701[1]), .D(r_SM_Main[1]), .Z(sysclk_c_enable_212)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C (D))+!B !(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h4033;
    LUT4 i1_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .D(r_SM_Main[1]), .Z(n14031)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h7800;
    LUT4 i23_4_lut_else_4_lut (.A(\r_SM_Main_2__N_1704[0] ), .Z(n14977)) /* synthesis lut_function=(A) */ ;
    defparam i23_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 i1_2_lut_rep_183_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(\r_SM_Main_2__N_1704[0] ), 
         .Z(n14942)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_183_3_lut.init = 16'h1010;
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_1735), .CK(sysclk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(txSend[7]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(txSend[6]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(txSend[5]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(txSend[4]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(txSend[3]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(txSend[2]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i1 (.D(txSend[1]), .SP(sysclk_c_enable_108), .CK(sysclk_c), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    LUT4 i2_1_lut_rep_197 (.A(r_SM_Main[2]), .Z(sysclk_c_enable_236)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut_rep_197.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(r_SM_Main[2]), .B(\r_SM_Main_2__N_1704[0] ), 
         .C(r_SM_Main[0]), .D(r_SM_Main[1]), .Z(sysclk_c_enable_108)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_3_lut_4_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_1701[1]), 
         .C(r_SM_Main[0]), .D(r_SM_Main[1]), .Z(n10561)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h4445;
    FD1P3IX r_Clock_Count_3543__i1 (.D(n37[1]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i2 (.D(n37[2]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i3 (.D(n37[3]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i4 (.D(n37[4]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i5 (.D(n37[5]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i6 (.D(n37[6]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3543__i7 (.D(n37[7]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i7.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n14045), .SP(sysclk_c_enable_182), .CK(sysclk_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n14031), .SP(sysclk_c_enable_182), .CK(sysclk_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_1701[1]), .CK(sysclk_c), .CD(n13485), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    CCU2D r_Clock_Count_3543_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n13407), .S1(n37[0]));   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_3543_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_3543_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_3543_add_4_1.INJECT1_1 = "NO";
    PFUMX i12358 (.BLUT(n14312), .ALUT(n14313), .C0(r_Bit_Index[1]), .Z(n14316));
    LUT4 i2_4_lut (.A(r_SM_Main_2__N_1701[1]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .D(r_SM_Main[2]), .Z(sysclk_c_enable_182)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+(D))))) */ ;
    defparam i2_4_lut.init = 16'h0023;
    LUT4 i1_2_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .Z(n7144)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i97_4_lut (.A(r_Clock_Count[7]), .B(r_Clock_Count[5]), .C(n13481), 
         .D(r_Clock_Count[6]), .Z(r_SM_Main_2__N_1701[1])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(194[16:29])
    defparam i97_4_lut.init = 16'heaaa;
    LUT4 i2_4_lut_adj_240 (.A(r_Clock_Count[4]), .B(r_Clock_Count[2]), .C(r_Clock_Count[3]), 
         .D(n4), .Z(n13481)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(194[16:29])
    defparam i2_4_lut_adj_240.init = 16'hfefa;
    LUT4 i1_2_lut_adj_241 (.A(r_Clock_Count[0]), .B(r_Clock_Count[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/pproj/lserial/lserial/source/uart.v(194[16:29])
    defparam i1_2_lut_adj_241.init = 16'h8888;
    LUT4 i8581_3_lut (.A(r_SM_Main[0]), .B(n14318), .C(r_SM_Main[1]), 
         .Z(n3)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(193[16:25])
    defparam i8581_3_lut.init = 16'he5e5;
    LUT4 i22_3_lut (.A(n14979), .B(r_SM_Main_2__N_1701[1]), .C(r_SM_Main[0]), 
         .Z(n13745)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i22_3_lut.init = 16'h3a3a;
    FD1P3AX r_Tx_Active_46 (.D(n14942), .SP(sysclk_c_enable_196), .CK(sysclk_c), 
            .Q(txAct)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Active_46.GSR = "ENABLED";
    PFUMX i12359 (.BLUT(n14314), .ALUT(n14315), .C0(r_Bit_Index[1]), .Z(n14317));
    FD1P3AX r_Tx_Done_43 (.D(o_Tx_Done_N_1732), .SP(sysclk_c_enable_212), 
            .CK(sysclk_c), .Q(txDone)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=25, LSE_RLINE=32 */ ;   // c:/pproj/lserial/lserial/source/uart.v(200[10] 303[8])
    defparam r_Tx_Done_43.GSR = "ENABLED";
    PFUMX i12827 (.BLUT(n14989), .ALUT(n14990), .C0(r_SM_Main[1]), .Z(sysclk_c_enable_196));
    FD1P3IX r_Clock_Count_3543__i0 (.D(n37[0]), .SP(sysclk_c_enable_236), 
            .CD(n10561), .CK(sysclk_c), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(278[34:51])
    defparam r_Clock_Count_3543__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=104) 
//

module \uart_rx(CLKS_PER_BIT=104)  (GND_net, sysclk_c, led_c_7_c, rxRecv, 
            recv) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sysclk_c;
    input led_c_7_c;
    output [7:0]rxRecv;
    output recv;
    
    wire sysclk_c /* synthesis SET_AS_NETWORK=sysclk_c, is_clock=1 */ ;   // c:/pproj/lserial/lserial/source/top_lserial.v(13[19:25])
    wire [7:0]r_Clock_Count;   // c:/pproj/lserial/lserial/source/uart.v(57[17:30])
    wire [7:0]n37;
    
    wire n13411;
    wire [2:0]r_Bit_Index;   // c:/pproj/lserial/lserial/source/uart.v(58[17:28])
    
    wire n14930, sysclk_c_enable_187, sysclk_c_enable_183;
    wire [2:0]r_SM_Main;   // c:/pproj/lserial/lserial/source/uart.v(61[17:26])
    
    wire n14135;
    wire [2:0]r_SM_Main_2__N_1631;
    
    wire o_Rx_DV_N_1670, sysclk_c_enable_193, n3, r_Rx_Data, r_Rx_Data_R, 
        sysclk_c_enable_191, n14039, n1, n11747, n14952, n6, sysclk_c_enable_213;
    wire [2:0]r_SM_Main_2__N_1637;
    
    wire n14269, n9732, n14933, n11742, n14041, sysclk_c_enable_185, 
        sysclk_c_enable_189, n14073, sysclk_c_enable_184, sysclk_c_enable_186, 
        sysclk_c_enable_188, n13414, n13413, sysclk_c_enable_195, n13506, 
        n4, n14273, n6_adj_1734, n13412;
    
    CCU2D r_Clock_Count_3545_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n13411), .S1(n37[0]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_3545_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_3545_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_1.INJECT1_1 = "NO";
    LUT4 i12583_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .D(n14930), .Z(sysclk_c_enable_187)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i12583_2_lut_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i12594_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .D(n14930), .Z(sysclk_c_enable_183)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12594_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i12597_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n14135)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i12597_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1631[2]), .Z(o_Rx_DV_N_1670)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i14_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1631[2]), .Z(sysclk_c_enable_193)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;
    defparam i14_4_lut_4_lut.init = 16'h2505;
    FD1S3IX r_SM_Main_i0 (.D(n3), .CK(sysclk_c), .CD(r_SM_Main[2]), .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_50 (.D(r_Rx_Data_R), .CK(sysclk_c), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(66[10] 70[8])
    defparam r_Rx_Data_50.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n14039), .SP(sysclk_c_enable_191), .CK(sysclk_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_49 (.D(led_c_7_c), .CK(sysclk_c), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(66[10] 70[8])
    defparam r_Rx_Data_R_49.GSR = "ENABLED";
    PFUMX r_SM_Main_2__I_0_56_Mux_0_i3 (.BLUT(n1), .ALUT(n11747), .C0(r_SM_Main[1]), 
          .Z(n3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;
    LUT4 i9732_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n14952), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1631[2]), .Z(n11747)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i9732_3_lut_4_lut.init = 16'h08f0;
    LUT4 i12600_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(n6), .D(r_SM_Main[0]), 
         .Z(sysclk_c_enable_213)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(77[7] 168[14])
    defparam i12600_4_lut.init = 16'h4555;
    LUT4 i2_2_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_1637[0]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i1_4_lut (.A(r_SM_Main[2]), .B(n14269), .C(r_SM_Main_2__N_1631[2]), 
         .D(r_SM_Main[1]), .Z(n9732)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h5011;
    LUT4 r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut (.A(r_SM_Main_2__N_1631[2]), 
         .B(r_SM_Main[0]), .C(n14933), .D(r_SM_Main[1]), .Z(n11742)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut.init = 16'h770c;
    LUT4 i1_3_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n14041)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i1_2_lut_rep_193 (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n14952)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_193.init = 16'h8888;
    LUT4 i12588_2_lut_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), 
         .C(n14930), .D(r_Bit_Index[2]), .Z(sysclk_c_enable_185)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i12588_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i12577_2_lut_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), 
         .C(n14930), .D(r_Bit_Index[2]), .Z(sysclk_c_enable_189)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i12577_2_lut_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .C(r_SM_Main[1]), 
         .D(r_Bit_Index[2]), .Z(n14073)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1_4_lut_3_lut_4_lut.init = 16'h7080;
    LUT4 i12560_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_1631[2]), .Z(sysclk_c_enable_191)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i12560_3_lut_4_lut.init = 16'h1101;
    LUT4 i2_3_lut_rep_171_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_1631[2]), .Z(n14930)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_3_lut_rep_171_4_lut.init = 16'hefff;
    FD1S3IX r_SM_Main_i1 (.D(n11742), .CK(sysclk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i1 (.D(n37[1]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i2 (.D(n37[2]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i3 (.D(n37[3]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i4 (.D(n37[4]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i5 (.D(n37[5]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i6 (.D(n37[6]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_3545__i7 (.D(n37[7]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i7.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_1631[2]), .CK(sysclk_c), .CD(n14135), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(sysclk_c_enable_183), .CK(sysclk_c), 
            .Q(rxRecv[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(sysclk_c_enable_184), .CK(sysclk_c), 
            .Q(rxRecv[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(sysclk_c_enable_185), .CK(sysclk_c), 
            .Q(rxRecv[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    LUT4 r_SM_Main_2__I_0_56_Mux_0_i1_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_1637[0]), 
         .C(r_SM_Main[0]), .Z(n1)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/pproj/lserial/lserial/source/uart.v(77[7] 168[14])
    defparam r_SM_Main_2__I_0_56_Mux_0_i1_3_lut.init = 16'hc5c5;
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(sysclk_c_enable_186), .CK(sysclk_c), 
            .Q(rxRecv[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(sysclk_c_enable_187), .CK(sysclk_c), 
            .Q(rxRecv[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_174 (.A(r_Rx_Data), .B(r_SM_Main_2__N_1637[0]), .Z(n14933)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_174.init = 16'heeee;
    LUT4 i12311_2_lut_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_1637[0]), 
         .C(r_SM_Main[0]), .Z(n14269)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i12311_2_lut_3_lut.init = 16'he0e0;
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(sysclk_c_enable_188), .CK(sysclk_c), 
            .Q(rxRecv[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(sysclk_c_enable_189), .CK(sysclk_c), 
            .Q(rxRecv[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n14041), .SP(sysclk_c_enable_191), .CK(sysclk_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    CCU2D r_Clock_Count_3545_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13414), .S0(n37[7]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_9.INIT1 = 16'h0000;
    defparam r_Clock_Count_3545_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_3545_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13413), .COUT(n13414), .S0(n37[5]), 
          .S1(n37[6]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_7.INJECT1_1 = "NO";
    FD1P3AX r_Bit_Index_i2 (.D(n14073), .SP(sysclk_c_enable_191), .CK(sysclk_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_DV_52 (.D(o_Rx_DV_N_1670), .SP(sysclk_c_enable_193), .CK(sysclk_c), 
            .Q(recv)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_DV_52.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i0 (.D(r_Rx_Data), .SP(sysclk_c_enable_195), .CK(sysclk_c), 
            .Q(rxRecv[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=7, LSE_LLINE=18, LSE_RLINE=23 */ ;   // c:/pproj/lserial/lserial/source/uart.v(74[10] 169[8])
    defparam r_Rx_Byte_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n14039)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i9723_4_lut (.A(r_Clock_Count[6]), .B(r_Clock_Count[7]), .C(n13506), 
         .D(r_Clock_Count[5]), .Z(r_SM_Main_2__N_1631[2])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i9723_4_lut.init = 16'heccc;
    LUT4 i2_4_lut (.A(r_Clock_Count[4]), .B(r_Clock_Count[2]), .C(r_Clock_Count[3]), 
         .D(n4), .Z(n13506)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i1_2_lut_adj_238 (.A(r_Clock_Count[0]), .B(r_Clock_Count[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_238.init = 16'h8888;
    LUT4 i4_4_lut (.A(r_Clock_Count[2]), .B(n14273), .C(r_Clock_Count[3]), 
         .D(n6_adj_1734), .Z(r_SM_Main_2__N_1637[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i12315_4_lut (.A(r_Clock_Count[0]), .B(r_Clock_Count[4]), .C(r_Clock_Count[5]), 
         .D(r_Clock_Count[1]), .Z(n14273)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12315_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_239 (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), .Z(n6_adj_1734)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_239.init = 16'heeee;
    FD1P3IX r_Clock_Count_3545__i0 (.D(n37[0]), .SP(sysclk_c_enable_213), 
            .CD(n9732), .CK(sysclk_c), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545__i0.GSR = "ENABLED";
    LUT4 i12586_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .D(n14930), .Z(sysclk_c_enable_186)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i12586_2_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i12554_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .D(n14930), .Z(sysclk_c_enable_195)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i12554_2_lut_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i12580_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), 
         .C(r_Bit_Index[2]), .D(n14930), .Z(sysclk_c_enable_188)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i12580_2_lut_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i12591_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), 
         .C(r_Bit_Index[2]), .D(n14930), .Z(sysclk_c_enable_184)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12591_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    CCU2D r_Clock_Count_3545_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13412), .COUT(n13413), .S0(n37[3]), 
          .S1(n37[4]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_3545_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13411), .COUT(n13412), .S0(n37[1]), 
          .S1(n37[2]));   // c:/pproj/lserial/lserial/source/uart.v(145[34:51])
    defparam r_Clock_Count_3545_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_3545_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_3545_add_4_3.INJECT1_1 = "NO";
    
endmodule
