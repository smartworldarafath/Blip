package io.sentry.android.core;

import android.os.SystemClock;
import androidx.core.app.FrameMetricsAggregator;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.ProcessLifecycleOwner;
import io.sentry.android.core.AppState;
import io.sentry.android.core.SentryShakeDetector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(ANRWatchDog aNRWatchDog, a aVar) {
        this.j = 0;
        this.k = aNRWatchDog;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                ANRWatchDog aNRWatchDog = (ANRWatchDog) obj;
                int i2 = ANRWatchDog.u;
                aNRWatchDog.q = SystemClock.uptimeMillis();
                aNRWatchDog.r.set(false);
                return;
            case 1:
                SentryShakeDetector.SampleQueue sampleQueue = ((SentryShakeDetector) obj).g;
                while (true) {
                    SentryShakeDetector.Sample sample = sampleQueue.b;
                    if (sample != null) {
                        sampleQueue.b = sample.c;
                        SentryShakeDetector.SamplePool samplePool = sampleQueue.a;
                        sample.c = samplePool.a;
                        samplePool.a = sample;
                    } else {
                        sampleQueue.c = null;
                        sampleQueue.d = 0;
                        sampleQueue.e = 0;
                        return;
                    }
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((FrameMetricsAggregator) ((ActivityFramesTracker) obj).a.a()).e();
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((AndroidContinuousProfiler) obj).h(true);
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((AndroidProfiler) obj).a(null, true);
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                AppState.LifecycleObserver lifecycleObserver = (AppState.LifecycleObserver) obj;
                AppState appState = AppState.n;
                if (lifecycleObserver != null) {
                    ProcessLifecycleOwner.r.o.b(lifecycleObserver);
                    return;
                }
                return;
            default:
                SystemEventsBreadcrumbsIntegration systemEventsBreadcrumbsIntegration = (SystemEventsBreadcrumbsIntegration) obj;
                systemEventsBreadcrumbsIntegration.q(systemEventsBreadcrumbsIntegration.l);
                return;
        }
    }

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    public /* synthetic */ b(AppState appState, AppState.LifecycleObserver lifecycleObserver) {
        this.j = 5;
        this.k = lifecycleObserver;
    }
}
