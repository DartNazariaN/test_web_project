package ua.com.nrn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.nrn.dao.UserDao;
import ua.com.nrn.entity.User;

@Controller
public class MainController {

    @Autowired
    private UserDao userDao;

    @GetMapping("/")
    public String index(){
        return "index";
    }

    @PostMapping("/saveUser")
    public String saveUser(
            @RequestParam("username") String name,
            @RequestParam("password") String password,
            @RequestParam("age") int age) {
        User build = User.builder().username(name).password(password).age(age).build();
        userDao.save(build);
        return "index";
    }

    @GetMapping("/brandLogo")
    public String brandLogo() {
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
}
