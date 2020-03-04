----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 13:05:59
-- Design Name: 
-- Module Name: S_Box - Behavioral
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

entity S_Box is
    Port ( 
    -- IN
    data_in : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    -- OUT
    data_out : out std_logic_vector(3 downto 0)
    );
end S_Box;

architecture Behavioral of S_Box is
-- Defini le contenu de la S-Box
type sbox is array (15 downto 0) of std_logic_vector(3 downto 0);
signal this_sbox : sbox;    -- "this_sbox" reference la sbox actuel

begin
-- Initialisation de la SBox
this_sbox(0) <= "0000"; --0
this_sbox(1) <= "0001"; --1
this_sbox(2) <= "0010"; --2
this_sbox(3) <= "0011"; --3
this_sbox(4) <= "0100"; --4
this_sbox(5) <= "0101"; --5
this_sbox(6) <= "0110"; --6
this_sbox(7) <= "0111"; --7
this_sbox(8) <= "1000"; --8
this_sbox(9) <= "1001"; --9
this_sbox(10) <= "1010"; --10
this_sbox(11) <= "1011"; --11
this_sbox(12) <= "1100"; --12
this_sbox(13) <= "1101"; --13
this_sbox(14) <= "1110"; --14
this_sbox(15) <= "1111"; --15

process(clk) begin
if clk'event  and clk = '1' then -- detecte un evenement sur la clk pour actualiser le composant  

-- lecture
data_out <= this_sbox(to_integer(unsigned( data_in)));

end if;
end process;

end Behavioral;
