package io.sentry.android.replay;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowManagerSpy {
    public static final Lazy a;
    public static final Lazy b;
    public static final Lazy c;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        a = LazyKt.a(lazyThreadSafetyMode, WindowManagerSpy$windowManagerClass$2.k);
        b = LazyKt.a(lazyThreadSafetyMode, WindowManagerSpy$windowManagerInstance$2.k);
        c = LazyKt.a(lazyThreadSafetyMode, WindowManagerSpy$mViewsField$2.k);
    }
}
