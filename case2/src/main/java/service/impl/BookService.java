package service.impl;

import model.Book;
import repository.IBookRepository;
import repository.impl.BookRepository;
import service.IBookService;

import java.util.List;

public class BookService implements IBookService {
    IBookRepository bookRepository = new BookRepository();
    @Override
    public List<Book> showList() {
        return bookRepository.showList();
    }
}
