@ScenarioDates
Feature:

  Scenario Outline:  Solicitudes de metodos POST - Login Successful / UnSuccessful
    * url _baseUrlRegisterUser

    * def randomData = Java.type('Sesion3.EscenarioBasadoDatos.RandomData')
    * def Email = randomData.RandomEmail()

    * path 'api/login'
    * request
                """
            {
                "email": "<email>",
                "password":  "<Pass>"
            }
              """
    * method POST
    * status <statusResponse>
    * match response == <Response>

    Examples:
      | email              |    Pass     |     statusResponse     |     Response                         |
      | eve.holt@reqres.in | cityslicka  |           200          |     {"token": "QpwL5tke4Pnpja7X4"}   |
      | eve.holt@reqres.in |             |           400          |     {"error": "Missing password"}   |
      | #(Email)           | cityslicka  |           400          |     {"error": "user not found"}   |
