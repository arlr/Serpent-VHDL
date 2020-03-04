----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 19:26:35
-- Design Name: 
-- Module Name: TB_SBox_Medium - Behavioral
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

entity TB_SBox_Medium is
--  Port ( );
end TB_SBox_Medium;

architecture Behavioral of TB_SBox_Medium is
-- S_Box
component SBox_Medium0 is
    Port ( 
    -- IN
    data_in : in std_logic_vector(31 downto 0);
    -- OUT
    data_out : out std_logic_vector(31 downto 0)
    );
end component;


signal data_in : std_logic_vector(31 downto 0);
signal data_out : std_logic_vector(31 downto 0);

begin

dut : SBox_Medium0

port map (
    data_in => data_in,
    data_out => data_out);

process begin


        -- data_in == 0  
        data_in <= "00000000000000000000000000000000";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100110011" report "Assertion violation." severity error;
            
        
        -- data_in == 1  
        data_in <= "00000000000000000000000000000001";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100111000" report "Assertion violation." severity error;
            
        
        -- data_in == 2  
        data_in <= "00000000000000000000000000000010";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100111111" report "Assertion violation." severity error;
            
        
        -- data_in == 3  
        data_in <= "00000000000000000000000000000011";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100110001" report "Assertion violation." severity error;
            
        
        -- data_in == 4  
        data_in <= "00000000000000000000000000000100";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100111010" report "Assertion violation." severity error;
            
        
        -- data_in == 5  
        data_in <= "00000000000000000000000000000101";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100110110" report "Assertion violation." severity error;
            
        
        -- data_in == 6  
        data_in <= "00000000000000000000000000000110";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100110101" report "Assertion violation." severity error;
            
        
        -- data_in == 7  
        data_in <= "00000000000000000000000000000111";  
        wait for 10 ns;  
        assert data_out = "00110011001100110011001100111011" report "Assertion violation." severity error;
            
    
end process;


end Behavioral;
