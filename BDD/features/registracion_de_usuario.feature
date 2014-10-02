Feature: Registracion de Usuario

	Scenario: Camino Feliz
		Given estoy en la pagina de registracion
		When me registro como "juan" con clave "Password"
		Then tengo un numero de usuario


	Scenario: Password debil
		Given estoy en la pagina de registracion
		When me registro como "juan" con clave "Pass"
		Then me dice que el password es debil


	Scenario: Usuaro existente
		Given estoy en la pagina de registracion
		When me registro como "juan" con clave "Password"
		Then me dice que el usuario ya existe