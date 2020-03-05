----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2020 08:43:49
-- Design Name: 
-- Module Name: Sbox_Big4 - Behavioral
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

entity Sbox_Big4 is
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end Sbox_Big4;

architecture Behavioral of Sbox_Big4 is

-- SBox_Medium4
component SBox_Medium4 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;

-- Signaux qui vont en entrées des sbox_Medium
signal SBox_IN_Nb0 : std_logic_vector(31 downto 0); -- Sbox MSB
signal SBox_IN_Nb1 : std_logic_vector(31 downto 0);
signal SBox_IN_Nb2 : std_logic_vector(31 downto 0);
signal SBox_IN_Nb3 : std_logic_vector(31 downto 0); -- Sbox LSB

-- Signaux qui vont en sorties des sbox_Medium
signal SBox_OUT_Nb0 : std_logic_vector(31 downto 0); -- Sbox MSB
signal SBox_OUT_Nb1 : std_logic_vector(31 downto 0);
signal SBox_OUT_Nb2 : std_logic_vector(31 downto 0);
signal SBox_OUT_Nb3 : std_logic_vector(31 downto 0); -- Sbox LSB

begin

SBox_IN_Nb0 <= data_in(127 downto 96); -- Sbox MSB
SBox_IN_Nb1 <= data_in(95 downto 64);
SBox_IN_Nb2 <= data_in(63 downto 32);
SBox_IN_Nb3 <= data_in(31 downto 0);  -- Sbox LSBs

-- Execuion parralèlle des Sbox_
SBox_Medium_0 : SBox_Medium4
port map(data_in => SBox_IN_Nb0, data_out => SBox_OUT_Nb0);

SBox_Medium_1 : SBox_Medium4
port map(data_in => SBox_IN_Nb1, data_out => SBox_OUT_Nb1);

SBox_Medium_2 : SBox_Medium4
port map(data_in => SBox_IN_Nb2, data_out => SBox_OUT_Nb2);

SBox_Medium_3 : SBox_Medium4
port map(data_in => SBox_IN_Nb3, data_out => SBox_OUT_Nb3);

data_out(127 downto 96) <= SBox_OUT_Nb0;
data_out(95 downto 64) <= SBox_OUT_Nb1;
data_out(63 downto 32) <= SBox_OUT_Nb2;
data_out(31 downto 0) <= SBox_OUT_Nb3;
end Behavioral;
