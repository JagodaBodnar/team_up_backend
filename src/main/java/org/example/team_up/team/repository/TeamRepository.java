package org.example.team_up.team.repository;

import org.example.team_up.team.model.Team;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface TeamRepository extends JpaRepository<Team, UUID> {
//    List<Team> findAllByLocationContainingIgnoreCaseAndCategory(String location,String category);
}
