package org.example.team_up.team.service;

import lombok.RequiredArgsConstructor;
import org.example.team_up.team.dto.TeamDTO;
import org.example.team_up.team.dto.TeamRequestDTO;
import org.example.team_up.team.exceptions.TeamNotFoundException;
import org.example.team_up.team.model.Team;
import org.example.team_up.team.repository.TeamRepository;
import org.example.team_up.user.exceptions.UserNotFoundException;
import org.example.team_up.user.model.User;
import org.example.team_up.user.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

import java.util.UUID;

import static java.util.Optional.ofNullable;

@Service
@RequiredArgsConstructor
public class TeamService {
    private final TeamRepository repository;
    private final UserRepository userRepository;

    public List<TeamDTO> getTeams() {
        return repository.findAll().stream().map(TeamDTO::of).toList();
    }

    public List<TeamDTO> deleteTeam(UUID id, UUID userId) {
        Team teamToDelete = repository.findById(id).orElseThrow(() -> new TeamNotFoundException("Team was not found."));
        repository.delete(teamToDelete);
        return getCreatedTeams(userId);
    }

    public List<TeamDTO> addTeam(TeamRequestDTO teamDTO) {
        Team team = new Team(teamDTO.maxSpots(), teamDTO.category(), teamDTO.location(), teamDTO.dateTime(), teamDTO.createdBy());
        User user = userRepository.findById(teamDTO.createdBy()).orElseThrow(()-> new UserNotFoundException("User not found."));
        team.addUser(user);
        repository.save(team);
        return getCreatedTeams(teamDTO.createdBy());
    }

    public List<TeamDTO> getFilteredTeams(String location, String category) {

        return getTeams().stream()
                .filter(element -> element.location().contains(ofNullable(location).orElse("")) && element.category().toLowerCase().contains(ofNullable(category).orElse(""))).toList();
//        return repository.findAllByLocationContainingIgnoreCaseAndCategory(location,category).stream().map(TeamDTO::of).toList();

    }

    public List<TeamDTO> joinTeam(UUID teamId, UUID userId) {
        Team findTeam = repository.findById(teamId).orElseThrow(() -> new TeamNotFoundException("Team was not found."));
        User user = userRepository.findById(userId).orElseThrow(() -> new UserNotFoundException("User not found."));
        findTeam.addUser(user);
        repository.save(findTeam);
        return getTeams();
    }

    public List<TeamDTO> leaveTeam(UUID teamId, UUID userId) {
        Team findTeam = repository.findById(teamId).orElseThrow(() -> new TeamNotFoundException("Team was not found."));
        User user = userRepository.findById(userId).orElseThrow(() -> new UserNotFoundException("User not found."));
        findTeam.removeUser(user);
        repository.save(findTeam);
        return getTeams();
    }

    public List<TeamDTO> leaveTeamFromJoined(UUID teamId, UUID userId) {
        Team findTeam = repository.findById(teamId).orElseThrow(() -> new TeamNotFoundException("Team was not found."));
        User user = userRepository.findById(userId).orElseThrow(() -> new UserNotFoundException("User not found."));
        findTeam.removeUser(user);
        repository.save(findTeam);
        return getJoinedTeams(userId);
    }


    public List<TeamDTO> getCreatedTeams(UUID userId) {
       return getTeams().stream().filter(element-> element.createdBy().equals(userId)).toList();
    }

    public List<TeamDTO> getJoinedTeams(UUID userId) {
        return getTeams().stream().filter(element-> !element.userList().stream().filter(el -> el.getId().equals(userId)).toList().isEmpty()).toList();
    }
}
