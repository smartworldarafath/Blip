package io.sentry.android.core;

import android.app.Activity;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.IScope;
import io.sentry.ITransaction;
import io.sentry.ScopeCallback;
import io.sentry.SentryExecutorService;
import io.sentry.Session;
import io.sentry.android.core.SentryShakeDetector;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements ScopeCallback, SentryShakeDetector.Listener, LazyEvaluator.Evaluator {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ l(ActivityLifecycleIntegration activityLifecycleIntegration, ITransaction iTransaction) {
        this.j = 2;
        this.k = iTransaction;
    }

    @Override // io.sentry.android.core.SentryShakeDetector.Listener
    public void a() {
        Activity activity;
        FeedbackShakeIntegration feedbackShakeIntegration = (FeedbackShakeIntegration) this.k;
        WeakReference weakReference = feedbackShakeIntegration.m;
        if (weakReference != null) {
            activity = (Activity) weakReference.get();
        } else {
            activity = null;
        }
        Boolean bool = AppState.n.m;
        if (activity != null && feedbackShakeIntegration.l != null && !feedbackShakeIntegration.n && !Boolean.TRUE.equals(bool)) {
            activity.runOnUiThread(new g(3, feedbackShakeIntegration, activity));
        }
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        SentryExecutorService sentryExecutorService = (SentryExecutorService) this.k;
        int i = SentryPerformanceProvider.o;
        return sentryExecutorService;
    }

    @Override // io.sentry.ScopeCallback
    public void i(IScope iScope) {
        Session q;
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                AtomicLong atomicLong = ((LifecycleWatcher) obj).j;
                if (atomicLong.get() == 0 && (q = iScope.q()) != null && q.c() != null) {
                    atomicLong.set(q.c().getTime());
                    return;
                }
                return;
            case 1:
                iScope.v((String) obj);
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                iScope.E(new e((ITransaction) obj, iScope));
                return;
            default:
                AtomicBoolean atomicBoolean = (AtomicBoolean) obj;
                AutoClosableReentrantLock autoClosableReentrantLock = SentryAndroid.b;
                Session q2 = iScope.q();
                if (q2 != null && q2.c() != null) {
                    atomicBoolean.set(true);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ l(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }
}
