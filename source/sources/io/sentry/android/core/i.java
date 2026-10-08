package io.sentry.android.core;

import io.sentry.android.core.internal.util.CpuInfoUtils;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Callable {
    @Override // java.util.concurrent.Callable
    public final Object call() {
        return CpuInfoUtils.c.a();
    }
}
