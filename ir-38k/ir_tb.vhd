--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:56:35 10/18/2017
-- Design Name:   
-- Module Name:   A:/random-digit-circuit/ir-38k//ir_tb.vhd
-- Project Name:  ir-38k
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ir_38k
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ir_tb IS
END ir_tb;
 
ARCHITECTURE behavior OF ir_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ir_38k
    PORT(
         DIN : IN  std_logic;
         CLK : IN  std_logic;
         DOUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIN : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal DOUT : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ir_38k PORT MAP (
          DIN => DIN,
          CLK => CLK,
          DOUT => DOUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		DIN <= '0';
		wait for 9 ms;
		DIN <= '1';
		wait for 4.5 ms;
		-- 0
		DIN <= '0';
		wait for 560 us;
		DIN <= '1';
		wait for 560 us;
		
		-- 1
		DIN <= '0';
		wait for 560 us;
		DIN <= '1';
		wait for 1680 us;
		-- 0
		DIN <= '0';
		wait for 560 us;
		DIN <= '1';
		wait for 560 us;
		
		-- 1
		DIN <= '0';
		wait for 560 us;
		DIN <= '1';
		wait for 1680 us;
		-- 0
		DIN <= '0';
		wait for 560 us;
		DIN <= '1';
		wait for 560 us;
		
		-- 1
		DIN <= '0';
		wait for 560 us;
		DIN <= '1';
		wait for 1680 us;
		

      -- insert stimulus here 

      wait;
   end process;

END;
