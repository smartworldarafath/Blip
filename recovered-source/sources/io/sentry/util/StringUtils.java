package io.sentry.util;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StringUtils {
    public static final Charset a = Charset.forName("UTF-8");
    public static final Pattern b = Pattern.compile("[\\W_]+");

    public static String a(String str) {
        if (str != null && !str.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            String substring = str.substring(0, 1);
            Locale locale = Locale.ROOT;
            sb.append(substring.toUpperCase(locale));
            sb.append(str.substring(1).toLowerCase(locale));
            return sb.toString();
        }
        return str;
    }

    public static String b(String str) {
        if (str != null && str.startsWith("\"") && str.endsWith("\"")) {
            return str.substring(1, str.length() - 1);
        }
        return str;
    }
}
