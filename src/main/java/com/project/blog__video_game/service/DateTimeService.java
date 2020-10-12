package com.project.blog__video_game.service;

import java.time.LocalDateTime;

public class DateTimeService
{
    public static String getCurrentDateTime ()
    {
        LocalDateTime dateTime = LocalDateTime.now();
        String date = getDate(dateTime);
        String time = getTime(dateTime);

        return date + " " + time;
    }

    private static String getDate (LocalDateTime dateTime)
    {
        int _year = dateTime.getYear();
        int _month = dateTime.getMonthValue();
        int _day = dateTime.getDayOfMonth();

        return formatDate(_year, _month, _day);
    }

    private static String formatDate (int _year, int _month, int _day)
    {
        String year, month, day;
        if (_year < 10) year = "0" + _year;
        else year = "" + _year;
        if (_month < 10) month = "0" + _month;
        else month = "" + _month;
        if (_day < 10) day = "0" + _day;
        else day = "" + _day;

        return year + "-" + month + "-" + day;
    }

    private static String getTime (LocalDateTime dateTime)
    {
        int _hour = dateTime.getHour();
        int _minute = dateTime.getMinute();
        int _second = dateTime.getSecond();

        return formatTime(_hour, _minute, _second);
    }

    private static String formatTime (int _hour, int _minute, int _second)
    {
        String hour, minute, second;
        if (_hour < 10) hour = "0" + _hour;
        else hour = "" + _hour;
        if (_minute < 10) minute = "0" + _minute;
        else minute = "" + _minute;
        if (_second < 10) second = "0" + _second;
        else second = "" + _second;

        return hour + ":" + minute + ":" + second;
    }
}
