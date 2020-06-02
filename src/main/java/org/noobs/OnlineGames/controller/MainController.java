package org.noobs.OnlineGames.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.noobs.OnlineGames.entity.User;
import org.noobs.OnlineGames.service.ISecurityService;
import org.noobs.OnlineGames.service.IUserService;
import org.noobs.OnlineGames.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    @Autowired
    private IUserService userService;

    @Autowired
    private ISecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/main";
    }

    @GetMapping("/home")
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Your username and password is invalid.");
        }

        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully.");
        }

        return "home";
    }

    @GetMapping({"/", "/main", "/index"})
    public String index(Model model) {
        return "main";
    }

    @GetMapping({"/update"})
    public String update(Model model, String error) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        model.addAttribute("username", username);
        model.addAttribute("user", new User());
        return "update-user";
    }

    @PostMapping("/update")
    public String update(Model model, @ModelAttribute("user") User userForm, BindingResult bindingResult, HttpServletRequest request) throws ServletException {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "update-user";
        }
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        User currentUser = userService.findByUsername(username);
        userService.updateUser(currentUser, userForm);
        model.addAttribute("message","Your account has been updated.");
        request.logout();
        return "redirect:/home";
    }
    
    @PreAuthorize("#contact.name == authentication.name")
    @GetMapping("/delete/{username}")
    public String delete(Model model, @PathVariable("username") String username, HttpServletRequest request) throws ServletException {
        
        User user = userService.findByUsername(username);
        if(user == null){
            model.addAttribute("message","Oops, something went wrong.");
            return "redirect:/home";
        }
        userService.delete(user);
        model.addAttribute("message","Your account has been deleted.");
        request.logout();
        return "redirect:/home";
    }

}
