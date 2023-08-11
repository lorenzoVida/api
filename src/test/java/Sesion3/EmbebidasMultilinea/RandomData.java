package Sesion3.EmbebidasMultilinea;

import java.util.Random;

public class RandomData {


    public static String RandomPass()  {
        String characterText = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        String charactersNum = "1234567890";
        String nombrepass = "Automation";
        String randomNum = "";
        String randomText = "";

        int lengthNum = 3;
        Random rand = new Random();
        char[] text = new char[lengthNum];
        for (int i = 0; i < lengthNum; i++) {
            text[i] = charactersNum.charAt(rand.nextInt(charactersNum.length()));
        }
        for (int i = 0; i < lengthNum; i++) {
            randomNum += text[i];
        }

        int lengthText = 1;
        Random rand1 = new Random();
        char[] text1 = new char[lengthText];
        for (int i = 0; i < lengthText; i++) {
            text1[i] = characterText.charAt(rand1.nextInt(characterText.length()));
        }
        for (int i = 0; i < lengthText; i++) {
            randomText += text1[i];
        }
        return  nombrepass + randomNum + randomText;
    }
}


