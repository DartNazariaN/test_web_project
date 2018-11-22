package ua.com.nrn.entity;

import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Entity
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int age;
    private String username;
    private String password;
    @Enumerated(EnumType.STRING)
    private ProjectRole role = ProjectRole.ROLE_USER;
    private boolean accNonExp = true;
    private boolean accNonLock = true;
    private boolean credsNonExp = true;
    private boolean enable = true;

    public User() {
    }

    public User(int age, String avatar, String username) {
        this.age = age;
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public int getAge() {
        return age;
    }

    @Override

    public String getUsername() {
        return username;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority(role.name()));
        return authorities;
    }

    @Override
    public boolean isAccountNonExpired() {
        return accNonExp;
    }

    @Override
    public boolean isAccountNonLocked() {
        return accNonLock;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return credsNonExp;
    }

    @Override
    public boolean isEnabled() {
        return enable;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(ProjectRole role) {
        this.role = role;
    }

    public void setAccNonExp(boolean accNonExp) {
        this.accNonExp = accNonExp;
    }

    public void setAccNonLock(boolean accNonLock) {
        this.accNonLock = accNonLock;
    }

    public void setCredsNonExp(boolean credsNonExp) {
        this.credsNonExp = credsNonExp;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }


}
