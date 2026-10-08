package kotlin.math;

import defpackage.u2;

/* loaded from: classes.dex */
public abstract class MathKt extends MathKt__MathJVMKt {
    public static int a(double d) {
        if (!Double.isNaN(d)) {
            if (d > 2.147483647E9d) {
                return Integer.MAX_VALUE;
            }
            if (d < -2.147483648E9d) {
                return Integer.MIN_VALUE;
            }
            return (int) Math.round(d);
        }
        u2.g("Cannot round NaN value.");
        return 0;
    }

    public static int b(float f) {
        if (!Float.isNaN(f)) {
            return Math.round(f);
        }
        u2.g("Cannot round NaN value.");
        return 0;
    }

    public static long c(double d) {
        if (!Double.isNaN(d)) {
            return Math.round(d);
        }
        u2.g("Cannot round NaN value.");
        return 0L;
    }
}
