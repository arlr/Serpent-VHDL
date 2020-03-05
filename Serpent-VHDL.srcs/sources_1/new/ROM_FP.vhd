----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2020 15:39:49
-- Design Name: 
-- Module Name: ROM_FP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_FP is
    Port ( 
    -- IN
    data_in : in std_logic_vector(6 downto 0);
    -- OUT
    data_out : out std_logic_vector(6 downto 0)
    );
end ROM_FP;

architecture Behavioral of ROM_FP is

type rom is array (127 downto 0) of std_logic_vector(6 downto 0);
signal this_rom : rom;    -- "this_rom" reference la rom actuel

begin
-- Init Rom
this_rom(0) <= "0000000";	-- box[0] 0
this_rom(1) <= "0000100";	-- box[1] 4
this_rom(2) <= "0001000";	-- box[2] 8
this_rom(3) <= "0001100";	-- box[3] 12
this_rom(4) <= "0010000";	-- box[4] 16
this_rom(5) <= "0010100";	-- box[5] 20
this_rom(6) <= "0011000";	-- box[6] 24
this_rom(7) <= "0011100";	-- box[7] 28
this_rom(8) <= "0100000";	-- box[8] 32
this_rom(9) <= "0100100";	-- box[9] 36
this_rom(10) <= "0101000";	-- box[10] 40
this_rom(11) <= "0101100";	-- box[11] 44
this_rom(12) <= "0110000";	-- box[12] 48
this_rom(13) <= "0110100";	-- box[13] 52
this_rom(14) <= "0111000";	-- box[14] 56
this_rom(15) <= "0111100";	-- box[15] 60
this_rom(16) <= "1000000";	-- box[16] 64
this_rom(17) <= "1000100";	-- box[17] 68
this_rom(18) <= "1001000";	-- box[18] 72
this_rom(19) <= "1001100";	-- box[19] 76
this_rom(20) <= "1010000";	-- box[20] 80
this_rom(21) <= "1010100";	-- box[21] 84
this_rom(22) <= "1011000";	-- box[22] 88
this_rom(23) <= "1011100";	-- box[23] 92
this_rom(24) <= "1100000";	-- box[24] 96
this_rom(25) <= "1100100";	-- box[25] 100
this_rom(26) <= "1101000";	-- box[26] 104
this_rom(27) <= "1101100";	-- box[27] 108
this_rom(28) <= "1110000";	-- box[28] 112
this_rom(29) <= "1110100";	-- box[29] 116
this_rom(30) <= "1111000";	-- box[30] 120
this_rom(31) <= "1111100";	-- box[31] 124
this_rom(32) <= "0000001";	-- box[32] 1
this_rom(33) <= "0000101";	-- box[33] 5
this_rom(34) <= "0001001";	-- box[34] 9
this_rom(35) <= "0001101";	-- box[35] 13
this_rom(36) <= "0010001";	-- box[36] 17
this_rom(37) <= "0010101";	-- box[37] 21
this_rom(38) <= "0011001";	-- box[38] 25
this_rom(39) <= "0011101";	-- box[39] 29
this_rom(40) <= "0100001";	-- box[40] 33
this_rom(41) <= "0100101";	-- box[41] 37
this_rom(42) <= "0101001";	-- box[42] 41
this_rom(43) <= "0101101";	-- box[43] 45
this_rom(44) <= "0110001";	-- box[44] 49
this_rom(45) <= "0110101";	-- box[45] 53
this_rom(46) <= "0111001";	-- box[46] 57
this_rom(47) <= "0111101";	-- box[47] 61
this_rom(48) <= "1000001";	-- box[48] 65
this_rom(49) <= "1000101";	-- box[49] 69
this_rom(50) <= "1001001";	-- box[50] 73
this_rom(51) <= "1001101";	-- box[51] 77
this_rom(52) <= "1010001";	-- box[52] 81
this_rom(53) <= "1010101";	-- box[53] 85
this_rom(54) <= "1011001";	-- box[54] 89
this_rom(55) <= "1011101";	-- box[55] 93
this_rom(56) <= "1100001";	-- box[56] 97
this_rom(57) <= "1100101";	-- box[57] 101
this_rom(58) <= "1101001";	-- box[58] 105
this_rom(59) <= "1101101";	-- box[59] 109
this_rom(60) <= "1110001";	-- box[60] 113
this_rom(61) <= "1110101";	-- box[61] 117
this_rom(62) <= "1111001";	-- box[62] 121
this_rom(63) <= "1111101";	-- box[63] 125
this_rom(64) <= "0000010";	-- box[64] 2
this_rom(65) <= "0000110";	-- box[65] 6
this_rom(66) <= "0001010";	-- box[66] 10
this_rom(67) <= "0001110";	-- box[67] 14
this_rom(68) <= "0010010";	-- box[68] 18
this_rom(69) <= "0010110";	-- box[69] 22
this_rom(70) <= "0011010";	-- box[70] 26
this_rom(71) <= "0011110";	-- box[71] 30
this_rom(72) <= "0100010";	-- box[72] 34
this_rom(73) <= "0100110";	-- box[73] 38
this_rom(74) <= "0101010";	-- box[74] 42
this_rom(75) <= "0101110";	-- box[75] 46
this_rom(76) <= "0110010";	-- box[76] 50
this_rom(77) <= "0110110";	-- box[77] 54
this_rom(78) <= "0111010";	-- box[78] 58
this_rom(79) <= "0111110";	-- box[79] 62
this_rom(80) <= "1000010";	-- box[80] 66
this_rom(81) <= "1000110";	-- box[81] 70
this_rom(82) <= "1001010";	-- box[82] 74
this_rom(83) <= "1001110";	-- box[83] 78
this_rom(84) <= "1010010";	-- box[84] 82
this_rom(85) <= "1010110";	-- box[85] 86
this_rom(86) <= "1011010";	-- box[86] 90
this_rom(87) <= "1011110";	-- box[87] 94
this_rom(88) <= "1100010";	-- box[88] 98
this_rom(89) <= "1100110";	-- box[89] 102
this_rom(90) <= "1101010";	-- box[90] 106
this_rom(91) <= "1101110";	-- box[91] 110
this_rom(92) <= "1110010";	-- box[92] 114
this_rom(93) <= "1110110";	-- box[93] 118
this_rom(94) <= "1111010";	-- box[94] 122
this_rom(95) <= "1111110";	-- box[95] 126
this_rom(96) <= "0000011";	-- box[96] 3
this_rom(97) <= "0000111";	-- box[97] 7
this_rom(98) <= "0001011";	-- box[98] 11
this_rom(99) <= "0001111";	-- box[99] 15
this_rom(100) <= "0010011";	-- box[100] 19
this_rom(101) <= "0010111";	-- box[101] 23
this_rom(102) <= "0011011";	-- box[102] 27
this_rom(103) <= "0011111";	-- box[103] 31
this_rom(104) <= "0100011";	-- box[104] 35
this_rom(105) <= "0100111";	-- box[105] 39
this_rom(106) <= "0101011";	-- box[106] 43
this_rom(107) <= "0101111";	-- box[107] 47
this_rom(108) <= "0110011";	-- box[108] 51
this_rom(109) <= "0110111";	-- box[109] 55
this_rom(110) <= "0111011";	-- box[110] 59
this_rom(111) <= "0111111";	-- box[111] 63
this_rom(112) <= "1000011";	-- box[112] 67
this_rom(113) <= "1000111";	-- box[113] 71
this_rom(114) <= "1001011";	-- box[114] 75
this_rom(115) <= "1001111";	-- box[115] 79
this_rom(116) <= "1010011";	-- box[116] 83
this_rom(117) <= "1010111";	-- box[117] 87
this_rom(118) <= "1011011";	-- box[118] 91
this_rom(119) <= "1011111";	-- box[119] 95
this_rom(120) <= "1100011";	-- box[120] 99
this_rom(121) <= "1100111";	-- box[121] 103
this_rom(122) <= "1101011";	-- box[122] 107
this_rom(123) <= "1101111";	-- box[123] 111
this_rom(124) <= "1110011";	-- box[124] 115
this_rom(125) <= "1110111";	-- box[125] 119
this_rom(126) <= "1111011";	-- box[126] 123
this_rom(127) <= "1111111";	-- box[127] 127

-- lecture
data_out <= this_rom(to_integer(unsigned( data_in)));

end Behavioral;
