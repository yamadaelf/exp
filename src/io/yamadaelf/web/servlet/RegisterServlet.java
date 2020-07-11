package io.yamadaelf.web.servlet;

import io.yamadaelf.dao.UserDao;
import io.yamadaelf.domain.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Map<String, String[]> map = request.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user, map);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        UserDao dao=new UserDao();
          boolean flag=dao.register(user);
           if(flag==true) {
              dao.save(user);
               response.setContentType("text/html;charset=utf-8");
               response.getWriter().write("注册成功！5秒钟后跳转到登录页面");
               response.setHeader("refresh", "5;url=/elf/login.jsp");
           }
           if(flag==false){
               response.setContentType("text/html;charset=utf-8");
               response.getWriter().write("已存在该用户！请重新注册！");
               response.setHeader("refresh", "5;url=/elf/register.jsp");
           }
        }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}


