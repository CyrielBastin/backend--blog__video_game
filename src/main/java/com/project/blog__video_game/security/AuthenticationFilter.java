package com.project.blog__video_game.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.blog__video_game.entity.User;
import com.project.blog__video_game.service.UserService;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.security.Key;
import java.util.ArrayList;
import java.util.Date;

import static com.project.blog__video_game.security.SecurityConstants.*;

public class AuthenticationFilter extends UsernamePasswordAuthenticationFilter
{
    private AuthenticationManager authenticationManager;
    @Resource(name = "userService")
    private UserService userService;

    public AuthenticationFilter (AuthenticationManager authenticationManager) {
        this.authenticationManager = authenticationManager;
    }

    @Override
    public Authentication attemptAuthentication (
            HttpServletRequest req,
            HttpServletResponse res
    ) throws AuthenticationException
    {
        try {
            User user = new ObjectMapper().readValue(req.getInputStream(), User.class);

            return authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            user.getUsername(),
                            user.getPassword(),
                            new ArrayList<>()
                    )
            );
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void successfulAuthentication (
            HttpServletRequest req,
            HttpServletResponse res,
            FilterChain chain,
            Authentication auth
    ) throws IOException, ServletException
    {
        String username = ((org.springframework.security.core.userdetails.User) auth.getPrincipal()).getUsername();
        Date exp = new Date(System.currentTimeMillis() + EXPIRATION_TIME);
        Key key = Keys.hmacShaKeyFor(KEY.getBytes());
        Claims claims = Jwts.claims().setSubject(username);
        String token = Jwts.builder().setClaims(claims).signWith(key, SignatureAlgorithm.HS512).setExpiration(exp).compact();

        res.setContentType("text/plain");
        res.setCharacterEncoding("UTF-8");
        res.getWriter().write(token);
    }
}
