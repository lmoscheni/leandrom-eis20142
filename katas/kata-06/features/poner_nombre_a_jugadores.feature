Feature: Poner nombre a jugadores

	Scenario: Le pongo al jugador 1 el nombre Leandro
		Given tengo una partida
		When le pongo al jugador uno el nombre "Leandro"
		Then el nombre del jugador uno es "Leandro"

	Scenario: Le pongo al jugador 2 el nombre Nicolas
		Given tengo una partida
		When le pongo al jugador dos el nombre "Nicolas"
		Then el nombre del jugador dos es "Nicolas"