----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2020 14:30:14
-- Design Name: 
-- Module Name: TB_ROM_IP - Behavioral
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

entity TB_ROM_IP is
--  Port ( );
end TB_ROM_IP;

architecture Behavioral of TB_ROM_IP is

component ROM_IP is
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

dut : ROM_IP

port map (
    data_in => data_in,
    data_out => data_out);

process begin 

        data_in <= "11101100100010100011111100011101010101000000100000110011101010110110000100001001111011000010101111010001111000010000111011100000";
        wait for 10 ns;
        assert data_out = "10011111101001011000110000000011100100010001000011100000100000110010001011101100101110111101110001010001011110001110100001101110" report "Assertion violation. Indice 0" severity error;
    
end process;

end Behavioral;
