package Sesion3.EscenarioBasadoDatos;

import com.github.javafaker.Faker;

public class RandomData {

    public static String RandomAddress()  {
        Faker faker = new Faker();
        String Address = faker.address().streetAddress();
        return Address;
    }

    public static String RandomNumber()  {
        Faker faker = new Faker();
        String Number = faker.phoneNumber().cellPhone();
        return Number;
    }

    public static String RandomEmail()  {
        Faker faker = new Faker();
        String Email = faker.internet().emailAddress();
        return Email;
    }
}
