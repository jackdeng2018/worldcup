package com.sdsc5003.worldcup.account;

public class EmailAlreadyInUseException extends Exception {
    public EmailAlreadyInUseException(String email) {
        super("The email '" + email + "' is already in use.");
    }
}