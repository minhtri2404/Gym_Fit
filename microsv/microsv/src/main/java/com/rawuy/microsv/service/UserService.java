package com.rawuy.microsv.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rawuy.microsv.entity.User;
import com.rawuy.microsv.repository.UserRepository;




@Service
public class UserService {
    private final UserRepository userRepository;
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Hello from service";
    }

    // get all users
    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    // get user by email
    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findOneByEmail(email);
    }

    // save user
    public User handleSaveUser(User user) {
        User eric = this.userRepository.save(user);
        System.out.println(eric.toString());
        return eric;
    }

    // get detail user
    public User getUserById(long id) {
        return this.userRepository.findOneById(id);
    }

    // update user
    public User updateUser(User user) {
        return this.userRepository.save(user);
    }

    // delete user
    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }



    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }
}
