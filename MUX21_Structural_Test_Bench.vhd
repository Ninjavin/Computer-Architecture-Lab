--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:08:40 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/MUX21_Structural/MUX21_Structural_Test_Bench.vhd
-- Project Name:  MUX21_Structural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX21_Structural
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
 
ENTITY MUX21_Structural_Test_Bench IS
END MUX21_Structural_Test_Bench;
 
ARCHITECTURE behavior OF MUX21_Structural_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX21_Structural
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX21_Structural PORT MAP (
          A => A,
          B => B,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A<='0' ; B<='0' ; S<='0' ; wait for 100 ns;	
		
		A<='1' ; B<='0' ; S<='1' ; wait for 100 ns;	
		A<='1' ; B<='1' ; S<='1' ; wait for 100 ns;	

     

      wait;
   end process;

END;
