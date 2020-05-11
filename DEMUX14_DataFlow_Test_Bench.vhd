--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:00:44 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/DEMUX14_DataFlow/DEMUX14_DataFlow_Test_Bench.vhd
-- Project Name:  DEMUX14_DataFlow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DEMUX14_DataFlow
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
 
ENTITY DEMUX14_DataFlow_Test_Bench IS
END DEMUX14_DataFlow_Test_Bench;
 
ARCHITECTURE behavior OF DEMUX14_DataFlow_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEMUX14_DataFlow
    PORT(
         A : IN  std_logic;
         S : IN  std_logic_vector(1 downto 0);
         Output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEMUX14_DataFlow PORT MAP (
          A => A,
          S => S,
          Output => Output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      S<="00" ; wait for 100 ns;	
		S<="01" ; wait for 100 ns;	
		S<="10" ; wait for 100 ns;	
		S<="11" ; wait for 100 ns;	
		


      -- insert stimulus here 

      wait;
   end process;

END;
