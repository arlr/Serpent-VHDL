----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2020 09:50:45
-- Design Name: 
-- Module Name: ReceiveKey - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ReceiveKey is
    Port ( 
    -- IN
    clk : in std_logic;
    rst : in std_logic;
    bitkey : in std_logic;
    stsp : in std_logic;
    -- OUT
    key : out std_logic_vector(255 downto 0);
    flag_key : out std_logic := '0'
    );
end ReceiveKey;

architecture Behavioral of ReceiveKey is

------------MACHINE ETAT------------
type state_t is (init, reception, calcul);
signal state : state_t := init;
signal cmpt : integer range 0 to 255 := 0; --compteur

begin
Machine_Etat : process(clk, rst)
begin

--if clk'EVENT and (clk = '1' or clk = '0') then
--if rising_edge(clk) or falling_edge(clk) then

-- Front montant
if clk'EVENT and clk ='1' then
    if rst = '1' then 
        state <= init;
        cmpt <= 0;
        flag_key  <= '0';
        key <= (others => '0');
     else 
        case state is 
            when init =>
                if stsp = '1' then
                    state <= reception;
                end if;
                
            when reception => 
                if stsp = '0' then
                
                    if cmpt > 255 then  -- Cas ou la clé dépasserait 256 bits
                        state <= init;
                    else
                        key(cmpt) <= bitKEy;    --Ecrit la clé au fur et à mesure
                        cmpt <= cmpt + 1; -- compteur de bits  
                    end if;
                    
                else
                    state <= calcul;
                end if;
            
            when calcul =>
                if cmpt /= 255 then
                    key(cmpt) <= '1'; -- Le fait d'ecrire une taille indique au prochain composant que la clé est prête
                end if;
                flag_key <= '1'; -- indique que la clé est prête 
                state <= init;
                
        end case;
     end if;     
end if;          

-- Front descandant
if clk'EVENT and clk ='0' then
    if rst = '1' then 
        state <= init;
        cmpt <= 0;
        flag_key  <= '0';
        key <= (others => '0');
     else 
        case state is 
            when init =>
                if stsp = '1' then
                    state <= reception;
                end if;
                
            when reception => 
                if stsp = '0' then
                
                    if cmpt > 255 then  -- Cas ou la clé dépasserait 256 bits
                        state <= init;
                    else
                        key(cmpt) <= bitKEy;    --Ecrit la clé au fur et à mesure
                        cmpt <= cmpt + 1; -- compteur de bits  
                    end if;
                    
                else
                    state <= calcul;
                end if;
            
            when calcul =>
                if cmpt /= 255 then
                    key(cmpt) <= '1'; -- Le fait d'ecrire une taille indique au prochain composant que la clé est prête
                end if;
                flag_key <= '1'; -- indique que la clé est prête 
                state <= init;
                
        end case;
     end if;     
end if;                           
end process;

end Behavioral;
