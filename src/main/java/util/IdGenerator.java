package util;

import java.util.Random;

public class IdGenerator {
    private final static String code="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()";
    public static String getId(int lenght){
        StringBuilder builder=new StringBuilder();
        for (int i = 0; i < lenght; i++) {
            builder.append(code.charAt(new Random().nextInt(40)));
        }
        return builder.toString();
    }
}
