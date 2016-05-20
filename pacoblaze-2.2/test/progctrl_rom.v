/*
 * progctrl_rom generated by KCAsm at Sat May 26 15:39:08 EDT 2007
 */

module progctrl_rom(address, instruction, clk);
input [9:0] address;
output [17:0] instruction;
input clk;
RAMB16_S18 ram_1024_x_18(
	.DI (16'b0),
	.DIP (2'b0),
	.EN (1'b1),
	.WE (1'b0),
	.SSR (1'b0),
	.CLK (clk),
	.ADDR (address),
	.DO (instruction[15:0]),
	.DOP (instruction[17:16])
);
// synthesis translate_off
/*	synthesis
	init_00 = "502C4042502A4045002201310F3E019301930193023301990193C001011A0027"
	init_01 = "013101310F3F019350D540535003404850C2404950A34052508C405750474050"
	init_02 = "011F02D401930904402D09FEA000C0080006A000013E10F00131011F40070131"
	init_03 = "02F14007022C5C38C902004101310F2E07000800019302090193543F4F590131"
	init_04 = "B0004B01006700574007022C004C01E20193A00000F700EA01D000EA01204007"
	init_05 = "B0004F0AB0004F0D011F54584F3A011F0E2B404C00776A2B0193016D504C4B04"
	init_06 = "8D02B4004B0450724B007BD08D037CD00D2B405B8E01F0E0017412F0011F13F0"
	init_07 = "032F00EAC10111A05077208000E000EA01E8A00078D0CD0177D0CD01A00079D0"
	init_08 = "1900588C018D02FEA00000F700EA01D05480CA018301A900A800870100EA7130"
	init_09 = "110000EA01404007022C0193009D5896018D030E1700588C018D1800588C018D"
	init_0A = "022C00B10193170058A3018D180058A3018D190058A3018D02FEA00000F700EA"
	init_0B = "54B2C60154B6C5010167A900A800870100E0019605100196016D019306104007"
	init_0C = "07020196016700E000EA0190070008000900019601310F3D02C60193A0000193"
	init_0D = "400700F40193016700E0019300EA0170070008000900400700F40193016700E0"
	init_0E = "C1080100C110C720C840C980A000C108400201060106C1080105C720C840C980"
	init_0F = "A00000F450F9208000E0AE008D010D000E00A00000EA01FFA000C10801060106"
	init_10 = "A000550CC10101070128A0005508C001000BA0000193016710D0016710E00193"
	init_11 = "C000A000551BC40101150414A0005516C30101100314A0005511C201010B0219"
	init_12 = "51204F114F014129552D20084000A000C00151294F134F014120552420084000"
	init_13 = "B8004061A000803AC1015D38C00A81010130A000CF0441315135200140004129"
	init_14 = "02069200020602061200B80001447010A000C0F6B80080C6A000A0DFBC00407B"
	init_15 = "0162A00F101012000162000E000E000E000E1100A0009200B800014470108101"
	init_16 = "108001671090A00001311F1001311F200156A000803A80075965C00AA0001100"
	init_17 = "D030B8000181102003060306030603061300B80001811030A000016710700167"
	init_18 = "002213000022A000800AA000C0F6B80080075D8BC011B800C0E9B80080B9A000"
	init_19 = "0F6301310F6901310F5001930193A00001310F20A00001310F0DA00001741200"
	init_1A = "01310F4E019601310F6501310F7A01310F6101310F6C01310F4201310F6F0131"
	init_1B = "019601310F4801310F5301310F4101310F4C01310F46019601310F5201310F4F"
	init_1C = "01310F6D01310F6D01310F6101310F7201310F6701310F6F01310F7201310F50"
	init_1D = "019301310F3001310F3001310F2E01310F3101310F76019601310F7201310F65"
	init_1E = "01310F6701310F6E01310F6901310F7401310F6901310F6101310F57A0000193"
	init_1F = "0F46019601310F5301310F4301310F4D019601310F7201310F6F01310F660196"
	init_20 = "0F50019601310F6E01310F690220A000019301310F6501310F6C01310F690131"
	init_21 = "A0000193013101310F7301310F6501310F7201310F6701310F6F01310F720131"
	init_22 = "0F4B01310F4F0193A000019601310F6501310F7301310F6101310F7201310F45"
	init_23 = "0F420193013101310F6C01310F61022001310F2D01310F450193A00001930131"
	init_24 = "01310F7301310F6B01310F6301310F6F01310F6C01310F62022001310F2D0131"
	init_25 = "01310F7201310F5001310F2D01310F50019301310F3301310F2D01310F310196"
	init_26 = "0F5701310F2D01310F5701F701310F6D01310F6101310F7201310F6701310F6F"
	init_27 = "01310F2D01310F52019302CB019601310F6501310F7401310F6901310F720131"
	init_28 = "019601310F3601310F3501310F32019601310F6401310F6101310F6501310F52"
	init_29 = "01310F6901310F7601310F6501310F4401310F2D01310F49019301310F7302CB"
	init_2A = "0F6C01310F6501310F4801310F2D01310F48019302C6019601310F6501310F63"
	init_2B = "01310F7401310F6101310F7401310F5301310F2D01310F53019301310F700131"
	init_2C = "0F7401310F7901310F62A00001310F4401310F49A000019301310F7301310F75"
	init_2D = "0F7201310F6901310F6601310F6E01310F6F01310F430193A00001310F650131"
	init_2E = "019601310F2901310F6E01310F2F01310F5901310F280220019601310F6D0131"
	init_2F = "0F610193A000019301310F7401310F7201310F6F01310F6201310F410193A000"
	init_30 = "0F640193A00001310F3D013101310F7301310F6501310F72013101310F640131"
	init_31 = "00000000000000000000000000000000430B01310F6101310F7401310F610131"
	init_32 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_33 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_34 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_35 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_36 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_37 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_38 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_39 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3A = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3B = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3F = "43F580016000C004001143FC001353FB20104000E00000000000000000000000"
	initp_00 = "34DF2118674436CC99F73CFD9FFFEF33FF7C0FF7FCCA2CFFF3DDDDDDDDF3FFFF"
	initp_01 = "BDD42CA08AAA022AFFFC03FF3FC03CFBDDD5F3F3FCF3CFEF33FFF3CF3FBCD55C"
	initp_02 = "2CAA2CB332CCE5D8C0EA89B19A2C998999752BD3D3D2F4F4EDCB72DCB72D2F33"
	initp_03 = "3CCCF333CCCCCCCBF33333CCCCCCCCCCF33333CCCF333333333ECB2CCE667666"
	initp_04 = "CCFF3333333CCCCCCCCCF333CCCCCCF33F33CCEF33BCCCCCBF3333333CCEF333"
	initp_05 = "3BCCCCCEF33333F3333333B3332CCBCCCCCCCCF333333FCCCCCCCCF3F333CCCC"
	initp_06 = "0000000000000000000000000000000000000000000000000000F3333B3CCCF3"
	initp_07 = "F233480000000000000000000000000000000000000000000000000000000000"
*/
// synthesis translate_off
defparam ram_1024_x_18.INIT_00 = 256'h502C4042502A4045002201310F3E019301930193023301990193C001011A0027;
defparam ram_1024_x_18.INIT_01 = 256'h013101310F3F019350D540535003404850C2404950A34052508C405750474050;
defparam ram_1024_x_18.INIT_02 = 256'h011F02D401930904402D09FEA000C0080006A000013E10F00131011F40070131;
defparam ram_1024_x_18.INIT_03 = 256'h02F14007022C5C38C902004101310F2E07000800019302090193543F4F590131;
defparam ram_1024_x_18.INIT_04 = 256'hB0004B01006700574007022C004C01E20193A00000F700EA01D000EA01204007;
defparam ram_1024_x_18.INIT_05 = 256'hB0004F0AB0004F0D011F54584F3A011F0E2B404C00776A2B0193016D504C4B04;
defparam ram_1024_x_18.INIT_06 = 256'h8D02B4004B0450724B007BD08D037CD00D2B405B8E01F0E0017412F0011F13F0;
defparam ram_1024_x_18.INIT_07 = 256'h032F00EAC10111A05077208000E000EA01E8A00078D0CD0177D0CD01A00079D0;
defparam ram_1024_x_18.INIT_08 = 256'h1900588C018D02FEA00000F700EA01D05480CA018301A900A800870100EA7130;
defparam ram_1024_x_18.INIT_09 = 256'h110000EA01404007022C0193009D5896018D030E1700588C018D1800588C018D;
defparam ram_1024_x_18.INIT_0A = 256'h022C00B10193170058A3018D180058A3018D190058A3018D02FEA00000F700EA;
defparam ram_1024_x_18.INIT_0B = 256'h54B2C60154B6C5010167A900A800870100E0019605100196016D019306104007;
defparam ram_1024_x_18.INIT_0C = 256'h07020196016700E000EA0190070008000900019601310F3D02C60193A0000193;
defparam ram_1024_x_18.INIT_0D = 256'h400700F40193016700E0019300EA0170070008000900400700F40193016700E0;
defparam ram_1024_x_18.INIT_0E = 256'hC1080100C110C720C840C980A000C108400201060106C1080105C720C840C980;
defparam ram_1024_x_18.INIT_0F = 256'hA00000F450F9208000E0AE008D010D000E00A00000EA01FFA000C10801060106;
defparam ram_1024_x_18.INIT_10 = 256'hA000550CC10101070128A0005508C001000BA0000193016710D0016710E00193;
defparam ram_1024_x_18.INIT_11 = 256'hC000A000551BC40101150414A0005516C30101100314A0005511C201010B0219;
defparam ram_1024_x_18.INIT_12 = 256'h51204F114F014129552D20084000A000C00151294F134F014120552420084000;
defparam ram_1024_x_18.INIT_13 = 256'hB8004061A000803AC1015D38C00A81010130A000CF0441315135200140004129;
defparam ram_1024_x_18.INIT_14 = 256'h02069200020602061200B80001447010A000C0F6B80080C6A000A0DFBC00407B;
defparam ram_1024_x_18.INIT_15 = 256'h0162A00F101012000162000E000E000E000E1100A0009200B800014470108101;
defparam ram_1024_x_18.INIT_16 = 256'h108001671090A00001311F1001311F200156A000803A80075965C00AA0001100;
defparam ram_1024_x_18.INIT_17 = 256'hD030B8000181102003060306030603061300B80001811030A000016710700167;
defparam ram_1024_x_18.INIT_18 = 256'h002213000022A000800AA000C0F6B80080075D8BC011B800C0E9B80080B9A000;
defparam ram_1024_x_18.INIT_19 = 256'h0F6301310F6901310F5001930193A00001310F20A00001310F0DA00001741200;
defparam ram_1024_x_18.INIT_1A = 256'h01310F4E019601310F6501310F7A01310F6101310F6C01310F4201310F6F0131;
defparam ram_1024_x_18.INIT_1B = 256'h019601310F4801310F5301310F4101310F4C01310F46019601310F5201310F4F;
defparam ram_1024_x_18.INIT_1C = 256'h01310F6D01310F6D01310F6101310F7201310F6701310F6F01310F7201310F50;
defparam ram_1024_x_18.INIT_1D = 256'h019301310F3001310F3001310F2E01310F3101310F76019601310F7201310F65;
defparam ram_1024_x_18.INIT_1E = 256'h01310F6701310F6E01310F6901310F7401310F6901310F6101310F57A0000193;
defparam ram_1024_x_18.INIT_1F = 256'h0F46019601310F5301310F4301310F4D019601310F7201310F6F01310F660196;
defparam ram_1024_x_18.INIT_20 = 256'h0F50019601310F6E01310F690220A000019301310F6501310F6C01310F690131;
defparam ram_1024_x_18.INIT_21 = 256'hA0000193013101310F7301310F6501310F7201310F6701310F6F01310F720131;
defparam ram_1024_x_18.INIT_22 = 256'h0F4B01310F4F0193A000019601310F6501310F7301310F6101310F7201310F45;
defparam ram_1024_x_18.INIT_23 = 256'h0F420193013101310F6C01310F61022001310F2D01310F450193A00001930131;
defparam ram_1024_x_18.INIT_24 = 256'h01310F7301310F6B01310F6301310F6F01310F6C01310F62022001310F2D0131;
defparam ram_1024_x_18.INIT_25 = 256'h01310F7201310F5001310F2D01310F50019301310F3301310F2D01310F310196;
defparam ram_1024_x_18.INIT_26 = 256'h0F5701310F2D01310F5701F701310F6D01310F6101310F7201310F6701310F6F;
defparam ram_1024_x_18.INIT_27 = 256'h01310F2D01310F52019302CB019601310F6501310F7401310F6901310F720131;
defparam ram_1024_x_18.INIT_28 = 256'h019601310F3601310F3501310F32019601310F6401310F6101310F6501310F52;
defparam ram_1024_x_18.INIT_29 = 256'h01310F6901310F7601310F6501310F4401310F2D01310F49019301310F7302CB;
defparam ram_1024_x_18.INIT_2A = 256'h0F6C01310F6501310F4801310F2D01310F48019302C6019601310F6501310F63;
defparam ram_1024_x_18.INIT_2B = 256'h01310F7401310F6101310F7401310F5301310F2D01310F53019301310F700131;
defparam ram_1024_x_18.INIT_2C = 256'h0F7401310F7901310F62A00001310F4401310F49A000019301310F7301310F75;
defparam ram_1024_x_18.INIT_2D = 256'h0F7201310F6901310F6601310F6E01310F6F01310F430193A00001310F650131;
defparam ram_1024_x_18.INIT_2E = 256'h019601310F2901310F6E01310F2F01310F5901310F280220019601310F6D0131;
defparam ram_1024_x_18.INIT_2F = 256'h0F610193A000019301310F7401310F7201310F6F01310F6201310F410193A000;
defparam ram_1024_x_18.INIT_30 = 256'h0F640193A00001310F3D013101310F7301310F6501310F72013101310F640131;
defparam ram_1024_x_18.INIT_31 = 256'h00000000000000000000000000000000430B01310F6101310F7401310F610131;
defparam ram_1024_x_18.INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3F = 256'h43F580016000C004001143FC001353FB20104000E00000000000000000000000;
defparam ram_1024_x_18.INITP_00 = 256'h34DF2118674436CC99F73CFD9FFFEF33FF7C0FF7FCCA2CFFF3DDDDDDDDF3FFFF;
defparam ram_1024_x_18.INITP_01 = 256'hBDD42CA08AAA022AFFFC03FF3FC03CFBDDD5F3F3FCF3CFEF33FFF3CF3FBCD55C;
defparam ram_1024_x_18.INITP_02 = 256'h2CAA2CB332CCE5D8C0EA89B19A2C998999752BD3D3D2F4F4EDCB72DCB72D2F33;
defparam ram_1024_x_18.INITP_03 = 256'h3CCCF333CCCCCCCBF33333CCCCCCCCCCF33333CCCF333333333ECB2CCE667666;
defparam ram_1024_x_18.INITP_04 = 256'hCCFF3333333CCCCCCCCCF333CCCCCCF33F33CCEF33BCCCCCBF3333333CCEF333;
defparam ram_1024_x_18.INITP_05 = 256'h3BCCCCCEF33333F3333333B3332CCBCCCCCCCCF333333FCCCCCCCCF3F333CCCC;
defparam ram_1024_x_18.INITP_06 = 256'h0000000000000000000000000000000000000000000000000000F3333B3CCCF3;
defparam ram_1024_x_18.INITP_07 = 256'hF233480000000000000000000000000000000000000000000000000000000000;
// synthesis translate_on
// synthesis attribute INIT_00 of ram_1024_x_18 is "502C4042502A4045002201310F3E019301930193023301990193C001011A0027"
// synthesis attribute INIT_01 of ram_1024_x_18 is "013101310F3F019350D540535003404850C2404950A34052508C405750474050"
// synthesis attribute INIT_02 of ram_1024_x_18 is "011F02D401930904402D09FEA000C0080006A000013E10F00131011F40070131"
// synthesis attribute INIT_03 of ram_1024_x_18 is "02F14007022C5C38C902004101310F2E07000800019302090193543F4F590131"
// synthesis attribute INIT_04 of ram_1024_x_18 is "B0004B01006700574007022C004C01E20193A00000F700EA01D000EA01204007"
// synthesis attribute INIT_05 of ram_1024_x_18 is "B0004F0AB0004F0D011F54584F3A011F0E2B404C00776A2B0193016D504C4B04"
// synthesis attribute INIT_06 of ram_1024_x_18 is "8D02B4004B0450724B007BD08D037CD00D2B405B8E01F0E0017412F0011F13F0"
// synthesis attribute INIT_07 of ram_1024_x_18 is "032F00EAC10111A05077208000E000EA01E8A00078D0CD0177D0CD01A00079D0"
// synthesis attribute INIT_08 of ram_1024_x_18 is "1900588C018D02FEA00000F700EA01D05480CA018301A900A800870100EA7130"
// synthesis attribute INIT_09 of ram_1024_x_18 is "110000EA01404007022C0193009D5896018D030E1700588C018D1800588C018D"
// synthesis attribute INIT_0A of ram_1024_x_18 is "022C00B10193170058A3018D180058A3018D190058A3018D02FEA00000F700EA"
// synthesis attribute INIT_0B of ram_1024_x_18 is "54B2C60154B6C5010167A900A800870100E0019605100196016D019306104007"
// synthesis attribute INIT_0C of ram_1024_x_18 is "07020196016700E000EA0190070008000900019601310F3D02C60193A0000193"
// synthesis attribute INIT_0D of ram_1024_x_18 is "400700F40193016700E0019300EA0170070008000900400700F40193016700E0"
// synthesis attribute INIT_0E of ram_1024_x_18 is "C1080100C110C720C840C980A000C108400201060106C1080105C720C840C980"
// synthesis attribute INIT_0F of ram_1024_x_18 is "A00000F450F9208000E0AE008D010D000E00A00000EA01FFA000C10801060106"
// synthesis attribute INIT_10 of ram_1024_x_18 is "A000550CC10101070128A0005508C001000BA0000193016710D0016710E00193"
// synthesis attribute INIT_11 of ram_1024_x_18 is "C000A000551BC40101150414A0005516C30101100314A0005511C201010B0219"
// synthesis attribute INIT_12 of ram_1024_x_18 is "51204F114F014129552D20084000A000C00151294F134F014120552420084000"
// synthesis attribute INIT_13 of ram_1024_x_18 is "B8004061A000803AC1015D38C00A81010130A000CF0441315135200140004129"
// synthesis attribute INIT_14 of ram_1024_x_18 is "02069200020602061200B80001447010A000C0F6B80080C6A000A0DFBC00407B"
// synthesis attribute INIT_15 of ram_1024_x_18 is "0162A00F101012000162000E000E000E000E1100A0009200B800014470108101"
// synthesis attribute INIT_16 of ram_1024_x_18 is "108001671090A00001311F1001311F200156A000803A80075965C00AA0001100"
// synthesis attribute INIT_17 of ram_1024_x_18 is "D030B8000181102003060306030603061300B80001811030A000016710700167"
// synthesis attribute INIT_18 of ram_1024_x_18 is "002213000022A000800AA000C0F6B80080075D8BC011B800C0E9B80080B9A000"
// synthesis attribute INIT_19 of ram_1024_x_18 is "0F6301310F6901310F5001930193A00001310F20A00001310F0DA00001741200"
// synthesis attribute INIT_1A of ram_1024_x_18 is "01310F4E019601310F6501310F7A01310F6101310F6C01310F4201310F6F0131"
// synthesis attribute INIT_1B of ram_1024_x_18 is "019601310F4801310F5301310F4101310F4C01310F46019601310F5201310F4F"
// synthesis attribute INIT_1C of ram_1024_x_18 is "01310F6D01310F6D01310F6101310F7201310F6701310F6F01310F7201310F50"
// synthesis attribute INIT_1D of ram_1024_x_18 is "019301310F3001310F3001310F2E01310F3101310F76019601310F7201310F65"
// synthesis attribute INIT_1E of ram_1024_x_18 is "01310F6701310F6E01310F6901310F7401310F6901310F6101310F57A0000193"
// synthesis attribute INIT_1F of ram_1024_x_18 is "0F46019601310F5301310F4301310F4D019601310F7201310F6F01310F660196"
// synthesis attribute INIT_20 of ram_1024_x_18 is "0F50019601310F6E01310F690220A000019301310F6501310F6C01310F690131"
// synthesis attribute INIT_21 of ram_1024_x_18 is "A0000193013101310F7301310F6501310F7201310F6701310F6F01310F720131"
// synthesis attribute INIT_22 of ram_1024_x_18 is "0F4B01310F4F0193A000019601310F6501310F7301310F6101310F7201310F45"
// synthesis attribute INIT_23 of ram_1024_x_18 is "0F420193013101310F6C01310F61022001310F2D01310F450193A00001930131"
// synthesis attribute INIT_24 of ram_1024_x_18 is "01310F7301310F6B01310F6301310F6F01310F6C01310F62022001310F2D0131"
// synthesis attribute INIT_25 of ram_1024_x_18 is "01310F7201310F5001310F2D01310F50019301310F3301310F2D01310F310196"
// synthesis attribute INIT_26 of ram_1024_x_18 is "0F5701310F2D01310F5701F701310F6D01310F6101310F7201310F6701310F6F"
// synthesis attribute INIT_27 of ram_1024_x_18 is "01310F2D01310F52019302CB019601310F6501310F7401310F6901310F720131"
// synthesis attribute INIT_28 of ram_1024_x_18 is "019601310F3601310F3501310F32019601310F6401310F6101310F6501310F52"
// synthesis attribute INIT_29 of ram_1024_x_18 is "01310F6901310F7601310F6501310F4401310F2D01310F49019301310F7302CB"
// synthesis attribute INIT_2A of ram_1024_x_18 is "0F6C01310F6501310F4801310F2D01310F48019302C6019601310F6501310F63"
// synthesis attribute INIT_2B of ram_1024_x_18 is "01310F7401310F6101310F7401310F5301310F2D01310F53019301310F700131"
// synthesis attribute INIT_2C of ram_1024_x_18 is "0F7401310F7901310F62A00001310F4401310F49A000019301310F7301310F75"
// synthesis attribute INIT_2D of ram_1024_x_18 is "0F7201310F6901310F6601310F6E01310F6F01310F430193A00001310F650131"
// synthesis attribute INIT_2E of ram_1024_x_18 is "019601310F2901310F6E01310F2F01310F5901310F280220019601310F6D0131"
// synthesis attribute INIT_2F of ram_1024_x_18 is "0F610193A000019301310F7401310F7201310F6F01310F6201310F410193A000"
// synthesis attribute INIT_30 of ram_1024_x_18 is "0F640193A00001310F3D013101310F7301310F6501310F72013101310F640131"
// synthesis attribute INIT_31 of ram_1024_x_18 is "00000000000000000000000000000000430B01310F6101310F7401310F610131"
// synthesis attribute INIT_32 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_33 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_34 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_35 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_36 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_37 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_38 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_39 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3A of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3B of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3F of ram_1024_x_18 is "43F580016000C004001143FC001353FB20104000E00000000000000000000000"
// synthesis attribute INITP_00 of ram_1024_x_18 is "34DF2118674436CC99F73CFD9FFFEF33FF7C0FF7FCCA2CFFF3DDDDDDDDF3FFFF"
// synthesis attribute INITP_01 of ram_1024_x_18 is "BDD42CA08AAA022AFFFC03FF3FC03CFBDDD5F3F3FCF3CFEF33FFF3CF3FBCD55C"
// synthesis attribute INITP_02 of ram_1024_x_18 is "2CAA2CB332CCE5D8C0EA89B19A2C998999752BD3D3D2F4F4EDCB72DCB72D2F33"
// synthesis attribute INITP_03 of ram_1024_x_18 is "3CCCF333CCCCCCCBF33333CCCCCCCCCCF33333CCCF333333333ECB2CCE667666"
// synthesis attribute INITP_04 of ram_1024_x_18 is "CCFF3333333CCCCCCCCCF333CCCCCCF33F33CCEF33BCCCCCBF3333333CCEF333"
// synthesis attribute INITP_05 of ram_1024_x_18 is "3BCCCCCEF33333F3333333B3332CCBCCCCCCCCF333333FCCCCCCCCF3F333CCCC"
// synthesis attribute INITP_06 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000F3333B3CCCF3"
// synthesis attribute INITP_07 of ram_1024_x_18 is "F233480000000000000000000000000000000000000000000000000000000000"
endmodule