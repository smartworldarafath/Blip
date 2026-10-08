package io.sentry.kotlin.multiplatform.extensions;

import defpackage.k8;
import io.sentry.kotlin.multiplatform.SentryLevel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SentryLevelExtensions_jvmKt {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[SentryLevel.values().length];
            try {
                iArr[SentryLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SentryLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SentryLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SentryLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SentryLevel.FATAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
            int[] iArr2 = new int[io.sentry.SentryLevel.values().length];
            try {
                iArr2[io.sentry.SentryLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[io.sentry.SentryLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[io.sentry.SentryLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[io.sentry.SentryLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[io.sentry.SentryLevel.FATAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            b = iArr2;
        }
    }

    public static final io.sentry.SentryLevel a(SentryLevel sentryLevel) {
        sentryLevel.getClass();
        int i = WhenMappings.a[sentryLevel.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return io.sentry.SentryLevel.FATAL;
                        }
                        k8.e();
                        return null;
                    }
                    return io.sentry.SentryLevel.ERROR;
                }
                return io.sentry.SentryLevel.WARNING;
            }
            return io.sentry.SentryLevel.INFO;
        }
        return io.sentry.SentryLevel.DEBUG;
    }

    public static final SentryLevel b(io.sentry.SentryLevel sentryLevel) {
        sentryLevel.getClass();
        int i = WhenMappings.b[sentryLevel.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return SentryLevel.FATAL;
                        }
                        k8.e();
                        return null;
                    }
                    return SentryLevel.ERROR;
                }
                return SentryLevel.WARNING;
            }
            return SentryLevel.INFO;
        }
        return SentryLevel.DEBUG;
    }
}
