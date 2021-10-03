package com.smd.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;
import java.util.SplittableRandom;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;

//import com.mysql.cj.Session;
import com.smd.model.Customer;
import com.smd.model.Order;

public class Services {
	// implementing password Hashing
	public String doHashing(String password) {
		try {
			// create instance of MessageDigest
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");

			// update password to byte
			messageDigest.update(password.getBytes());

			// getting hash value of the password
			byte[] resultByteArray = messageDigest.digest();

			// converting byte array to String
			StringBuilder sb = new StringBuilder();
			for (byte b : resultByteArray) {
				sb.append(String.format("%02x", b));
			}

			// returning the hash code of the password
			return sb.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}

	// Generating an OTP
	public String generateOtp() {
		// creating an instance of SplittableRandom class
		SplittableRandom spRandom = new SplittableRandom();

		StringBuilder sb = new StringBuilder();

		for (int i = 0; i < 6; i++) {
			sb.append(spRandom.nextInt(0, 10));
		}
		return sb.toString();
	}

	// send email(Forget password)
	public boolean sendEmail(Customer customer) {
		boolean status = false;

		// creating the needed variables
		String toEmail = customer.getEmail(); // receiver email
		String fromEmail = "distributionsmd5@gmail.com"; // sender email
		String password = "smddistributor123@";

		try {
			// set email server
			Properties pr = new Properties();
			pr.setProperty("mail.smtp.host", "smtp.gmail.com"); // smtp server
			pr.setProperty("mail.smtp.port", "465"); // port number
			pr.setProperty("mail.smtp.auth", "true"); // Authentication
			pr.setProperty("mail.smtp.socketFactory.port", "465"); // SSL port
			pr.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); // SSL properties

			// get Session
			// gives authentication from the sender's email
			Session session = Session.getInstance(pr, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}
			});

			// Build message
			Message message = new MimeMessage(session);

