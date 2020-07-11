package io.yamadaelf.dao;

import  io.yamadaelf.domain.User;
import io.yamadaelf.util.JDBCUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;;

public class UserDao {
private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    public User login(User loginUser){
        try {
            String sql ="select * from user where username = ? and password =?";
            User user = template.queryForObject(sql,
                    new BeanPropertyRowMapper<User>(User.class),
                    loginUser.getUsername(), loginUser.getPassword());

            return user;
        } catch (EmptyResultDataAccessException e) {

            return null;
        }
    }
    public User findByUsername(String username) {
        User user = null;
        try {
            String sql = "select * from user where username = ?";
            user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username);
        } catch (Exception e) {

        }

        return user;
    }

    public boolean register(User user) {
        User u = findByUsername(user.getUsername());
        if (u != null) {
            return false;
        }
        else {return true;}
    }
    public void save(User user) {
        String sql = "insert into user values(null,?,?)";

        template.update(sql, user.getUsername(), user.getPassword());
    }
}
