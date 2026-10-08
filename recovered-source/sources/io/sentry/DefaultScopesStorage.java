package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultScopesStorage implements IScopesStorage {
    public static final ThreadLocal a = new ThreadLocal();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DefaultScopesLifecycleToken implements ISentryLifecycleToken {
        public final IScopes j;

        public DefaultScopesLifecycleToken(IScopes iScopes) {
            this.j = iScopes;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            DefaultScopesStorage.a.set(this.j);
        }
    }

    @Override // io.sentry.IScopesStorage
    public final ISentryLifecycleToken a(IScopes iScopes) {
        IScopes iScopes2 = get();
        a.set(iScopes);
        return new DefaultScopesLifecycleToken(iScopes2);
    }

    @Override // io.sentry.IScopesStorage
    public final void close() {
        a.remove();
    }

    @Override // io.sentry.IScopesStorage
    public final IScopes get() {
        return (IScopes) a.get();
    }
}
