package io.sentry.android.replay;

import io.sentry.util.AutoClosableReentrantLock;
import java.io.Closeable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RootViewsSpy implements Closeable {
    public final AtomicBoolean j = new AtomicBoolean(false);
    public final AutoClosableReentrantLock k = new ReentrantLock();
    public final RootViewsSpy$listeners$1 l = new RootViewsSpy$listeners$1(this);
    public final RootViewsSpy$delegatingViewList$1 m = new RootViewsSpy$delegatingViewList$1(this);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.set(true);
        this.l.clear();
    }
}
