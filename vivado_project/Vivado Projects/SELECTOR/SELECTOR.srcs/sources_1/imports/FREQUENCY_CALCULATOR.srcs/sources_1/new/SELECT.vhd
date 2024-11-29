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
    process(SW, X1, X10, X100, X1000, X10000, X100000, ERR)
        begin
            case SW is
            when "01" => 
            LED <= "01";
            DA <= X1;
            DB <= X10;
            DC <= X100;
            DD <= X1000;
            
            when "10" =>
            LED <= "10";
            DA <= X10;
            DB <= X100;
            DC <= X1000;
            DD <= X10000;
            
            when "11" =>
            LED <= "11";
            DA <= X100;
            DB <= X1000;
            DC <= X10000;
            DD <= X100000;
            
            when OTHERS =>
            LED <= "00";
            DA <= "0000";
            DB <= "0000";
            DC <= "0000";
            DD <= "0000";
        end case;
        if ERR = '1' then
            LED <= "00";
            DA <= "0000";
            DB <= "0000";
            DC <= "0000";
            DD <= "0000";
        end if;
    end process;            
end Behavioral;
