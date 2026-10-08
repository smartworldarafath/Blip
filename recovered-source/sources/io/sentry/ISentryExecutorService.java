package io.sentry;

import java.util.concurrent.Future;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ISentryExecutorService {
    void a(long j);

    void b();

    Future c(long j, Runnable runnable);

    boolean isClosed();

    Future submit(Runnable runnable);
}
