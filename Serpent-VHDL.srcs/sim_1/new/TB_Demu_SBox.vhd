----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2020 16:33:31
-- Design Name: 
-- Module Name: TB_Demu_SBox - Behavioral
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

entity TB_Demu_SBox is
--  Port ( );
end TB_Demu_SBox;

architecture Behavioral of TB_Demu_SBox is

component Demu_S_Box is
    Port ( 
    -- IN
    data_in0 : in std_logic_vector(3 downto 0);
    data_in1 : in std_logic_vector(3 downto 0);
    data_in2 : in std_logic_vector(3 downto 0);
    data_in3 : in std_logic_vector(3 downto 0);
    data_in4 : in std_logic_vector(3 downto 0);
    data_in5 : in std_logic_vector(3 downto 0);
    data_in6 : in std_logic_vector(3 downto 0);
    data_in7 : in std_logic_vector(3 downto 0);
    
    SEL_SBOX : in std_logic_vector(2 downto 0); -- 8 possibilités
    clk : in std_logic;
    -- OUT
    data_out : out std_logic_vector(3 downto 0)
    );
end component;


signal data_in0 : std_logic_vector(3 downto 0) :="0000" ;
signal data_in1 : std_logic_vector(3 downto 0) :="0001" ;
signal data_in2 : std_logic_vector(3 downto 0) :="0010";
signal data_in3 : std_logic_vector(3 downto 0) :="0011";
signal data_in4 : std_logic_vector(3 downto 0) :="0100";
signal data_in5 : std_logic_vector(3 downto 0) :="0101";
signal data_in6 : std_logic_vector(3 downto 0) :="0110";
signal data_in7 : std_logic_vector(3 downto 0) :="0111";

signal clk :  std_logic := '0';
signal sel_sbox : std_logic_vector(2 downto 0);
signal data_out : std_logic_vector(3 downto 0);


begin

dut: demu_s_box

port map(
    clk => clk,
    sel_sbox => sel_sbox,
    data_out => data_out,
    data_in0 => data_in0,
    data_in1 => data_in1,
    data_in2 => data_in2,
    data_in3 => data_in3,
    data_in4 => data_in4,
    data_in5 => data_in5,
    data_in6 => data_in6,
    data_in7 => data_in7
    );
    
clk <= not clk after 5 ns; 
    
process begin

    -- SEL_BOX == 0
    SEL_SBOX <= "000";
    wait for 10 ns;
    
    

    -- SEL_BOX == 1
    SEL_SBOX <= "001";
    wait for 10 ns;
    
    

    -- SEL_BOX == 2
    SEL_SBOX <= "010";
    wait for 10 ns;
    
    

    -- SEL_BOX == 3
    SEL_SBOX <= "011";
    wait for 10 ns;
    
    

    -- SEL_BOX == 4
    SEL_SBOX <= "100";
    wait for 10 ns;
    
    

    -- SEL_BOX == 5
    SEL_SBOX <= "101";
    wait for 10 ns;
    
    

    -- SEL_BOX == 6
    SEL_SBOX <= "110";
    wait for 10 ns;
    
    

    -- SEL_BOX == 7
    SEL_SBOX <= "111";
    wait for 10 ns;
    


end process;
    


end Behavioral;
