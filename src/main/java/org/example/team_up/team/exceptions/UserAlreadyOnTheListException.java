package org.example.team_up.team.exceptions;

public class UserAlreadyOnTheListException extends RuntimeException{
    public UserAlreadyOnTheListException(String message) {
        super(message);
    }
}
