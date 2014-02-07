----------------------------------------------------------------------------------
-- Section: T6 
-- Engineer: John Rios
-- 
-- Create Date:    20:26:02 02/06/2014 
-- Design Name: 	CE2 Behavioral Testbench
-- Module Name:    Decoder_Behavioral - Behavioral 
-- Project Name: 	CE2 
-- Target Devices: 
-- Tool versions: 
-- Description: 	
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
    COMPONENT Decoder_Behavioral
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         EN : IN  std_logic;
         Y0 : OUT  std_logic;
			Y1 : OUT std_logic;
			Y2 : OUT std_logic;
			Y3 : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
	signal Y1 : std_logic;
	signal Y2 : std_logic;
	signal Y3 : std_logic;

          

  BEGIN

  -- Component Instantiation
          uut: Decoder_Behavioral PORT MAP(
          I0 => I0,
          I1 => I1,
          EN => EN,
          Y0 => Y0,
			 Y1 => Y1,
			 Y2 => Y2,
			 Y3 => Y3
        );

  --  Test Bench Statements
    stim_proc : PROCESS
	  
     BEGIN
	  
		-- First line of truth table
		I0 <= '0';
		I1 <= '0';
		EN <= '0';
		wait for 100 ns;	
		
		-- Second line of truth table
		I0 <= '1';
		I1 <= '0';
		EN <= '0';
		wait for 100 ns;
				
		-- Third line of truth table
		I0 <= '0';
		I1 <= '1';
		EN <= '0';
		wait for 100 ns;
				
		-- Fourth line of truth table
		I0 <= '1';
		I1 <= '1';
		EN <= '0';
		wait for 100 ns;	
				
		-- Fifth line of truth table
		I0 <= '0';
		I1 <= '0';
		EN <= '1';
		wait for 100 ns;
				
		-- Sixth line of truth table
		I0 <= '1';
		I1 <= '0';
		EN <= '1';
		wait for 100 ns;	
				
		-- Seventh line of truth table
		I0 <= '0';
		I1 <= '1';
		EN <= '1';
		wait for 100 ns;	
				
		-- Eigth line of truth table
		I0 <= '1';
		I1 <= '1';
		EN <= '1';
		wait for 100 ns;	
		
		wait;
		
     END PROCESS;
  --  End Test Bench 

  END;
