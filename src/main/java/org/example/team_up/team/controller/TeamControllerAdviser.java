package org.example.team_up.team.controller;

import org.example.team_up.team.exceptions.TeamNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class TeamControllerAdviser {
    @ExceptionHandler(TeamNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    private String handleTeamNotFoundException(TeamNotFoundException exception){
        return exception.getMessage();
    }
}
