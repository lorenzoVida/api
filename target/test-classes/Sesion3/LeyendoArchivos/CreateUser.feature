@CreateUser
Feature:  Solicitudes de metodos POST - Register Successful

  Background: URL Base
    * url _baseUrlRegisterUser
    * def BodyRequest = read('classpath:Sesion3/LeyendoArchivos/BodyRequest.json')
    * def dataGenerator = Java.type('Sesion3.LeyendoArchivos.RandomData')
    * def Name = dataGenerator.RandomName()
    * set BodyRequest.name = Name

    * def Job = dataGenerator.RandomSeniority()
    * set BodyRequest.job = Job


  Scenario: Create User - Leyendo archivos
    * path "api/users"
    * request BodyRequest
    * method POST
    * status 201
    * match response.name == BodyRequest.name
    * match response.job == BodyRequest.job

