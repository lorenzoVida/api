@ignore @nature
Feature: Obtención de Public y Private Keys de merchant_id

  Scenario: Requests de obtención de credenciales
    * url _baseUrlAccesToken
    * header X-Amz-Target = 'AWSCognitoIdentityProviderService.InitiateAuth'
    * header Content-Type = 'application/x-amz-json-1.1'
    * request {"AuthParameters": {"USERNAME": #(username),"PASSWORD": #(password)},"AuthFlow": "USER_PASSWORD_AUTH","ClientId":  #(client_id)}
    * method post
    * def authToken = response.AuthenticationResult.AccessToken

    * url baseUrl
    * path "payment-credentials", "v1", "admin", "credentials", merchant_id
    * header Authorization = authToken
    * method get
    * def private_key = response[0].privateCredentialId
    * def public_key = response[0].publicCredentialId
