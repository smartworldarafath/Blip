package io.sentry.android.core;

import io.sentry.Breadcrumb;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.android.core.AppState;
import io.sentry.transport.CurrentDateProvider;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LifecycleWatcher implements AppState.AppStateListener {
    public final long k;
    public TimerTask l;
    public final boolean p;
    public final boolean q;
    public final AtomicLong j = new AtomicLong(0);
    public final LazyEvaluator m = new LazyEvaluator(new a(8));
    public final AutoClosableReentrantLock n = new ReentrantLock();
    public final ScopesAdapter o = ScopesAdapter.a;
    public final CurrentDateProvider r = CurrentDateProvider.j;

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public LifecycleWatcher(long j, boolean z, boolean z2) {
        this.k = j;
        this.p = z;
        this.q = z2;
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void a() {
        c();
        this.r.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        l lVar = new l(0, this);
        ScopesAdapter scopesAdapter = this.o;
        scopesAdapter.o(lVar);
        AtomicLong atomicLong = this.j;
        long j = atomicLong.get();
        if (j == 0 || j + this.k <= currentTimeMillis) {
            if (this.p) {
                scopesAdapter.m();
            }
            scopesAdapter.j().getReplayController().O();
        }
        scopesAdapter.j().getReplayController().v();
        atomicLong.set(currentTimeMillis);
        b("foreground");
    }

    public final void b(String str) {
        if (this.q) {
            Breadcrumb breadcrumb = new Breadcrumb();
            breadcrumb.n = "navigation";
            breadcrumb.c(str, "state");
            breadcrumb.p = "app.lifecycle";
            breadcrumb.r = SentryLevel.INFO;
            this.o.e(breadcrumb);
        }
    }

    public final void c() {
        ISentryLifecycleToken a = this.n.a();
        try {
            TimerTask timerTask = this.l;
            if (timerTask != null) {
                timerTask.cancel();
                this.l = null;
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

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void h() {
        this.r.getClass();
        this.j.set(System.currentTimeMillis());
        this.o.j().getReplayController().a();
        ISentryLifecycleToken a = this.n.a();
        try {
            c();
            this.l = new TimerTask() { // from class: io.sentry.android.core.LifecycleWatcher.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    LifecycleWatcher lifecycleWatcher = LifecycleWatcher.this;
                    ScopesAdapter scopesAdapter = lifecycleWatcher.o;
                    if (lifecycleWatcher.p) {
                        scopesAdapter.l();
                    }
                    scopesAdapter.j().getReplayController().stop();
                    scopesAdapter.j().getContinuousProfiler().b(false);
                }
            };
            ((Timer) this.m.a()).schedule(this.l, this.k);
            a.close();
            b("background");
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
