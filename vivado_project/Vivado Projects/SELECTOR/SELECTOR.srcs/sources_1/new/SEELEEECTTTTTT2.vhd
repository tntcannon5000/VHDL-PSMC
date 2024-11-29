library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SELECTOR is
    Port ( X1 : in unsigned(3 downto 0); 
           X10 : in unsigned(3 downto 0);
           X100 : in unsigned(3 downto 0);
           X1000 : in unsigned(3 downto 0);
           X10000 : in unsigned(3 downto 0);
           X100000 : in unsigned(3 downto 0);
           SW : in unsigned (1 downto 0);
           ERR : in std_logic;
           DA : out unsigned(3 downto 0);
           DB : out unsigned(3 downto 0);
           DC : out unsigned(3 downto 0);
           DD : out unsigned(3 downto 0);
           LED : out unsigned (1 downto 0)
           );
end SELECTOR;

architecture Behavioral of SELECTOR is
begin
               
end Behavioral;
