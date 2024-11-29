
library ieee;                     -- Include required library
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity DIV10_TB is                 -- Entity Declaration
end DIV10_TB;

architecture behav of DIV10_TB is  -- Architecture Declaration
 
  signal CE_i : std_logic := '0'; -- Signal Declarations
  signal CLK_i : std_logic := '1';  
  signal RES_i : std_logic := '0';
  signal Q_i : unsigned(3 downto 0);
  signal OFLOW_i : std_logic;
  
 
 component DIV10 is                  -- Component Declaration
   port ( 
      CE : in  std_logic ;            
      RES : in std_logic;
      CLK : in std_logic;
      Q_out : out unsigned(3 downto 0);
      OFLOW : out std_logic
      );
  end component;
  
  --signal count2 : natural range 0 to 100;
    
  begin                           -- Component Port map
    U_DIV10: DIV10 port map(CE_i, RES_i, CLK_i, Q_i, OFLOW_i);
    
    CE_i <= not(CE_i) after 100ns;   -- Generate a CE signal of time period 200ns. 
    CLK_i <= not(CLK_i) after 10ns;
    
    process
    begin
    wait for 2039ns;
    RES_i <= '1';
    wait for 20ns;
    RES_i <= '0';
    end process;
    
    
	--CE <= not(CE) after 100ns;
--	 process (clk)
--	 
--	 begin
--	 count2 <= count2 + 1;
--		if count2 = 10 then
--			CE <= '1';
--		elsif count2 = 11 then
--			count2 <= 0;
--			CE <= '1';
--		else
--			CE <= '0';
--		end if;
	--end process;
	 
end behav;