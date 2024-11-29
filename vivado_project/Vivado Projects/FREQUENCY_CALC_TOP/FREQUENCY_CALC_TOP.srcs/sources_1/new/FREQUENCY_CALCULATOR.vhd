
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FREQUENCY_CALCULATOR is
    port ( 
      SW : in unsigned (1 downto 0);
      SI : in std_logic := '0';
      CLK : in  std_logic := '0';      
      RES : in std_logic := '0';
      DA : out unsigned(3 downto 0);
      DB : out unsigned(3 downto 0);
      DC : out unsigned(3 downto 0);
      DD : out unsigned(3 downto 0);
      DE : out std_logic;
      LED : out unsigned (1 downto 0)   
      );
end FREQUENCY_CALCULATOR;

architecture Behavioral of FREQUENCY_CALCULATOR is

signal CEIN : std_logic;
signal CEQOUT: std_logic;
signal OF1 : std_logic;
signal OF2 : std_logic;
signal OF3 : std_logic;
signal OF4 : std_logic;
signal OF5 : std_logic;
signal OF6 : std_logic;
signal QOUT1: unsigned(3 downto 0);
signal QOUT2: unsigned(3 downto 0);
signal QOUT3: unsigned(3 downto 0);
signal QOUT4: unsigned(3 downto 0);
signal QOUT5: unsigned(3 downto 0);
signal QOUT6: unsigned(3 downto 0);
signal LDOUT : std_logic;
signal ERROUT : std_logic;
signal X1_OUT : unsigned(3 downto 0);
signal X10_OUT : unsigned(3 downto 0);
signal X100_OUT : unsigned(3 downto 0);
signal X1000_OUT : unsigned(3 downto 0);
signal X10000_OUT : unsigned(3 downto 0);
signal X100000_OUT : unsigned(3 downto 0);


component DIV50K is
    port ( 
      CLK : in  std_logic ;      
      RES : in std_logic;
      LD   : out  std_logic      
      );
end component;

component DIV10 is
    port ( 
      CE : in  std_logic ;           
      RES : in std_logic;
      CLK : in std_logic;
      Q_out : out unsigned(3 downto 0);
      OFLOW : out std_logic
      );
end component;

component REGI is   
    port (
		LD : in std_logic;
		Q1_in : in unsigned(3 downto 0);
		Q2_in : in unsigned(3 downto 0);
		Q3_in : in unsigned(3 downto 0);
		Q4_in : in unsigned(3 downto 0);
		Q5_in : in unsigned(3 downto 0);
		Q6_in : in unsigned(3 downto 0);
		OFlow : in std_logic;
		CLK : in std_logic;
		RES : in std_logic;      
		ones : out unsigned(3 downto 0);
		tens : out unsigned(3 downto 0);
		huns : out unsigned(3 downto 0);
		thou : out unsigned(3 downto 0);
		tenthou : out unsigned (3 downto 0);
		hunthou: out unsigned (3 downto 0);
		ERR : out std_logic      
      );
end component;

component SELECTOR is
    Port ( X1 : in unsigned(3 downto 0); 
           X10 : in unsigned(3 downto 0);
           X100 : in unsigned(3 downto 0);
           X1000 : in unsigned(3 downto 0);
           X10000 : in unsigned(3 downto 0);
           X100000 : in unsigned(3 downto 0);
           SW : in unsigned (1 downto 0);
           ERR : in std_logic;
           DA : out unsigned(3 downto 0);
           DB : out unsigned(3 downto 0);
           DC : out unsigned(3 downto 0);
           DD : out unsigned(3 downto 0);
           LED : out unsigned (1 downto 0)
           );
end component;

begin
    U_DIV50K : DIV50K port map (CLK, RES, LDOUT);
    U_DIV10_1 : DIV10 port map (CEIN, RES, CLK, QOUT1, OF1);
    U_DIV10_2 : DIV10 port map (OF1, RES, CLK, QOUT2, OF2);
    U_DIV10_3 : DIV10 port map (OF2, RES, CLK, QOUT3, OF3);
    U_DIV10_4 : DIV10 port map (OF3, RES, CLK, QOUT4, OF4);
    U_DIV10_5 : DIV10 port map (OF4, RES, CLK, QOUT5, OF5);
    U_DIV10_6 : DIV10 port map (OF5, RES, CLK, QOUT6, OF6);
    U_REGI : REGI port map (LDOUT, QOUT1, QOUT2, QOUT3, QOUT4, QOUT5, QOUT6, OF6, CLK, RES, X1_OUT, X10_OUT, X100_OUT, X1000_OUT, X10000_OUT, X100000_OUT, ERROUT);
    U_SELECTOR : SELECTOR port map (X1_OUT, X10_OUT, X100_OUT, X1000_OUT, X10000_OUT, X100000_OUT, SW, ERROUT, DA, DB, DC, DD, LED);
    
    process(CLK)
    begin
        if rising_edge(CLK) then
            CEQOUT <= NOT SI;
            DE <= LDOUT;
        else
        end if;
    
    end process;
    
    CEIN <= CEQOUT AND SI;
    
end Behavioral;
