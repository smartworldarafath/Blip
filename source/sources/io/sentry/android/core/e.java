package io.sentry.android.core;

import android.app.Activity;
import io.sentry.IScope;
import io.sentry.ITransaction;
import io.sentry.Scope;
import io.sentry.ScopeCallback;
import io.sentry.android.core.SentryShakeDetector;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Scope.IWithTransaction, ScopeCallback, SentryShakeDetector.Listener {
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;

    public /* synthetic */ e(ActivityLifecycleIntegration activityLifecycleIntegration, ITransaction iTransaction) {
        this.k = activityLifecycleIntegration;
        this.j = iTransaction;
    }

    @Override // io.sentry.android.core.SentryShakeDetector.Listener
    public void a() {
        SentryUserFeedbackForm sentryUserFeedbackForm = (SentryUserFeedbackForm) this.j;
        WeakReference weakReference = (WeakReference) this.k;
        int i = SentryUserFeedbackForm.p;
        Activity activity = (Activity) weakReference.get();
        if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
            activity.runOnUiThread(new g(5, sentryUserFeedbackForm, activity));
        }
    }

    @Override // io.sentry.Scope.IWithTransaction
    public void c(ITransaction iTransaction) {
        ITransaction iTransaction2 = (ITransaction) this.j;
        IScope iScope = (IScope) this.k;
        if (iTransaction == iTransaction2) {
            iScope.o();
        }
    }

    @Override // io.sentry.ScopeCallback
    public void i(IScope iScope) {
        iScope.E(new f((ActivityLifecycleIntegration) this.k, iScope, (ITransaction) this.j));
    }

    public /* synthetic */ e(Object obj, Object obj2) {
        this.j = obj;
        this.k = obj2;
    }
}
