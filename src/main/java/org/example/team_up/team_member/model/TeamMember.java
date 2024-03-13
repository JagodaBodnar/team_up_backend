package org.example.team_up.team_member.model;

import jakarta.persistence.*;
import org.example.team_up.team.model.Team;
import org.example.team_up.user.model.User;

import java.util.UUID;

@Entity
@Table(name = "tu_team_member")
public class TeamMember {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne(optional = false)
    @JoinColumn(name="team_id")
    private Team team;

    @ManyToOne(optional = false)
    @JoinColumn(name="user_id")
    private User user;

}
