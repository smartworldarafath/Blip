package io.sentry.android.replay.util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayRunnable implements Runnable {
    public final String j;
    public final /* synthetic */ Runnable k;

    public ReplayRunnable(Runnable runnable, String str) {
        runnable.getClass();
        this.j = str;
        this.k = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.k.run();
    }
}
