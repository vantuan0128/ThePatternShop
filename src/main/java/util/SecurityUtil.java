/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author admin
 */
public class SecurityUtil {
    public static String md5(String message) {
        try {
            MessageDigest md5 = null;
            md5 = MessageDigest.getInstance("MD5");
            char[] charArray = message.toCharArray();
            byte[] byteArray = new byte[charArray.length];
            for (int i = 0; i < charArray.length; i++)
                    byteArray[i] = (byte) charArray[i];
            byte[] md5Bytes = md5.digest(byteArray);
            StringBuffer hexValue = new StringBuffer();
            for (int i = 0; i < md5Bytes.length; i++) {
                    int val = ((int) md5Bytes[i]) & 0xff;
                    if (val < 16) {
                            hexValue.append("0");
                    }
                    hexValue.append(Integer.toHexString(val));
            }
            return hexValue.toString().toUpperCase();
        } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                System.out.println(e.toString());
        }
        return message;
    }
}
