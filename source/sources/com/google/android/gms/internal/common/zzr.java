package com.google.android.gms.internal.common;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzr {
    public static void a(int i, int i2) {
        String a;
        if (i >= 0 && i < i2) {
            return;
        }
        if (i >= 0) {
            if (i2 < 0) {
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 15);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            }
            a = zzx.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            a = zzx.a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(a);
    }

    public static void b(int i, int i2, int i3) {
        String c;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                c = zzx.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                c = c("end index", i2, i3);
            }
        } else {
            c = c("start index", i, i3);
        }
        throw new IndexOutOfBoundsException(c);
    }

    public static String c(String str, int i, int i2) {
        if (i < 0) {
            return zzx.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzx.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 15);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }
}
