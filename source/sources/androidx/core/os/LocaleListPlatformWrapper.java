package androidx.core.os;

import android.os.LocaleList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LocaleListPlatformWrapper implements LocaleListInterface {
    public final LocaleList a;

    public LocaleListPlatformWrapper(LocaleList localeList) {
        this.a = localeList;
    }

    public final boolean equals(Object obj) {
        return this.a.equals(((LocaleListPlatformWrapper) ((LocaleListInterface) obj)).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
