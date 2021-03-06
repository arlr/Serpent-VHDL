----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 15:27:05
-- Design Name: 
-- Module Name: Demu_S_Box - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Demulyiplexeur our choisr quelle S_Box l'on veut utiliser
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

entity Demu_S_Box is
    Port ( 
    -- IN
    data_in0 : in std_logic_vector(127 downto 0);
    data_in1 : in std_logic_vector(127 downto 0);
    data_in2 : in std_logic_vector(127 downto 0);
    data_in3 : in std_logic_vector(127 downto 0);
    data_in4 : in std_logic_vector(127 downto 0);
    data_in5 : in std_logic_vector(127 downto 0);
    data_in6 : in std_logic_vector(127 downto 0);
    data_in7 : in std_logic_vector(127 downto 0);
    
    SEL_SBOX : in integer range 0 to 7 ; -- 8 possibilités
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end Demu_S_Box;

architecture Behavioral of Demu_S_Box is
signal big_out : std_logic_vector(1023 downto 0);


begin
big_out(1023 downto 896) <= data_in7; 
big_out(895 downto 768) <= data_in6; 
big_out(767 downto 640) <= data_in5; 
big_out(639 downto 512) <= data_in4; 
big_out(511 downto 384) <= data_in3; 
big_out(383 downto 256) <= data_in2; 
big_out(255 downto 128) <= data_in1; 
big_out(127 downto 0) <= data_in0; 

data_out <= big_out(SEL_SBOX*128+127 downto SEL_SBOX*128);

--process(SEL_SBOX) begin
--case SEL_SBOX is
--    when 0      =>  data_out <= data_in0;
--    when 1      =>  data_out <= data_in1;
--    when 2      =>  data_out <= data_in2;
--    when 3      =>  data_out <= data_in3;
--    when 4      =>  data_out <= data_in4;
--    when 5      =>  data_out <= data_in5;
--    when 6      =>  data_out <= data_in6;
--    when 7      =>  data_out <= data_in7;
--    when others =>  data_out <= data_in0;
--end case;

--end process;

end Behavioral;
