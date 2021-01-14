package com.bytearch.canal.client.util;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

public class DateUtils {

    private DateUtils(){}
    public static final String HOUR_TIME_FORMAT = "HH:mm";
    public static final String DEFAULT_PATTERN = "yyyy-MM-dd";
    public static final String SIMPLE_PATTERN = "yyyyMMdd";
    public static final String TIME_PATTERN = "yyyy-MM-dd HH:mm:ss";
    public static final String TIME_PATTERN_MS = "yyyy-MM-dd HH:mm:ss.SSS";
    public static final String TIME_MINUTE_PATTERN = "yyyy-MM-dd HH:mm";
    public static final String MONTH_PATTERN = "yyyy-MM";
    public static final String YEAR_PATTERN = "yyyy";
    public static final  String MONTH_PATTERN_YYYYMM = "yyyyMM";
    public static final String MOUTH_AND_DAY_PATTERN = "MM-dd HH:mm";
    public static final long MINUTE = 60000;
    public static final long HOUR = 60 * MINUTE;
    public static final long DAY = 24 * HOUR;

    public static final byte SUB_YEAR = Calendar.MONTH;
    public static final byte SUB_MONTH = Calendar.DAY_OF_MONTH;
    public static final byte SUB_DAY = Calendar.HOUR_OF_DAY;
    public static final byte SUB_HOUR = Calendar.MINUTE;
    public static final byte SUB_MINUTE = Calendar.SECOND;
    public static final byte SUB_SECOND = Calendar.MILLISECOND;
    public static final SimpleDateFormat HOUR_TIME_SIMPLE_FORMAT = new SimpleDateFormat(HOUR_TIME_FORMAT);
    public static final SimpleDateFormat TIME_SIMPLE_FORMAT = new SimpleDateFormat(TIME_PATTERN);

    private static ThreadLocal<Map<String, SimpleDateFormat>> simpleDateFormatThreadLocal = new ThreadLocal<Map<String, SimpleDateFormat>>() {
        @Override
        protected Map<String, SimpleDateFormat> initialValue() {
            return new ConcurrentHashMap<>();
        }
    };

    public static String format(Date date, String pattern) {
        return new SimpleDateFormat(pattern).format(date);
    }

    public static String format(Date date) {
        return format(date, DEFAULT_PATTERN);
    }

