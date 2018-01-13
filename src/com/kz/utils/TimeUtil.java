package com.kz.utils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {

    public static final String DATE_FORMAT = "yyyy-MM-dd HH:mm";


    public static final String DATE_FORMAT4 = "yyyy-MM-dd";

    public static final String DATE_FORMAT2 = "yyyy-MM-dd HH:mm:ss";

    public static final String DATE_FORMAT1 = "yyyyMMddHHmmss";
   
    /**
     * 转换时间格式
     * @param seconds
     * @param format
     * @return 
     */
    public static String timeStamp2Date(String seconds, String format) {
        if (seconds == null || seconds.isEmpty() || seconds.equals("null")) {
            return "";
        }
        if (format == null || format.isEmpty())
            format = DATE_FORMAT2;
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(new Date(Long.valueOf(seconds + "000")));
    }
}
