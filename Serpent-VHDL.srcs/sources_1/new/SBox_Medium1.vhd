----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 22:18:44
-- Design Name: 
-- Module Name: SBox_Medium1 - Behavioral
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

entity SBox_Medium1 is
    Port (
    -- IN
    data_in : in std_logic_vector(31 downto 0 );
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end SBox_Medium1;

architecture Behavioral of SBox_Medium1 is

-- S_Box1
component S_Box1 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(3 downto 0);
    -- OUT
    data_out : out std_logic_vector(3 downto 0)
    );
end component;

-- Signaux qui vont en entrées des sbox
signal SBox_IN_Nb0 : std_logic_vector(3 downto 0); -- Sbox MSB
signal SBox_IN_Nb1 : std_logic_vector(3 downto 0);
signal SBox_IN_Nb2 : std_logic_vector(3 downto 0);
signal SBox_IN_Nb3 : std_logic_vector(3 downto 0);
signal SBox_IN_Nb4 : std_logic_vector(3 downto 0);
signal SBox_IN_Nb5 : std_logic_vector(3 downto 0);
signal SBox_IN_Nb6 : std_logic_vector(3 downto 0);
signal SBox_IN_Nb7 : std_logic_vector(3 downto 0); -- Sbox LSB

-- Signaux qui vont en sorties des sbox
signal SBox_OUT_Nb0 : std_logic_vector(3 downto 0); -- Sbox MSB
signal SBox_OUT_Nb1 : std_logic_vector(3 downto 0);
signal SBox_OUT_Nb2 : std_logic_vector(3 downto 0);
signal SBox_OUT_Nb3 : std_logic_vector(3 downto 0);
signal SBox_OUT_Nb4 : std_logic_vector(3 downto 0);
signal SBox_OUT_Nb5 : std_logic_vector(3 downto 0);
signal SBox_OUT_Nb6 : std_logic_vector(3 downto 0);
signal SBox_OUT_Nb7 : std_logic_vector(3 downto 0); -- Sbox LSB

begin
SBox_IN_Nb0 <= data_in(31 downto 28); -- Sbox MSB
SBox_IN_Nb1 <= data_in(27 downto 24);
SBox_IN_Nb2 <= data_in(23 downto 20);
SBox_IN_Nb3 <= data_in(19 downto 16);
SBox_IN_Nb4 <= data_in(15 downto 12);
SBox_IN_Nb5 <= data_in(11 downto 8);
SBox_IN_Nb6 <= data_in(7 downto 4);
SBox_IN_Nb7 <= data_in(3 downto 0); -- Sbox LSB

-- Execuion parralèlle des Sbox
SBox_0 : S_Box1
port map(data_in => SBox_IN_Nb0, data_out => SBox_OUT_Nb0);

SBox_1 : S_Box1
port map(data_in => SBox_IN_Nb1, data_out => SBox_OUT_Nb1);

SBox_2 : S_Box1
port map(data_in => SBox_IN_Nb2, data_out => SBox_OUT_Nb2);

SBox_3 : S_Box1
port map(data_in => SBox_IN_Nb3, data_out => SBox_OUT_Nb3);

SBox_4 : S_Box1
port map(data_in => SBox_IN_Nb4, data_out => SBox_OUT_Nb4);

SBox_5 : S_Box1
port map(data_in => SBox_IN_Nb5, data_out => SBox_OUT_Nb5);

SBox_6 : S_Box1
port map(data_in => SBox_IN_Nb6, data_out => SBox_OUT_Nb6);

SBox_7 : S_Box1
port map(data_in => SBox_IN_Nb7, data_out => SBox_OUT_Nb7);


data_out(31 downto 28) <= SBox_OUT_Nb0;
data_out(27 downto 24) <= SBox_OUT_Nb1;
data_out(23 downto 20) <= SBox_OUT_Nb2;
data_out(19 downto 16) <= SBox_OUT_Nb3;
data_out(15 downto 12) <= SBox_OUT_Nb4;
data_out(11 downto 8) <= SBox_OUT_Nb5;
data_out(7 downto 4) <= SBox_OUT_Nb6;
data_out(3 downto 0) <= SBox_OUT_Nb7;

end Behavioral;
