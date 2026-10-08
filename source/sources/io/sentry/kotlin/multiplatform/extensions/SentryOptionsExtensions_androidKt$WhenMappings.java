package io.sentry.kotlin.multiplatform.extensions;

import io.sentry.kotlin.multiplatform.SentryReplayOptions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class SentryOptionsExtensions_androidKt$WhenMappings {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[SentryReplayOptions.Quality.values().length];
        try {
            iArr[SentryReplayOptions.Quality.LOW.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[SentryReplayOptions.Quality.MEDIUM.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[SentryReplayOptions.Quality.HIGH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        a = iArr;
    }
}
