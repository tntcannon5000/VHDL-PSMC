library IEEE; -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;

entity SYNC is	-- Port IO Declarations
    Port ( SYNCIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC;
           RESIN : in STD_LOGIC;
           SYNCOUT : out STD_LOGIC);
end SYNC;

architecture Behavioral of SYNC is

signal internal : std_logic := '0'; -- internal signal behaving as output of first D-FlipFlop and input of 2nd.

begin
    process (CLKIN, RESIN)  -- Beginning process sensitive to the CLK and RESET
    begin
        if (RESIN = '1') then -- Function to reset SYNC Component
            SYNCOUT <= '0'; 
            internal <= '0';
        else if (rising_edge(CLKIN)) then -- On a rising edge of CLK
            internal <= SYNCIN; -- SYNCIN to internal assignment is the first D-Flip Flop.
            SYNCOUT <= internal; -- the assignment of the internal signal outward behaves as the second.
        end if;
        end if;
    end process;
end Behavioral;
