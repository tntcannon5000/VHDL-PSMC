

library ieee;                     -- Include required library
use ieee.std_logic_1164.all;

Entity DIV50K_TB is                 -- Entity Declaration
end DIV50K_TB;

architecture behav of DIV50K_TB is  -- Architecture Declaration
 
  signal CLK_i : std_logic := '1'; -- Signal Declarations
  signal LD_i : std_logic;
  signal RES_i : std_logic := '0';
 
 component DIV50K is                  -- Component Declaration
   port ( 
      CLK : in  std_logic ;      
      RES : in std_logic;
      LD   : out  std_logic      
      );
  end component;
  
  begin                           -- Component Port map
    U_DIV50K: DIV50K 
	 port map(
      CLK => CLK_i,
      RES => RES_i,
      LD => LD_i
    );
    
    CLK_i <= not(CLK_i) after 10us;   -- Generate a clock signal of time period 20ns.
    
end behav;