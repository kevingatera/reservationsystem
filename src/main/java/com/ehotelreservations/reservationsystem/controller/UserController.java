package com.ehotelreservations.reservationsystem.controller;

import java.util.ArrayList;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Role;
import com.ehotelreservations.reservationsystem.model.User;
import com.ehotelreservations.reservationsystem.service.RoleService;
import com.ehotelreservations.reservationsystem.service.SecurityService;
import com.ehotelreservations.reservationsystem.service.UserService;
import com.ehotelreservations.reservationsystem.validator.UserValidator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private RoleService roleService;

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        model.addAttribute("rolesList", roleService.findAll());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPassword());

        return "redirect:/welcome";
    }

    // TODO: This gets handled magically for now
    // @PostMapping("/login")
    // public String login(@ModelAttribute("loginForm") User loginForm, BindingResult bindingResult) {
    //     // userValidator.validate(loginForm, bindingResult);
    //     if (bindingResult.hasErrors()) {
    //         return "login";
    //     }
    //     securityService.autoLogin(loginForm.getUsername(), loginForm.getPassword());
    //     return "redirect:/welcome";
    // }

    @GetMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout, Model model) {
                // model.addAttribute("loginForm", new User());
        if (error != null) {
            logger.error("BAM", error);
            model.addAttribute("error", "Your username and password is invalid." + error);
        }

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({ "/", "/welcome" })
    public String welcome(Model model) {
        return "welcome";
    }

    // }
}
