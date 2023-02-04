package service;

import model.Book;

import java.util.List;

public interface IBookService {
    public List<Book> showList();
    public boolean addBook(Book book);
    public boolean deleteBook(int id);
}
