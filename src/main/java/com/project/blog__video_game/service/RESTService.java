package com.project.blog__video_game.service;

import java.util.List;


public interface RESTService<T>
{
    T save (T obj);

    boolean delete (Integer id);

    T getById (Integer id);

    List<T> getAll ();
}
