package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;

@Entity
public class Video {

    @Id
    private Integer id;

    @Column(length = 100, nullable = false)
    private String title;

    @Enumerated(EnumType.STRING)
    private VodService vodService;

    @Enumerated(EnumType.STRING)
    private Category category;

    public enum VodService {
        NETFLIX, D_ANIME_STORE, HULU, AMAZON_PRIME_VIDEO, U_NEXT, DISNEY_PLUS
    }

    public enum Category {
        DOMESTIC_DRAMA, DOMESTIC_MOVIE, FOREIGN_DRAMA, FOREIGN_MOVIE, KOREAN_DRAMA, VARIETY, ANIME
    }
}
