package com.bharat.dao;

import com.bharat.entity.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface GenreRepository extends JpaRepository<Genre, Long> {
}
