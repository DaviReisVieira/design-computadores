library ieee;
use ieee.std_logic_1164.all;

entity edgeDebounceDetectorKey2 is
		generic (
			dataaddresss: natural := 9;
			dataWidth: natural := 8
		);
		port (
			CLOCK_50	:	in  STD_LOGIC;
			KEY     : 	in  STD_LOGIC;
			habilita: 	in  STD_LOGIC;
			address:		in  std_logic_vector(dataaddresss -1 downto 0);
         wr:			in  STD_LOGIC;
			saida   : 	out std_logic_vector(dataWidth -1 downto 0)
			
		);
end entity;

architecture arquitetura of edgeDebounceDetectorKey2 is
    signal CLK_FFP :		std_logic;
	 signal KEY_OUTPUT :	std_Logic;
	 signal limpa_leitura:	std_logic;
	 
	 
begin

edgeDetector: entity work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => KEY, saida => CLK_FFP);
	 
FFP: entity work.flipflopGenerico
			port map (
				DIN 	=> '1', 
				DOUT 	=> KEY_OUTPUT,
				ENABLE => '1',
				CLK 	=> CLK_FFP,
				RST => limpa_leitura
			);
			
BFF0:  entity work.buffer_3_state_simples
        port map(
				entrada => KEY_OUTPUT,
				habilita => habilita,
				saida => saida(0)
			);
			
BFF1:  entity work.buffer_3_state_simples
        port map(
				entrada => '0',
				habilita => habilita,
				saida => saida(1)
			);
			
BFF2:  entity work.buffer_3_state_simples
        port map(
				entrada => '0',
				habilita => habilita,
				saida => saida(2)
			);
		
BFF3:  entity work.buffer_3_state_simples
        port map(
				entrada => '0',
				habilita => habilita,
				saida => saida(3)
			);
		
BFF4:  entity work.buffer_3_state_simples
        port map(
				entrada => '0',
				habilita => habilita,
				saida => saida(4)
			);
		
BFF5:  entity work.buffer_3_state_simples
        port map(
				entrada => '0',
				habilita => habilita,
				saida => saida(5)
			);
		
BFF6:  entity work.buffer_3_state_simples
        port map(
				entrada => '0',
				habilita => habilita,
				saida => saida(6)
			);
				

BFF7:  entity work.buffer_3_state_simples
        port map(
				entrada => '0',
				habilita => habilita,
				saida => saida(7)
			);
						
				



limpa_leitura <=   address(0)
					and address(1)
					and (not address(2))
					and address(3)
					and address(4)
					and address(5)
					and address(6)
					and address(7)
					and address(8)
					and wr;
					

end architecture;


