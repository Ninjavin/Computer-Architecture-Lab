--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:52:54 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/D_Flip_Flop/D_Flip_Flop_Test_Bench.vhd
-- Project Name:  D_Flip_Flop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_Flip_Flop
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
 
ENTITY D_Flip_Flop_Test_Bench IS
END D_Flip_Flop_Test_Bench;
 
ARCHITECTURE behavior OF D_Flip_Flop_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_Flip_Flop
    PORT(
         CLK : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_Flip_Flop PORT MAP (
          CLK => CLK,
          D => D,
          Q => Q,
          Qn => Qn
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
      D <= '0' ; wait for 100 ns;	
		D <= '1' ; wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
