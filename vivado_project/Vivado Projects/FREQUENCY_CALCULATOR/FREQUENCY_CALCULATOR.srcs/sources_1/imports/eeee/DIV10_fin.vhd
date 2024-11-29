library ieee;                     -- Include required libraries
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity DIV10 is                    -- Entity Declaration
    port ( 
      CE : in  std_logic ;           
      RES : in std_logic;
      CLK : in std_logic;
      Q_out : out unsigned(3 downto 0);
      OFLOW : out std_logic
      );
end DIV10;

architecture behav of DIV10 is     -- Architecture Declaration
begin
    process(CLK, RES)      
    variable count : unsigned(3 downto 0) := "0000"; -- variable Declaration
    begin
        if RES = '1' then				-- Asynchronus Reset
        
            OFLOW <= '0';
            count := (others => '0');
            Q_out <= (others => '0');
            
        elsif (rising_edge(CLK) and rising_edge(CE)) then		-- If CE is pulled high on a CLK cycle#
        
		    count := count + "0001";		-- Increment the count			
		    if count = "1010" then		-- If the count is equal to 10
		    
              OFLOW <= '1';		-- Pull OFLOW high
              count := "0000";		-- Reset the count	
              		
		    else
		    
			  OFLOW <= '0';
			  
            end if;
            
            Q_out <= count;	-- Output the count as a 4bit bus
            
        end if;
        
    end process;
end behav;
