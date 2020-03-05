----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2020 13:59:36
-- Design Name: 
-- Module Name: ROM_IP - Behavioral
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

entity ROM_IP is
    Port ( 
    -- IN
    data_in : in std_logic_vector(6 downto 0);
    -- OUT
    data_out : out std_logic_vector(6 downto 0)
    );
end ROM_IP;

architecture Behavioral of ROM_IP is

type rom is array (127 downto 0) of std_logic_vector(6 downto 0);
signal this_rom : rom;    -- "this_rom" reference la rom actuel


begin
-- Init ROM 
this_rom(0) <= "0000000";	-- box[0] 0
this_rom(1) <= "0100000";	-- box[1] 32
this_rom(2) <= "1000000";	-- box[2] 64
this_rom(3) <= "1100000";	-- box[3] 96
this_rom(4) <= "0000001";	-- box[4] 1
this_rom(5) <= "0100001";	-- box[5] 33
this_rom(6) <= "1000001";	-- box[6] 65
this_rom(7) <= "1100001";	-- box[7] 97
this_rom(8) <= "0000010";	-- box[8] 2
this_rom(9) <= "0100010";	-- box[9] 34
this_rom(10) <= "1000010";	-- box[10] 66
this_rom(11) <= "1100010";	-- box[11] 98
this_rom(12) <= "0000011";	-- box[12] 3
this_rom(13) <= "0100011";	-- box[13] 35
this_rom(14) <= "1000011";	-- box[14] 67
this_rom(15) <= "1100011";	-- box[15] 99
this_rom(16) <= "0000100";	-- box[16] 4
this_rom(17) <= "0100100";	-- box[17] 36
this_rom(18) <= "1000100";	-- box[18] 68
this_rom(19) <= "1100100";	-- box[19] 100
this_rom(20) <= "0000101";	-- box[20] 5
this_rom(21) <= "0100101";	-- box[21] 37
this_rom(22) <= "1000101";	-- box[22] 69
this_rom(23) <= "1100101";	-- box[23] 101
this_rom(24) <= "0000110";	-- box[24] 6
this_rom(25) <= "0100110";	-- box[25] 38
this_rom(26) <= "1000110";	-- box[26] 70
this_rom(27) <= "1100110";	-- box[27] 102
this_rom(28) <= "0000111";	-- box[28] 7
this_rom(29) <= "0100111";	-- box[29] 39
this_rom(30) <= "1000111";	-- box[30] 71
this_rom(31) <= "1100111";	-- box[31] 103
this_rom(32) <= "0001000";	-- box[32] 8
this_rom(33) <= "0101000";	-- box[33] 40
this_rom(34) <= "1001000";	-- box[34] 72
this_rom(35) <= "1101000";	-- box[35] 104
this_rom(36) <= "0001001";	-- box[36] 9
this_rom(37) <= "0101001";	-- box[37] 41
this_rom(38) <= "1001001";	-- box[38] 73
this_rom(39) <= "1101001";	-- box[39] 105
this_rom(40) <= "0001010";	-- box[40] 10
this_rom(41) <= "0101010";	-- box[41] 42
this_rom(42) <= "1001010";	-- box[42] 74
this_rom(43) <= "1101010";	-- box[43] 106
this_rom(44) <= "0001011";	-- box[44] 11
this_rom(45) <= "0101011";	-- box[45] 43
this_rom(46) <= "1001011";	-- box[46] 75
this_rom(47) <= "1101011";	-- box[47] 107
this_rom(48) <= "0001100";	-- box[48] 12
this_rom(49) <= "0101100";	-- box[49] 44
this_rom(50) <= "1001100";	-- box[50] 76
this_rom(51) <= "1101100";	-- box[51] 108
this_rom(52) <= "0001101";	-- box[52] 13
this_rom(53) <= "0101101";	-- box[53] 45
this_rom(54) <= "1001101";	-- box[54] 77
this_rom(55) <= "1101101";	-- box[55] 109
this_rom(56) <= "0001110";	-- box[56] 14
this_rom(57) <= "0101110";	-- box[57] 46
this_rom(58) <= "1001110";	-- box[58] 78
this_rom(59) <= "1101110";	-- box[59] 110
this_rom(60) <= "0001111";	-- box[60] 15
this_rom(61) <= "0101111";	-- box[61] 47
this_rom(62) <= "1001111";	-- box[62] 79
this_rom(63) <= "1101111";	-- box[63] 111
this_rom(64) <= "0010000";	-- box[64] 16
this_rom(65) <= "0110000";	-- box[65] 48
this_rom(66) <= "1010000";	-- box[66] 80
this_rom(67) <= "1110000";	-- box[67] 112
this_rom(68) <= "0010001";	-- box[68] 17
this_rom(69) <= "0110001";	-- box[69] 49
this_rom(70) <= "1010001";	-- box[70] 81
this_rom(71) <= "1110001";	-- box[71] 113
this_rom(72) <= "0010010";	-- box[72] 18
this_rom(73) <= "0110010";	-- box[73] 50
this_rom(74) <= "1010010";	-- box[74] 82
this_rom(75) <= "1110010";	-- box[75] 114
this_rom(76) <= "0010011";	-- box[76] 19
this_rom(77) <= "0110011";	-- box[77] 51
this_rom(78) <= "1010011";	-- box[78] 83
this_rom(79) <= "1110011";	-- box[79] 115
this_rom(80) <= "0010100";	-- box[80] 20
this_rom(81) <= "0110100";	-- box[81] 52
this_rom(82) <= "1010100";	-- box[82] 84
this_rom(83) <= "1110100";	-- box[83] 116
this_rom(84) <= "0010101";	-- box[84] 21
this_rom(85) <= "0110101";	-- box[85] 53
this_rom(86) <= "1010101";	-- box[86] 85
this_rom(87) <= "1110101";	-- box[87] 117
this_rom(88) <= "0010110";	-- box[88] 22
this_rom(89) <= "0110110";	-- box[89] 54
this_rom(90) <= "1010110";	-- box[90] 86
this_rom(91) <= "1110110";	-- box[91] 118
this_rom(92) <= "0010111";	-- box[92] 23
this_rom(93) <= "0110111";	-- box[93] 55
this_rom(94) <= "1010111";	-- box[94] 87
this_rom(95) <= "1110111";	-- box[95] 119
this_rom(96) <= "0011000";	-- box[96] 24
this_rom(97) <= "0111000";	-- box[97] 56
this_rom(98) <= "1011000";	-- box[98] 88
this_rom(99) <= "1111000";	-- box[99] 120
this_rom(100) <= "0011001";	-- box[100] 25
this_rom(101) <= "0111001";	-- box[101] 57
this_rom(102) <= "1011001";	-- box[102] 89
this_rom(103) <= "1111001";	-- box[103] 121
this_rom(104) <= "0011010";	-- box[104] 26
this_rom(105) <= "0111010";	-- box[105] 58
this_rom(106) <= "1011010";	-- box[106] 90
this_rom(107) <= "1111010";	-- box[107] 122
this_rom(108) <= "0011011";	-- box[108] 27
this_rom(109) <= "0111011";	-- box[109] 59
this_rom(110) <= "1011011";	-- box[110] 91
this_rom(111) <= "1111011";	-- box[111] 123
this_rom(112) <= "0011100";	-- box[112] 28
this_rom(113) <= "0111100";	-- box[113] 60
this_rom(114) <= "1011100";	-- box[114] 92
this_rom(115) <= "1111100";	-- box[115] 124
this_rom(116) <= "0011101";	-- box[116] 29
this_rom(117) <= "0111101";	-- box[117] 61
this_rom(118) <= "1011101";	-- box[118] 93
this_rom(119) <= "1111101";	-- box[119] 125
this_rom(120) <= "0011110";	-- box[120] 30
this_rom(121) <= "0111110";	-- box[121] 62
this_rom(122) <= "1011110";	-- box[122] 94
this_rom(123) <= "1111110";	-- box[123] 126
this_rom(124) <= "0011111";	-- box[124] 31
this_rom(125) <= "0111111";	-- box[125] 63
this_rom(126) <= "1011111";	-- box[126] 95
this_rom(127) <= "1111111";	-- box[127] 127

-- lecture
data_out <= this_rom(to_integer(unsigned( data_in)));

end Behavioral;
