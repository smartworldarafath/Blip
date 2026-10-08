package io.sentry.util;

import io.sentry.ISentryLifecycleToken;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoClosableReentrantLock extends ReentrantLock {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AutoClosableReentrantLockLifecycleToken implements ISentryLifecycleToken {
        public final AutoClosableReentrantLock j;

        public AutoClosableReentrantLockLifecycleToken(AutoClosableReentrantLock autoClosableReentrantLock) {
            this.j = autoClosableReentrantLock;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.j.unlock();
        }
    }

    public final ISentryLifecycleToken a() {
        lock();
        return new AutoClosableReentrantLockLifecycleToken(this);
    }
}
