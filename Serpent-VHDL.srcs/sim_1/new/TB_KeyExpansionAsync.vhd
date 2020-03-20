----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2020 07:38:59
-- Design Name: 
-- Module Name: TB_KeyExpansionAsync - Behavioral
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

entity TB_KeyExpansionAsync is
--  Port ( );
end TB_KeyExpansionAsync;

architecture Behavioral of TB_KeyExpansionAsync is

component KeyExpansionAsync is
  Port (
    -- IN
    key : in std_logic_vector(255 downto 0);
    addr : in integer range 0 to 131;
    -- OUT
    val_wi : out std_logic_vector(31 downto 0)
     );
end component;

signal key : std_logic_vector(255 downto 0);
signal addr : integer range 0 to 131;
signal val_wi : std_logic_vector(31 downto 0);

begin

dut : KeyExpansionAsync
port map(
    addr => addr,
    key => key,
    val_wi => val_wi
    );
    

process begin

key  <= "0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
wait for 5 ns;

addr <= 2;
wait for 5 ns;

addr <= 131;
wait for 5 ns;

addr <= 70;
wait for 5 ns;

addr <= 50;
wait for 5 ns;

addr <= 30;
wait for 5 ns;

end process;

end Behavioral;