			message.setFrom(new InternetAddress(fromEmail)); // sending email address
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail)); // receiving email address

			// message body
			message.setSubject("SMD Distributors OTP verification");// set subject
			message.setText("Hello, \nPlease Verify your Email Account using this OTP code : " + customer.getCode()
					+ " to Reset the Password");

			// sending the mail
			Transport.send(message);

			status = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// send email to accept order
	public boolean SendSuccessfulMail(Customer customer, Order order) {
		boolean status = false;

		// creating the needed variables
		String toEmail = customer.getEmail(); // receiver email
		String fromEmail = "distributionsmd5@gmail.com"; // sender email
		String password = "smddistributor123@"; // password

		try {
			// set email server
			Properties pr = new Properties();
			pr.setProperty("mail.smtp.host", "smtp.gmail.com"); // smtp server
			pr.setProperty("mail.smtp.port", "465"); // port number
			pr.setProperty("mail.smtp.auth", "true"); // Authentication
			pr.setProperty("mail.smtp.socketFactory.port", "465"); // SSL port
			pr.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); // SSL properties

			// get Session
			// gives authentication from the sender's email
			Session session = Session.getInstance(pr, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}
			});

			// Build message
			Message message = new MimeMessage(session);

			message.setFrom(new InternetAddress(fromEmail)); // sending email address
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail)); // receiving email address

			// message body
			message.setSubject("SMD Distributors Payment Accept");// set subject
			message.setText("Hello,This message is to confirm our acceptance of  invoice number :" + order.getOID()
					+ " which we received on " + order.getODATE()
					+ ". We are truly excited to do business with you and thank you for putting your trust in our products and services."
					+ "Your order will delivered as soon as possible. Should you have any queries regarding your order, please call our customer support number(0776208209). ");

			// sending the mail
			Transport.send(message);

			status = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	// send email to decline order
	public boolean SendDeclineMail(Customer customer, Order order) {
		boolean status = false;

		// creating the needed variables
		String toEmail = customer.getEmail(); // receiver email
		String fromEmail = "distributionsmd5@gmail.com"; // sender email
		String password = "smddistributor123@"; // password

		try {
			// set email server
			Properties pr = new Properties();
			pr.setProperty("mail.smtp.host", "smtp.gmail.com"); // smtp server
			pr.setProperty("mail.smtp.port", "465"); // port number
			pr.setProperty("mail.smtp.auth", "true"); // Authentication
			pr.setProperty("mail.smtp.socketFactory.port", "465"); // SSL port
			pr.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); // SSL properties

			// get Session
			// gives authentication from the sender's email
			Session session = Session.getInstance(pr, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}
			});

			// Build message
			Message message = new MimeMessage(session);

			message.setFrom(new InternetAddress(fromEmail)); // sending email address
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail)); // receiving email address

			// message body
			message.setSubject("SMD Distributors Payment Decline");// set subject
			message.setText("Hello, We cannot accept your order(order ID :" + order.getOID() + ") which we received on "
					+ order.getODATE()
					+ ". You have not paid for your pre-orders, please pay and try again. If you have any queries please contact us(0776208209)");

			// sending the mail
			Transport.send(message);

			status = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	// send email to payment
	public boolean SendPaidAmountMail(Customer customer, Order order, double Remaining, double Paid) {
		boolean status = false;

		// creating the needed variables
		String toEmail = customer.getEmail(); // receiver email
		String fromEmail = "distributionsmd5@gmail.com"; // sender email
		String password = "smddistributor123@"; // password

		try {
			// set email server
			Properties pr = new Properties();
			pr.setProperty("mail.smtp.host", "smtp.gmail.com"); // smtp server
			pr.setProperty("mail.smtp.port", "465"); // port number
			pr.setProperty("mail.smtp.auth", "true"); // Authentication
			pr.setProperty("mail.smtp.socketFactory.port", "465"); // SSL port
			pr.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); // SSL properties

			// get Session
			// gives authentication from the sender's email
			Session session = Session.getInstance(pr, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}
			});

			// Build message
			Message message = new MimeMessage(session);

			message.setFrom(new InternetAddress(fromEmail)); // sending email address
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail)); // receiving email address

			// check remaining amount for send message
			if (Remaining == 0) {
				// message body
				message.setSubject("SMD Distributors Payments");// set subject
				message.setText("You have paid total amount invoice :" + order.getOID() + "\nThank you!! ");
			}

			else {
				// message body
				message.setSubject("SMD Distributors Payments");// set subject
				message.setText("Invoice ID :" + order.getOID() + "\n" + "Paid Amount :" + Paid + "\n" + "Balance :"
						+ Remaining + "\n" + "Thank you for your payment ");

			}

			// sending the mail
			Transport.send(message);

			status = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// send feedback email
	public boolean SendFeedbackMail(String email) {
		boolean status = false;

		String toEmail = email;// get customers email
		String fromEmail = "distributionsmd5@gmail.com";// smd email
		String password = "smddistributor123@"; // smd password

		try {
			// setting the email server
			Properties pr = new Properties();
			pr.setProperty("mail.smtp.host", "smtp.gmail.com"); // smtp server
			pr.setProperty("mail.smtp.port", "465"); // port number
			pr.setProperty("mail.smtp.auth", "true"); // Authentication
			pr.setProperty("mail.smtp.socketFactory.port", "465"); // SSL port
			pr.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); // SSL properties

			// get Session
			Session session = Session.getInstance(pr, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					// gives authentication from the sender's email
					return new PasswordAuthentication(fromEmail, password);
				}
			});

			// Creating a message
			Message message = new MimeMessage(session);

			message.setFrom(new InternetAddress(fromEmail)); // get the senders email
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail)); // get the receivers email

			// body of the message
			message.setSubject("SMD Distributors Feedback Confirmation");// subject for feedback emails
			message.setText("Dear customer, we have received your feedback and we will get back to you shortly");

			// send the mail
			Transport.send(message);

			status = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}
}
