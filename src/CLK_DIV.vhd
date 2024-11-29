library IEEE; -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;

entity CLK_DIV is	-- Port IO Declarations
    Port ( MCLK : in std_logic := '0'; -- Initialising value with 0 so NOT function works.
           CLK : out STD_LOGIC);
end CLK_DIV;

architecture Behavioral of CLK_DIV is

begin
    process(MCLK) -- Beginning process sensitive to the MCLK
    variable clkout : std_logic := '0'; -- variable to be processed & assigned to CLK out signal
    begin
    if (rising_edge(MCLK)) then -- every rising edge of master clock
        clkout := NOT clkout; -- inverting clock signal 
    end if;
    CLK <= clkout; -- assigning internal variable to output
end process;
end Behavioral;
