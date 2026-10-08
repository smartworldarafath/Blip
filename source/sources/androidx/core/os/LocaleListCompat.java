package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LocaleListCompat {
    public final LocaleListPlatformWrapper a;

    static {
        new LocaleList(new Locale[0]);
    }

    public LocaleListCompat(LocaleListPlatformWrapper localeListPlatformWrapper) {
        this.a = localeListPlatformWrapper;
    }

    public static LocaleListCompat d(LocaleList localeList) {
        return new LocaleListCompat(new LocaleListPlatformWrapper(localeList));
    }

    public final Locale a(int i) {
        return this.a.a.get(i);
    }

    public final boolean b() {
        return this.a.a.isEmpty();
    }

    public final int c() {
        return this.a.a.size();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LocaleListCompat) {
            if (this.a.equals(((LocaleListCompat) obj).a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return this.a.a.toString();
    }
}
