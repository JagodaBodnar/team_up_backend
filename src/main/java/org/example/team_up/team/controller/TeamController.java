package org.example.team_up.team.controller;

import lombok.RequiredArgsConstructor;
import org.example.team_up.team.dto.TeamDTO;
import org.example.team_up.team.model.Team;
import org.example.team_up.team.service.TeamService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/teams")
public class TeamController {
    private final TeamService service;

    @GetMapping()
    @ResponseStatus(HttpStatus.OK)
    public List<Team> getTeams(){
        return service.getTeams();
    }

    @PostMapping()
    @ResponseStatus()
    public List<Team> addTeam(@RequestBody Team team){
        return service.addTeam();
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteGroup(@PathVariable UUID id){
        service.deleteGroup(id);
    }
}
