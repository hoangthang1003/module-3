package repository;

import model.Book;

import java.util.List;

public interface IBookRepository {
    public List<Book> showList();
    public boolean addBook(Book book);
    public boolean deleteBook(int id);
}
