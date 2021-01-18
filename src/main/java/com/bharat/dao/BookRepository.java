package com.bharat.dao;

import com.bharat.entity.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

@CrossOrigin("http://localhost:4200")
public interface BookRepository extends JpaRepository<Book, Long> {

    Page<Book> findByGenreId(@RequestParam("id")long id, Pageable pageable);

    Page<Book> findByNameContaining(@RequestParam("name")String name, Pageable pageable);
}
