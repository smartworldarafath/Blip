package io.sentry.android.replay;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ReplayIntegration$rootViewsSpy$2 extends Lambda implements Function0<RootViewsSpy> {
    public static final ReplayIntegration$rootViewsSpy$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        RootViewsSpy rootViewsSpy = new RootViewsSpy();
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(new b(rootViewsSpy, 1));
        return rootViewsSpy;
    }
}
