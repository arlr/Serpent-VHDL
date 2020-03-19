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
use IEEE.numeric_std.all;

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
    i : in integer range 0 to 131 := 0;
    -- OUT
    wi : out std_logic_vector(31 downto 0)
    );
end KeyExpansion;

architecture Behavioral of KeyExpansion is
type fifo is array (8 downto 0) of std_logic_vector(31 downto 0);
type state_t is (init, run);
signal my_fifo : fifo;
signal state : state_t := init;


begin

process(rst, clk) 

    variable old_i : integer range -1 to 131 := -1;
    variable phi : std_logic_vector(31 downto 0) := x"9e3779b9" ;
begin
if rst = '1' then
    my_fifo <= (0 to 8 => (others =>'0')); -- Set to 0 important values
    wi <= (others => '0');
    old_i := 0;
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
            -- Keep only useful values
            if (i /= old_i) then
                wi <= my_fifo(8);
                for j in 0 to 7 loop
                    my_fifo(j) <= my_fifo(j + 1);
                end loop;
                old_i := i;
            end if;
            my_fifo(8) <= to_stdlogicvector( to_bitvector( my_fifo(7) xor my_fifo(5) xor my_fifo(3) xor my_fifo(0)  xor phi xor std_logic_vector(to_unsigned(i, 32)) )  rol 11 );    --Expansion

            --state <= run;            
        
      end case;
 
end if;

end process;


end Behavioral;
