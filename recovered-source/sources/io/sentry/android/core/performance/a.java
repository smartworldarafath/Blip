package io.sentry.android.core.performance;

import io.sentry.android.core.performance.AppStartMetrics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                AppStartMetrics appStartMetrics = AppStartMetrics.z;
                ((AppStartMetrics) obj).d();
                return;
            case 1:
                AppStartMetrics appStartMetrics2 = AppStartMetrics.z;
                ((AppStartMetrics) obj).d();
                return;
            default:
                AppStartMetrics.a(((AppStartMetrics.AnonymousClass3) obj).k);
                return;
        }
    }
}
