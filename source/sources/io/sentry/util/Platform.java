package io.sentry.util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Platform {
    public static final boolean a;
    public static final boolean b;

    static {
        boolean z;
        try {
            a = "The Android Project".equals(System.getProperty("java.vendor"));
        } catch (Throwable unused) {
            a = false;
        }
        try {
            String property = System.getProperty("java.specification.version");
            if (property != null) {
                if (Double.valueOf(property).doubleValue() >= 9.0d) {
                    z = true;
                } else {
                    z = false;
                }
                b = z;
                return;
            }
            b = false;
        } catch (Throwable unused2) {
            b = false;
        }
    }
}
