package io.sentry.util.thread;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpThreadChecker implements IThreadChecker {
    public static final NoOpThreadChecker a = new Object();

    @Override // io.sentry.util.thread.IThreadChecker
    public final String a() {
        return "";
    }

    @Override // io.sentry.util.thread.IThreadChecker
    public final long b() {
        return 0L;
    }

    @Override // io.sentry.util.thread.IThreadChecker
    public final boolean c() {
        return false;
    }
}
