import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "LoginServlet" , value = "/login")
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        if ("admin".equals(username) && "123abc".equals(password)) {
            String messLogin = "";
            messLogin = "Đăng nhập thành công vào lúc "+java.time.LocalDateTime.now();
            request.setAttribute("messLogin", messLogin);
            request.getRequestDispatcher("/result.jsp").forward(request, response);
        } else {
            String messLogin = "";
            messLogin = "Tên Đăng Nhập Hoặc Mật Khẩu Không Đúng!";
            request.setAttribute("messLogin", messLogin);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
