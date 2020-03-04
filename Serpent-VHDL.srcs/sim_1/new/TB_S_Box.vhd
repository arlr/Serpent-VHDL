----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 15:04:03
-- Design Name: 
-- Module Name: TB_S_Box - Behavioral
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

entity TB_S_Box is
--  Port ( );
end TB_S_Box;

architecture Behavioral of TB_S_Box is

-- S_Box
component S_Box1 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    -- OUT
    data_out : out std_logic_vector(3 downto 0)
    );
end component;


signal clk : std_logic := '0';
signal data_in : std_logic_vector(3 downto 0);
signal data_out : std_logic_vector(3 downto 0);

begin
dut : s_box1

port map ( clk => clk,
    data_in => data_in,
    data_out => data_out);

clk <= not clk after 5 ns; 


process begin 

    -- data_in == 0
    data_in <= "0000";
    wait for 10 ns;
    
    

    -- data_in == 1
    data_in <= "0001";
    wait for 10 ns;
    
    

    -- data_in == 2
    data_in <= "0010";
    wait for 10 ns;
    
    

    -- data_in == 3
    data_in <= "0011";
    wait for 10 ns;
    
    

    -- data_in == 4
    data_in <= "0100";
    wait for 10 ns;
    
    

    -- data_in == 5
    data_in <= "0101";
    wait for 10 ns;
    
    

    -- data_in == 6
    data_in <= "0110";
    wait for 10 ns;
    
    

    -- data_in == 7
    data_in <= "0111";
    wait for 10 ns;
    
    

    -- data_in == 8
    data_in <= "1000";
    wait for 10 ns;
    
    

    -- data_in == 9
    data_in <= "1001";
    wait for 10 ns;
    
    

    -- data_in == 10
    data_in <= "1010";
    wait for 10 ns;
    
    

    -- data_in == 11
    data_in <= "1011";
    wait for 10 ns;
    
    

    -- data_in == 12
    data_in <= "1100";
    wait for 10 ns;
    
    

    -- data_in == 13
    data_in <= "1101";
    wait for 10 ns;
    
    

    -- data_in == 14
    data_in <= "1110";
    wait for 10 ns;
    
    

    -- data_in == 15
    data_in <= "1111";
    wait for 10 ns;
    
end process;
end Behavioral;
