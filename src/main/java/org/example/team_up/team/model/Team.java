package org.example.team_up.team.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.example.team_up.team_member.model.TeamMember;

import java.util.List;
import java.util.UUID;

@Entity
@Table(name="tu_team")
@AllArgsConstructor
@Getter
@NoArgsConstructor
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
    private Long createdBy;

    @OneToMany(mappedBy = "team")
    private List<TeamMember> teamMembersList;

    @Transient
    private int availableSpots;
    public int getAvailableSpots(){
        return this.maxSpots - this.teamMembersList.size();
    }
    @Transient
    private int bookedSpots;
    public int getBookedSpots(){
        return this.teamMembersList.size();
    }
}
