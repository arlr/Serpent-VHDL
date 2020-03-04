----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 14:50:13
-- Design Name: 
-- Module Name: S_Box7 - Behavioral
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

entity S_Box7 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(3 downto 0);
    -- OUT
    data_out : out std_logic_vector(3 downto 0)
    );
end S_Box7;

architecture Behavioral of S_Box7 is

type sbox is array (15 downto 0) of std_logic_vector(3 downto 0);
signal this_sbox : sbox;    -- "this_sbox" reference la sbox actuel

begin
-- Initialisation de la SBox
this_sbox(0) <= "0001";	-- box[0] 1
this_sbox(1) <= "1101";	-- box[1] 13
this_sbox(2) <= "1111";	-- box[2] 15
this_sbox(3) <= "0000";	-- box[3] 0
this_sbox(4) <= "1110";	-- box[4] 14
this_sbox(5) <= "1000";	-- box[5] 8
this_sbox(6) <= "0010";	-- box[6] 2
this_sbox(7) <= "1011";	-- box[7] 11
this_sbox(8) <= "0111";	-- box[8] 7
this_sbox(9) <= "0100";	-- box[9] 4
this_sbox(10) <= "1100";	-- box[10] 12
this_sbox(11) <= "1010";	-- box[11] 10
this_sbox(12) <= "1001";	-- box[12] 9
this_sbox(13) <= "0011";	-- box[13] 3
this_sbox(14) <= "0101";	-- box[14] 5
this_sbox(15) <= "0110";	-- box[15] 6

-- lecture
data_out <= this_sbox(to_integer(unsigned( data_in)));

end Behavioral;
