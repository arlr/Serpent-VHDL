----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2020 15:56:04
-- Design Name: 
-- Module Name: TB_KeyExpansion - Behavioral
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

entity TB_KeyExpansion is
--  Port ( );
end TB_KeyExpansion;

architecture Behavioral of TB_KeyExpansion is

component KeyExpansion is
    Port ( 
    -- IN
    key : in std_logic_vector(255 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    i : in integer range 0 to 131;
    -- OUT
    wi : out std_logic_vector(31 downto 0)
    );
end component;

signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal i : integer range 0 to 131 := 0;

signal key : std_logic_vector(255 downto 0);
signal wi : std_logic_vector(31 downto 0);

begin

dut : KeyExpansion
port map(
    clk => clk,
    rst => rst,
    i => i,
    key => key,
    wi => wi
    );
    
clk <= not clk after 5 ns;

process begin
key  <= "0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
rst <= '1';

wait for 5 ns;

rst <= '0';
wait for 5 ns;


i <= 0;
wait for 20 ns;

i <= 1;
wait for 20 ns;

i <= 2;
wait for 20 ns;

i <= 3;
wait for 20 ns;

i <= 4;
wait for 20 ns;

i <= 5;
wait for 20 ns;


i <= 6;
wait for 20 ns;


i <= 7;
wait for 20 ns;


i <= 8;
wait for 20 ns;


i <= 9;
wait for 20 ns;

i <= 10;
wait for 20 ns;

i <= 11;
wait for 20 ns;

i <= 12;
wait for 20 ns;

i <= 13;
wait for 20 ns;

i <= 14;
wait for 20 ns;

i <= 15;
wait for 20 ns;

i <= 16;
wait for 20 ns;

i <= 17;
wait for 20 ns;

i <= 18;
wait for 20 ns;

i <= 19;
wait for 20 ns;

i <= 0;
wait for 40 ns;

i <= 0;
rst <= '1';
wait for 20 ns;


end process;

end Behavioral;
