package org.example.team_up.team.dto;

import java.util.UUID;

public record TeamRequestDTO (String category, String location, String dateTime, int maxSpots, UUID createdBy){

}