    public static Date addDay(Date date, int days) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_YEAR, days);
        return calendar.getTime();
    }

    public static Date subDay(Date date, int days) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DAY_OF_MONTH, (0 - days));
        return cal.getTime();
    }

    public static Date addMinute(Date date, int minutes) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MINUTE, minutes);
        return calendar.getTime();
    }

    /**
     * 日期增加若干小时
     * @param date 日期
     * @param hour 增加的小时数
     * @return 增加后的日期
     */
    public static Date addDateHour(Date date,int hour){
        if (date == null) {
            return null;
        }
        Calendar c = Calendar.getInstance();
        //设置当前日期
        c.setTime(date);
        //日期分钟加1,Calendar.DATE(天),Calendar.HOUR(小时)
        c.add(Calendar.HOUR, hour);
        date = c.getTime();
        return date;
    }
    /**
     * 日期减少若干小时
     * @param date 日期
     * @param hour 增加的小时数
     * @return 增加后的日期
     */
    public static Date subDateHour(Date date,int hour){
        return addDateHour(date, -hour);
    }

    public static Date floor(int field) {
        return floor(field, new Date());
    }

    public static Date floor(int field, Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        switch (field) {
            case SUB_YEAR:
                calendar.set(Calendar.MONTH, 0);
                break;
            case SUB_MONTH:
                calendar.set(Calendar.DAY_OF_MONTH, 1);
                break;
            case SUB_DAY:
                calendar.set(Calendar.HOUR_OF_DAY, 0);
                break;
            case SUB_HOUR:
                calendar.set(Calendar.MINUTE, 0);
                break;
            case SUB_MINUTE:
                calendar.set(Calendar.SECOND, 0);
                break;
            case SUB_SECOND:
                calendar.set(Calendar.MILLISECOND, 0);
                break;
            default:
                break;
        }
        return calendar.getTime();
    }

    public static Date getYesterday() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DAY_OF_YEAR, -1);
        return floor(SUB_DAY, cal.getTime());
    }

    public static String getYesterdayToString() {
        return format(getYesterday(), DEFAULT_PATTERN);

    }

    /**
     * 一个月的最后时间
     */
    public static Date monthLastTime(Date date) {
        Date nextMonthBegin = nextMonthBegin(date);
        return new Date(nextMonthBegin.getTime() - 1L);
    }

    public static Date getOneDayEnd(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);
        return calendar.getTime();
    }

    public static Date getOneDayBegin(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

    /**
     * 下一个月的第一天
     */
    public static Date nextMonthBegin(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, 1);
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

    /**
     * 得到从1970年1月1日到此日期的天数<br>
     * 可以利用返回值进行日期间隔的比较<br>
     * <br>
     * 适用于不需要构造Date对象的情况，如使用System.currentTimeMillis作为参数
     */
    public static int getDayInt(long time) {
        return (int) (time / DAY);
    }

    /**
     * 得到从1970年1月1日到此日期的分钟数
     *
     * @param time
     * @return
     */
    public static int getMinuteInt(long time) {

        return (int) (time / MINUTE);
    }

    /**
     * 使用若干种规则解析时间
     *
     * @see #parse(String, String)
     */
    public static Date parse(String time, String form) {

        try {
            SimpleDateFormat format = getFormat(form);
            return format.parse(time);
        } catch (Exception e) {
            return null;
        }
    }

    /**
     * 使用若干种规则解析时间
     *
     * @see #parse(String, String)
     */
    public static Date parse(String time) {

        try {
            SimpleDateFormat format = getFormat(DEFAULT_PATTERN);
            return format.parse(time);
        } catch (ParseException e) {
            return null;
        }
    }

    /**
     * 使用若干种规则解析时间
     *
     * @see #parse(String, String)
     */
    public static Date enumParse(String time) {

        Date date = parse(time, DEFAULT_PATTERN);
        if (date == null) {
            date = parse(time, TIME_PATTERN);
        }
        return date;
    }

    /**
     * 返回当前月的总天数
     *
     * @return
     */
    public static int getDays() {
        return Calendar.getInstance().getActualMaximum(Calendar.DATE);
    }

    /**
     * 返回是当前月的第几天
     *
     * @param date
     * @return
     */
    public static int getDay(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        return cal.get(Calendar.DAY_OF_MONTH);
    }

    /**
     * 由于SimpleDateFormat很常用，但并不是线程安全，每次new一个出来又有点费
     * 此函数使用ThreadLocal方式缓存SimpleDateFormat，保证性能前提下较好地解决了问题
     */
    public static SimpleDateFormat getFormat(String form) {
        Map<String, SimpleDateFormat> formatMap = simpleDateFormatThreadLocal.get();
        if (formatMap.containsKey(form)) {
            return formatMap.get(form);
        } else {
            SimpleDateFormat format = new SimpleDateFormat(form);
            formatMap.put(form, format);
            return format;
        }
    }

    /**
     * 一个月的第一天
     *
     * @param date
     * @return
     */
    public static Date getOneMonthBegin(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }
    /**
     * @Author: xuzhiyuan
     * @Description:返回指定年份的第一天
     * @Date: 2018/8/29 11:24
     * @Param: [year]
     * @Return: java.util.Date
     */
    public static Date getYearFirstDay(int year){
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(Calendar.YEAR, year);
        Date currYearFirstDay = calendar.getTime();
        return currYearFirstDay;
    }

    /**
     * 获取两个日历的月份之差
     *
     * @param calendarBirth
     * @param calendarNow
     * @return
     */
    public static int getMonthsOfAge(Calendar calendarBirth,
                                     Calendar calendarNow) {
        return (calendarNow.get(Calendar.YEAR) - calendarBirth
                .get(Calendar.YEAR)) * 12 + calendarNow.get(Calendar.MONTH)
                - calendarBirth.get(Calendar.MONTH);
    }

    /**
     * 判断这一天是否是月底
     *
     * @param calendar
     * @return
     */
    public static boolean isEndOfMonth(Calendar calendar) {
        int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
        if (dayOfMonth == calendar.getActualMaximum(Calendar.DAY_OF_MONTH)){
            return true;
        }
        return false;
    }

    /**
     * 计算开始时间和结束时间相差的年月日
     *
     * @param startDate
     * @param endDate
     * @return
     */
    public static int[] getNeturalAge(Calendar startDate, Calendar endDate) {
        int diffYears = 0, diffMonths, diffDays;
        int dayOfBirth = startDate.get(Calendar.DAY_OF_MONTH);
        int dayOfNow = endDate.get(Calendar.DAY_OF_MONTH);
        if (dayOfBirth <= dayOfNow) {
            diffMonths = getMonthsOfAge(startDate, endDate);
            diffDays = dayOfNow - dayOfBirth;
            if (diffMonths == 0) {
                diffDays++;
            }
        } else {
            if (isEndOfMonth(startDate)) {
                if (isEndOfMonth(endDate)) {
                    diffMonths = getMonthsOfAge(startDate, endDate);
                    diffDays = 0;
                } else {
                    endDate.add(Calendar.MONTH, -1);
                    diffMonths = getMonthsOfAge(startDate, endDate);
                    diffDays = dayOfNow + 1;
                }
            } else {
                if (isEndOfMonth(endDate)) {
                    diffMonths = getMonthsOfAge(startDate, endDate);
                    diffDays = 0;
                } else {
                    // 上个月
                    endDate.add(Calendar.MONTH, -1);
                    diffMonths = getMonthsOfAge(startDate, endDate);
                    // 获取上个月最大的一天
                    int maxDayOfLastMonth = endDate.getActualMaximum(Calendar.DAY_OF_MONTH);
                    if (maxDayOfLastMonth > dayOfBirth) {
                        diffDays = maxDayOfLastMonth - dayOfBirth + dayOfNow;
                    } else {
                        diffDays = dayOfNow;
                    }
                }
            }
        }
        // 计算月份时，没有考虑年
        diffYears = diffMonths / 12;
        diffMonths = diffMonths % 12;
        return new int[]{diffYears, diffMonths, diffDays};
    }

    /**
     * 获取指定日期前后num天日期
     *
     * @param date
     * @param num  +-
     * @return Date
     * @author xixingwang@01zhuanche.com
     * @date 2017年7月7日上午10:50:29
     */
    public static Date getDateBeforeDay(Date date, Integer num) {
        if (null == date || null == num) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, num);
        return calendar.getTime();
    }

    /**
     * 获取n个月之前的日期
     * @param num
     * @return
     */
    public static Date getDateBeforeMonth(Integer num) {
        LocalDateTime localDateTime = LocalDateTime.now().minusMonths(num);

        return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
    }

    /**
     * 获取指定日期 前后num小时日期
     *
     * @param date
     * @param num  +-
     * @return Date
     * @author xixingwang@01zhuanche.com
     * @date 2017年7月7日上午10:51:30
     */
    public static Date getDateBeforeHour(Date date, Integer num) {
        if (null == date || null == num) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.HOUR_OF_DAY, num);
        return calendar.getTime();
    }

    /**
     * 获取指定日期 前后num分钟日期
     *
     * @param date
     * @param num  +-
     * @return Date
     * @author xixingwang@01zhuanche.com
     * @date 2017年7月8日下午6:20:58
     */
    public static Date getDateBeforeMinute(Date date, Integer num) {
        if (null == date || null == num) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MINUTE, num);
        return calendar.getTime();
    }

    /**
     * 在time的基础上减去days天
     *
     * @param date 时间
     * @param days 天数
     * @return
     */
    public static Date minusDays(Date date, Integer days) {
        if (null == date || null == days) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DATE, -days);
        return calendar.getTime();
    }

    /** 当前日期 **/
    public static Date now() {
        Calendar cal = Calendar.getInstance();
        return cal.getTime();
    }

    /**
     * 返回的是字符串型的时间，输入的
     */
    public static String addDateMinut(Date date, int x) {
        // 24小时制
        SimpleDateFormat format = new SimpleDateFormat(TIME_PATTERN);
        return format.format(addDateMinutB(date, x));

    }

    /**
     * 获取当天 00:00:00
     * @return
     */
    public static Date getCurrentDate(){
        String day = format(new Date(), DateUtils.DEFAULT_PATTERN) + " 00:00:00";
        return parse(day,TIME_PATTERN);
    }

    /**
     * 获取当天 23:59:59
     * @return
     */
    public static Date getCurrentEndDate(){
        String day = format(new Date(), DateUtils.DEFAULT_PATTERN) + " 23:59:59";
        return parse(day,TIME_PATTERN);
    }
    /**
     * 增加指定时间
     * 返回的是字符串型的时间，输入的
     */
    public static Date addDateMinutB(Date date, int x) {
        if (date == null) {
            return null;
        }
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        // 24小时制
        cal.add(Calendar.MINUTE, x);
        date = cal.getTime();
        return date;
    }

    /**根据传入的参数返回yyyy-MM-dd HH:mm:ss格式的字符串时间*/
    public static String getTimeString(Date date){
        return date == null ? "" : TIME_SIMPLE_FORMAT.format(date);
    }
    /**
     * @Author: xuzhiyuan
     * @Description:判断日期格式是否正确
     * @Date: 2018/5/16 18:17
     * @Param: [date, pattern]
     * @Return: boolean
     *
     */
    public static boolean dateMatching(String dateStr,String pattern){
        SimpleDateFormat format=new SimpleDateFormat(pattern);
        boolean dateFlag = true;
        try {
            Date date =format.parse(dateStr);
        } catch (ParseException e) {
            dateFlag = false;
        }
        return dateFlag;
    }

    /**
     * 毫秒转yyyy-MM-dd HH:mm:ss
     * @param millisecond
     * @return
     */
    public static String millisecond2DateStr(long millisecond) {
        return millisecond2DateStr(millisecond, "yyyy-MM-dd HH:mm:ss");
    }

    /**
     * 毫秒转某格式
     * @param millisecond
     * @param pattern
     * @return
     */
    public static String millisecond2DateStr(long millisecond, String pattern) {
        SimpleDateFormat sdf= new SimpleDateFormat(pattern);
        Date date = new Date(millisecond);
        return sdf.format(date);
    }

    /**返回HH:mm格式的字符串时间*/
    public static String getTimeToString(Date date){
        return HOUR_TIME_SIMPLE_FORMAT.format(date);
    }

    public static Date getDate(String dateStr, String dateFormat) {
        DateFormat df=new SimpleDateFormat(dateFormat);
        Date d = null;
        try {
            d = df.parse(dateStr);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return d;
    }


    public static String addDateMinut(String date, int x)// 返回的是字符串型的时间，输入的
    {
        return getTimeString(addDateMinutB(getDate(date, TIME_PATTERN), x));
    }

    public static Date subMonth(Date date, int month) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, (0 - month));
        return cal.getTime();
    }

    /**
     * 获取毫秒=000的秒级Date，防止Mysql毫秒五入进位1秒
     * @return
     */
    public static Date getNowWithOutMillis(){
        return new Date(System.currentTimeMillis() / 1000 * 1000);
    }

    /**
     * @deprecated
     * 当天0点
     * @param offsetTimeMillis 偏移毫秒数
     */
    public static Date getTodayStart(long offsetTimeMillis){
        long zero = (System.currentTimeMillis()+ java.util.TimeZone.getDefault().getRawOffset()) / (1000*3600*24)*(1000*3600*24) - java.util.TimeZone.getDefault().getRawOffset() + offsetTimeMillis;
        return new Date(zero);
    }

    /**
     * @deprecated
     * 当天23:59:59.999
     * @param offsetTimeMillis 偏移毫秒数
     */
    public static Date getTodayEnd(long offsetTimeMillis){
        long zero = (System.currentTimeMillis()+ java.util.TimeZone.getDefault().getRawOffset()) / (1000*3600*24)*(1000*3600*24) - TimeZone.getDefault().getRawOffset() + (1000*3600*24 - 1) + offsetTimeMillis;
        return new Date(zero);
    }

    /**
     * @author huyaolong
     * @param date LocalDateTime or Date 时间
     * @param n 几个月内
     */
    public static boolean isInNaturalMonth (final Serializable date, final long n){
        if(!(date instanceof LocalDateTime) && !(date instanceof Date)){
            throw new IllegalArgumentException("Arg date must be instanceof LocalDateTime, Date. But " + date.getClass().getName());
        }

        LocalDateTime dateWithOutTz = null;
        if(date instanceof LocalDateTime){
            dateWithOutTz = (LocalDateTime) date;
        }

        if(date instanceof Date){
            dateWithOutTz = LocalDateTime.ofInstant(((Date) date).toInstant(), ZoneId.systemDefault());
        }

        LocalDateTime nMonth=LocalDateTime.now().minusMonths(n);
        if (dateWithOutTz.isAfter(nMonth)){
            return true;
        }

        return false;
    }

    /**
     * 比较两个日期相差的时间
     *
     * @param date1
     * @param date2
     * @return
     */
    public static int differentDays(Date date1, Date date2) {
        Calendar cal1 = Calendar.getInstance();
        cal1.setTime(date1);

        Calendar cal2 = Calendar.getInstance();
        cal2.setTime(date2);
        int day1 = cal1.get(Calendar.DAY_OF_YEAR);
        int day2 = cal2.get(Calendar.DAY_OF_YEAR);

        int year1 = cal1.get(Calendar.YEAR);
        int year2 = cal2.get(Calendar.YEAR);
        if (year1 != year2)   //不是同一年
        {
            int timeDistance = 0;
            for (int i = year1; i < year2; i++) {
                if (i % 4 == 0 && i % 100 != 0 || i % 400 == 0)    //闰年
                {
                    timeDistance += 366;
                } else    //不是闰年
                {
                    timeDistance += 365;
                }
            }

            return timeDistance + (day2 - day1);
        } else    //同一年
        {
            System.out.println("判断day2 - day1 : " + (day2 - day1));
            return day2 - day1;
        }
    }

    /**
     * 获取当天0点的时间字符串
     * @return
     */
    public static String StartDateString(){
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
        Date d=new Date();
        return format.format(d);
    }

    /**
     * 获取当前时间字符串
     * @return
     */
    public static String nowDateString(){
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date d=new Date();
        return format.format(d);
    }

    public static int getDifferenceHour(Date fromDate, Date toDate) {
        long from = fromDate.getTime();
        long to = toDate.getTime();
        int hours = (int) ((from - to)/(1000 * 60 * 60));
        return hours;
    }
    public static int getDifferenceMinute(Date fromDate, Date toDate) {
        long from = fromDate.getTime();
        long to = toDate.getTime();
        int minutes = (int) ((from - to)/(1000 * 60));
        return minutes;
    }
    public static int getDifferenceSecond(Date fromDate, Date toDate) {
        long from = fromDate.getTime();
        long to = toDate.getTime();
        int hours = (int) ((from - to)/ 1000);
        return hours;
    }

    /**
     * 增加指定时间
     */
    public static Date addDateSecound(Date date, int x) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        // 引号里面个格式也可以是 HH:mm:ss或者HH:mm等等，很随意的，不过在主函数调用时，要和输入的变
        // 量day格式一致
        if (date == null)
            return null;
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.SECOND, x);// 24小时制
        date = cal.getTime();
        cal = null;
        return date;
    }

    public  static void main(String[] args){

//        System.out.println(format(getYearFirstDay(2019),TIME_PATTERN));
//        System.out.println(now());
//        System.out.println(getDateBeforeDay(now(), -91));
        System.out.println(format(getDate(getTimeString(now()), DateUtils.DEFAULT_PATTERN), DateUtils.DEFAULT_PATTERN));
        System.out.println(format(getDateBeforeDay(now(), -91), DEFAULT_PATTERN));
        System.out.println(format(new Date(), DateUtils.DEFAULT_PATTERN));

        Date fromDate = getDate("2019-08-10 16:36:33", TIME_PATTERN);
        Date toDate = getDate("2019-08-10 16:29:20", TIME_PATTERN);
        System.out.println(getDifferenceHour(fromDate, toDate));
        System.out.println(getDifferenceMinute(fromDate, toDate));
        System.out.println(getDifferenceSecond(fromDate, toDate));
        System.out.println(getTimeString(addDateSecound(fromDate, 2)));
    }
}