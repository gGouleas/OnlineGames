package org.noobs.OnlineGames.service;

import org.noobs.OnlineGames.entity.User;



public interface IUserService {
    void save(User user);

    User findByUsername(String username);
}
