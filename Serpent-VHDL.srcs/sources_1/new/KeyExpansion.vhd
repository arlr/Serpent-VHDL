----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2020 16:39:36
-- Design Name: 
-- Module Name: KeyExpansion - Behavioral
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

entity KeyExpansion is
Port ( 
    -- IN
    key : in std_logic_vector(255 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    i : in integer range 0 to 131;
    -- OUT
    wi : out std_logic_vector(31 downto 0)
    );
end KeyExpansion;

architecture Behavioral of KeyExpansion is
type fifo is array (8 downto 0) of std_logic_vector(31 downto 0);
type state_t is (init, run);
signal my_fifo : fifo;
signal state : state_t := init;
signal inter_add : integer range 0 to 9 := 0;    -- adresse interne de la fifo

begin

process(rst, clk) begin
if rst = '1' then
    my_fifo <= (0 to 8 => (others =>'0')); -- Set to 0 important values
    state <= init;
    
elsif clk'event and clk = '1' then
    case state is
        when init => 
            my_fifo(0) <= key(31 downto 0);
            my_fifo(1) <= key(63 downto 32);
            my_fifo(2) <= key(95 downto 64);
            my_fifo(3) <= key(127 downto 96);
            my_fifo(4) <= key(159 downto 128);
            my_fifo(5) <= key(191 downto 160);
            my_fifo(6) <= key(223 downto 192);
            my_fifo(7) <= key(255 downto 224);
            state <= run;
        
        when run =>
            my_fifo(8) <= to_stdlogicvector( to_bitvector(my_fifo(7) xor my_fifo(4) xor my_fifo(2) xor my_fifo(0) xor x"9e3779b9") rol 11 );    --Expansion
            -- Keep only useful values
            for i in 0 to 8 loop
                my_fifo(i) <= my_fifo(i + 1);
            end loop;
            wi <= my_fifo(8);
        
    end case;
end if;

end process;



end Behavioral;
