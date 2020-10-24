package com.project.blog__video_game.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import static com.project.blog__video_game.security.SecurityConstants.SIGN_UP_URL;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter
{
    @Autowired
    private UserDetailsServiceImpl userDetailsService;

    @Override
    protected void configure (HttpSecurity http) throws Exception
    {
        http.cors().and().csrf().disable().authorizeRequests()
                .antMatchers(HttpMethod.POST, SIGN_UP_URL).permitAll()
				.antMatchers(HttpMethod.GET, "/REST/articles").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/articles/{id}").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/articles/desc").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/articles/{id}/commentaries/desc").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/article-types/**").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/commentaries/**").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/genres/**").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/platforms/**").permitAll()
                .antMatchers(HttpMethod.GET, "/REST/video-games/**").permitAll()
				.antMatchers(HttpMethod.GET, "/REST/users/**").permitAll()
                .anyRequest().authenticated()
                .and()
                .addFilter(new AuthenticationFilter(authenticationManager()))
                .addFilter(new AuthorizationFilter(authenticationManager()))
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
    }

    @Bean
    CorsConfigurationSource corsConfigurationSource ()
    {
        final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", new CorsConfiguration().applyPermitDefaultValues());

        return source;
    }

    @Override
    public void configure (AuthenticationManagerBuilder auth) throws Exception
    {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder);
    }
}
