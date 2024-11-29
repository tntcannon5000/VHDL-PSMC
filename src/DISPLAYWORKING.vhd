library IEEE;           -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;

entity DISPLAY is             -- Port IO Declarations
port (
	CLK   : in std_logic;
	RES   : in std_logic;
	HEXA  : in std_logic_vector(3 downto 0);
	HEXB  : in std_logic_vector(3 downto 0);
	HEXC  : in std_logic_vector(3 downto 0);
	HEXD  : in std_logic_vector(3 downto 0);
	DE    : in std_logic;
	DIGIT : out std_logic_vector(7 downto 0);		-- LED DISPLAY VALUE
	DIGEN : out std_logic_vector(3 downto 0)		-- LED DISPLAY ENABLE
); 
end DISPLAY;

architecture Behavioral of DISPLAY is

signal targetsegment : natural := 0;          -- signal to determine which display segment is being targeted at a given point in time
signal count : natural := 0;                  -- internal counter to count up until 1/4 of 1ms (DE's period) allowing for each of the 4 segments to be updated in time
signal currentinput : std_logic_vector(3 downto 0);              -- signal to map a given HEX input to the corresponding logic vector for the display value (DIGIT) using MUX code

begin
    
    currentinput <= HEXD when (targetsegment = 0) else                -- determine which display segment is being targeted at a given point in time
                    HEXC when (targetsegment = 1) else
                    HEXB when (targetsegment = 2) else
                    HEXA when (targetsegment = 3);
                    
           --987654321  
    DIGIT <= "10001000" when (currentinput = "0000") else       -- map each binary input to the correct list of segment activations to represent desired output
             "11011011" when (currentinput = "0001") else     -- each bit in the logic vectors targets one of the different segments in each 7 segment display. Mapping information available in UCF file.
             "10100010" when (currentinput = "0010") else
             "10010010" when (currentinput = "0011") else
             "11010001" when (currentinput = "0100") else
             "10010100" when (currentinput = "0101") else
             "10000100" when (currentinput = "0110") else
             "11011010" when (currentinput = "0111") else
             "10000000" when (currentinput = "1000") else
             "11010000" when (currentinput = "1001") else
             
             "10100100";
    
    DIGEN <= "0111" when (targetsegment = 0) else               -- target the correct 7 segment display (active low)
             "1011" when (targetsegment = 1) else
             "1101" when (targetsegment = 2) else
             "1110" when (targetsegment = 3);
    
process(CLK, RES, DE)                   
  begin
    if RES = '1' then	-- Function to reset the component if RES or LD goes high.
       count <= 0;
       targetsegment <= 0;
    elsif rising_edge(CLK) then    -- On a rising edge
      count <= count + 1;	   -- Increment the count
      if (count = 12499) then        -- Once 12500 clock cycles have passed (250ns or 1/4 of DE)
        targetsegment <= targetsegment +1;     -- incremeent the targetsegment signl, which will change which of the 4 display segments is being targeted
        count <= 0;                     -- reset the count to wait 250ns more
        if targetsegment = 3 then           -- loop back targetsegment to the first 7 segment display
            targetsegment <= 0;
        end if;
      end if;               
    end if;
  end process;

end Behavioral;
