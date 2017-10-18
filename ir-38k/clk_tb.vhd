--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:08:26 10/18/2017
-- Design Name:   
-- Module Name:   A:/random-digit-circuit/ir-38k//clk_tb.vhd
-- Project Name:  ir-38k
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk_38k
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
 
ENTITY clk_tb IS
END clk_tb;
 
ARCHITECTURE behavior OF clk_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_38k
    PORT(
         ICLK : IN  std_logic;
         OCLK : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ICLK : std_logic := '0';

 	--Outputs
   signal OCLK : std_logic;

   -- Clock period definitions
   constant ICLK_period : time := 10 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_38k PORT MAP (
          ICLK => ICLK,
          OCLK => OCLK
        );

   -- Clock process definitions
   ICLK_process :process
   begin
		ICLK <= '0';
		wait for ICLK_period/2;
		ICLK <= '1';
		wait for ICLK_period/2;
   end process;
 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for ICLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
