package org.example.team_up.team.dto;

import lombok.Builder;
import org.example.team_up.team.model.Team;
import org.example.team_up.user.model.User;

import java.util.List;
import java.util.UUID;

@Builder
public record TeamDTO(UUID id,
                      String category,
                      String dateTime,
                      String location,
                      int availableSpots,
                      int bookedSpots,
                      List<User> userList,

                      int maxSpots) {

    public static TeamDTO of(Team team) {
        return TeamDTO.builder()
                .maxSpots(team.getMaxSpots())
                .location(team.getLocation())
                .dateTime(team.getDateTime())
                .category(team.getCategory())
                .id(team.getId())
                .availableSpots(team.getMaxSpots() - team.getUserList().size())
                .userList(team.getUserList())
                .bookedSpots(team.getUserList().size()).build();
    }
}
