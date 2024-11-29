library IEEE;				-- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity SELECTOR is			-- Entity Declaration
    Port ( X1 : in unsigned(3 downto 0); 		-- Inputs from REGI component
           X10 : in unsigned(3 downto 0);
           X100 : in unsigned(3 downto 0);
           X1000 : in unsigned(3 downto 0);
           X10000 : in unsigned(3 downto 0);
           X100000 : in unsigned(3 downto 0);
           SW : in unsigned (1 downto 0);		-- Input from Switch on FPGA to determine output mode
           ERR : in std_logic := '0';			-- ERR input to determine if error occurred during measurement of frequency
           DA : out std_logic_vector(3 downto 0);	-- Output the 4 selected inputs as a logic vector to the display component.
           DB : out std_logic_vector(3 downto 0);
           DC : out std_logic_vector(3 downto 0);
           DD : out std_logic_vector(3 downto 0);
           LED : out unsigned (1 downto 0)			-- LED Output
           );
end SELECTOR;

architecture Behavioral of SELECTOR is			-- Architecture Declaration
begin
    process(SW, X1, X10, X100, X1000, X10000, X100000, ERR)		-- Case switch process to switch the output based on the input and based on if an error (ERR) has occurred during measurement of frequency
        begin
            case SW is
            when "01" => 
            LED <= "01";
            DA <= std_logic_vector(X1);
            DB <= std_logic_vector(X10);
            DC <= std_logic_vector(X100);
            DD <= std_logic_vector(X1000);
            
            when "10" =>
            LED <= "10";
            DA <= std_logic_vector(X10);
            DB <= std_logic_vector(X100);
            DC <= std_logic_vector(X1000);
            DD <= std_logic_vector(X10000);
            
            when "11" =>
            LED <= "11";
            DA <= std_logic_vector(X100);
            DB <= std_logic_vector(X1000);
            DC <= std_logic_vector(X10000);
            DD <= std_logic_vector(X100000);
            
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
