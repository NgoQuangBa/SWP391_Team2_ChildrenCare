/*
package testmail;
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author HP
 */
public class SendEmail {

    public void sendEmailOTP(String email, String otp, String Username) throws MessagingException {
        Properties pr = new Properties();
        System.out.println("Preparing to send main");
        pr.setProperty("mail.smtp.host", "smtp.gmail.com");
        pr.setProperty("mail.smtp.port", "587");
        pr.setProperty("mail.smtp.auth", "true");
        pr.setProperty("mail.smtp.starttls.enable", "true");
        final String myaccount = "kiennhhe163054@fpt.edu.vn";
        final String password = "Kienbeo237";
        Session session = Session.getInstance(pr, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myaccount, password);
            }
        });
        Message mess = prepareMessageOTP(session, myaccount, email, otp, Username);
        Transport.send(mess);
    }

    private static Message prepareMessageOTP(Session session, String account, String infor, String otp, String Username) {
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(account));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(infor));
            message.setSubject("XAC NHAN LAY LAI MAT KHAU");
            message.setText("Tai khoan: " + Username + "\nOTP cua ban la: " + otp);
            return message;
        } catch (MessagingException ex) {
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void sendEmailPass(String email, String pass, String Username) throws MessagingException {
        Properties pr = new Properties();
        System.out.println("Preparing to send main");
        pr.setProperty("mail.smtp.host", "smtp.gmail.com");
        pr.setProperty("mail.smtp.port", "587");
        pr.setProperty("mail.smtp.auth", "true");
        pr.setProperty("mail.smtp.starttls.enable", "true");
        final String myaccount = "kiennhhe163054@fpt.edu.vn";
        final String password = "Kienbeo237";
        Session session = Session.getInstance(pr, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myaccount, password);
            }
        });
        Message mess = prepareMessagePass(session, myaccount, email, pass, Username);
        Transport.send(mess);
    }
    private static Message prepareMessagePass(Session session, String account, String infor, String pass, String Username) {
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(account));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(infor));
            message.setSubject("XAC NHAN DANG KY TAI KHOAN");
            message.setText("Tai khoan: " + Username + "\nOTP cua ban la: " + pass);
            return message;
        } catch (MessagingException ex) {
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
