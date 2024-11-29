library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DISPLAY_TB is
end DISPLAY_TB;

architecture Behavioral of DISPLAY_TB is

component DISPLAY is
port (
	CLK   : in std_logic;
	RES   : in std_logic;		-- display clock, reset
	HEXA  : in std_logic_vector(3 downto 0);
	HEXB  : in std_logic_vector(3 downto 0);
	HEXC  : in std_logic_vector(3 downto 0);
	HEXD  : in std_logic_vector(3 downto 0);
	DE    : in std_logic;
	DIGIT : out std_logic_vector(7 downto 0);		-- LED DISPLAY VALUE
	DIGEN : out std_logic_vector(3 downto 0)		-- LED DISPLAY ENABLE
); 
end component;

signal clockin : std_logic := '1';
signal resin : std_logic := '0';
signal hexain : std_logic_vector(3 downto 0) := "1001";
signal hexbin : std_logic_vector(3 downto 0) := "0110";
signal hexcin : std_logic_vector(3 downto 0) := "0010";
signal hexdin : std_logic_vector(3 downto 0) := "0001";
signal dein : std_logic;
signal digitout : std_logic_vector(7 downto 0);
signal digenout : std_logic_vector(3 downto 0);

begin

clockin <= NOT clockin after 10ns;

U_DISPLAY : DISPLAY port map(clockin, resin, hexain, hexbin, hexcin, hexdin, dein, digitout, digenout);

end Behavioral;
