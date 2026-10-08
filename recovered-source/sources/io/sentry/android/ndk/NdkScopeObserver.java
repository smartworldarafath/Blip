package io.sentry.android.ndk;

import defpackage.e;
import io.sentry.Breadcrumb;
import io.sentry.Scope;
import io.sentry.ScopeObserverAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SpanContext;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.anr.a;
import io.sentry.ndk.NativeScope;
import io.sentry.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NdkScopeObserver extends ScopeObserverAdapter {
    public final SentryOptions a;
    public final NativeScope b;

    /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.ndk.NativeScope, java.lang.Object] */
    public NdkScopeObserver(SentryAndroidOptions sentryAndroidOptions) {
        ?? obj = new Object();
        Objects.b(sentryAndroidOptions, "The SentryOptions object is required.");
        this.a = sentryAndroidOptions;
        this.b = obj;
    }

    @Override // io.sentry.ScopeObserverAdapter, io.sentry.IScopeObserver
    public final void b() {
        SentryOptions sentryOptions = this.a;
        try {
            sentryOptions.getExecutorService().submit(new e(22, this));
        } catch (Throwable th) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Scope sync clearAttachments has an error.", new Object[0]);
        }
    }

    @Override // io.sentry.IScopeObserver
    public final void c(SpanContext spanContext, Scope scope) {
        SentryOptions sentryOptions = this.a;
        if (spanContext == null) {
            return;
        }
        try {
            sentryOptions.getExecutorService().submit(new a(2, this, spanContext));
        } catch (Throwable th) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Scope sync setTrace failed.", new Object[0]);
        }
    }

    @Override // io.sentry.IScopeObserver
    public final void f(Breadcrumb breadcrumb) {
        SentryOptions sentryOptions = this.a;
        try {
            sentryOptions.getExecutorService().submit(new a(1, this, breadcrumb));
        } catch (Throwable th) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Scope sync addBreadcrumb has an error.", new Object[0]);
        }
    }
}
