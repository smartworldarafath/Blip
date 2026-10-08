package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryId;
import java.util.Collection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScopeObserverAdapter implements IScopeObserver {
    @Override // io.sentry.IScopeObserver
    public void b() {
    }

    @Override // io.sentry.IScopeObserver
    public void a(Collection collection) {
    }

    @Override // io.sentry.IScopeObserver
    public void d(Contexts contexts) {
    }

    @Override // io.sentry.IScopeObserver
    public void e(String str) {
    }

    @Override // io.sentry.IScopeObserver
    public void i(SentryId sentryId) {
    }

    @Override // io.sentry.IScopeObserver
    public void n(SentryLevel sentryLevel) {
    }
}
