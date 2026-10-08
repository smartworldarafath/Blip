package io.sentry.android.replay;

import android.annotation.SuppressLint;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"PrivateApi"})
/* loaded from: classes.dex */
public abstract class WindowSpy {
    public static final Lazy a;
    public static final Lazy b;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        a = LazyKt.a(lazyThreadSafetyMode, WindowSpy$decorViewClass$2.k);
        b = LazyKt.a(lazyThreadSafetyMode, WindowSpy$windowField$2.k);
    }
}
