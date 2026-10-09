package io.sentry;

import io.sentry.util.AutoClosableReentrantLock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryCrashLastRunState {
    public static final SentryCrashLastRunState c = new SentryCrashLastRunState();
    public boolean a;
    public final AutoClosableReentrantLock b = new ReentrantLock();

    public final void a() {
        ISentryLifecycleToken a = this.b.a();
        try {
            if (!this.a) {
                this.a = true;
            }
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
