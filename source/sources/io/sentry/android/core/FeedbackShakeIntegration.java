package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.HandlerThread;
import io.sentry.Integration;
import io.sentry.NoOpLogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FeedbackShakeIntegration implements Integration, Closeable, Application.ActivityLifecycleCallbacks {
    public final Application j;
    public SentryAndroidOptions l;
    public volatile WeakReference m;
    public volatile Runnable o;
    public volatile boolean n = false;
    public final SentryShakeDetector k = new SentryShakeDetector(NoOpLogger.a);

    public FeedbackShakeIntegration(Application application) {
        this.j = application;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        Activity activity = null;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.l = sentryAndroidOptions;
        if (sentryAndroidOptions.getFeedbackOptions().g) {
            SentryShakeDetector sentryShakeDetector = this.k;
            Application application = this.j;
            sentryShakeDetector.f = this.l.getLogger();
            sentryShakeDetector.a(application);
            IntegrationUtils.a("FeedbackShake");
            this.j.registerActivityLifecycleCallbacks(this);
            this.l.getLogger().c(SentryLevel.DEBUG, "FeedbackShakeIntegration installed.", new Object[0]);
            WeakReference weakReference = CurrentActivityHolder.b.a;
            if (weakReference != null) {
                activity = (Activity) weakReference.get();
            }
            if (activity != null) {
                this.m = new WeakReference(activity);
                SentryShakeDetector sentryShakeDetector2 = this.k;
                if (this.l != null) {
                    sentryShakeDetector2.c();
                    sentryShakeDetector2.b(activity, new l(3, this));
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.unregisterActivityLifecycleCallbacks(this);
        SentryShakeDetector sentryShakeDetector = this.k;
        sentryShakeDetector.c();
        HandlerThread handlerThread = sentryShakeDetector.c;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            sentryShakeDetector.c = null;
            sentryShakeDetector.d = null;
        }
        if (this.n) {
            this.n = false;
            SentryAndroidOptions sentryAndroidOptions = this.l;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getFeedbackOptions().s = this.o;
            }
            this.o = null;
        }
        this.m = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Activity activity2;
        if (this.m != null) {
            activity2 = (Activity) this.m.get();
        } else {
            activity2 = null;
        }
        if (this.n && activity == activity2) {
            this.n = false;
            this.m = null;
            SentryAndroidOptions sentryAndroidOptions = this.l;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getFeedbackOptions().s = this.o;
            }
            this.o = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Activity activity2;
        if (this.m != null) {
            activity2 = (Activity) this.m.get();
        } else {
            activity2 = null;
        }
        if (activity == activity2) {
            this.k.c();
            if (!this.n) {
                this.m = null;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Activity activity2;
        if (this.m != null) {
            activity2 = (Activity) this.m.get();
        } else {
            activity2 = null;
        }
        if (this.n && activity2 != null && activity2 != activity) {
            this.n = false;
            SentryAndroidOptions sentryAndroidOptions = this.l;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getFeedbackOptions().s = this.o;
            }
            this.o = null;
        }
        this.m = new WeakReference(activity);
        SentryShakeDetector sentryShakeDetector = this.k;
        if (this.l == null) {
            return;
        }
        sentryShakeDetector.c();
        sentryShakeDetector.b(activity, new l(3, this));
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
