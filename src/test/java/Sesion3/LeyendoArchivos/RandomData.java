package Sesion3.LeyendoArchivos;

import com.github.javafaker.Faker;

public class RandomData {

    public static String RandomName()  {
        Faker faker = new Faker();
        String Name = faker.name().firstName();
        return Name;
    }

    public static String RandomSeniority()  {
        Faker faker = new Faker();
        String Seniority = faker.job().seniority();
        return Seniority;
    }


}
