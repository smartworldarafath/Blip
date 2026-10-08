package io.sentry.cache;

import defpackage.s3;
import io.sentry.Breadcrumb;
import io.sentry.Scope;
import io.sentry.ScopeObserverAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SpanContext;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.cache.tape.ObjectQueue;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryId;
import io.sentry.util.LazyEvaluator;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistingScopeObserver extends ScopeObserverAdapter {
    public static final Charset c = Charset.forName("UTF-8");
    public final SentryOptions a;
    public final LazyEvaluator b = new LazyEvaluator(new a(1, this));

    public PersistingScopeObserver(SentryAndroidOptions sentryAndroidOptions) {
        this.a = sentryAndroidOptions;
    }

    public static void k(SentryOptions sentryOptions, Object obj, String str) {
        CacheUtils.d(sentryOptions, obj, ".scope-cache", str);
    }

    @Override // io.sentry.ScopeObserverAdapter, io.sentry.IScopeObserver
    public final void a(Collection collection) {
        if (collection.isEmpty()) {
            j(new Runnable() { // from class: io.sentry.cache.d
                @Override // java.lang.Runnable
                public final void run() {
                    PersistingScopeObserver persistingScopeObserver = PersistingScopeObserver.this;
                    Charset charset = PersistingScopeObserver.c;
                    try {
                        ((ObjectQueue) persistingScopeObserver.b.a()).clear();
                    } catch (IOException e) {
                        persistingScopeObserver.a.getLogger().b(SentryLevel.ERROR, "Failed to clear breadcrumbs from file queue", e);
                    }
                }
            });
        }
    }

    @Override // io.sentry.IScopeObserver
    public final void c(SpanContext spanContext, Scope scope) {
        j(new s3(this, spanContext, scope, 10));
    }

    @Override // io.sentry.ScopeObserverAdapter, io.sentry.IScopeObserver
    public final void d(Contexts contexts) {
        j(new io.sentry.android.core.anr.a(11, this, contexts));
    }

    @Override // io.sentry.ScopeObserverAdapter, io.sentry.IScopeObserver
    public final void e(String str) {
        j(new io.sentry.android.core.anr.a(10, this, str));
    }

    @Override // io.sentry.IScopeObserver
    public final void f(Breadcrumb breadcrumb) {
        j(new io.sentry.android.core.anr.a(8, this, breadcrumb));
    }

    public final void g(String str) {
        CacheUtils.a(this.a, ".scope-cache", str);
    }

    public final Object h(SentryOptions sentryOptions, String str, Class cls) {
        if (str.equals("breadcrumbs.json")) {
            try {
                return cls.cast(((ObjectQueue) this.b.a()).E());
            } catch (IOException unused) {
                sentryOptions.getLogger().c(SentryLevel.ERROR, "Unable to read serialized breadcrumbs from QueueFile", new Object[0]);
                return null;
            }
        }
        return CacheUtils.c(sentryOptions, ".scope-cache", str, cls);
    }

    @Override // io.sentry.ScopeObserverAdapter, io.sentry.IScopeObserver
    public final void i(SentryId sentryId) {
        j(new io.sentry.android.core.anr.a(9, this, sentryId));
    }

    public final void j(Runnable runnable) {
        SentryOptions sentryOptions = this.a;
        if (!sentryOptions.isEnableScopePersistence()) {
            return;
        }
        if (Thread.currentThread().getName().contains("SentryExecutor")) {
            try {
                runnable.run();
                return;
            } catch (Throwable th) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Serialization task failed", th);
                return;
            }
        }
        try {
            sentryOptions.getExecutorService().submit(new io.sentry.android.core.anr.a(7, this, runnable));
        } catch (Throwable th2) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Serialization task could not be scheduled", th2);
        }
    }

    public final void l(Object obj, String str) {
        k(this.a, obj, str);
    }

    @Override // io.sentry.ScopeObserverAdapter, io.sentry.IScopeObserver
    public final void n(SentryLevel sentryLevel) {
        j(new io.sentry.android.core.anr.a(6, this, sentryLevel));
    }
}
