Library ieee;
Use ieee.std_logic_1164.all;

entity DIV4096 is
port (
	CLK : in std_logic;
	RES : in std_logic;
	MS : out std_logic
); end DIV4096;

architecture behav of DIV4096 is

signal intcount : integer :=0;

begin
process (RES, CLK)
begin
	if falling_edge(CLK) then
		intcount <= intcount +1;
		if (MS = '1') then
			MS <= '0';
		end if;
	if (RES = '1') then
		intcount <= 0;
		MS <= '0';
	elsif (intcount = 4095) then
		MS <= '1';
		intcount <= 0;
	end if;
	end if;
end process;
end behav;
