package com.jp.haiyou.attendance.web.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

public class DateFormatUtil {

    public static  String formatDate(String pattern, Date date){
        SimpleDateFormat simpleDateFormat= new SimpleDateFormat(pattern);
        return simpleDateFormat.format(date);
    }

    public static  Date string2Date(String pattern, String date) throws ParseException {
        SimpleDateFormat simpleDateFormat= new SimpleDateFormat(pattern);
        return simpleDateFormat.parse(date);
    }

}
