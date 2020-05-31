package org.noobs.OnlineGames.service;

import org.noobs.OnlineGames.entity.User;



public interface IUserService {
    
    void save(User user);

    User findByUsername(String username);
    
    User findByEmail(String email);
    
    void updateUser(User currentUser, User newUser);
    
    void delete(User user);
}
