package org.example.team_up.team.service;

import lombok.RequiredArgsConstructor;
import org.example.team_up.team.dto.TeamDTO;
import org.example.team_up.team.exceptions.TeamNotFoundException;
import org.example.team_up.team.model.Team;
import org.example.team_up.team.repository.TeamRepository;
import org.example.team_up.team_member.model.TeamMember;
import org.example.team_up.user.model.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class TeamService {
    private final TeamRepository repository;

    public List<Team> getTeams() {
        return repository.findAll();
    }

    public void deleteGroup(UUID id) {
        Team teamToDelete = repository.findById(id).orElseThrow(() -> new TeamNotFoundException("Team was not found."));
        repository.delete(teamToDelete);
    }

    public List<Team> addTeam(Team team) {
        repository.save(team);
        return getTeams();
    }

    public List<Team> getFilteredTeams(String location, String category) {
//        if(category.isEmpty()){
//            return getTeams().stream()
//                    .filter(element-> element.getLocation().contains())
//        }
        return getTeams().stream()
                .filter(element -> element.getLocation().contains(location) && element.getCategory().contains(category)).toList();
    }

//    public Team addUserToTeam(UUID id, User user) {
//       Team findTeam =  repository.findById(id).orElseThrow(()-> new TeamNotFoundException("Team was not found."));
//       repository.save(findTeam);
//    }
}
