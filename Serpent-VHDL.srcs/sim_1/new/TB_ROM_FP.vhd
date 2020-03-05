----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2020 15:53:21
-- Design Name: 
-- Module Name: TB_ROM_FP - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_ROM_FP is
--  Port ( );
end TB_ROM_FP;

architecture Behavioral of TB_ROM_FP is

component ROM_FP is
    Port ( 
    -- IN
    data_in : in std_logic_vector(6 downto 0);
    -- OUT
    data_out : out std_logic_vector(6 downto 0)
    );
end component;

signal data_in : std_logic_vector(6 downto 0);
signal data_out : std_logic_vector(6 downto 0);


begin

dut : ROM_FP

port map (
    data_in => data_in,
    data_out => data_out);

process begin 

        -- data_in == 95
        data_in <= "1011111";
        wait for 10 ns;
        assert data_out = "1111110" report "Assertion violation. Indice 0" severity error;
        

        -- data_in == 63
        data_in <= "0111111";
        wait for 10 ns;
        assert data_out = "1111101" report "Assertion violation. Indice 1" severity error;
        

        -- data_in == 80
        data_in <= "1010000";
        wait for 10 ns;
        assert data_out = "1000010" report "Assertion violation. Indice 2" severity error;
        

        -- data_in == 120
        data_in <= "1111000";
        wait for 10 ns;
        assert data_out = "1100011" report "Assertion violation. Indice 3" severity error;
        

        -- data_in == 123
        data_in <= "1111011";
        wait for 10 ns;
        assert data_out = "1101111" report "Assertion violation. Indice 4" severity error;
        

        -- data_in == 23
        data_in <= "0010111";
        wait for 10 ns;
        assert data_out = "1011100" report "Assertion violation. Indice 5" severity error;
        

        -- data_in == 36
        data_in <= "0100100";
        wait for 10 ns;
        assert data_out = "0010001" report "Assertion violation. Indice 6" severity error;
        

        -- data_in == 111
        data_in <= "1101111";
        wait for 10 ns;
        assert data_out = "0111111" report "Assertion violation. Indice 7" severity error;
        

        -- data_in == 102
        data_in <= "1100110";
        wait for 10 ns;
        assert data_out = "0011011" report "Assertion violation. Indice 8" severity error;
        

        -- data_in == 55
        data_in <= "0110111";
        wait for 10 ns;
        assert data_out = "1011101" report "Assertion violation. Indice 9" severity error;
        

        -- data_in == 75
        data_in <= "1001011";
        wait for 10 ns;
        assert data_out = "0101110" report "Assertion violation. Indice 10" severity error;
        

        -- data_in == 87
        data_in <= "1010111";
        wait for 10 ns;
        assert data_out = "1011110" report "Assertion violation. Indice 11" severity error;
        

        -- data_in == 74
        data_in <= "1001010";
        wait for 10 ns;
        assert data_out = "0101010" report "Assertion violation. Indice 12" severity error;
        

        -- data_in == 69
        data_in <= "1000101";
        wait for 10 ns;
        assert data_out = "0010110" report "Assertion violation. Indice 13" severity error;
        

        -- data_in == 126
        data_in <= "1111110";
        wait for 10 ns;
        assert data_out = "1111011" report "Assertion violation. Indice 14" severity error;
        

        -- data_in == 32
        data_in <= "0100000";
        wait for 10 ns;
        assert data_out = "0000001" report "Assertion violation. Indice 15" severity error;
        

        -- data_in == 9
        data_in <= "0001001";
        wait for 10 ns;
        assert data_out = "0100100" report "Assertion violation. Indice 16" severity error;
        

        -- data_in == 15
        data_in <= "0001111";
        wait for 10 ns;
        assert data_out = "0111100" report "Assertion violation. Indice 17" severity error;
        

        -- data_in == 6
        data_in <= "0000110";
        wait for 10 ns;
        assert data_out = "0011000" report "Assertion violation. Indice 18" severity error;
        

        -- data_in == 65
        data_in <= "1000001";
        wait for 10 ns;
        assert data_out = "0000110" report "Assertion violation. Indice 19" severity error;
        

        -- data_in == 61
        data_in <= "0111101";
        wait for 10 ns;
        assert data_out = "1110101" report "Assertion violation. Indice 20" severity error;
        

        -- data_in == 67
        data_in <= "1000011";
        wait for 10 ns;
        assert data_out = "0001110" report "Assertion violation. Indice 21" severity error;
        

        -- data_in == 124
        data_in <= "1111100";
        wait for 10 ns;
        assert data_out = "1110011" report "Assertion violation. Indice 22" severity error;
        

        -- data_in == 115
        data_in <= "1110011";
        wait for 10 ns;
        assert data_out = "1001111" report "Assertion violation. Indice 23" severity error;
        

        -- data_in == 119
        data_in <= "1110111";
        wait for 10 ns;
        assert data_out = "1011111" report "Assertion violation. Indice 24" severity error;
        

        -- data_in == 112
        data_in <= "1110000";
        wait for 10 ns;
        assert data_out = "1000011" report "Assertion violation. Indice 25" severity error;
        

        -- data_in == 77
        data_in <= "1001101";
        wait for 10 ns;
        assert data_out = "0110110" report "Assertion violation. Indice 26" severity error;
        

        -- data_in == 58
        data_in <= "0111010";
        wait for 10 ns;
        assert data_out = "1101001" report "Assertion violation. Indice 27" severity error;
        

        -- data_in == 11
        data_in <= "0001011";
        wait for 10 ns;
        assert data_out = "0101100" report "Assertion violation. Indice 28" severity error;
        

        -- data_in == 2
        data_in <= "0000010";
        wait for 10 ns;
        assert data_out = "0001000" report "Assertion violation. Indice 29" severity error;
        

        -- data_in == 116
        data_in <= "1110100";
        wait for 10 ns;
        assert data_out = "1010011" report "Assertion violation. Indice 30" severity error;
        

        -- data_in == 20
        data_in <= "0010100";
        wait for 10 ns;
        assert data_out = "1010000" report "Assertion violation. Indice 31" severity error;
        

        -- data_in == 85
        data_in <= "1010101";
        wait for 10 ns;
        assert data_out = "1010110" report "Assertion violation. Indice 32" severity error;
        

        -- data_in == 66
        data_in <= "1000010";
        wait for 10 ns;
        assert data_out = "0001010" report "Assertion violation. Indice 33" severity error;
        

        -- data_in == 49
        data_in <= "0110001";
        wait for 10 ns;
        assert data_out = "1000101" report "Assertion violation. Indice 34" severity error;
        

        -- data_in == 93
        data_in <= "1011101";
        wait for 10 ns;
        assert data_out = "1110110" report "Assertion violation. Indice 35" severity error;
        

        -- data_in == 22
        data_in <= "0010110";
        wait for 10 ns;
        assert data_out = "1011000" report "Assertion violation. Indice 36" severity error;
        

        -- data_in == 28
        data_in <= "0011100";
        wait for 10 ns;
        assert data_out = "1110000" report "Assertion violation. Indice 37" severity error;
        

        -- data_in == 31
        data_in <= "0011111";
        wait for 10 ns;
        assert data_out = "1111100" report "Assertion violation. Indice 38" severity error;
        

        -- data_in == 29
        data_in <= "0011101";
        wait for 10 ns;
        assert data_out = "1110100" report "Assertion violation. Indice 39" severity error;
        

        -- data_in == 117
        data_in <= "1110101";
        wait for 10 ns;
        assert data_out = "1010111" report "Assertion violation. Indice 40" severity error;
        

        -- data_in == 47
        data_in <= "0101111";
        wait for 10 ns;
        assert data_out = "0111101" report "Assertion violation. Indice 41" severity error;
        

        -- data_in == 45
        data_in <= "0101101";
        wait for 10 ns;
        assert data_out = "0110101" report "Assertion violation. Indice 42" severity error;
        

        -- data_in == 89
        data_in <= "1011001";
        wait for 10 ns;
        assert data_out = "1100110" report "Assertion violation. Indice 43" severity error;
        

        -- data_in == 106
        data_in <= "1101010";
        wait for 10 ns;
        assert data_out = "0101011" report "Assertion violation. Indice 44" severity error;
        

        -- data_in == 99
        data_in <= "1100011";
        wait for 10 ns;
        assert data_out = "0001111" report "Assertion violation. Indice 45" severity error;
        

        -- data_in == 17
        data_in <= "0010001";
        wait for 10 ns;
        assert data_out = "1000100" report "Assertion violation. Indice 46" severity error;
        

        -- data_in == 43
        data_in <= "0101011";
        wait for 10 ns;
        assert data_out = "0101101" report "Assertion violation. Indice 47" severity error;
        

        -- data_in == 86
        data_in <= "1010110";
        wait for 10 ns;
        assert data_out = "1011010" report "Assertion violation. Indice 48" severity error;
        

        -- data_in == 41
        data_in <= "0101001";
        wait for 10 ns;
        assert data_out = "0100101" report "Assertion violation. Indice 49" severity error;
        

        -- data_in == 121
        data_in <= "1111001";
        wait for 10 ns;
        assert data_out = "1100111" report "Assertion violation. Indice 50" severity error;
        

        -- data_in == 24
        data_in <= "0011000";
        wait for 10 ns;
        assert data_out = "1100000" report "Assertion violation. Indice 51" severity error;
        

        -- data_in == 50
        data_in <= "0110010";
        wait for 10 ns;
        assert data_out = "1001001" report "Assertion violation. Indice 52" severity error;
        

        -- data_in == 127
        data_in <= "1111111";
        wait for 10 ns;
        assert data_out = "1111111" report "Assertion violation. Indice 53" severity error;
        

        -- data_in == 12
        data_in <= "0001100";
        wait for 10 ns;
        assert data_out = "0110000" report "Assertion violation. Indice 54" severity error;
        

        -- data_in == 72
        data_in <= "1001000";
        wait for 10 ns;
        assert data_out = "0100010" report "Assertion violation. Indice 55" severity error;
        

        -- data_in == 108
        data_in <= "1101100";
        wait for 10 ns;
        assert data_out = "0110011" report "Assertion violation. Indice 56" severity error;
        

        -- data_in == 39
        data_in <= "0100111";
        wait for 10 ns;
        assert data_out = "0011101" report "Assertion violation. Indice 57" severity error;
        

        -- data_in == 13
        data_in <= "0001101";
        wait for 10 ns;
        assert data_out = "0110100" report "Assertion violation. Indice 58" severity error;
        

        -- data_in == 3
        data_in <= "0000011";
        wait for 10 ns;
        assert data_out = "0001100" report "Assertion violation. Indice 59" severity error;
        

        -- data_in == 59
        data_in <= "0111011";
        wait for 10 ns;
        assert data_out = "1101101" report "Assertion violation. Indice 60" severity error;
        

        -- data_in == 34
        data_in <= "0100010";
        wait for 10 ns;
        assert data_out = "0001001" report "Assertion violation. Indice 61" severity error;
        

        -- data_in == 52
        data_in <= "0110100";
        wait for 10 ns;
        assert data_out = "1010001" report "Assertion violation. Indice 62" severity error;
        

        -- data_in == 97
        data_in <= "1100001";
        wait for 10 ns;
        assert data_out = "0000111" report "Assertion violation. Indice 63" severity error;
        

        -- data_in == 92
        data_in <= "1011100";
        wait for 10 ns;
        assert data_out = "1110010" report "Assertion violation. Indice 64" severity error;
        

        -- data_in == 125
        data_in <= "1111101";
        wait for 10 ns;
        assert data_out = "1110111" report "Assertion violation. Indice 65" severity error;
        

        -- data_in == 16
        data_in <= "0010000";
        wait for 10 ns;
        assert data_out = "1000000" report "Assertion violation. Indice 66" severity error;
        

        -- data_in == 71
        data_in <= "1000111";
        wait for 10 ns;
        assert data_out = "0011110" report "Assertion violation. Indice 67" severity error;
        

        -- data_in == 81
        data_in <= "1010001";
        wait for 10 ns;
        assert data_out = "1000110" report "Assertion violation. Indice 68" severity error;
        

        -- data_in == 110
        data_in <= "1101110";
        wait for 10 ns;
        assert data_out = "0111011" report "Assertion violation. Indice 69" severity error;
        

        -- data_in == 5
        data_in <= "0000101";
        wait for 10 ns;
        assert data_out = "0010100" report "Assertion violation. Indice 70" severity error;
        

        -- data_in == 4
        data_in <= "0000100";
        wait for 10 ns;
        assert data_out = "0010000" report "Assertion violation. Indice 71" severity error;
        

        -- data_in == 27
        data_in <= "0011011";
        wait for 10 ns;
        assert data_out = "1101100" report "Assertion violation. Indice 72" severity error;
        

        -- data_in == 103
        data_in <= "1100111";
        wait for 10 ns;
        assert data_out = "0011111" report "Assertion violation. Indice 73" severity error;
        

        -- data_in == 118
        data_in <= "1110110";
        wait for 10 ns;
        assert data_out = "1011011" report "Assertion violation. Indice 74" severity error;
        

        -- data_in == 91
        data_in <= "1011011";
        wait for 10 ns;
        assert data_out = "1101110" report "Assertion violation. Indice 75" severity error;
        

        -- data_in == 21
        data_in <= "0010101";
        wait for 10 ns;
        assert data_out = "1010100" report "Assertion violation. Indice 76" severity error;
        

        -- data_in == 18
        data_in <= "0010010";
        wait for 10 ns;
        assert data_out = "1001000" report "Assertion violation. Indice 77" severity error;
        

        -- data_in == 38
        data_in <= "0100110";
        wait for 10 ns;
        assert data_out = "0011001" report "Assertion violation. Indice 78" severity error;
        

        -- data_in == 83
        data_in <= "1010011";
        wait for 10 ns;
        assert data_out = "1001110" report "Assertion violation. Indice 79" severity error;
        

        -- data_in == 109
        data_in <= "1101101";
        wait for 10 ns;
        assert data_out = "0110111" report "Assertion violation. Indice 80" severity error;
        

        -- data_in == 82
        data_in <= "1010010";
        wait for 10 ns;
        assert data_out = "1001010" report "Assertion violation. Indice 81" severity error;
        

        -- data_in == 62
        data_in <= "0111110";
        wait for 10 ns;
        assert data_out = "1111001" report "Assertion violation. Indice 82" severity error;
        

        -- data_in == 33
        data_in <= "0100001";
        wait for 10 ns;
        assert data_out = "0000101" report "Assertion violation. Indice 83" severity error;
        

        -- data_in == 96
        data_in <= "1100000";
        wait for 10 ns;
        assert data_out = "0000011" report "Assertion violation. Indice 84" severity error;
        

        -- data_in == 0
        data_in <= "0000000";
        wait for 10 ns;
        assert data_out = "0000000" report "Assertion violation. Indice 85" severity error;
        

        -- data_in == 35
        data_in <= "0100011";
        wait for 10 ns;
        assert data_out = "0001101" report "Assertion violation. Indice 86" severity error;
        

        -- data_in == 73
        data_in <= "1001001";
        wait for 10 ns;
        assert data_out = "0100110" report "Assertion violation. Indice 87" severity error;
        

        -- data_in == 14
        data_in <= "0001110";
        wait for 10 ns;
        assert data_out = "0111000" report "Assertion violation. Indice 88" severity error;
        

        -- data_in == 42
        data_in <= "0101010";
        wait for 10 ns;
        assert data_out = "0101001" report "Assertion violation. Indice 89" severity error;
        

        -- data_in == 113
        data_in <= "1110001";
        wait for 10 ns;
        assert data_out = "1000111" report "Assertion violation. Indice 90" severity error;
        

        -- data_in == 70
        data_in <= "1000110";
        wait for 10 ns;
        assert data_out = "0011010" report "Assertion violation. Indice 91" severity error;
        

        -- data_in == 100
        data_in <= "1100100";
        wait for 10 ns;
        assert data_out = "0010011" report "Assertion violation. Indice 92" severity error;
        

        -- data_in == 37
        data_in <= "0100101";
        wait for 10 ns;
        assert data_out = "0010101" report "Assertion violation. Indice 93" severity error;
        

        -- data_in == 7
        data_in <= "0000111";
        wait for 10 ns;
        assert data_out = "0011100" report "Assertion violation. Indice 94" severity error;
        

        -- data_in == 26
        data_in <= "0011010";
        wait for 10 ns;
        assert data_out = "1101000" report "Assertion violation. Indice 95" severity error;
        

        -- data_in == 10
        data_in <= "0001010";
        wait for 10 ns;
        assert data_out = "0101000" report "Assertion violation. Indice 96" severity error;
        

        -- data_in == 48
        data_in <= "0110000";
        wait for 10 ns;
        assert data_out = "1000001" report "Assertion violation. Indice 97" severity error;
        

        -- data_in == 105
        data_in <= "1101001";
        wait for 10 ns;
        assert data_out = "0100111" report "Assertion violation. Indice 98" severity error;
        

        -- data_in == 114
        data_in <= "1110010";
        wait for 10 ns;
        assert data_out = "1001011" report "Assertion violation. Indice 99" severity error;
        

        -- data_in == 51
        data_in <= "0110011";
        wait for 10 ns;
        assert data_out = "1001101" report "Assertion violation. Indice 100" severity error;
        

        -- data_in == 1
        data_in <= "0000001";
        wait for 10 ns;
        assert data_out = "0000100" report "Assertion violation. Indice 101" severity error;
        

        -- data_in == 46
        data_in <= "0101110";
        wait for 10 ns;
        assert data_out = "0111001" report "Assertion violation. Indice 102" severity error;
        

        -- data_in == 25
        data_in <= "0011001";
        wait for 10 ns;
        assert data_out = "1100100" report "Assertion violation. Indice 103" severity error;
        

        -- data_in == 90
        data_in <= "1011010";
        wait for 10 ns;
        assert data_out = "1101010" report "Assertion violation. Indice 104" severity error;
        

        -- data_in == 94
        data_in <= "1011110";
        wait for 10 ns;
        assert data_out = "1111010" report "Assertion violation. Indice 105" severity error;
        

        -- data_in == 107
        data_in <= "1101011";
        wait for 10 ns;
        assert data_out = "0101111" report "Assertion violation. Indice 106" severity error;
        

        -- data_in == 104
        data_in <= "1101000";
        wait for 10 ns;
        assert data_out = "0100011" report "Assertion violation. Indice 107" severity error;
        

        -- data_in == 68
        data_in <= "1000100";
        wait for 10 ns;
        assert data_out = "0010010" report "Assertion violation. Indice 108" severity error;
        

        -- data_in == 101
        data_in <= "1100101";
        wait for 10 ns;
        assert data_out = "0010111" report "Assertion violation. Indice 109" severity error;
        

        -- data_in == 56
        data_in <= "0111000";
        wait for 10 ns;
        assert data_out = "1100001" report "Assertion violation. Indice 110" severity error;
        

        -- data_in == 40
        data_in <= "0101000";
        wait for 10 ns;
        assert data_out = "0100001" report "Assertion violation. Indice 111" severity error;
        

        -- data_in == 88
        data_in <= "1011000";
        wait for 10 ns;
        assert data_out = "1100010" report "Assertion violation. Indice 112" severity error;
        

        -- data_in == 98
        data_in <= "1100010";
        wait for 10 ns;
        assert data_out = "0001011" report "Assertion violation. Indice 113" severity error;
        

        -- data_in == 76
        data_in <= "1001100";
        wait for 10 ns;
        assert data_out = "0110010" report "Assertion violation. Indice 114" severity error;
        

        -- data_in == 64
        data_in <= "1000000";
        wait for 10 ns;
        assert data_out = "0000010" report "Assertion violation. Indice 115" severity error;
        

        -- data_in == 44
        data_in <= "0101100";
        wait for 10 ns;
        assert data_out = "0110001" report "Assertion violation. Indice 116" severity error;
        

        -- data_in == 122
        data_in <= "1111010";
        wait for 10 ns;
        assert data_out = "1101011" report "Assertion violation. Indice 117" severity error;
        

        -- data_in == 8
        data_in <= "0001000";
        wait for 10 ns;
        assert data_out = "0100000" report "Assertion violation. Indice 118" severity error;
        

        -- data_in == 53
        data_in <= "0110101";
        wait for 10 ns;
        assert data_out = "1010101" report "Assertion violation. Indice 119" severity error;
        

        -- data_in == 19
        data_in <= "0010011";
        wait for 10 ns;
        assert data_out = "1001100" report "Assertion violation. Indice 120" severity error;
        

        -- data_in == 60
        data_in <= "0111100";
        wait for 10 ns;
        assert data_out = "1110001" report "Assertion violation. Indice 121" severity error;
        

        -- data_in == 84
        data_in <= "1010100";
        wait for 10 ns;
        assert data_out = "1010010" report "Assertion violation. Indice 122" severity error;
        

        -- data_in == 30
        data_in <= "0011110";
        wait for 10 ns;
        assert data_out = "1111000" report "Assertion violation. Indice 123" severity error;
        

        -- data_in == 57
        data_in <= "0111001";
        wait for 10 ns;
        assert data_out = "1100101" report "Assertion violation. Indice 124" severity error;
        

        -- data_in == 79
        data_in <= "1001111";
        wait for 10 ns;
        assert data_out = "0111110" report "Assertion violation. Indice 125" severity error;
        

        -- data_in == 78
        data_in <= "1001110";
        wait for 10 ns;
        assert data_out = "0111010" report "Assertion violation. Indice 126" severity error;
        

        -- data_in == 54
        data_in <= "0110110";
        wait for 10 ns;
        assert data_out = "1011001" report "Assertion violation. Indice 127" severity error;
        

end process;
end Behavioral;
