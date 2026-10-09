package androidx.tracing;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Trace {
    public static long a;
    public static Method b;
    public static Method c;
    public static Method d;

    public static void a(int i, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.a(i, e(str));
            return;
        }
        String e = e(str);
        try {
            if (c == null) {
                c = android.os.Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            c.invoke(null, Long.valueOf(a), e, Integer.valueOf(i));
        } catch (Exception e2) {
            c("asyncTraceBegin", e2);
        }
    }

    public static void b(int i, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.b(i, e(str));
            return;
        }
        String e = e(str);
        try {
            if (d == null) {
                d = android.os.Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            d.invoke(null, Long.valueOf(a), e, Integer.valueOf(i));
        } catch (Exception e2) {
            c("asyncTraceEnd", e2);
        }
    }

    public static void c(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public static boolean d() {
        if (Build.VERSION.SDK_INT >= 29) {
            return TraceApi29Impl.c();
        }
        try {
            if (b == null) {
                a = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                b = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) b.invoke(null, Long.valueOf(a))).booleanValue();
        } catch (Exception e) {
            c("isTagEnabled", e);
            return false;
        }
    }

    public static String e(String str) {
        if (str.length() <= 127) {
            return str;
        }
        return str.substring(0, 127);
    }
}
