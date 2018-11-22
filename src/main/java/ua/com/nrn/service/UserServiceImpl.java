package ua.com.nrn.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.com.nrn.dao.UserDao;
import ua.com.nrn.entity.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {


    private final UserDao userDao;

    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional
    public void save(final User user) {
        userDao.save(user);
    }

    @Override
    public User findUserByUsername(final String username) {
        return userDao.findUserByUsername(username);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return userDao.findUserByUsername(s);
    }
}
