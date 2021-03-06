----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 13:53:21
-- Design Name: 
-- Module Name: S_Box3 - Behavioral
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

entity S_Box3 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(3 downto 0);
    -- OUT
    data_out : out std_logic_vector(3 downto 0)
    );
end S_Box3;

architecture Behavioral of S_Box3 is
type sbox is array (15 downto 0) of std_logic_vector(3 downto 0);
signal this_sbox : sbox;    -- "this_sbox" reference la sbox actuel

begin
-- Initialisation de la SBox
this_sbox(0) <= "0000";	-- box[0] 0
this_sbox(1) <= "1111";	-- box[1] 15
this_sbox(2) <= "1011";	-- box[2] 11
this_sbox(3) <= "1000";	-- box[3] 8
this_sbox(4) <= "1100";	-- box[4] 12
this_sbox(5) <= "1001";	-- box[5] 9
this_sbox(6) <= "0110";	-- box[6] 6
this_sbox(7) <= "0011";	-- box[7] 3
this_sbox(8) <= "1101";	-- box[8] 13
this_sbox(9) <= "0001";	-- box[9] 1
this_sbox(10) <= "0010";	-- box[10] 2
this_sbox(11) <= "0100";	-- box[11] 4
this_sbox(12) <= "1010";	-- box[12] 10
this_sbox(13) <= "0111";	-- box[13] 7
this_sbox(14) <= "0101";	-- box[14] 5
this_sbox(15) <= "1110";	-- box[15] 14


-- lecture
data_out <= this_sbox(to_integer(unsigned( data_in)));

end Behavioral;
