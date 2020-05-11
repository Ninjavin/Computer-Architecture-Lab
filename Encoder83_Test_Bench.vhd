--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:02:56 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/Encoder83/Encoder83_Test_Bench.vhd
-- Project Name:  Encoder83
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Encoder83
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
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Encoder83_Test_Bench IS
END Encoder83_Test_Bench;
 
ARCHITECTURE behavior OF Encoder83_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Encoder83
    PORT(
         A : IN  unsigned(7 downto 0);
         B : OUT  unsigned(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : unsigned(7 downto 0) := (others => '0');

 	--Outputs
   signal B : unsigned(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Encoder83 PORT MAP (
          A => A,
          B => B
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A<="10000000" ; wait for 100 ns;	
		A<="01000000" ; wait for 100 ns;	
		A<="00100000" ; wait for 100 ns;	
		A<="00010000" ; wait for 100 ns;	
		A<="00001000" ; wait for 100 ns;	
		A<="00000100" ; wait for 100 ns;	
		A<="00000010" ; wait for 100 ns;	
		A<="00000001" ; wait for 100 ns;	



      -- insert stimulus here 

      wait;
   end process;

END;
