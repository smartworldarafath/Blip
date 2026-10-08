package com.google.common.base;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Preconditions {
    public static String a(String str, int i, int i2) {
        if (i < 0) {
            return Strings.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return Strings.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        u2.g(q.g(i2, "negative size: "));
        return null;
    }

    public static void b(int i, int i2, String str, boolean z) {
        if (z) {
            return;
        }
        u2.g(Strings.a(str, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public static void c(int i, String str, boolean z) {
        if (z) {
            return;
        }
        u2.g(Strings.a(str, Integer.valueOf(i)));
    }

    public static void d(String str, boolean z) {
        if (z) {
            return;
        }
        u2.g(str);
    }

    public static void e(boolean z) {
        if (z) {
            return;
        }
        fe.h();
    }

    public static void f(boolean z, String str, long j) {
        if (z) {
            return;
        }
        u2.g(Strings.a(str, Long.valueOf(j)));
    }

    public static void g(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        u2.g(Strings.a(str, obj));
    }

    public static void h(int i, int i2) {
        String a;
        if (i >= 0 && i < i2) {
            return;
        }
        if (i >= 0) {
            if (i2 < 0) {
                u2.g(q.g(i2, "negative size: "));
                return;
            }
            a = Strings.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            a = Strings.a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(a);
    }

    public static void i(Object obj) {
        obj.getClass();
    }

    public static void j(Object obj, String str) {
        if (obj != null) {
            return;
        }
        d.f(str);
    }

    public static void k(int i, int i2) {
        if (i >= 0 && i <= i2) {
            return;
        }
        u2.o(a("index", i, i2));
    }

    public static void l(int i, int i2, int i3) {
        String a;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                a = Strings.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                a = a("end index", i2, i3);
            }
        } else {
            a = a("start index", i, i3);
        }
        throw new IndexOutOfBoundsException(a);
    }

    public static void m(String str, boolean z) {
        if (z) {
            return;
        }
        u2.l(str);
    }

    public static void n(boolean z) {
        if (z) {
            return;
        }
        d.d();
    }
}
