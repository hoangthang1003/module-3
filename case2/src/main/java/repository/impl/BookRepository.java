package repository.impl;

import model.Book;
import repository.BaseRepository;
import repository.IBookRepository;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository {
    private static final String SHOW_lIST = ("select b.*,a.name as author,c.name as category from books as b\n" +
            "join author as a on a.id = b.id_author\n" +
            "join category as c on c.id = b.id_category;");

    @Override
    public List<Book> showList() {
        List<Book> bookList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SHOW_lIST);
            ResultSet rs =  preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                int pageSize = rs.getInt("page_size");
                String author = rs.getString("author");
                String category = rs.getString("category");
                Book book = new Book(id,title,pageSize,author,category);
                bookList.add(book);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return bookList;
    }


}
