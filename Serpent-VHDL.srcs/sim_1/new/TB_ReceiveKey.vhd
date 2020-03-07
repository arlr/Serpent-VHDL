----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2020 10:43:39
-- Design Name: 
-- Module Name: TB_ReceiveKey - Behavioral
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

entity TB_ReceiveKey is
--  Port ( );
end TB_ReceiveKey;

architecture Behavioral of TB_ReceiveKey is
component ReceiveKey is
    Port ( 
    -- IN
    clk : in std_logic;
    rst : in std_logic;
    bitkey : in std_logic;
    stsp : in std_logic;
    -- OUT
    key : out std_logic_vector(255 downto 0);
    key_size : out integer range 0 to 255 := 0
    );
end component;

signal clk : std_logic := '0';
signal rst : std_logic;
signal bitkey : std_logic;
signal stsp : std_logic;

signal key : std_logic_vector(255 downto 0);
signal key_size : integer range 0 to 255 := 0;

begin

dut : ReceiveKey
port map(
    clk => clk,
    rst => rst,
    bitkey => bitkey,
    stsp => stsp,
    key => key,
    key_size => key_size
    );
    
clk <= not clk after 5 ns;

process begin

rst <= '1';
wait for 5 ns;
rst <= '0';
-- Etat == Init 
bitkey <= '1';
stsp <= '0';
wait for 5 ns;
assert key = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" report "Assertion violation. Key à une vlaleur qu'el ne devrait pas avoir" severity error; 

bitkey <= '1';
stsp <= '0';
wait for 5 ns;
assert key = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" report "Assertion violation. Key à une vlaleur qu'el ne devrait pas avoir" severity error; 

bitkey <= '0';
stsp <= '0';
wait for 5 ns;
assert key = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" report "Assertion violation. Key à une vlaleur qu'el ne devrait pas avoir" severity error; 

bitkey <= '1';
stsp <= '0';
wait for 5 ns;
assert key = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" report "Assertion violation. Key à une vlaleur qu'el ne devrait pas avoir" severity error; 


-- Changement d'etat
bitkey <= '1';
stsp <= '1';
wait for 5 ns;

-- Etat == reception
bitkey <= '1'; -- LSB
stsp <= '0';
wait for 5 ns;

bitkey <= '1';
stsp <= '0';
wait for 5 ns;

bitkey <= '0';
stsp <= '0';
wait for 5 ns;

bitkey <= '0';
stsp <= '0';
wait for 5 ns;


bitkey <= '1'; -- MSB
stsp <= '0';
wait for 5 ns;



-- Changement d'etat
bitkey <= '1';
stsp <= '1';
wait for 5 ns;

-- Etat calcul
bitkey <= '1';
stsp <= '0';
wait for 5 ns;

end process;

end Behavioral;
