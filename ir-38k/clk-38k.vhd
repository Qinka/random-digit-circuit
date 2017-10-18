library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity clk_38k is
  port(ICLK: in  STD_LOGIC;
       OCLK:  out STD_LOGIC
       );
end clk_38k;

architecture Behavioral of clk_38k is
	constant overflow_l : INTEGER := 1315; -- 100MHz / 38kHZ / 2 - 1
	signal OUT_CLK : STD_LOGIC := '0';
	signal counter : INTEGER := 0;
begin
	OCLK <= OUT_CLK;
	process(ICLK)
	begin
		if rising_edge(ICLK) then
			counter <= counter + 1;
			if counter > overflow_l then
				OUT_CLK <= not OUT_CLK;
				counter <= 0;
			end if;
		end if;
	end process;
end Behavioral;

