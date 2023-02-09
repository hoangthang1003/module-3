package controller;

import model.Student;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controller.ListServlet",value = "/list")
public class ListServlet extends HttpServlet {
    private static  List<Student> list = new ArrayList<>();
    static {
        list.add(new Student(1, "Nam", true, 66));
        list.add(new Student(2, "Hùng", true, 60));
        list.add(new Student(3, "Long", true, 50));
        list.add(new Student(4, "Bá", true, 70));
        list.add(new Student(5, "Thắng", true, 90));
        list.add(new Student(6, "Hiền", false, 100));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("list",list);
        request.getRequestDispatcher("/list.jsp").forward(request,response);

    }
}
