package org.example.team_up.team.dto;

import java.util.UUID;

public record TeamDTO(UUID id,
                      String category,
                      String dateTime,
                      String location,
                      int maxSpots) {
}
