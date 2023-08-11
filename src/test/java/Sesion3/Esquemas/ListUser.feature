@ListUser
Feature:  Solicitudes de metodos GET - list Single User

  @ListSingleUser
  Scenario:
    * url _baseUrlRegisterUser
    * path 'api/users/2'
    * method GET
    * status 200
    * match response ==
        """
         {
            "data": {
                "id": "#number",
                "email": "#string",
                "first_name": "#string",
                "last_name": "#string",
                "avatar": "#present"
                    },
            "support": {
                "url": "#notnull",
                "text": "##string"
                        }
         }
    """