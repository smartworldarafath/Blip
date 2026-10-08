package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.Window;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import io.sentry.ILogger;
import io.sentry.Integration;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SpanStatus;
import io.sentry.android.core.internal.gestures.NoOpWindowCallback;
import io.sentry.android.core.internal.gestures.SentryGestureListener;
import io.sentry.android.core.internal.gestures.SentryWindowCallback;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.LoadClass;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UserInteractionIntegration implements Integration, Closeable, Application.ActivityLifecycleCallbacks {
    public final Application j;
    public ScopesAdapter k;
    public final WeakHashMap n = new WeakHashMap();
    public final Object o = new Object();
    public SentryAndroidOptions l;
    public final boolean m = LoadClass.a(this.l, "androidx.lifecycle.Lifecycle");

    public UserInteractionIntegration(Application application) {
        this.j = application;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        boolean z;
        Activity activity = null;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.l = sentryAndroidOptions;
        this.k = ScopesAdapter.a;
        if (!sentryAndroidOptions.isEnableUserInteractionBreadcrumbs() && !this.l.isEnableUserInteractionTracing()) {
            z = false;
        } else {
            z = true;
        }
        ILogger logger = this.l.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "UserInteractionIntegration enabled: %s", Boolean.valueOf(z));
        if (z) {
            this.j.registerActivityLifecycleCallbacks(this);
            this.l.getLogger().c(sentryLevel, "UserInteractionIntegration installed.", new Object[0]);
            IntegrationUtils.a("UserInteraction");
            if (this.m) {
                WeakReference weakReference = CurrentActivityHolder.b.a;
                if (weakReference != null) {
                    activity = (Activity) weakReference.get();
                }
                if ((activity instanceof LifecycleOwner) && ((LifecycleRegistry) ((LifecycleOwner) activity).g()).i == Lifecycle.State.n) {
                    a(activity);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            SentryAndroidOptions sentryAndroidOptions = this.l;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "Window was null in startTracking", new Object[0]);
                return;
            }
            return;
        }
        if (this.k != null && this.l != null) {
            synchronized (this.o) {
                try {
                    WeakReference weakReference = (WeakReference) this.n.get(window);
                    if (weakReference != null && weakReference.get() != null) {
                        return;
                    }
                    Window.Callback callback = window.getCallback();
                    Window.Callback callback2 = callback;
                    if (callback == null) {
                        callback2 = new Object();
                    }
                    SentryWindowCallback sentryWindowCallback = new SentryWindowCallback(callback2, activity, new SentryGestureListener(activity, this.k, this.l), this.l);
                    window.setCallback(sentryWindowCallback);
                    synchronized (this.o) {
                        this.n.put(window, new WeakReference(sentryWindowCallback));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ArrayList arrayList;
        this.j.unregisterActivityLifecycleCallbacks(this);
        synchronized (this.o) {
            arrayList = new ArrayList(this.n.keySet());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Window window = (Window) it.next();
            if (window != null) {
                h(window);
            }
        }
        synchronized (this.o) {
            this.n.clear();
        }
        SentryAndroidOptions sentryAndroidOptions = this.l;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "UserInteractionIntegration removed.", new Object[0]);
        }
    }

    public final void h(Window window) {
        Window.Callback callback = window.getCallback();
        SentryWindowCallback sentryWindowCallback = null;
        if (callback instanceof SentryWindowCallback) {
            SentryWindowCallback sentryWindowCallback2 = (SentryWindowCallback) callback;
            sentryWindowCallback2.p = true;
            sentryWindowCallback2.l.d(SpanStatus.CANCELLED);
            sentryWindowCallback2.m.a();
            Window.Callback callback2 = sentryWindowCallback2.k;
            if (callback2 instanceof NoOpWindowCallback) {
                window.setCallback(null);
            } else {
                window.setCallback(callback2);
            }
            synchronized (this.o) {
                this.n.remove(window);
            }
            return;
        }
        synchronized (this.o) {
            try {
                WeakReference weakReference = (WeakReference) this.n.remove(window);
                if (weakReference != null) {
                    sentryWindowCallback = (SentryWindowCallback) weakReference.get();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (sentryWindowCallback != null) {
            sentryWindowCallback.p = true;
            sentryWindowCallback.l.d(SpanStatus.CANCELLED);
            sentryWindowCallback.m.a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            SentryAndroidOptions sentryAndroidOptions = this.l;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "Window was null in stopTracking", new Object[0]);
                return;
            }
            return;
        }
        h(window);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
