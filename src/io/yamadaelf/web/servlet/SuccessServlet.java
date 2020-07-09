package io.yamadaelf.web.servlet;
import io.yamadaelf.domain.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/successServlet")
public class SuccessServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) request.getAttribute("user");

        if(user != null){
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("登录成功！5秒钟后跳转到抽卡页面");


            response.setHeader("refresh", "5;url=/elf/draw.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
