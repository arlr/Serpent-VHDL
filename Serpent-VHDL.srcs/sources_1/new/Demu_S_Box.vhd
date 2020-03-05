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
    
    SEL_SBOX : in std_logic_vector(2 downto 0); -- 8 possibilités
    clk : in std_logic;
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end Demu_S_Box;

architecture Behavioral of Demu_S_Box is
begin

process(clk) begin
if clk'event  and clk = '1' then
    case SEL_SBOX is
    when "000"      =>  data_out <= data_in0;
    when "001"      =>  data_out <= data_in1;
    when "010"      =>  data_out <= data_in2;
    when "011"      =>  data_out <= data_in3;
    when "100"      =>  data_out <= data_in4;
    when "101"      =>  data_out <= data_in5;
    when "110"      =>  data_out <= data_in6;
    when "111"      =>  data_out <= data_in7;
    when others =>  data_out <= data_in0;
end case;
end if;

end process;

end Behavioral;
