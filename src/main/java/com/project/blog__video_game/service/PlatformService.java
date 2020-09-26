package com.project.blog__video_game.service;

import com.project.blog__video_game.entity.Platform;
import com.project.blog__video_game.repository.PlatformRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("platformService")
public class PlatformService implements RESTService<Platform>
{
    @Autowired
    private PlatformRepository platformRepository;


    @Override
    public Platform save(Platform obj) {
        return platformRepository.save(obj);
    }

    @Override
    public boolean delete(Integer id) {
        platformRepository.deleteById(id);

        return true;
    }

    @Override
    public Platform getById(Integer id) {
        return platformRepository.findById(id)
                                 .orElse(new Platform());
    }

    @Override
    public List<Platform> getAll() {
        return platformRepository.findAll();
    }
}
