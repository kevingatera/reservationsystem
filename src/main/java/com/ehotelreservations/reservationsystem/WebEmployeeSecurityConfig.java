package com.ehotelreservations.reservationsystem;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.web.bind.annotation.RequestMapping;

@Configuration
@EnableWebSecurity
@RequestMapping("/employee")
@Order(2)
public class WebEmployeeSecurityConfig extends WebSecurityConfigurerAdapter {

  @Bean
  public AuthenticationManager customAuthenticationManager() throws Exception {
    return authenticationManager();
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {

    http.authorizeRequests()//
        .antMatchers("/resources/**", "/employee/registration").permitAll()//
        // .antMatchers("/employee/**").hasAuthority("EMPLOYEE")//
        .anyRequest().authenticated()//
        .and()//
        .formLogin()//
        // Submit URL of employee login page.
        .loginProcessingUrl("/employee/login") // Submit URL
        .loginPage("/employee/login")//
        .failureUrl("/employee/login?error=true")//
        .defaultSuccessUrl("/employee/dashboard/index")//
        .permitAll()//
        .and()//
        .logout()//
        .permitAll();
  }

  @Override
  public void configure(WebSecurity web) throws Exception {
    web.ignoring()//
        .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
  }
}