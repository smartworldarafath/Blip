package okhttp3;

import defpackage.jb;
import defpackage.u2;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Cookie {
    public static final Pattern j = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern l = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    public final String a;
    public final String b;
    public final long c;
    public final String d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static int a(int i, int i2, String str, boolean z) {
            boolean z2;
            while (i < i2) {
                char charAt = str.charAt(i);
                if ((charAt >= ' ' || charAt == '\t') && charAt < 127 && (('0' > charAt || charAt >= ':') && (('a' > charAt || charAt >= '{') && (('A' > charAt || charAt >= '[') && charAt != ':')))) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2 == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        public static long b(int i, String str) {
            int a = a(0, i, str, false);
            Matcher matcher = Cookie.m.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            while (a < i) {
                int a2 = a(a + 1, i, str, true);
                matcher.region(a, a2);
                if (i3 == -1 && matcher.usePattern(Cookie.m).matches()) {
                    String group = matcher.group(1);
                    group.getClass();
                    i3 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    group2.getClass();
                    i6 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    i7 = Integer.parseInt(group3);
                } else if (i4 == -1 && matcher.usePattern(Cookie.l).matches()) {
                    String group4 = matcher.group(1);
                    group4.getClass();
                    i4 = Integer.parseInt(group4);
                } else {
                    if (i5 == -1) {
                        Pattern pattern = Cookie.k;
                        if (matcher.usePattern(pattern).matches()) {
                            String group5 = matcher.group(1);
                            group5.getClass();
                            Locale locale = Locale.US;
                            locale.getClass();
                            String lowerCase = group5.toLowerCase(locale);
                            lowerCase.getClass();
                            String pattern2 = pattern.pattern();
                            pattern2.getClass();
                            i5 = StringsKt.r(pattern2, lowerCase, 0, false, 6) / 4;
                        }
                    }
                    if (i2 == -1 && matcher.usePattern(Cookie.j).matches()) {
                        String group6 = matcher.group(1);
                        group6.getClass();
                        i2 = Integer.parseInt(group6);
                    }
                }
                a = a(a2 + 1, i, str, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += 1900;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 >= 1601) {
                if (i5 != -1) {
                    if (1 <= i4 && i4 < 32) {
                        if (i3 >= 0 && i3 < 24) {
                            if (i6 >= 0 && i6 < 60) {
                                if (i7 >= 0 && i7 < 60) {
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.d);
                                    gregorianCalendar.setLenient(false);
                                    gregorianCalendar.set(1, i2);
                                    gregorianCalendar.set(2, i5 - 1);
                                    gregorianCalendar.set(5, i4);
                                    gregorianCalendar.set(11, i3);
                                    gregorianCalendar.set(12, i6);
                                    gregorianCalendar.set(13, i7);
                                    gregorianCalendar.set(14, 0);
                                    return gregorianCalendar.getTimeInMillis();
                                }
                                u2.g("Failed requirement.");
                                return 0L;
                            }
                            u2.g("Failed requirement.");
                            return 0L;
                        }
                        u2.g("Failed requirement.");
                        return 0L;
                    }
                    u2.g("Failed requirement.");
                    return 0L;
                }
                u2.g("Failed requirement.");
                return 0L;
            }
            u2.g("Failed requirement.");
            return 0L;
        }
    }

    public Cookie(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = str;
        this.b = str2;
        this.c = j2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (cookie.a.equals(this.a) && cookie.b.equals(this.b) && cookie.c == this.c && cookie.d.equals(this.d) && cookie.e.equals(this.e) && cookie.f == this.f && cookie.g == this.g && cookie.h == this.h && cookie.i == this.i) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.i) + jb.b(jb.b(jb.b(jb.c(this.e, jb.c(this.d, jb.a(jb.c(this.b, jb.c(this.a, 527, 31), 31), 31, this.c), 31), 31), 31, this.f), 31, this.g), 31, this.h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('=');
        sb.append(this.b);
        if (this.h) {
            long j2 = this.c;
            if (j2 == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String format = DatesKt.a.get().format(new Date(j2));
                format.getClass();
                sb.append(format);
            }
        }
        if (!this.i) {
            sb.append("; domain=");
            sb.append(this.d);
        }
        sb.append("; path=");
        sb.append(this.e);
        if (this.f) {
            sb.append("; secure");
        }
        if (this.g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
