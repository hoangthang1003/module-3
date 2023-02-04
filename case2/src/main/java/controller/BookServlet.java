package controller;

import model.Book;
import service.IBookService;
import service.impl.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookServlet", value = "/book")
public class BookServlet extends HttpServlet {
    IBookService bookService = new BookService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addBook(request, response);
                break;
            case "delete":
                deleteBook(request, response);
                break;
            default:
                showList(request, response);
        }
    }

    private void deleteBook(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        bookService.deleteBook(id);
        showList(request, response);
    }

    private void addBook(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        int pageSize = Integer.parseInt(request.getParameter("pageSize"));
        int idAuthor = Integer.parseInt(request.getParameter("idAuthor"));
        int idCategory = Integer.parseInt(request.getParameter("idCategory"));
        Book book = new Book(title, pageSize, idAuthor, idCategory);
        bookService.addBook(book);
        showList(request, response);


    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Book> bookList = bookService.showList();
        request.setAttribute("bookList", bookList);
        try {
            request.getRequestDispatcher("/view/book.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            default:
                showList(request, response);
        }
    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/view/add.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
