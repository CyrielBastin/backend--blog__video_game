package com.project.blog__video_game.service;

import com.project.blog__video_game.entity.Article;
import com.project.blog__video_game.entity.Commentary;
import com.project.blog__video_game.entity.User;
import com.project.blog__video_game.repository.ArticleRepository;
import com.project.blog__video_game.repository.CommentaryRepository;
import com.project.blog__video_game.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("userService")
public class UserService implements RESTService<User>
{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ArticleRepository articleRepository;
    @Autowired
    private CommentaryRepository commentaryRepository;


    @Override
    public User save(User obj) {
        return userRepository.save(obj);
    }

    @Override
    public boolean delete(Integer id) {
        userRepository.deleteById(id);

        return true;
    }

    @Override
    public User getById(Integer id) {
        return userRepository.findById(id)
                             .orElse(new User());
    }

    @Override
    public List<User> getAll() {
        return userRepository.findAll();
    }

    public List<Article> getAllArticlesByUserId (Integer id)
    {
        return articleRepository.findAllByUserId(id);
    }

    public List<Commentary> getAllCommentariesByUserId (Integer id)
    {
        return commentaryRepository.findAllByUserId(id);
    }
}
