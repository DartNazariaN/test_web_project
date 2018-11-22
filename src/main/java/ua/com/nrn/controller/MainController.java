package ua.com.nrn.controller;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ua.com.nrn.dao.UserDao;
import ua.com.nrn.entity.User;
import ua.com.nrn.service.UserService;
import java.util.logging.Logger;

@Controller
public class MainController {

    private final Logger logger = Logger.getLogger( MainController.class.getName() );

    private final UserService userService;

    private final UserDao userDao;

    private final PasswordEncoder passwordEncoder;

    public MainController(UserService userService, UserDao userDao, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/brandLogo")
    public String brandLogo() {
        logger.info( "The rest api call." );
        return "index";
    }

    @GetMapping("**/gallery")
    public String gallery() {
        return "gallery";
    }

    @GetMapping("**/home")
    public String home() {
        return "home";
    }

    @PostMapping("**/successLoginPage")
    public String successLoginPage() {
        return "redirect:/";
    }

    @PostMapping("**/saveUser")
    public String saveUser(User user) {
        String encode = passwordEncoder.encode(user.getPassword());
        user.setPassword(encode);
        userService.save(user);
        return "redirect:/";
    }
}


