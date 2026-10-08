package io.sentry.android.core;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.NoOpLogger;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.AndroidThreadChecker;
import io.sentry.util.AutoClosableReentrantLock;
import java.io.Closeable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AppState implements Closeable {
    public static final AppState n = new AppState();
    public volatile LifecycleObserver k;
    public final AutoClosableReentrantLock j = new ReentrantLock();
    public final MainLooperHandler l = new MainLooperHandler();
    public volatile Boolean m = null;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface AppStateListener {
        void a();

        void h();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class LifecycleObserver implements DefaultLifecycleObserver {
        public final List j = new AnonymousClass1();

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: io.sentry.android.core.AppState$LifecycleObserver$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends CopyOnWriteArrayList<AppStateListener> {
            public AnonymousClass1() {
            }

            @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
            public final boolean add(Object obj) {
                AppStateListener appStateListener = (AppStateListener) obj;
                boolean add = super.add(appStateListener);
                if (Boolean.FALSE.equals(AppState.this.m)) {
                    appStateListener.a();
                    return add;
                }
                if (Boolean.TRUE.equals(AppState.this.m)) {
                    appStateListener.h();
                }
                return add;
            }
        }

        public LifecycleObserver() {
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onStart(LifecycleOwner lifecycleOwner) {
            AppState.this.m = Boolean.FALSE;
            Iterator it = ((CopyOnWriteArrayList) this.j).iterator();
            while (it.hasNext()) {
                ((AppStateListener) it.next()).a();
            }
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public final void onStop(LifecycleOwner lifecycleOwner) {
            AppState.this.m = Boolean.TRUE;
            Iterator it = ((CopyOnWriteArrayList) this.j).iterator();
            while (it.hasNext()) {
                ((AppStateListener) it.next()).h();
            }
        }
    }

    public final void a(AppStateListener appStateListener) {
        ISentryLifecycleToken a = this.j.a();
        try {
            n(NoOpLogger.a);
            if (this.k != null) {
                ((LifecycleObserver.AnonymousClass1) this.k.j).add(appStateListener);
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

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        v();
    }

    public final void h(ILogger iLogger) {
        LifecycleObserver lifecycleObserver = this.k;
        if (lifecycleObserver != null) {
            try {
                ProcessLifecycleOwner.r.o.a(lifecycleObserver);
            } catch (Throwable th) {
                this.k = null;
                iLogger.b(SentryLevel.ERROR, "AppState failed to get Lifecycle and could not install lifecycle observer.", th);
            }
        }
    }

    public final void n(ILogger iLogger) {
        if (this.k == null) {
            try {
                ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.r;
                this.k = new LifecycleObserver();
                if (AndroidThreadChecker.a.c()) {
                    h(iLogger);
                    return;
                }
                MainLooperHandler mainLooperHandler = this.l;
                mainLooperHandler.a.post(new g(2, this, iLogger));
            } catch (ClassNotFoundException unused) {
                iLogger.c(SentryLevel.WARNING, "androidx.lifecycle is not available, some features might not be properly working,e.g. Session Tracking, Network and System Events breadcrumbs, etc.", new Object[0]);
            } catch (Throwable th) {
                iLogger.b(SentryLevel.ERROR, "AppState could not register lifecycle observer", th);
            }
        }
    }

    public final void q(AppStateListener appStateListener) {
        ISentryLifecycleToken a = this.j.a();
        try {
            if (this.k != null) {
                ((CopyOnWriteArrayList) this.k.j).remove(appStateListener);
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

    public final void v() {
        if (this.k != null) {
            ISentryLifecycleToken a = this.j.a();
            try {
                LifecycleObserver lifecycleObserver = this.k;
                ((CopyOnWriteArrayList) this.k.j).clear();
                this.k = null;
                a.close();
                if (AndroidThreadChecker.a.c()) {
                    if (lifecycleObserver != null) {
                        ProcessLifecycleOwner.r.o.b(lifecycleObserver);
                    }
                } else {
                    MainLooperHandler mainLooperHandler = this.l;
                    mainLooperHandler.a.post(new b(this, lifecycleObserver));
                }
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
}
