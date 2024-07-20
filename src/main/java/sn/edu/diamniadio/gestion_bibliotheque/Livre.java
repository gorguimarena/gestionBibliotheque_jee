package sn.edu.diamniadio.gestion_bibliotheque;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;


@Entity
@Data
public class Livre implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String titre;

    @Column(nullable = false)
    private String auteur;

    @Column(nullable = false)
    private String anneePublication;
}
