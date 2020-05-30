package org.noobs.OnlineGames.service;


public interface ISecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}