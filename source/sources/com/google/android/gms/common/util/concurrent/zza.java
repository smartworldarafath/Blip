package com.google.android.gms.common.util.concurrent;

import android.os.Process;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zza implements Runnable {
    public final Runnable j;

    public zza(Runnable runnable) {
        this.j = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.j.run();
    }
}
