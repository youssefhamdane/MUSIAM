package com.mus.iam.rest.users.exceptions;

public class RoleNotFoundException extends RuntimeException {

    public RoleNotFoundException(String message) {
        super(message);
    }

}
