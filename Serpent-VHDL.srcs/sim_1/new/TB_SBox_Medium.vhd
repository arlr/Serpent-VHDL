----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 19:26:35
-- Design Name: 
-- Module Name: TB_SBox_Medium - Behavioral
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

entity TB_SBox_Medium is
--  Port ( );
end TB_SBox_Medium;

architecture Behavioral of TB_SBox_Medium is
-- S_Box
component SBox_Medium0 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;

-- S_Box1
component SBox_Medium1 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out  : out std_logic_vector(31 downto 0)
    );
end component;

-- S_Box2
component SBox_Medium2 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out  : out std_logic_vector(31 downto 0)
    );
end component;

-- S_Box3
component SBox_Medium3 is
    Port ( 
    -- IN
    data_in  : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;

-- S_Box4
component SBox_Medium4 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;

-- S_Box5
component SBox_Medium5 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;

-- S_Box6
component SBox_Medium6 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;

-- S_Box7
component SBox_Medium7 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;

signal data_in_0 : std_logic_vector(31 downto 0);
signal data_out_0 : std_logic_vector(31 downto 0);
signal data_in_1 : std_logic_vector(31 downto 0);
signal data_out_1 : std_logic_vector(31 downto 0);
signal data_in_2 : std_logic_vector(31 downto 0);
signal data_out_2 : std_logic_vector(31 downto 0);
signal data_in_3 : std_logic_vector(31 downto 0);
signal data_out_3 : std_logic_vector(31 downto 0);
signal data_in_4 : std_logic_vector(31 downto 0);
signal data_out_4 : std_logic_vector(31 downto 0);
signal data_in_5 : std_logic_vector(31 downto 0);
signal data_out_5 : std_logic_vector(31 downto 0);
signal data_in_6 : std_logic_vector(31 downto 0);
signal data_out_6 : std_logic_vector(31 downto 0);
signal data_in_7 : std_logic_vector(31 downto 0);
signal data_out_7 : std_logic_vector(31 downto 0);
begin

--------------------------- SBOX_0 --------------------------------------
SBOX_0 : SBox_Medium0

port map (
    data_in => data_in_0,
    data_out => data_out_0);

process begin


        -- data_in == 1891536539  
        data_in_0 <= "01110000101111101000111010011011";  
        wait for 10 ns;  
        assert data_out_0 = "10110011001010011110100111010010" report "Assertion violation." severity error;
        
        
        -- data_in == 4062069057  
        data_in_0 <= "11110010000111100100000101000001";  
        wait for 10 ns;  
        assert data_out_0 = "11001111100010011010100010101000" report "Assertion violation." severity error;
        
        
        -- data_in == 4006976456  
        data_in_0 <= "11101110110101011001101111001000";  
        wait for 10 ns;  
        assert data_out_0 = "10011001000001101101001001111110" report "Assertion violation." severity error;
        
        
        -- data_in == 1134329957  
        data_in_0 <= "01000011100111001000000001100101";  
        wait for 10 ns;  
        assert data_out_0 = "10100001110101111110001101010110" report "Assertion violation." severity error;
        
        
        -- data_in == 287023919  
        data_in_0 <= "00010001000110111010001100101111";  
        wait for 10 ns;  
        assert data_out_0 = "10001000100000100100000111111100" report "Assertion violation." severity error;
        
        
        -- data_in == 3244251404  
        data_in_0 <= "11000001010111110101100100001100";  
        wait for 10 ns;  
        assert data_out_0 = "01111000011011000110110100110111" report "Assertion violation." severity error;
        
        
        -- data_in == 2866541182  
        data_in_0 <= "10101010110110111111001001111110";  
        wait for 10 ns;  
        assert data_out_0 = "01000100000000101100111110111001" report "Assertion violation." severity error;
        
        
        -- data_in == 1863050395  
        data_in_0 <= "01101111000010111110010010011011";  
        wait for 10 ns;  
        assert data_out_0 = "01011100001100101001101011010010" report "Assertion violation." severity error;
        
        
        -- data_in == 94667183  
        data_in_0 <= "00000101101001001000000110101111";  
        wait for 10 ns;  
        assert data_out_0 = "00110110010010101110100001001100" report "Assertion violation." severity error;
        
        
        -- data_in == 590330435  
        data_in_0 <= "00100011001011111011101001000011";  
        wait for 10 ns;  
        assert data_out_0 = "11110001111111000010010010100001" report "Assertion violation." severity error;
        
        
        -- data_in == 3511151192  
        data_in_0 <= "11010001010001111110101001011000";  
        wait for 10 ns;  
        assert data_out_0 = "00001000101010111001010001101110" report "Assertion violation." severity error;
        
        
        -- data_in == 1908807162  
        data_in_0 <= "01110001110001100001010111111010";  
        wait for 10 ns;  
        assert data_out_0 = "10111000011101011000011011000100" report "Assertion violation." severity error;
        
        
        -- data_in == 3229462934  
        data_in_0 <= "11000000011111011011000110010110";  
        wait for 10 ns;  
        assert data_out_0 = "01110011101100000010100011010101" report "Assertion violation." severity error;
        
        
        -- data_in == 1853555566  
        data_in_0 <= "01101110011110110000001101101110";  
        wait for 10 ns;  
        assert data_out_0 = "01011001101100100011000101011001" report "Assertion violation." severity error;
        
        
        -- data_in == 2656380452  
        data_in_0 <= "10011110010101010010011000100100";  
        wait for 10 ns;  
        assert data_out_0 = "11011001011001101111010111111010" report "Assertion violation." severity error;
        
        
        -- data_in == 2757357096  
        data_in_0 <= "10100100010110011110111000101000";  
        wait for 10 ns;  
        assert data_out_0 = "01001010011011011001100111111110" report "Assertion violation." severity error;
        
    
end process;

--------------------------- SBOX_1 --------------------------------------
SBOX_1 : SBox_Medium1

port map (
    data_in => data_in_1,
    data_out => data_out_1);

process begin

    
                -- data_in == 808390993  
        data_in_1 <= "00110000001011110001000101010001";  
        wait for 10 ns;  
        assert data_out_1 = "01111111001001001100110000001100" report "Assertion violation." severity error;
        
        
        -- data_in == 578238020  
        data_in_1 <= "00100010011101110011011001000100";  
        wait for 10 ns;  
        assert data_out_1 = "00100010101010100111010110011001" report "Assertion violation." severity error;
        
        
        -- data_in == 2940732545  
        data_in_1 <= "10101111010010000000010010000001";  
        wait for 10 ns;  
        assert data_out_1 = "11100100100100011111100100011100" report "Assertion violation." severity error;
        
        
        -- data_in == 2713636866  
        data_in_1 <= "10100001101111101101000000000010";  
        wait for 10 ns;  
        assert data_out_1 = "11101100100000111101111111110010" report "Assertion violation." severity error;
        
        
        -- data_in == 1454733722  
        data_in_1 <= "01010110101101010111100110011010";  
        wait for 10 ns;  
        assert data_out_1 = "00000101100000001010101110111110" report "Assertion violation." severity error;
        
        
        -- data_in == 1444907087  
        data_in_1 <= "01010110000111111000100001001111";  
        wait for 10 ns;  
        assert data_out_1 = "00000101110001000001000110010100" report "Assertion violation." severity error;
        
        
        -- data_in == 2563058312  
        data_in_1 <= "10011000110001010010101010001000";  
        wait for 10 ns;  
        assert data_out_1 = "10110001011000000010111000010001" report "Assertion violation." severity error;
        
        
        -- data_in == 1990001330  
        data_in_1 <= "01110110100111010000001010110010";  
        wait for 10 ns;  
        assert data_out_1 = "10100101101111011111001010000010" report "Assertion violation." severity error;
        
        
        -- data_in == 2837112081  
        data_in_1 <= "10101001000110101110010100010001";  
        wait for 10 ns;  
        assert data_out_1 = "11101011110011100011000011001100" report "Assertion violation." severity error;
        
        
        -- data_in == 1438730812  
        data_in_1 <= "01010101110000010100101000111100";  
        wait for 10 ns;  
        assert data_out_1 = "00000000011011001001111001110110" report "Assertion violation." severity error;
        
        
        -- data_in == 3311733233  
        data_in_1 <= "11000101011001010000100111110001";  
        wait for 10 ns;  
        assert data_out_1 = "01100000010100001111101101001100" report "Assertion violation." severity error;
        
        
        -- data_in == 1416668934  
        data_in_1 <= "01010100011100001010011100000110";  
        wait for 10 ns;  
        assert data_out_1 = "00001001101011111110101011110101" report "Assertion violation." severity error;
        
        
        -- data_in == 1957318134  
        data_in_1 <= "01110100101010100100110111110110";  
        wait for 10 ns;  
        assert data_out_1 = "10101001111011101001110101000101" report "Assertion violation." severity error;
        
        
        -- data_in == 4257623212  
        data_in_1 <= "11111101110001100010110010101100";  
        wait for 10 ns;  
        assert data_out_1 = "01001101011001010010011011100110" report "Assertion violation." severity error;
        
        
        -- data_in == 4025092670  
        data_in_1 <= "11101111111010100000101000111110";  
        wait for 10 ns;  
        assert data_out_1 = "00110100001111101111111001110011" report "Assertion violation." severity error;
        
        
        -- data_in == 562698902  
        data_in_1 <= "00100001100010100001101010010110";  
        wait for 10 ns;  
        assert data_out_1 = "00101100000111101100111010110101" report "Assertion violation." severity error;
        
        

end process;
--------------------------- SBOX_2 --------------------------------------
SBOX_2 : SBox_Medium2

port map (
    data_in => data_in_2,
    data_out => data_out_2);

process begin

       -- data_in == 1364320797  
        data_in_2 <= "01010001010100011110001000011101";  
        wait for 10 ns;  
        assert data_out_2 = "11000110110001100101011101101011" report "Assertion violation." severity error;
        
        
        -- data_in == 1863448011  
        data_in_2 <= "01101111000100011111010111001011";  
        wait for 10 ns;  
        assert data_out_2 = "10100010011001100010110000000100" report "Assertion violation." severity error;
        
        
        -- data_in == 2109149342  
        data_in_2 <= "01111101101101110001000010011110";  
        wait for 10 ns;  
        assert data_out_2 = "11111011010011110110100000010101" report "Assertion violation." severity error;
        
        
        -- data_in == 1418268253  
        data_in_2 <= "01010100100010010000111001011101";  
        wait for 10 ns;  
        assert data_out_2 = "11000011110100011000010111001011" report "Assertion violation." severity error;
        
        
        -- data_in == 4279935527  
        data_in_2 <= "11111111000110101010001000100111";  
        wait for 10 ns;  
        assert data_out_2 = "00100010011011101110011101111111" report "Assertion violation." severity error;
        
        
        -- data_in == 178580317  
        data_in_2 <= "00001010101001001110101101011101";  
        wait for 10 ns;  
        assert data_out_2 = "10001110111000110101010011001011" report "Assertion violation." severity error;
        
        
        -- data_in == 1311370675  
        data_in_2 <= "01001110001010011110110110110011";  
        wait for 10 ns;  
        assert data_out_2 = "00110101011100010101101101001001" report "Assertion violation." severity error;
        
        
        -- data_in == 2455536914  
        data_in_2 <= "10010010010111001000010100010010";  
        wait for 10 ns;  
        assert data_out_2 = "00010111110000001101110001100111" report "Assertion violation." severity error;
        
        
        -- data_in == 2156950193  
        data_in_2 <= "10000000100100000111001010110001";  
        wait for 10 ns;  
        assert data_out_2 = "11011000000110001111011101000110" report "Assertion violation." severity error;
        
        
        -- data_in == 1135046286  
        data_in_2 <= "01000011101001110110111010001110";  
        wait for 10 ns;  
        assert data_out_2 = "00111001111011111010010111010101" report "Assertion violation." severity error;
        
        
        -- data_in == 3446357311  
        data_in_2 <= "11001101011010110011110100111111";  
        wait for 10 ns;  
        assert data_out_2 = "00001011101001001001101110010010" report "Assertion violation." severity error;
        
        
        -- data_in == 3914656306  
        data_in_2 <= "11101001010101001110101000110010";  
        wait for 10 ns;  
        assert data_out_2 = "01010001110000110101111010010111" report "Assertion violation." severity error;
        
        
        -- data_in == 1413304135  
        data_in_2 <= "01010100001111010100111101000111";  
        wait for 10 ns;  
        assert data_out_2 = "11000011100110110011001000111111" report "Assertion violation." severity error;
        
        
        -- data_in == 461348305  
        data_in_2 <= "00011011011111111001110111010001";  
        wait for 10 ns;  
        assert data_out_2 = "01100100111100100001101110110110" report "Assertion violation." severity error;
        
        
        -- data_in == 254690731  
        data_in_2 <= "00001111001011100100010110101011";  
        wait for 10 ns;  
        assert data_out_2 = "10000010011101010011110011100100" report "Assertion violation." severity error;
        
        
        -- data_in == 2231914619  
        data_in_2 <= "10000101000010000101000001111011";  
        wait for 10 ns;  
        assert data_out_2 = "11011100100011011100100011110100" report "Assertion violation." severity error;
        
end process;

--------------------------- SBOX_3 --------------------------------------
SBOX_3 : SBox_Medium3

port map (
    data_in => data_in_3,
    data_out => data_out_3);

process begin

        -- data_in == 3763461626  
        data_in_3 <= "11100000010100011101110111111010";  
        wait for 10 ns;  
        assert data_out_3 = "01010000100111110111011111100010" report "Assertion violation." severity error;
        
        
        -- data_in == 1814630728  
        data_in_3 <= "01101100001010010001000101001000";  
        wait for 10 ns;  
        assert data_out_3 = "01101010101100011111111111001101" report "Assertion violation." severity error;
        
        
        -- data_in == 3957122093  
        data_in_3 <= "11101011110111001110010000101101";  
        wait for 10 ns;  
        assert data_out_3 = "01010100011110100101110010110111" report "Assertion violation." severity error;
        
        
        -- data_in == 3056061072  
        data_in_3 <= "10110110001001111100101010010000";  
        wait for 10 ns;  
        assert data_out_3 = "01000110101100111010001000010000" report "Assertion violation." severity error;
        
        
        -- data_in == 1811351211  
        data_in_3 <= "01101011111101110000011010101011";  
        wait for 10 ns;  
        assert data_out_3 = "01100100111000110000011000100100" report "Assertion violation." severity error;
        
        
        -- data_in == 3648638004  
        data_in_3 <= "11011001011110011100110000110100";  
        wait for 10 ns;  
        assert data_out_3 = "01110001001100011010101010001100" report "Assertion violation." severity error;
        
        
        -- data_in == 2173066184  
        data_in_3 <= "10000001100001100101101111001000";  
        wait for 10 ns;  
        assert data_out_3 = "11011111110101101001010010101101" report "Assertion violation." severity error;
        
        
        -- data_in == 3617088415  
        data_in_3 <= "11010111100110000110001110011111";  
        wait for 10 ns;  
        assert data_out_3 = "01110011000111010110100000011110" report "Assertion violation." severity error;
        
        
        -- data_in == 179484002  
        data_in_3 <= "00001010101100101011010101100010";  
        wait for 10 ns;  
        assert data_out_3 = "00000010010010110100100101101011" report "Assertion violation." severity error;
        
        
        -- data_in == 2928669675  
        data_in_3 <= "10101110100011111111001111101011";  
        wait for 10 ns;  
        assert data_out_3 = "00100101110111101110100001010100" report "Assertion violation." severity error;
        
        
        -- data_in == 942237869  
        data_in_3 <= "00111000001010010110100010101101";  
        wait for 10 ns;  
        assert data_out_3 = "10001101101100010110110100100111" report "Assertion violation." severity error;
        
        
        -- data_in == 583405564  
        data_in_3 <= "00100010110001100000111111111100";  
        wait for 10 ns;  
        assert data_out_3 = "10111011101001100000111011101010" report "Assertion violation." severity error;
        
        
        -- data_in == 2218572885  
        data_in_3 <= "10000100001111001011110001010101";  
        wait for 10 ns;  
        assert data_out_3 = "11011100100010100100101010011001" report "Assertion violation." severity error;
        
        
        -- data_in == 3166131949  
        data_in_3 <= "10111100101101110101011011101101";  
        wait for 10 ns;  
        assert data_out_3 = "01001010010000111001011001010111" report "Assertion violation." severity error;
        
        
        -- data_in == 1359342858  
        data_in_3 <= "01010001000001011110110100001010";  
        wait for 10 ns;  
        assert data_out_3 = "10011111000010010101011100000010" report "Assertion violation." severity error;
        
        
        -- data_in == 888892262  
        data_in_3 <= "00110100111110110110101101100110";  
        wait for 10 ns;  
        assert data_out_3 = "10001100111001000110010001100110" report "Assertion violation." severity error;
        

end process;
  
--------------------------- SBOX_4 --------------------------------------
SBOX_4 : SBox_Medium4

port map (
    data_in => data_in_4,
    data_out => data_out_4);

process begin


        -- data_in == 2868874807  
        data_in_4 <= "10101010111111111000111000110111";  
        wait for 10 ns;  
        assert data_out_4 = "01000100110111010010011100110110" report "Assertion violation." severity error;
        
        
        -- data_in == 4044264289  
        data_in_4 <= "11110001000011101001001101100001";  
        wait for 10 ns;  
        assert data_out_4 = "11011111000101110101001110111111" report "Assertion violation." severity error;
        
        
        -- data_in == 2602505569  
        data_in_4 <= "10011011000111110001010101100001";  
        wait for 10 ns;  
        assert data_out_4 = "01011010111111011111000010111111" report "Assertion violation." severity error;
        
        
        -- data_in == 1592192075  
        data_in_4 <= "01011110111001101110110001001011";  
        wait for 10 ns;  
        assert data_out_4 = "00000111011110110111100111001010" report "Assertion violation." severity error;
        
        
        -- data_in == 1712815317  
        data_in_4 <= "01100110000101110111110011010101";  
        wait for 10 ns;  
        assert data_out_4 = "10111011111101100110100111100000" report "Assertion violation." severity error;
        
        
        -- data_in == 4035456533  
        data_in_4 <= "11110000100010000010111000010101";  
        wait for 10 ns;  
        assert data_out_4 = "11010001001000101000011111110000" report "Assertion violation." severity error;
        
        
        -- data_in == 3357295274  
        data_in_4 <= "11001000000111000100001010101010";  
        wait for 10 ns;  
        assert data_out_4 = "10010010111110011100100001000100" report "Assertion violation." severity error;
        
        
        -- data_in == 4150457029  
        data_in_4 <= "11110111011000101111001011000101";  
        wait for 10 ns;  
        assert data_out_4 = "11010110101110001101100010010000" report "Assertion violation." severity error;
        
        
        -- data_in == 631338773  
        data_in_4 <= "00100101101000010111011100010101";  
        wait for 10 ns;  
        assert data_out_4 = "10000000010011110110011011110000" report "Assertion violation." severity error;
        
        
        -- data_in == 2733393744  
        data_in_4 <= "10100010111011000100011101010000";  
        wait for 10 ns;  
        assert data_out_4 = "01001000011110011100011000000001" report "Assertion violation." severity error;
        
        
        -- data_in == 2154432347  
        data_in_4 <= "10000000011010100000011101011011";  
        wait for 10 ns;  
        assert data_out_4 = "00100001101101000001011000001010" report "Assertion violation." severity error;
        
        
        -- data_in == 4070852651  
        data_in_4 <= "11110010101001000100100000101011";  
        wait for 10 ns;  
        assert data_out_4 = "11011000010011001100001010001010" report "Assertion violation." severity error;
        
        
        -- data_in == 1354522096  
        data_in_4 <= "01010000101111000101110111110000";  
        wait for 10 ns;  
        assert data_out_4 = "00000001101010010000111011010001" report "Assertion violation." severity error;
        
        
        -- data_in == 2755983189  
        data_in_4 <= "10100100010001001111011101010101";  
        wait for 10 ns;  
        assert data_out_4 = "01001100110011001101011000000000" report "Assertion violation." severity error;
        
        
        -- data_in == 1810054071  
        data_in_4 <= "01101011111000110011101110110111";  
        wait for 10 ns;  
        assert data_out_4 = "10111010011100110011101010100110" report "Assertion violation." severity error;
        
        
        -- data_in == 398455037  
        data_in_4 <= "00010111101111111111000011111101";  
        wait for 10 ns;  
        assert data_out_4 = "11110110101011011101000111011110" report "Assertion violation." severity error;
        
       
end process;


--------------------------- SBOX_5 --------------------------------------
SBOX_5 : SBox_Medium5

port map (
    data_in => data_in_5,
    data_out => data_out_5);

process begin

        -- data_in == 2463355574  
        data_in_5 <= "10010010110100111101001010110110";  
        wait for 10 ns;  
        assert data_out_5 = "00110010011010110110001010001001" report "Assertion violation." severity error;
        
        
        -- data_in == 3629502062  
        data_in_5 <= "11011000010101011100111001101110";  
        wait for 10 ns;  
        assert data_out_5 = "01100000101010101101011110010111" report "Assertion violation." severity error;
        
        
        -- data_in == 1752134622  
        data_in_5 <= "01101000011011110111001111011110";  
        wait for 10 ns;  
        assert data_out_5 = "10010000100100011100101101100111" report "Assertion violation." severity error;
        
        
        -- data_in == 857822525  
        data_in_5 <= "00110011001000010101010100111101";  
        wait for 10 ns;  
        assert data_out_5 = "10111011001001011010101010110110" report "Assertion violation." severity error;
        
        
        -- data_in == 209540647  
        data_in_5 <= "00001100011111010101011000100111";  
        wait for 10 ns;  
        assert data_out_5 = "11111101110001101010100100101100" report "Assertion violation." severity error;
        
        
        -- data_in == 3915401368  
        data_in_5 <= "11101001011000000100100010011000";  
        wait for 10 ns;  
        assert data_out_5 = "01110011100111110100000000110000" report "Assertion violation." severity error;
        
        
        -- data_in == 1885433157  
        data_in_5 <= "01110000011000010110110101000101";  
        wait for 10 ns;  
        assert data_out_5 = "11001111100101011001011001001010" report "Assertion violation." severity error;
        
        
        -- data_in == 1491084947  
        data_in_5 <= "01011000111000000010011010010011";  
        wait for 10 ns;  
        assert data_out_5 = "10100000011111110010100100111011" report "Assertion violation." severity error;
        
        
        -- data_in == 1856934989  
        data_in_5 <= "01101110101011101001010001001101";  
        wait for 10 ns;  
        assert data_out_5 = "10010111111001110011010001000110" report "Assertion violation." severity error;
        
        
        -- data_in == 3035752689  
        data_in_5 <= "10110100111100011110100011110001";  
        wait for 10 ns;  
        assert data_out_5 = "10000100000101010111000000010101" report "Assertion violation." severity error;
        
        
        -- data_in == 312267910  
        data_in_5 <= "00010010100111001101010010000110";  
        wait for 10 ns;  
        assert data_out_5 = "01010010001111010110010000001001" report "Assertion violation." severity error;
        
        
        -- data_in == 269950037  
        data_in_5 <= "00010000000101110001110001010101";  
        wait for 10 ns;  
        assert data_out_5 = "01011111010111000101110110101010" report "Assertion violation." severity error;
        
        
        -- data_in == 4031200465  
        data_in_5 <= "11110000010001110011110011010001";  
        wait for 10 ns;  
        assert data_out_5 = "00011111010011001011110101100101" report "Assertion violation." severity error;
        
        
        -- data_in == 3475248138  
        data_in_5 <= "11001111001001000001010000001010";  
        wait for 10 ns;  
        assert data_out_5 = "11010001001001000101010011111110" report "Assertion violation." severity error;
        
        
        -- data_in == 207966316  
        data_in_5 <= "00001100011001010101000001101100";  
        wait for 10 ns;  
        assert data_out_5 = "11111101100110101010111110011101" report "Assertion violation." severity error;
        
        
        -- data_in == 2780396989  
        data_in_5 <= "10100101101110010111110110111101";  
        wait for 10 ns;  
        assert data_out_5 = "11101010100000111100011010000110" report "Assertion violation." severity error;
        
        
       
end process;

--------------------------- SBOX_6 --------------------------------------
SBOX_6 : SBox_Medium6

port map (
    data_in => data_in_6,
    data_out => data_out_6);

process begin

    
        -- data_in == 2402096117  
        data_in_6 <= "10001111001011010001001111110101";  
        wait for 10 ns;  
        assert data_out_6 = "11100000110000110010010100000100" report "Assertion violation." severity error;
        
        
        -- data_in == 2249592069  
        data_in_6 <= "10000110000101100000110100000101";  
        wait for 10 ns;  
        assert data_out_6 = "11100110001001100111001101110100" report "Assertion violation." severity error;
        
        
        -- data_in == 2404065156  
        data_in_6 <= "10001111010010110001111110000100";  
        wait for 10 ns;  
        assert data_out_6 = "11100000100011110010000011101000" report "Assertion violation." severity error;
        
        
        -- data_in == 4276962077  
        data_in_6 <= "11111110111011010100001100011101";  
        wait for 10 ns;  
        assert data_out_6 = "00001010101000111000010100100011" report "Assertion violation." severity error;
        
        
        -- data_in == 4068626150  
        data_in_6 <= "11110010100000100100111011100110";  
        wait for 10 ns;  
        assert data_out_6 = "00001100111011001000101010100110" report "Assertion violation." severity error;
        
        
        -- data_in == 1805423758  
        data_in_6 <= "01101011100111001001010010001110";  
        wait for 10 ns;  
        assert data_out_6 = "01101111100111011001100011101010" report "Assertion violation." severity error;
        
        
        -- data_in == 3169918476  
        data_in_6 <= "10111100111100010001111000001100";  
        wait for 10 ns;  
        assert data_out_6 = "11111101000000100010101001111101" report "Assertion violation." severity error;
        
        
        -- data_in == 1834529064  
        data_in_6 <= "01101101010110001011000100101000";  
        wait for 10 ns;  
        assert data_out_6 = "01100011010011101111001011001110" report "Assertion violation." severity error;
        
        
        -- data_in == 2199772532  
        data_in_6 <= "10000011000111011101110101110100";  
        wait for 10 ns;  
        assert data_out_6 = "11100101001000110011001110111000" report "Assertion violation." severity error;
        
        
        -- data_in == 1739689476  
        data_in_6 <= "01100111101100011000111000000100";  
        wait for 10 ns;  
        assert data_out_6 = "01101011111100101110101001111000" report "Assertion violation." severity error;
        
        
        -- data_in == 1730767845  
        data_in_6 <= "01100111001010010110101111100101";  
        wait for 10 ns;  
        assert data_out_6 = "01101011110010010110111110100100" report "Assertion violation." severity error;
        
        
        -- data_in == 3325142628  
        data_in_6 <= "11000110001100011010011001100100";  
        wait for 10 ns;  
        assert data_out_6 = "11010110010100100001011001101000" report "Assertion violation." severity error;
        
        
        -- data_in == 2774811278  
        data_in_6 <= "10100101011001000100001010001110";  
        wait for 10 ns;  
        assert data_out_6 = "00010100011010001000110011101010" report "Assertion violation." severity error;
        
        
        -- data_in == 2078357265  
        data_in_6 <= "01111011111000010011011100010001";  
        wait for 10 ns;  
        assert data_out_6 = "10111111101000100101101100100010" report "Assertion violation." severity error;
        
        
        -- data_in == 719941346  
        data_in_6 <= "00101010111010010110111011100010";  
        wait for 10 ns;  
        assert data_out_6 = "11000001101010010110101010101100" report "Assertion violation." severity error;
        
        
        -- data_in == 179082922  
        data_in_6 <= "00001010101011001001011010101010";  
        wait for 10 ns;  
        assert data_out_6 = "01110001000111011001011000010001" report "Assertion violation." severity error;
        
        
       
end process;
   
--------------------------- SBOX_7 --------------------------------------
SBOX_7 : SBox_Medium7

port map (
    data_in => data_in_7,
    data_out => data_out_7);

process begin

-- data_in == 134013597  
        data_in_7 <= "00000111111111001110001010011101";  
        wait for 10 ns;  
        assert data_out_7 = "00011011011010010101111101000011" report "Assertion violation." severity error;
        
        
        -- data_in == 750837763  
        data_in_7 <= "00101100110000001110000000000011";  
        wait for 10 ns;  
        assert data_out_7 = "11111001100100010101000100010000" report "Assertion violation." severity error;
        
        
        -- data_in == 995362552  
        data_in_7 <= "00111011010101000000011011111000";  
        wait for 10 ns;  
        assert data_out_7 = "00001010100011100001001001100111" report "Assertion violation." severity error;
        
        
        -- data_in == 1143612804  
        data_in_7 <= "01000100001010100010010110000100";  
        wait for 10 ns;  
        assert data_out_7 = "11101110111111001111100001111110" report "Assertion violation." severity error;
        
        
        -- data_in == 3762556846  
        data_in_7 <= "11100000010001000000111110101110";  
        wait for 10 ns;  
        assert data_out_7 = "01010001111011100001011011000101" report "Assertion violation." severity error;
        
        
        -- data_in == 708052826  
        data_in_7 <= "00101010001101000000011101011010";  
        wait for 10 ns;  
        assert data_out_7 = "11111100000011100001101110001100" report "Assertion violation." severity error;
        
        
        -- data_in == 1138523947  
        data_in_7 <= "01000011110111000111111100101011";  
        wait for 10 ns;  
        assert data_out_7 = "11100000001110011011011011111010" report "Assertion violation." severity error;
        
        
        -- data_in == 775937930  
        data_in_7 <= "00101110001111111101111110001010";  
        wait for 10 ns;  
        assert data_out_7 = "11110101000001100011011001111100" report "Assertion violation." severity error;
        
        
        -- data_in == 1402151688  
        data_in_7 <= "01010011100100110010001100001000";  
        wait for 10 ns;  
        assert data_out_7 = "10000000010000001111000000010111" report "Assertion violation." severity error;
        
        
        -- data_in == 776845974  
        data_in_7 <= "00101110010011011011101010010110";  
        wait for 10 ns;  
        assert data_out_7 = "11110101111000111010110001000010" report "Assertion violation." severity error;
        
        
        -- data_in == 835351694  
        data_in_7 <= "00110001110010100111010010001110";  
        wait for 10 ns;  
        assert data_out_7 = "00001101100111001011111001110101" report "Assertion violation." severity error;
        
        
        -- data_in == 2760205850  
        data_in_7 <= "10100100100001010110011000011010";  
        wait for 10 ns;  
        assert data_out_7 = "11001110011110000010001011011100" report "Assertion violation." severity error;
        
        
        -- data_in == 636019308  
        data_in_7 <= "00100101111010001110001001101100";  
        wait for 10 ns;  
        assert data_out_7 = "11111000010101110101111100101001" report "Assertion violation." severity error;
        
        
        -- data_in == 2592773288  
        data_in_7 <= "10011010100010101001010010101000";  
        wait for 10 ns;  
        assert data_out_7 = "01001100011111000100111011000111" report "Assertion violation." severity error;
        
        
        -- data_in == 860527396  
        data_in_7 <= "00110011010010101001101100100100";  
        wait for 10 ns;  
        assert data_out_7 = "00000000111011000100101011111110" report "Assertion violation." severity error;
        
        
        -- data_in == 2566909450  
        data_in_7 <= "10011000111111111110111000001010";  
        wait for 10 ns;  
        assert data_out_7 = "01000111011001100101010100011100" report "Assertion violation." severity error;
        
 
end process;
end Behavioral;
