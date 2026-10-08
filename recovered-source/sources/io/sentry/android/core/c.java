package io.sentry.android.core;

import android.app.Activity;
import androidx.core.app.FrameMetricsAggregator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ ActivityFramesTracker k;
    public final /* synthetic */ Activity l;

    public /* synthetic */ c(ActivityFramesTracker activityFramesTracker, Activity activity, int i) {
        this.j = i;
        this.k = activityFramesTracker;
        this.l = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Activity activity = this.l;
        ActivityFramesTracker activityFramesTracker = this.k;
        switch (i) {
            case 0:
                ((FrameMetricsAggregator) activityFramesTracker.a.a()).a(activity);
                return;
            default:
                ((FrameMetricsAggregator) activityFramesTracker.a.a()).c(activity);
                return;
        }
    }
}
