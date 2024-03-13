package org.example.team_up.team.exceptions;

public class TeamNotFoundException extends  RuntimeException{
    public TeamNotFoundException(String message) {
        super(message);
    }
}
