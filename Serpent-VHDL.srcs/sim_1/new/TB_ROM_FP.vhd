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
    data_in : in std_logic_vector(127 downto 0);
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

signal data_in : std_logic_vector(127 downto 0);
signal data_out : std_logic_vector(127 downto 0);


begin

dut : ROM_FP

port map (
    data_in => data_in,
    data_out => data_out);

process begin 

        data_in <= "10011100110011111101110100000100111011001010000101000001101100001101011100101100010101111010000011000100000111110011111011110001";
        wait for 10 ns;
        assert data_out = "11111100111000101001001010010110011111011100100011011100110101100001000010100010011001100001111010011100000101101100110000111011" report "Assertion violation. Indice 0" severity error;

end process;
end Behavioral;
