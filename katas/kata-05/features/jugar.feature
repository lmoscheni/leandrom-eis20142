Feature: Jugar
  
  Scenario: Juego ganado
    Given iniciar ahorcado con "bicicleta"
    When arriesgo "a"
    Then obtengo "********a"
    And me quedan 3 vidas
    When arriesgo "m"
    Then obtengo "********a"
    And me quedan 2 vidas
    When arriesgo "b"
    Then obtengo "b*******a"
    And me quedan 2 vidas
    When arriesgo "i"
    Then obtengo "bi*i****a"
    And me quedan 2 vidas
    When arriesgo "c"
    Then obtengo "bicic***a"
    And me quedan 2 vidas
    When arriesgo "e"
    Then obtengo "bicic*e*a"
    And me quedan 2 vidas
    When arriesgo "t"
    Then obtengo "bicic*eta"
    And me quedan 2 vidas
    When arriesgo "l"
    Then obtengo "bicicleta"
    And me quedan 2 vidas
    And termino el juego
    And gane

  Scenario: Juego perdido
    Given iniciar ahorcado con "auto"
    When arriesgo "a"
    Then obtengo "a***"
    And me quedan 3 vidas
    When arriesgo "m"
    Then obtengo "a***"
    And me quedan 2 vidas
    When arriesgo "x"
    Then obtengo "a***"
    And me quedan 1 vidas
    When arriesgo "o"
    Then obtengo "a**o"
    And me quedan 1 vidas
    When arriesgo "j"
    Then obtengo "a**o"
    And me quedan 0 vidas
    And termino el juego
    And perdi