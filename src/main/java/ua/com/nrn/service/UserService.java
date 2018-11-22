package ua.com.nrn.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import ua.com.nrn.entity.User;

public interface UserService extends UserDetailsService {
    void save(final User user);

    User findUserByUsername(final String username);
}
