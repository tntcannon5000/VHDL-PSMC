library ieee;                     -- Include required libraries
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity REGI is                    -- Entity Declaration
    port (
		LD : in std_logic := '0'; -- LD input from DIV50k
		Q1_in : in unsigned(3 downto 0) := (others => '0'); -- Q inputs from each DIV10's current count value
		Q2_in : in unsigned(3 downto 0) := (others => '0');
		Q3_in : in unsigned(3 downto 0):= (others => '0');
		Q4_in : in unsigned(3 downto 0):= (others => '0');
		Q5_in : in unsigned(3 downto 0):= (others => '0');
		Q6_in : in unsigned(3 downto 0):= (others => '0');
		OFlow : in std_logic := '0'; -- OFLow input if the last DIV10 flows past 9
		CLK : in std_logic := '0';
		RES : in std_logic := '0'; 
		CRES : in std_logic := '0';      
		ones : out unsigned(3 downto 0); -- Outputs to SYNC
		tens : out unsigned(3 downto 0);
		huns : out unsigned(3 downto 0);
		thou : out unsigned(3 downto 0);
		tenthou : out unsigned (3 downto 0);
		hunthou: out unsigned (3 downto 0);
		ERR : out std_logic := '0'
      );
end REGI;
    
architecture behav of REGI is

begin
  process(CLK, RES, OFlow)	-- Beginning process sensitive to the CLK and RESET
    begin
      if RES = '1' then				-- Reset function for RES
        ones <= (others => '0');
		tens <= (others => '0');
		huns <= (others => '0');
		thou <= (others => '0');
     	tenthou <= (others => '0');
		hunthou <= (others => '0');
	    ERR <= '0';
	  elsif CRES = '1' then			-- Function for when LD signal is received
	     ERR <= '0';
      elsif rising_edge(CLK)then -- 
        if OFlow = '1' then  -- If rising edge of CLK, evaluate OFLow from last DIV10, and output to ERR if overflow has occurred
            ERR <= '1';
        elsif OFlow = '0' and LD = '1' then -- If OFLow has not happened and LD is 1, output the Q in values from each DIV10 to the Selector component.
				ones <= Q1_in;
				tens <= Q2_in;
				huns <= Q3_in;
				thou <= Q4_in;
				tenthou <= Q5_in;
				hunthou <= Q6_in;
			end if;
	   end if;
end process;
end behav;