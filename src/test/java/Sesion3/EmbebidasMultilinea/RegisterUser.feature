@Register
Feature:  Solicitudes de metodos POST - Register Successful

  Background: URL Base
    * def randomData = Java.type('Sesion3.EmbebidasMultilinea.RandomData')
    * def Pass = randomData.RandomPass()
    * url _baseUrlRegisterUser

  @Embebida
  Scenario:  Register User
    * path 'api/register'
    * header Content-Type = 'application/json'
   * request {"email":"eve.holt@reqres.in" , "password":#(Pass)}
    * method POST
    * status 200
    * match responseType == 'json'
    * match response != null
    * match response.token == "#present"
    * match response.id == "#number"



