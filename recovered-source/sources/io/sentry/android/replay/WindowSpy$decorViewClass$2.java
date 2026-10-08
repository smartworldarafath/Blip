package io.sentry.android.replay;

import android.os.Build;
import android.util.Log;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowSpy$decorViewClass$2 extends Lambda implements Function0<Class<?>> {
    public static final WindowSpy$decorViewClass$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        try {
            return Class.forName("com.android.internal.policy.DecorView");
        } catch (Throwable th) {
            Log.d("WindowSpy", "Unexpected exception loading DecorView on API " + Build.VERSION.SDK_INT, th);
            return null;
        }
    }
}
