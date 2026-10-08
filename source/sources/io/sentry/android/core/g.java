package io.sentry.android.core;

import android.app.Activity;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ISpan;
import io.sentry.SentryLevel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ g(ActivityLifecycleIntegration activityLifecycleIntegration, ISpan iSpan, ISpan iSpan2) {
        this.j = 0;
        this.k = iSpan;
        this.l = iSpan2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.j) {
            case 0:
                ActivityLifecycleIntegration.h((ISpan) this.k, (ISpan) this.l);
                return;
            case 1:
                AnrIntegration anrIntegration = (AnrIntegration) this.k;
                SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) this.l;
                ISentryLifecycleToken a = anrIntegration.l.a();
                try {
                    if (!anrIntegration.k) {
                        anrIntegration.a(sentryAndroidOptions);
                    }
                    a.close();
                    return;
                } catch (Throwable th) {
                    try {
                        a.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AppState appState = (AppState) this.k;
                ILogger iLogger = (ILogger) this.l;
                AppState appState2 = AppState.n;
                appState.h(iLogger);
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                FeedbackShakeIntegration feedbackShakeIntegration = (FeedbackShakeIntegration) this.k;
                Activity activity = (Activity) this.l;
                if (!feedbackShakeIntegration.n && !activity.isFinishing() && !activity.isDestroyed()) {
                    try {
                        feedbackShakeIntegration.n = true;
                        Runnable runnable = feedbackShakeIntegration.l.getFeedbackOptions().s;
                        feedbackShakeIntegration.o = runnable;
                        feedbackShakeIntegration.l.getFeedbackOptions().s = new g(4, feedbackShakeIntegration, runnable);
                        new SentryUserFeedbackForm(activity).show();
                        return;
                    } catch (Throwable th3) {
                        feedbackShakeIntegration.n = false;
                        feedbackShakeIntegration.l.getFeedbackOptions().s = feedbackShakeIntegration.o;
                        feedbackShakeIntegration.o = null;
                        feedbackShakeIntegration.l.getLogger().b(SentryLevel.ERROR, "Failed to show feedback dialog on shake.", th3);
                        return;
                    }
                }
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                FeedbackShakeIntegration feedbackShakeIntegration2 = (FeedbackShakeIntegration) this.k;
                Runnable runnable2 = (Runnable) this.l;
                feedbackShakeIntegration2.n = false;
                feedbackShakeIntegration2.l.getFeedbackOptions().s = runnable2;
                if (runnable2 != null) {
                    runnable2.run();
                }
                feedbackShakeIntegration2.o = null;
                return;
            default:
                SentryUserFeedbackForm sentryUserFeedbackForm = (SentryUserFeedbackForm) this.k;
                Activity activity2 = (Activity) this.l;
                int i = SentryUserFeedbackForm.p;
                if (!activity2.isFinishing() && !activity2.isDestroyed()) {
                    sentryUserFeedbackForm.show();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ g(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }
}
