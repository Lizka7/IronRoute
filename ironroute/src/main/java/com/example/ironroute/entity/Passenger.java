package com.example.ironroute.entity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@Entity
@Table(name = "passengers")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Passenger {
    @Id
    @Column(name = "passport", length = 9)
    private String passport;

    @Column(name = "last_name", length = 50)
    private String last_name;

    @Column(name = "first_name", length = 50)
    private String first_name;

    @Column(name = "phone", length = 12)
    private String phone;

    @OneToMany(mappedBy = "passenger", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Ticket> tickets;

    public Object getId() {
        return this.passport;
    }
}