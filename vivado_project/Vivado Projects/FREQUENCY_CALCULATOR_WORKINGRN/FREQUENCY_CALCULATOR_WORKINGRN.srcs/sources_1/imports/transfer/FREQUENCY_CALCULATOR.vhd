library IEEE;			-- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FREQUENCY_CALCULATOR is		-- Entity Declaration
    port ( 
      SW : in unsigned (1 downto 0);	-- I/O ports as per top level design
      SI : in std_logic := '0';
      CLK : in  std_logic := '0';      
      RES : in std_logic := '0';
      DA : out std_logic_vector(3 downto 0);
      DB : out std_logic_vector(3 downto 0);
      DC : out std_logic_vector(3 downto 0);
      DD : out std_logic_vector(3 downto 0);
      DE : out std_logic;
      LED : out unsigned (1 downto 0)
      );
end FREQUENCY_CALCULATOR;

architecture Behavioral of FREQUENCY_CALCULATOR is

signal CEIN : std_logic:= '0';					-- Signal declarations for all internal connections between all components.
signal CEQOUT: std_logic:= '0';
signal OF1 : std_logic:= '0';
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
signal CYCLERES : std_logic := '0';
signal CYCLEWAIT : std_logic := '0';


component DIV50K is					-- component declarations
    port ( 
      CLK : in  std_logic;      
      RES : in std_logic;
      CRES : in std_logic;
      LD   : out  std_logic      
      );
end component;

component DIV10 is
    port ( 
      CE : in  std_logic;           
      RES : in std_logic;
      CRES : in std_logic;
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
		CRES : in std_logic;      
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
           ERR : in std_logic := '0';
           DA : out std_logic_vector(3 downto 0);
           DB : out std_logic_vector(3 downto 0);
           DC : out std_logic_vector(3 downto 0);
           DD : out std_logic_vector(3 downto 0);
           LED : out unsigned (1 downto 0)
           );
end component;

begin
    U_DIV50K : DIV50K port map (CLK, RES, CYCLERES, LDOUT);					-- component Instantiations for all components used in the FREQUENCY_CALCULATOR
    U_DIV10_1 : DIV10 port map (CEIN, RES, CYCLERES, CLK, QOUT1, OF1); -- DIV10s chained together by outputs going to inputs
    U_DIV10_2 : DIV10 port map (OF1, RES, CYCLERES, CLK, QOUT2, OF2);
    U_DIV10_3 : DIV10 port map (OF2, RES, CYCLERES, CLK, QOUT3, OF3);
    U_DIV10_4 : DIV10 port map (OF3, RES, CYCLERES, CLK, QOUT4, OF4);
    U_DIV10_5 : DIV10 port map (OF4, RES, CYCLERES, CLK, QOUT5, OF5);
    U_DIV10_6 : DIV10 port map (OF5, RES, CYCLERES, CLK, QOUT6, OF6);
    U_REGI : REGI port map (LDOUT, QOUT1, QOUT2, QOUT3, QOUT4, QOUT5, QOUT6, OF6, CLK, RES, CYCLERES, X1_OUT, X10_OUT, X100_OUT, X1000_OUT, X10000_OUT, X100000_OUT, ERROUT);
    U_SELECTOR : SELECTOR port map (X1_OUT, X10_OUT, X100_OUT, X1000_OUT, X10000_OUT, X100000_OUT, SW, ERROUT, DA, DB, DC, DD, LED);

    process(CLK)		-- Proess sensitive to the CLK input
    variable LDCOUNT : integer := 0;
    begin
        if (rising_edge(CLK)) then
            CEQOUT <= NOT SI;		-- Wave synchronisation circuit for input to DIV10s, as per top level diagram.
			CEIN <= CEQOUT AND SI;
            DE <= LDOUT;		-- DE Output from LD signal from div50k
            	
            if LDOUT = '1' then		-- 1 cycle delay before CYCLERES outputs a logic high, once LD is high, allowing for time for REGI to output to SELECTOR.
                CYCLEWAIT <= '1'; -- Delay is created by assigning to a signal and then the signal to the CRES output.
                LDCOUNT := LDCOUNT + 1;
            else
                CYCLEWAIT <= '0';
            end if;
            if LDCOUNT = 1000 then -- Assigning the CYCLERES internal signal to the CRES signal output, to reset all components except the Register output (so SELECTOR can continue to output)
                --CYCLERES <= '1';
                LDCOUNT := 0;
            else
                --CYCLERES <= '0';
            end if;
        end if;
    end process;

end Behavioral;
