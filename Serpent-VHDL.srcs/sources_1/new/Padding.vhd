----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2020 08:51:29
-- Design Name: 
-- Module Name: Padding - Behavioral
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

entity Padding is
Port (
    -- IN
    key_in : in std_logic_vector(127 downto 0 );
    -- OUT
    key_padded : out std_logic_vector(255 downto 0) := (128 => '1',others => '0')
    );
end Padding;

architecture Behavioral of Padding is
--signal tmp : std_logic_vector(128 downto 0) := ( 127 => '1', others => '0');
begin

--tmp(127 downto 0) <= key_in; 
key_padded(127 downto 0) <= key_in;

end Behavioral;
