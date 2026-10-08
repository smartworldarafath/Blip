package io.sentry.android.core;

import android.util.Log;
import io.sentry.ILogger;
import io.sentry.SentryLevel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidLogger implements ILogger {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.AndroidLogger$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[SentryLevel.values().length];
            a = iArr;
            try {
                iArr[SentryLevel.INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[SentryLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[SentryLevel.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[SentryLevel.FATAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[SentryLevel.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // io.sentry.ILogger
    public final void a(SentryLevel sentryLevel, Throwable th, String str, Object... objArr) {
        if (objArr.length == 0) {
            b(sentryLevel, str, th);
        } else {
            b(sentryLevel, String.format(str, objArr), th);
        }
    }

    @Override // io.sentry.ILogger
    public final void b(SentryLevel sentryLevel, String str, Throwable th) {
        int i = AnonymousClass1.a[sentryLevel.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        Log.d("Sentry", str, th);
                        return;
                    } else {
                        Log.wtf("Sentry", str, th);
                        return;
                    }
                }
                Log.e("Sentry", str, th);
                return;
            }
            Log.w("Sentry", str, th);
            return;
        }
        Log.i("Sentry", str, th);
    }

    @Override // io.sentry.ILogger
    public final void c(SentryLevel sentryLevel, String str, Object... objArr) {
        int i = 5;
        if (objArr.length == 0) {
            int i2 = AnonymousClass1.a[sentryLevel.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 4) {
                        i = 3;
                    } else {
                        i = 7;
                    }
                }
            } else {
                i = 4;
            }
            Log.println(i, "Sentry", str);
            return;
        }
        int i3 = AnonymousClass1.a[sentryLevel.ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 4) {
                    i = 3;
                } else {
                    i = 7;
                }
            }
        } else {
            i = 4;
        }
        Log.println(i, "Sentry", String.format(str, objArr));
    }

    @Override // io.sentry.ILogger
    public final boolean d(SentryLevel sentryLevel) {
        return true;
    }
}
