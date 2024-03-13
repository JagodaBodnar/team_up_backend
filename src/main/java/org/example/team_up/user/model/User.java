package org.example.team_up.user.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.example.team_up.team_member.model.TeamMember;

import java.util.List;

@Entity
@Table(name = "tu_user")
@AllArgsConstructor
@Getter
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tu_user_seq")
    @SequenceGenerator(name="tu_user_seq", allocationSize = 1)
    private Long id;
    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String contact;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<TeamMember> teamMembers;

}
