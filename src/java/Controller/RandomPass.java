/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.util.Random;

/**
 *
 * @author Sown
 */
public class RandomPass {
    
 
    // This our Password generating method
    // We have use static here, so that we not to
    // make any object for it
   public char[] newOTP()
    {
        
        int len = 6;
        // A strong password has Cap_chars, Lower_chars,
        // numeric value and symbols. So we are using all of
        // them to generate our password
        
        String numbers = "0123456789";
                
 
 
        String values = numbers;
 
        // Using random method
        Random rndm_method = new Random();
 
        char[] password = new char[len];
 
        for (int i = 0; i < len; i++)
        {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            password[i] =
              values.charAt(rndm_method.nextInt(values.length()));
 
        }
        return password;
    }
   public char[] newPass()
    {
        
        int len = 8;
        // A strong password has Cap_chars, Lower_chars,
        // numeric value and symbols. So we are using all of
        // them to generate our password
        
        String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String Small_chars = "abcdefghijklmnopqrstuvwxyz";
        String numbers = "0123456789";
                
 
 
        String values = Capital_chars + Small_chars +
                        numbers;
 
        // Using random method
        Random rndm_method = new Random();
 
        char[] password = new char[len];
 
        for (int i = 0; i < len; i++)
        {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            password[i] =
              values.charAt(rndm_method.nextInt(values.length()));
 
        }
        return password;
    }
}
