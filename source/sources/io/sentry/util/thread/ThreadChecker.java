package io.sentry.util.thread;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ThreadChecker implements IThreadChecker {
    public static final long a = Thread.currentThread().getId();
    public static final ThreadChecker b = new Object();

    @Override // io.sentry.util.thread.IThreadChecker
    public final String a() {
        return Thread.currentThread().getName();
    }

    @Override // io.sentry.util.thread.IThreadChecker
    public final long b() {
        return Thread.currentThread().getId();
    }

    @Override // io.sentry.util.thread.IThreadChecker
    public final boolean c() {
        if (a == Thread.currentThread().getId()) {
            return true;
        }
        return false;
    }
}
