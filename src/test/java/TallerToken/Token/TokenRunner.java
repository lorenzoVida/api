package TallerToken.Token;

import com.intuit.karate.junit5.Karate;


public class TokenRunner {
    @Karate.Test
    Karate testToken() {
        //explicar las varias formas por Tag
     //  return Karate.run("CreateToken").relativeTo(getClass());
     //  return Karate.run().tags("@nature2,@nature1").relativeTo(getClass());
        return Karate.run("CreateToken").tags("@nature").relativeTo(getClass());

    }

}



