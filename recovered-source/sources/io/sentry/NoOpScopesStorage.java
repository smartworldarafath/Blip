package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpScopesStorage implements IScopesStorage {
    public static final NoOpScopesStorage a = new Object();

    @Override // io.sentry.IScopesStorage
    public final ISentryLifecycleToken a(IScopes iScopes) {
        return NoOpScopesLifecycleToken.j;
    }

    @Override // io.sentry.IScopesStorage
    public final IScopes get() {
        return NoOpScopes.b;
    }

    @Override // io.sentry.IScopesStorage
    public final void close() {
    }
}
