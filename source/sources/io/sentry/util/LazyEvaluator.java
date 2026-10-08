package io.sentry.util;

import io.sentry.ISentryLifecycleToken;
import io.sentry.util.AutoClosableReentrantLock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyEvaluator<T> {
    public final Evaluator b;
    public volatile Object a = null;
    public final AutoClosableReentrantLock c = new ReentrantLock();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Evaluator<T> {
        Object c();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public LazyEvaluator(Evaluator evaluator) {
        this.b = evaluator;
    }

    public final Object a() {
        if (this.a == null) {
            ISentryLifecycleToken a = this.c.a();
            try {
                if (this.a == null) {
                    this.a = this.b.c();
                }
                ((AutoClosableReentrantLock.AutoClosableReentrantLockLifecycleToken) a).close();
            } catch (Throwable th) {
                try {
                    ((AutoClosableReentrantLock.AutoClosableReentrantLockLifecycleToken) a).close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return this.a;
    }

    public final void b() {
        ISentryLifecycleToken a = this.c.a();
        try {
            this.a = null;
            ((AutoClosableReentrantLock.AutoClosableReentrantLockLifecycleToken) a).close();
        } catch (Throwable th) {
            try {
                ((AutoClosableReentrantLock.AutoClosableReentrantLockLifecycleToken) a).close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void c(Object obj) {
        ISentryLifecycleToken a = this.c.a();
        try {
            this.a = obj;
            ((AutoClosableReentrantLock.AutoClosableReentrantLockLifecycleToken) a).close();
        } catch (Throwable th) {
            try {
                ((AutoClosableReentrantLock.AutoClosableReentrantLockLifecycleToken) a).close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
