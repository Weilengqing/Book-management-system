package com.qiqi.service.impl;

import com.qiqi.dao.BookDao;
import com.qiqi.pojo.Book;
import com.qiqi.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;
    @Override
    public List<Book> findAllBook() {
        return bookDao.findAllBook();
    }

    @Override
    public Book findOneBook(String bid) {
        return bookDao.findOne(bid);
    }

    @Override
    public List<Book> findName(String name) {
        return bookDao.findName(name);
    }
    @Override
    public int addBook(Book book) {
      return  bookDao.insertBook(book);
    }

    @Override
    public int UpdateBook(Book book) {
        return   bookDao.updateBook(book);
    }

    @Override
    public int deleteBook(Integer id) {
      return   bookDao.deleteBook(id);
    }
}
