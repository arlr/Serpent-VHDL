----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2020 07:28:31
-- Design Name: 
-- Module Name: KeyExpansionAsync - Behavioral
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

entity KeyExpansionAsync is
  Port (
    -- IN
    key : in std_logic_vector(255 downto 0);
    addr : in integer range 0 to 131 := 0;
    -- OUT
    val_wi : out std_logic_vector(31 downto 0)
     );
end KeyExpansionAsync;

architecture Behavioral of KeyExpansionAsync is
type RAM_t is array (139 downto 0) of std_logic_vector(31 downto 0);

begin


process(key, addr) 
    variable RAM_KeyExp : RAM_t := (others => (others =>'0'));
    constant phi : std_logic_vector(31 downto 0) := x"9e3779b9" ;
begin
            RAM_KeyExp := (others => (others =>'0'));
            RAM_KeyExp(0) := key(31 downto 0);
            RAM_KeyExp(1) := key(63 downto 32);
            RAM_KeyExp(2) := key(95 downto 64);
            RAM_KeyExp(3) := key(127 downto 96);
            RAM_KeyExp(4) := key(159 downto 128);
            RAM_KeyExp(5) := key(191 downto 160);
            RAM_KeyExp(6) := key(223 downto 192);
            RAM_KeyExp(7) := key(255 downto 224);
            
            for i in 8 to 139 loop
                RAM_KeyExp(i) := to_stdlogicvector( to_bitvector( RAM_KeyExp(i-8) xor RAM_KeyExp(i-5) xor RAM_KeyExp(i-3) xor RAM_KeyExp(i-1)  xor phi xor std_logic_vector(to_unsigned(i-8, 32)) )  rol 11 );
            end loop;
            val_wi <= RAM_KeyExp(addr+8);

end process;


end Behavioral;
