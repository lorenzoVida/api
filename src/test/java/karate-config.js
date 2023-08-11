function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'uat';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    _baseUrlAccesToken: 'https://cognito-idp.us-east-1.amazonaws.com',
    User:'automation',
    password1:'Automation2022.',
    numero:'4546000001596611',
    _baseUrlRegisterUser: 'https://reqres.in',

  }
  if (env == 'uat') {
    config.environment = 'uat';
    config.baseUrl = 'https://api-uat.kushkipagos.com';
    config.username = 'BACKOFFICE';
    config.password = 'Zapote1234567!';
    config.client_id = '3h26c6li33ai48a0kb3hlit4p6';
    config.merchant_id = '20000000103187317000';
   config.public_key ='c6e4ce5087504fcfb227148f6fcd6fcd';

  }  else if (env == 'altar') {
      config.environment = 'qa';
      config.baseUrl = 'https://api-qa.altar.kushki.dev';
      config.username = 'BACKOFFICE';
      config.password = 'Zapote1234567!';
    }

     karate.configure('logPrettyRequest', true);
     karate.configure('logPrettyResponse', true);

  return config;
}