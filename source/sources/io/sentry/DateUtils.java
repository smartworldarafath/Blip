package io.sentry;

import defpackage.jb;
import defpackage.u2;
import io.sentry.vendor.gson.internal.bind.util.ISO8601Utils;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DateUtils {
    public static BigDecimal a(Double d) {
        return BigDecimal.valueOf(d.doubleValue()).setScale(6, RoundingMode.DOWN);
    }

    public static Date b() {
        return Calendar.getInstance(ISO8601Utils.a).getTime();
    }

    public static Date c(long j) {
        Calendar calendar = Calendar.getInstance(ISO8601Utils.a);
        calendar.setTimeInMillis(j);
        return calendar.getTime();
    }

    public static Date d(String str) {
        try {
            return ISO8601Utils.c(str, new ParsePosition(0));
        } catch (ParseException unused) {
            u2.g(jb.f("timestamp is not ISO format ", str));
            return null;
        }
    }

    public static Date e(String str) {
        try {
            return c(new BigDecimal(str).setScale(3, RoundingMode.DOWN).movePointRight(3).longValue());
        } catch (NumberFormatException unused) {
            u2.g(jb.f("timestamp is not millis format ", str));
            return null;
        }
    }

    public static String f(Date date) {
        int i;
        TimeZone timeZone = ISO8601Utils.a;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        if (timeZone.getRawOffset() == 0) {
            i = 1;
        } else {
            i = 6;
        }
        StringBuilder sb = new StringBuilder(23 + i);
        ISO8601Utils.b(sb, gregorianCalendar.get(1), 4);
        char c = '-';
        sb.append('-');
        ISO8601Utils.b(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        ISO8601Utils.b(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        ISO8601Utils.b(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        ISO8601Utils.b(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        ISO8601Utils.b(sb, gregorianCalendar.get(13), 2);
        sb.append('.');
        ISO8601Utils.b(sb, gregorianCalendar.get(14), 3);
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i2 = offset / 60000;
            int abs = Math.abs(i2 / 60);
            int abs2 = Math.abs(i2 % 60);
            if (offset >= 0) {
                c = '+';
            }
            sb.append(c);
            ISO8601Utils.b(sb, abs, 2);
            sb.append(':');
            ISO8601Utils.b(sb, abs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }
}
