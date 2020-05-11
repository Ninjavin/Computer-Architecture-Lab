--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:22:54 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/MUX41_Case/MUX41_Case_Test_Bench.vhd
-- Project Name:  MUX41_Case
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX41_Case
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
 
ENTITY MUX41_Case_Test_Bench IS
END MUX41_Case_Test_Bench;
 
ARCHITECTURE behavior OF MUX41_Case_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX41_Case
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX41_Case PORT MAP (
          A => A,
          S => S,
          Output => Output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A<="0001" ; S<="00" ; wait for 100 ns;	
		A<="0010" ; S<="01" ; wait for 100 ns;	
		A<="0100" ; S<="10" ; wait for 100 ns;	
		A<="1000" ; S<="11" ; wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
