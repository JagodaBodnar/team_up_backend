package org.example.team_up.user.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.example.team_up.team.model.Team;
//import org.example.team_up.team_member.model.TeamMember;

import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "tu_user")
@AllArgsConstructor
@Getter
@NoArgsConstructor
@EqualsAndHashCode
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;
    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String contact;

//    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
//    private List<TeamMember> teamMembers;
    @ManyToMany(mappedBy = "userList", cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Team> teamList;

    public User(UUID id, String name, String contact) {
        this.id =id;
        this.name=name;
        this.contact= contact;
    }
}
