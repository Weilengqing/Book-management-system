package com.qiqi.service;


import com.qiqi.pojo.Book;

import java.util.List;

public interface BookService {
    List<Book> findAllBook();
    Book findOneBook(String bid);
    List<Book> findName(String name);
    int addBook(Book book);
    int UpdateBook(Book book);
    int deleteBook(Integer id);

}

