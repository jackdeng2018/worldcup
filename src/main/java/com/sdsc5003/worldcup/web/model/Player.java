package com.sdsc5003.worldcup.web.model;

import lombok.*;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author sdsc5003
 * @since 2022-12-03
 */
@Entity
@Table(name = "player")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
@EqualsAndHashCode
public class Player implements Serializable {

    private static final long serialVersionUID=1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String pid;

    private String Name;

    private Integer Age;

    private String Position;

    private String Height;

    private String Weight;

    private String Appearance;

    private Integer Goal;

    private Integer Assist;

    private Float AverageRating;

    private String Nationality;
}
