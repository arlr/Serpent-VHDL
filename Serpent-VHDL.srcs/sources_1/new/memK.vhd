----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 09:32:45
-- Design Name: 
-- Module Name: memK - Behavioral
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

entity memK is
  Port (
    -- IN
    rst : in std_logic;
    clk : in std_logic;
    rw : in std_logic;  -- 1  == Write
    val_in : in std_logic_vector(127 downto 0);
    addr : in integer range 0 to 32;
    -- OUT
    val_out : out std_logic_vector(127 downto 0)
    );
end memK;

architecture Behavioral of memK is


type RAM_t is array (32 downto 0) of std_logic_vector(127 downto 0);
signal RAM_K : RAM_t;


begin

process(rst, clk) begin

if (rst = '1') then
    RAM_k <= (others => (others => '0'));
    val_out <= (others => '0');
    
elsif (clk'event and clk = '1') then
    case rw is
        when '1' =>
            -- Ecriture
            RAM_K(addr) <= val_in;
        when '0' => 
            val_out <= RAM_K(addr);
     end case;
end if;

end process;

end Behavioral;
