package org.noobs.OnlineGames.controller;

import org.noobs.OnlineGames.entity.User;
import org.noobs.OnlineGames.service.UserServiceImpl;
import org.noobs.OnlineGames.ultil.CustomErrorType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserRestController {

    public static final Logger logger = LoggerFactory.getLogger(UserRestController.class);

    @Autowired
    UserServiceImpl userService;

    // -------------------Retrieve All Users---------------------------------------------
    /*   @RequestMapping(value = "/user/", method = RequestMethod.GET)
    public ResponseEntity<List<User>> listAllUsers() {
        List<User> users = userService.findAllUsers();
        if (users.isEmpty()) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
            // You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<User>>(users, HttpStatus.OK);
    } */
    // -------------------Retrieve User By username------------------------------------------
//    @RequestMapping(value = "/username/{username}", method = RequestMethod.GET)
//    public ResponseEntity<?> getUserById(@PathVariable("username") String username) {
//        logger.info("Fetching User with username {}", username);
//        User user = userService.findByUsername(username);
//        if (user == null) {
//            logger.error("User with username {} not found.", username);
//            return new ResponseEntity(new CustomErrorType("User with username " + username
//                    + " not found"), HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<User>(user, HttpStatus.OK);
//    }
    // -------------------Retrieve User By email------------------------------------------
    @RequestMapping(value = "/email/{email}", method = RequestMethod.GET)
    public ResponseEntity<?> getUserByEmail(@PathVariable("email") String email) {
        logger.info("Fetching User with email {}", email);
        User user = userService.findByEmail(email);
        if (user == null) {
            logger.error("User with email {} not found.", email);
            return new ResponseEntity(new CustomErrorType("User with email " + email
                    + " not found"), HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<User>(user, HttpStatus.OK);
    }

    // ------------------- Update User ------------------------------------------------
//    @RequestMapping(value = "/username/{username}", method = RequestMethod.POST)
//    public ResponseEntity<?> updateUser(@PathVariable("username") String username, @RequestBody User user) {
//        logger.info("Updating User with username {}", username);
//
//        User currentUser = userService.findByUsername(username);
//
//        if (currentUser == null) {
//            logger.error("Unable to update. User with username {} not found.", username);
//            return new ResponseEntity(new CustomErrorType("Unable to upate. User with username " + username + " not found."),
//                    HttpStatus.NOT_FOUND);
//        }
//
//        userService.updateUser(currentUser,user);
//        return new ResponseEntity<User>(currentUser, HttpStatus.OK);
//    }
    // ------------------- Delete User-----------------------------------------
//    @RequestMapping(value = "/username/{username}", method = RequestMethod.GET)
//    public ResponseEntity<?> deleteUser(@PathVariable("username") String username) {
//        logger.info("Fetching & Deleting User with username {}", username);
//
//        User user = userService.findByUsername(username);
//        if (user == null) {
//            logger.error("Unable to delete. User with username {} not found.", username);
//            return new ResponseEntity(new CustomErrorType("Unable to delete. User with username " + username + " not found."),
//                    HttpStatus.NOT_FOUND);
//        }
//        userService.delete(user);
//        return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
//    }

}
