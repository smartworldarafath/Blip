package androidx.work;

import android.util.Log;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Logger {
    public static final Object a = new Object();
    public static volatile LogcatLogger b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LogcatLogger extends Logger {
        public final int c;

        public LogcatLogger(int i) {
            this.c = i;
        }

        @Override // androidx.work.Logger
        public final void a(String str, String str2) {
            if (this.c <= 3) {
                Log.d(str, str2);
            }
        }

        @Override // androidx.work.Logger
        public final void b(String str, String str2) {
            if (this.c <= 6) {
                Log.e(str, str2);
            }
        }

        @Override // androidx.work.Logger
        public final void c(String str, String str2, Throwable th) {
            if (this.c <= 6) {
                Log.e(str, str2, th);
            }
        }

        @Override // androidx.work.Logger
        public final void e(String str, String str2) {
            if (this.c <= 4) {
                Log.i(str, str2);
            }
        }

        @Override // androidx.work.Logger
        public final void g(String str, String str2) {
            if (this.c <= 5) {
                Log.w(str, str2);
            }
        }
    }

    public static Logger d() {
        LogcatLogger logcatLogger;
        synchronized (a) {
            try {
                if (b == null) {
                    b = new LogcatLogger(3);
                }
                logcatLogger = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return logcatLogger;
    }

    public static String f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public abstract void a(String str, String str2);

    public abstract void b(String str, String str2);

    public abstract void c(String str, String str2, Throwable th);

    public abstract void e(String str, String str2);

    public abstract void g(String str, String str2);
}
