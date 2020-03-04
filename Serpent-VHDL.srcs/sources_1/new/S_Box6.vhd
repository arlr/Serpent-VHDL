----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 14:47:43
-- Design Name: 
-- Module Name: S_Box6 - Behavioral
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

entity S_Box6 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(3 downto 0);
    -- OUT
    data_out : out std_logic_vector(3 downto 0)
    );
end S_Box6;

architecture Behavioral of S_Box6 is

type sbox is array (15 downto 0) of std_logic_vector(3 downto 0);
signal this_sbox : sbox;    -- "this_sbox" reference la sbox actuel

begin
-- Initialisation de la SBox
this_sbox(0) <= "0111";	-- box[0] 7
this_sbox(1) <= "0010";	-- box[1] 2
this_sbox(2) <= "1100";	-- box[2] 12
this_sbox(3) <= "0101";	-- box[3] 5
this_sbox(4) <= "1000";	-- box[4] 8
this_sbox(5) <= "0100";	-- box[5] 4
this_sbox(6) <= "0110";	-- box[6] 6
this_sbox(7) <= "1011";	-- box[7] 11
this_sbox(8) <= "1110";	-- box[8] 14
this_sbox(9) <= "1001";	-- box[9] 9
this_sbox(10) <= "0001";	-- box[10] 1
this_sbox(11) <= "1111";	-- box[11] 15
this_sbox(12) <= "1101";	-- box[12] 13
this_sbox(13) <= "0011";	-- box[13] 3
this_sbox(14) <= "1010";	-- box[14] 10
this_sbox(15) <= "0000";	-- box[15] 0

-- lecture
data_out <= this_sbox(to_integer(unsigned( data_in)));


end Behavioral;
