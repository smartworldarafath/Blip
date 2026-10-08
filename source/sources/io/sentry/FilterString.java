package io.sentry;

import java.util.Objects;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FilterString {
    public final String a;
    public final Pattern b;

    public FilterString(String str) {
        Pattern pattern;
        this.a = str;
        try {
            pattern = Pattern.compile(str);
        } catch (Throwable unused) {
            Sentry.b().j().getLogger().c(SentryLevel.DEBUG, "Only using filter string for String comparison as it could not be parsed as regex: %s", str);
            pattern = null;
        }
        this.b = pattern;
    }

    public final boolean equals(Object obj) {
        if (obj != null && FilterString.class == obj.getClass()) {
            return Objects.equals(this.a, ((FilterString) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a);
    }
}
