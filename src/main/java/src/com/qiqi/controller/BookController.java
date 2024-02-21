package com.qiqi.controller;

import com.qiqi.pojo.Book;
import com.qiqi.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
public class BookController {
    @Autowired
    private BookService bookService;
    @RequestMapping("findAll")
    public String findAllBook( Model model){
        model.addAttribute("bookList",bookService.findAllBook());
        return "Book";
    }
    @RequestMapping("addBook")
    @ResponseBody
    public String addBook(Book book ){
        int row= bookService.addBook(book);
        if(row>0)
            return "ok";
        else
            return "error";

    }
    @RequestMapping("findOneBook")
    @ResponseBody
    public Book findOneBook(String bid){
        return bookService.findOneBook(bid);
    }

    @RequestMapping("findName")
    public String findName(String name,Model model){
        if (name!=null&&!name.equals("")){
            List<Book> list=bookService.findName(name);
            model.addAttribute("bookList",list);
            return "Book";
        }
        model.addAttribute("error","未查询到相关数据，请输入已有内容");
        return "Book";
    }

    @RequestMapping("updateBook")
    @ResponseBody
    public String updateBook(Book book){
     int row= bookService.UpdateBook(book);
        if(row>0)
            return "ok";
        else
            return "error";
    }
    @RequestMapping("deleteBook")
    @ResponseBody
    public String deleteBook(Integer id){
        int row=bookService.deleteBook(id);
        if(row>0)
            return "ok";
        else
            return "error";
    }
}
