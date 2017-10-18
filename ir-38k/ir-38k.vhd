-- VHDL for ir-38k

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ir_38k is
  port(DIN:  in  STD_LOGIC;
       CLK:  in STD_LOGIC;
       DOUT: out STD_LOGIC
       );
end ir_38k;

architecture BEHAVIORAL of ir_38k is
	signal REAL_CLK : std_logic;
	component clk_38k is
		port(ICLK: in  STD_LOGIC;
			OCLK:  out STD_LOGIC
			);
	end component;
begin
	RCLK : clk_38k port map(ICLK => CLK, OCLK => REAL_CLK);
	DOUT <= DIN and REAL_CLK;
end BEHAVIORAL;
