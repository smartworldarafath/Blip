package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.tasks.zza;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzu implements Executor {
    public final zza j;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.tasks.zza, android.os.Handler] */
    public zzu() {
        ?? handler = new Handler(Looper.getMainLooper());
        Looper.getMainLooper();
        this.j = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.j.post(runnable);
    }
}
