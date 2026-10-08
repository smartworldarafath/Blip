package androidx.navigation;

import android.os.Bundle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavType<T> {
    public static final IntNavType a = new NavType(false);
    public static final IntArrayNavType b = new NavType(true);
    public static final LongNavType c = new NavType(false);
    public static final LongArrayNavType d = new NavType(true);
    public static final FloatNavType e = new NavType(false);
    public static final FloatArrayNavType f = new NavType(true);
    public static final BoolNavType g = new NavType(false);

    public NavType(boolean z) {
    }

    public abstract Object a(String str, Bundle bundle);

    public abstract String b();

    public Object c(Object obj, String str) {
        return d(str);
    }

    public abstract Object d(String str);

    public abstract void e(Bundle bundle, String str, Object obj);

    public final String toString() {
        return b();
    }
}
