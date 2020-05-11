--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:36:22 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/SR_Flip_Flop/SR_Flip_Flop_Test_Bench.vhd
-- Project Name:  SR_Flip_Flop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SR_Flip_Flop
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
 
ENTITY SR_Flip_Flop_Test_Bench IS
END SR_Flip_Flop_Test_Bench;
 
ARCHITECTURE behavior OF SR_Flip_Flop_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR_Flip_Flop
    PORT(
         CLK : IN  std_logic;
         S : IN  std_logic;
         R : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal S : std_logic := '0';
   signal R : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR_Flip_Flop PORT MAP (
          CLK => CLK,
          S => S,
          R => R,
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
      S<='0' ; R<='0' ; wait for 100 ns;	
		S<='0' ; R<='1' ; wait for 100 ns;	
		S<='1' ; R<='0' ; wait for 100 ns;	
		S<='1' ; R<='1' ; wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
