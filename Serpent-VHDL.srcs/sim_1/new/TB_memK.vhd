----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 10:01:01
-- Design Name: 
-- Module Name: TB_memK - Behavioral
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

entity TB_memK is
--  Port ( );
end TB_memK;

architecture Behavioral of TB_memK is
component memK is
  Port (
    -- IN
    rst : in std_logic;
    clk : in std_logic;
    rw : in std_logic;  -- 1  == Write
    val_in : in std_logic_vector(127 downto 0);
    addr : in integer range 0 to 32;
    -- OUT
    val_out : out std_logic_vector(127 downto 0)
    );
end component;

signal rst, rw : std_logic;
signal clk : std_logic := '0';
signal val_in, val_out : std_logic_vector(127 downto 0);
signal addr : integer range 0 to 32;


begin

dut : memK
port map(rst => rst, clk => clk, rw => rw, val_in => val_in, val_out => val_out, addr => addr);

clk <= not clk after 5 ns;


process begin

rst <='1';
wait for 5 ns;

rst <='0';

rw <= '1';
addr <= 2;
val_in <= (others => '1');
wait for 10 ns;

rw <= '1';
addr <= 4;
val_in <= (others => '1');
wait for 10 ns;

rw <= '1';
addr <= 7;
val_in <= (others => '1');
wait for 10 ns;

rw <= '0';
addr <= 2;
val_in <= (others => '1');
wait for 10 ns;


end process;


end Behavioral;
