package ua.com.nrn.dao;

import ua.com.nrn.entity.User;

public interface UserDao {
    void save(User user);

    User findUserByUsername(final String username);



}
