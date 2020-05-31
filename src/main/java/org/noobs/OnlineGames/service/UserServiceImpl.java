package org.noobs.OnlineGames.service;

import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import org.noobs.OnlineGames.entity.User;
import org.noobs.OnlineGames.repository.RoleRepository;
import org.noobs.OnlineGames.repository.UserRepository;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(Arrays.asList(roleRepository.findById(1)));
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    
    @Override
    public void updateUser(User currentUser, User newUser) {
        
        currentUser.setUsername(newUser.getUsername());
        currentUser.setEmail(newUser.getEmail());
        currentUser.setPassword(bCryptPasswordEncoder.encode(newUser.getPassword()));
        currentUser.setPasswordConfirm(newUser.getPasswordConfirm());
        
    //    currentUser.setRoles(null);
        userRepository.save(currentUser);
    }

    @Override
    public void delete(User user) {
        userRepository.delete(user);
    }
}
