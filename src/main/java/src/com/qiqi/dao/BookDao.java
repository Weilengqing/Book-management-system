package com.qiqi.dao;

import com.qiqi.pojo.Book;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface BookDao {
    @Select("select * from t_book")
    List<Book> findAllBook();
    @Select("select * from t_book where bid=#{bid}")
    Book findOne(String sid);
    @Select("select * from t_book where name like concat(concat('%', #{name}),'%');")
    List<Book> findName(String name);
    @Insert("insert into t_book(bid,name,type,price) values (#{bid},#{name},#{type},#{price})")
     int insertBook(Book book);
    @Update("update t_book set bid=#{bid},name=#{name},type=#{type},price=#{price} where bid=#{bid}")
    int updateBook(Book book);
    @Delete("delete from t_book where id=#{id}")
    int  deleteBook( Integer id);
}
