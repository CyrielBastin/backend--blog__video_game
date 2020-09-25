package com.project.blog__video_game.service;

import com.fasterxml.jackson.databind.ObjectMapper;

public class JSONService
{
    public static String stringify(Object obj)
    {
        String jsonString = "";
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            jsonString = objectMapper.writerWithDefaultPrettyPrinter()
                                     .writeValueAsString(obj);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return jsonString;
    }
}
