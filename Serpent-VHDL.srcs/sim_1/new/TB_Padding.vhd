----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2020 09:25:01
-- Design Name: 
-- Module Name: TB_Padding - Behavioral
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

entity TB_Padding is
--  Port ( );
end TB_Padding;

architecture Behavioral of TB_Padding is
component Padding is
    Port ( 
    -- IN
    key_in : in std_logic_vector(127 downto 0 );
    -- OUT
    key_padded : out std_logic_vector(255 downto 0 ) := (128 => '1',others => '0')
    );
end component;

signal key_in : std_logic_vector(127 downto 0);
signal key_padded : std_logic_vector(255 downto 0);

begin
dut : padding

port map (
    key_in => key_in,
    key_padded => key_padded);

process begin 

    -- data_in == 0
    key_in <= "00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    wait for 10 ns;
end process;


end Behavioral;
