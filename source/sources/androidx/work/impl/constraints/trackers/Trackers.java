package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Trackers {
    public final Context a;
    public final ConstraintTracker b;
    public final BatteryNotLowTracker c;
    public final ConstraintTracker d;

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker, androidx.work.impl.constraints.trackers.BatteryNotLowTracker] */
    public Trackers(Context context, WorkManagerTaskExecutor workManagerTaskExecutor) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        BroadcastReceiverConstraintTracker broadcastReceiverConstraintTracker = new BroadcastReceiverConstraintTracker(applicationContext, workManagerTaskExecutor);
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        ?? broadcastReceiverConstraintTracker2 = new BroadcastReceiverConstraintTracker(applicationContext2, workManagerTaskExecutor);
        Context applicationContext3 = context.getApplicationContext();
        applicationContext3.getClass();
        BroadcastReceiverConstraintTracker broadcastReceiverConstraintTracker3 = new BroadcastReceiverConstraintTracker(applicationContext3, workManagerTaskExecutor);
        this.a = context;
        this.b = broadcastReceiverConstraintTracker;
        this.c = broadcastReceiverConstraintTracker2;
        this.d = broadcastReceiverConstraintTracker3;
    }
}
