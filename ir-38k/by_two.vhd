----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/10/18 11:23:54
-- Design Name: 
-- Module Name: by_two - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity by_two is
    Port ( din1 : in STD_LOGIC;
           din2 : in STD_LOGIC;
           din_w : in STD_LOGIC;
           clk   : in STD_LOGIC;
           dout1 : out STD_LOGIC;
           dout2 : out STD_LOGIC);
end by_two;

architecture Behavioral of by_two is
component  ir_38k is
 port(DIN:  in  STD_LOGIC;
      CLK:  in STD_LOGIC;
      DOUT: out STD_LOGIC
      );
end component;
signal DIN : STD_LOGIC;
signal DOUT : std_loGic;
begin
    IR: ir_38k port map(CLK => CLK,DIN => DIN, DOUT => DOUT);
    DIN <= (DIN1 and DIN_w) or (DIN2 and (not DIN_w));
    DOUT1 <= DOUT;
    DOUT2 <= DOUT;
end Behavioral;
