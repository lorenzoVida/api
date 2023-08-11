Feature: Request de obtención de token para transacciónes con Card

  Background: Define URL
    * url baseUrl
    * def GetCredentils = callonce read('classpath:TallerToken/Init/GetCredentials.feature')
    * def public_key = GetCredentils.public_key
  
  Scenario: Ejemplo 1 Token request read Karate.config
    Given path "card", "v1", "tokens"
    Given header Public-Merchant-Id = public_key
    Given request {"card":{"name":"Test Automation","number":"4546000001596611","expiryMonth":"12","expiryYear":"25","cvv":"364"},"totalAmount":10.3,"currency":"PEN"}
    When method post
    Then status 201
    Then match response.token == "#present"
    * def token = response.token


  Scenario: Ejemplo 1 Token request read Karate.config
    Given path "card", "v1", "tokens"
    Given header Public-Merchant-Id = public_key
    Given request {"card":{"name":"Test Automation","number":"4546000001596611","expiryMonth":"12","expiryYear":"25","cvv":"364"},"totalAmount":10.3,"currency":"PEN"}
    When method post
    Then status 201
    Then match response.token == "#present"
    * def token = response.token