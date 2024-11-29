library ieee;                     -- Include required libraries
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity DIV10 is                    -- Entity Declaration
    port ( 
      CE : in  std_logic;           
      RES : in std_logic:= '0';
      CRES : in std_logic:= '0';
      CLK : in std_logic;
      Q_out : out unsigned(3 downto 0);
      OFLOW : out std_logic := '0'
            );
end DIV10;

architecture behav of DIV10 is     -- Architecture Declaration
begin
    process(CLK, RES, CE)      
    variable count : unsigned(3 downto 0) := "0000"; -- variable Declaration
    begin
        if RES = '1' then				-- Asynchronus Reset
            OFLOW <= '0';
            count := "0000";
            Q_out <= "0000";
        elsif CRES = '1' then -- if CRES is high, reset the count and overflow, but continue to output the last value. output will be overwritten once counting resumes from 0, once CRES is 0 once more.
            count := "0000";
            OFLOW <= '0';
        elsif (rising_edge(CE)) then		-- If CE is pulled high on a CLK cycle#
		    count := count + "0001";		-- Increment the count
		    if count = "1010" then		-- If the count is equal to 10
              OFLOW <= '1';		-- Pull OFLOW high
              count := "0000";		-- Reset the count	
		    else
			  OFLOW <= '0';
            end if;
        end if;
        if CRES = '0' then -- as long as CRES is 0, output as normal.
              Q_out <= count;	-- Output the count as a 4bit signal
        end if;
    end process;
end behav;
