package util;

import org.mindrot.jbcrypt.BCrypt;

public class EncryptionConfig {
    public static String encrypt(String password){
        return BCrypt.hashpw(password, BCrypt.gensalt(10));
    }
    public static boolean decrypt(String password, String hash){
        return BCrypt.checkpw(password,hash);
    }
}
