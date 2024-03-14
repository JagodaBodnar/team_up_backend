package org.example.team_up.team.controller;

import lombok.RequiredArgsConstructor;
import org.example.team_up.team.dto.TeamDTO;
import org.example.team_up.team.dto.TeamRequestDTO;
import org.example.team_up.team.service.TeamService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/teams")
@CrossOrigin
public class TeamController {
    private final TeamService service;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<TeamDTO> getFilteredTeams(@RequestParam(required = false) String location, @RequestParam(required = false) String category) {
        return service.getFilteredTeams(location, category);
    }

    @GetMapping("/createdTeams/{userId}")
    @ResponseStatus(HttpStatus.OK)
    public List<TeamDTO> getFilteredTeams(@PathVariable UUID userId) {
        return service.getCreatedTeams(userId);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public List<TeamDTO> addTeam(@RequestBody TeamRequestDTO team){
        return service.addTeam(team);
    }

    @DeleteMapping("/{teamId}/deleteTeam/{userId}")
    @ResponseStatus(HttpStatus.OK)
    public List<TeamDTO> deleteTeam(@PathVariable UUID teamId, @PathVariable UUID userId) {
        return service.deleteTeam(teamId, userId);
    }


    @DeleteMapping("/{teamId}/leaveTeam/{userId}")
    @ResponseStatus(HttpStatus.OK)
    public List<TeamDTO> leaveTeam(@PathVariable UUID userId, @PathVariable UUID teamId){
       return service.leaveTeam(teamId, userId);
    }

    @PostMapping("/{teamId}/joinTeam/{userId}")
    @ResponseStatus(HttpStatus.OK)
    public List<TeamDTO> joinTeam(@PathVariable UUID userId, @PathVariable UUID teamId){
        return service.joinTeam(teamId, userId);
    }
}
