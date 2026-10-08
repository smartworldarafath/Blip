package kotlinx.coroutines.internal;

import kotlin.text.StringsKt;

/* loaded from: classes.dex */
public abstract class SystemPropsKt {
    public static final int a() {
        return SystemPropsKt__SystemPropsKt.a;
    }

    public static final long b(String str, long j, long j2, long j3) {
        String c = c(str);
        if (c == null) {
            return j;
        }
        Long T = StringsKt.T(c);
        if (T != null) {
            long longValue = T.longValue();
            if (j2 <= longValue && longValue <= j3) {
                return longValue;
            }
            throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
        }
        throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + c + '\'').toString());
    }

    public static final String c(String str) {
        int i = SystemPropsKt__SystemPropsKt.a;
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static int d(String str, int i, int i2) {
        int i3;
        if ((i2 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        } else {
            i3 = 2097150;
        }
        return (int) b(str, i, 1L, i3);
    }
}
