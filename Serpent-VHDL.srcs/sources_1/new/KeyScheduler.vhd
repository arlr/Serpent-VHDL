----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2020 15:15:42
-- Design Name: 
-- Module Name: KeyScheduler - Behavioral
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

entity KeyScheduler is
Port ( 
    -- IN
    key : in std_logic_vector(255 downto 0);
    i : in integer range 0 to 32;
    -- OUT
    Ki : out std_logic_vector(127 downto 0)
);
end KeyScheduler;

architecture Behavioral of KeyScheduler is

component KeyExpansionAsync
Port(
    -- IN
    key : in std_logic_vector(255 downto 0);
    addr : in integer range 0 to 31 := 0;
    -- OUT
    val_wi : out std_logic_vector(127 downto 0)
);
end component;

component Sbox_Big0
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Sbox_Big1
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Sbox_Big2
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Sbox_Big3
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Sbox_Big4
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Sbox_Big5
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Sbox_Big6
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Sbox_Big7
Port (
    -- IN
    data_in : in std_logic_vector(127 downto 0 );
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component Demu_S_Box
    Port ( 
    -- IN
    data_in0 : in std_logic_vector(127 downto 0);
    data_in1 : in std_logic_vector(127 downto 0);
    data_in2 : in std_logic_vector(127 downto 0);
    data_in3 : in std_logic_vector(127 downto 0);
    data_in4 : in std_logic_vector(127 downto 0);
    data_in5 : in std_logic_vector(127 downto 0);
    data_in6 : in std_logic_vector(127 downto 0);
    data_in7 : in std_logic_vector(127 downto 0);
    
    SEL_SBOX : in integer range 0 to 7 ; -- 8 possibilités
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;



-- Définition du type mémoire
type memoire_t is array (131 downto 0) of std_logic_vector(31 downto 0);

-- KeyExpand
signal OUT_EXP : std_logic_vector(127 downto 0);
-- SBOX
signal vec_SBOX : std_logic_vector(127 downto 0);
signal IN_SBOX : std_logic_vector(127 downto 0);
signal OUT_SBOX0 : std_logic_vector(127 downto 0);
signal OUT_SBOX1 : std_logic_vector(127 downto 0);
signal OUT_SBOX2 : std_logic_vector(127 downto 0);
signal OUT_SBOX3 : std_logic_vector(127 downto 0);
signal OUT_SBOX4 : std_logic_vector(127 downto 0);
signal OUT_SBOX5 : std_logic_vector(127 downto 0);
signal OUT_SBOX6 : std_logic_vector(127 downto 0);
signal OUT_SBOX7 : std_logic_vector(127 downto 0);
signal SELECT_SBOX : integer range 0 to 7; -- 8 possibilités
signal VAL_SBOX : std_logic_vector(127 downto 0);



begin

SELECT_SBOX <= (3 - i) mod 8;

-- ======================== PORT MAP ========================

KeyExpAsync : KeyExpansionAsync port map(key => key, addr => i, val_wi => IN_SBOX);

SBoxBig0 : Sbox_Big0 port map( data_in => IN_SBOX, data_out => OUT_SBOX0);
SBoxBig1 : Sbox_Big1 port map( data_in => IN_SBOX, data_out => OUT_SBOX1);
SBoxBig2 : Sbox_Big2 port map( data_in => IN_SBOX, data_out => OUT_SBOX2);
SBoxBig3 : Sbox_Big3 port map( data_in => IN_SBOX, data_out => OUT_SBOX3);
SBoxBig4 : Sbox_Big4 port map( data_in => IN_SBOX, data_out => OUT_SBOX4);
SBoxBig5 : Sbox_Big5 port map( data_in => IN_SBOX, data_out => OUT_SBOX5);
SBoxBig6 : Sbox_Big6 port map( data_in => IN_SBOX, data_out => OUT_SBOX6);
SBoxBig7 : Sbox_Big7 port map( data_in => IN_SBOX, data_out => OUT_SBOX7);

Demu_SBox : Demu_S_Box port map( data_in0 => OUT_SBOX0,
                            data_in1 => OUT_SBOX1,
                            data_in2 => OUT_SBOX2, 
                            data_in3 => OUT_SBOX3, 
                            data_in4 => OUT_SBOX4, 
                            data_in5 => OUT_SBOX5, 
                            data_in6 => OUT_SBOX6, 
                            data_in7 => OUT_SBOX7, 
                            SEL_SBOX => SELECT_SBOX, 
                            data_out => Ki );



end Behavioral;
