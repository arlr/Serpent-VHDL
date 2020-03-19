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
    clk : in std_logic;
    rst : in std_logic;
    key : in std_logic_vector(255 downto 0);
    addr_mem : in integer range 0 to 32;
    -- OUT
    Ki : out std_logic_vector(127 downto 0)
);
end KeyScheduler;

architecture Behavioral of KeyScheduler is

component KeyExpansion
Port(
    -- IN
    key : in std_logic_vector(255 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    i : in integer range 0 to 131 := 0;
    -- OUT
    wi : out std_logic_vector(31 downto 0)
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
    clk : in std_logic;
    -- OUT
    data_out : out std_logic_vector(127 downto 0)
    );
end component;

component memK 
  Port (
    -- IN
    rst : in std_logic;
    clk : in std_logic;
    rw : in std_logic := '0';  -- 1  == Write
    val_in : in std_logic_vector(127 downto 0);
    addr : in integer range 0 to 32;
    -- OUT
    val_out : out std_logic_vector(127 downto 0)
    );
end component;



-- Définition du type mémoire
type memoire_t is array (131 downto 0) of std_logic_vector(31 downto 0);
type state_t is (KeyExpand, sbox, read);
signal Wi_mem : memoire_t;
signal state : state_t := KeyExpand;

-- KeyExpand
signal IN_EXP : integer range 0 to 131 := 0;
signal OUT_EXP : std_logic_vector(31 downto 0);
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
signal SELECT_SBOX : integer range 0 to 7 ; -- 8 possibilités
signal VAL_SBOX : std_logic_vector(127 downto 0);
-- memK
signal rw_memK : std_logic;  -- 1  == Write
signal addr_memK : integer range 0 to 32;
signal val_in_memK : std_logic_vector(127 downto 0);
signal val_out_memK : std_logic_vector(127 downto 0);


begin


-- ======================== PORT MAP ========================

KeyExp : KeyExpansion port map(key => key, clk => clk, rst => rst, i => IN_EXP, wi => OUT_EXP );

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
                            clk => clk, 
                            data_out => VAL_SBOX );
memoire_K : memK port map (rst => rst, clk => clk, rw => rw_memk, addr=> addr_memk, val_in => val_in_memK, val_out => val_out_memk);

process(rst, clk) 

variable ExpandOUT : std_logic_vector(127 downto 0);

begin
if rst = '1' then 
    -- Met la mémoire à 0
    Wi_mem <= (others => (others => '0'));
    IN_EXP <= 0;
    
    state <= KeyExpand;
    
elsif clk'event and clk ='1' then
    case state is
        when KeyExpand =>
            
            for i in 0 to 131 loop
                if i < 131 then
                    IN_EXP <= i;
                else
                    IN_EXP <= 0;
                end if;
                
                if (i > 0) then
                -- Gestion du décallage entre les valeurs demandé et reçu par le KeyExpand
                    Wi_mem(i-1) <= OUT_EXP;
                end if;
            end loop;
            state <= SBOX;
         
         when sbox =>
            rw_memk <= '1';
            for K in 0 to 32 loop
                    
                    vec_SBOX(127 downto 96) <= Wi_mem(K*4+0);
                    vec_SBOX(95 downto 64) <= Wi_mem(K*4+1);
                    vec_SBOX(63 downto 32) <= Wi_mem(K*4+2);
                    vec_SBOX(31 downto 0) <= Wi_mem(K*4+3);
                    IN_SBOX <= vec_SBOX;
                    SELECT_SBOX <= (3-K) mod 8;
                    addr_memk <= K;
                    val_in_memk <= VAL_SBOX;
                    
            end loop;
            state <= read;
         
         when read =>
           rw_memk <= '0';
           Ki <= val_out_memK;


    end case;

end if;
end process;


end Behavioral;
