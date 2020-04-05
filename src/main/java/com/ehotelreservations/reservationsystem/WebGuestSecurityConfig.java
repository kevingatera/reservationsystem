package com.ehotelreservations.reservationsystem;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@Order(3)
public class WebGuestSecurityConfig extends WebSecurityConfigurerAdapter {

  @Bean
  public AuthenticationManager customAuthenticationManager() throws Exception {
    return authenticationManager();
  }

  

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http.authorizeRequests()//
        .antMatchers("/resources/**", "/guest/registration").permitAll()//
        .antMatchers("/guest/**").hasAuthority("GUEST")//
        .anyRequest().authenticated()//
        .and()//
        .formLogin()//
        // Submit URL of guest login page.
        .loginProcessingUrl("/guest/login") // Submit URL
        .loginPage("/guest/login")//
        .failureUrl("/guest/login?error=true")//
        .defaultSuccessUrl("/")//
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