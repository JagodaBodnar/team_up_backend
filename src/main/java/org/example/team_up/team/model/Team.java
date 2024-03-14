package org.example.team_up.team.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
//import org.example.team_up.team_member.model.TeamMember;
import org.example.team_up.team.exceptions.UserAlreadyOnTheListException;
import org.example.team_up.user.exceptions.UserNotFoundException;
import org.example.team_up.user.model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name="tu_team")
@AllArgsConstructor
@Getter
@NoArgsConstructor
@EqualsAndHashCode
public class Team {
    @Id
    @GeneratedValue(strategy =  GenerationType.UUID)
    private UUID id;
    @Column
    private int maxSpots;
    @Column
    private String category;
    @Column
    private String location;
    @Column
    private String dateTime;
    @Column
    private UUID createdBy;

//    @OneToMany(mappedBy = "team")
//    private List<TeamMember> teamMembersList = new ArrayList<>();
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<User> userList = new ArrayList<>();
    public Team(int maxSpots, String category, String location, String dateTime, UUID createdBy) {
        this.maxSpots = maxSpots;
        this.category = category;
        this.location = location;
        this.dateTime = dateTime;
        this.createdBy = createdBy;
    }
    public void addUser(User user){
        if(this.userList.stream().filter(element -> element.getId().equals(user.getId())).toList().size() > 0){
            throw new UserAlreadyOnTheListException("User already exists on the list.");
        }
        this.userList.add(user);
    }
    public void removeUser(User user){
        this.userList.remove(user);
    }

}
