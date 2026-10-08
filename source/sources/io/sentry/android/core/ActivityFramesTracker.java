package io.sentry.android.core;

import android.app.Activity;
import android.util.SparseIntArray;
import androidx.core.app.FrameMetricsAggregator;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.AndroidThreadChecker;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.LoadClass;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ActivityFramesTracker {
    public final LazyEvaluator a;
    public final SentryAndroidOptions b;
    public final ConcurrentHashMap c;
    public final WeakHashMap d;
    public final MainLooperHandler e;
    public final AutoClosableReentrantLock f;
    public final LazyEvaluator g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FrameCounts {
        public final int a;
        public final int b;
        public final int c;

        public FrameCounts(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public ActivityFramesTracker(LoadClass loadClass, SentryAndroidOptions sentryAndroidOptions) {
        MainLooperHandler mainLooperHandler = new MainLooperHandler();
        this.c = new ConcurrentHashMap();
        this.d = new WeakHashMap();
        this.f = new ReentrantLock();
        this.g = new LazyEvaluator(new io.sentry.kotlin.multiplatform.extensions.a(loadClass, sentryAndroidOptions.getLogger(), 2));
        this.a = new LazyEvaluator(new a(1));
        this.b = sentryAndroidOptions;
        this.e = mainLooperHandler;
    }

    public final void a(Activity activity) {
        ISentryLifecycleToken a = this.f.a();
        try {
            if (!c()) {
                a.close();
                return;
            }
            d(new c(this, activity, 0), "FrameMetricsAggregator.add");
            FrameCounts b = b();
            if (b != null) {
                this.d.put(activity, b);
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

    public final FrameCounts b() {
        int i;
        int i2;
        SparseIntArray sparseIntArray;
        if (!c() || !((Boolean) this.g.a()).booleanValue()) {
            return null;
        }
        SparseIntArray[] b = ((FrameMetricsAggregator) this.a.a()).b();
        int i3 = 0;
        if (b.length > 0 && (sparseIntArray = b[0]) != null) {
            int i4 = 0;
            i = 0;
            i2 = 0;
            while (i3 < sparseIntArray.size()) {
                int keyAt = sparseIntArray.keyAt(i3);
                int valueAt = sparseIntArray.valueAt(i3);
                i4 += valueAt;
                if (keyAt > 700) {
                    i2 += valueAt;
                } else if (keyAt > 16) {
                    i += valueAt;
                }
                i3++;
            }
            i3 = i4;
        } else {
            i = 0;
            i2 = 0;
        }
        return new FrameCounts(i3, i, i2);
    }

    public final boolean c() {
        if (((Boolean) this.g.a()).booleanValue()) {
            SentryAndroidOptions sentryAndroidOptions = this.b;
            if (sentryAndroidOptions.isEnableFramesTracking() && !sentryAndroidOptions.isEnablePerformanceV2()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void d(Runnable runnable, String str) {
        try {
            if (AndroidThreadChecker.a.c()) {
                runnable.run();
                return;
            }
            MainLooperHandler mainLooperHandler = this.e;
            mainLooperHandler.a.post(new m(this, runnable, str, 2));
        } catch (Throwable unused) {
            if (str != null) {
                this.b.getLogger().c(SentryLevel.WARNING, "Failed to execute ".concat(str), new Object[0]);
            }
        }
    }
}
