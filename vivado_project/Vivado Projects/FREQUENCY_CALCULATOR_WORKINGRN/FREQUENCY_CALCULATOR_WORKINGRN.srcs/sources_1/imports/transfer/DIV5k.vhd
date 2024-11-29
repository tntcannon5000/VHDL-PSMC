library ieee;                     -- Include required libraries
use ieee.std_logic_1164.all;

Entity DIV50K is                    -- Entity Declaration
    port ( 
      CLK : in  std_logic;      
      RES : in std_logic := '0';
      CRES : in std_logic := '0';
      LD   : out  std_logic := '0'      
      );
end DIV50K;

architecture behav of DIV50K is     -- Architecture Declaration 
begin
  
  process(CLK, RES)                   
  variable count : natural := 0;  	-- Variable Declaration
  begin
    if RES = '1' OR CRES = '1' then	-- Function to reset the component if RES or LD goes high.
       LD <= '0';
	   count := 0;
    elsif rising_edge(CLK) then    -- On a rising edge
      count := count + 1;	   -- Increment the count
      LD <= '0';                   -- Pull LD low
      if (count = 50000) then        -- Once 5000 clock cycles have passed
        LD <= '1';		   -- Pull LD high
        count := 0;                -- Reset count
      end if;               
    end if;
  end process;
end behav;
