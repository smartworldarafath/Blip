package androidx.work.impl.constraints;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.work.impl.constraints.controllers.BatteryChargingController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.StorageNotLowController;
import androidx.work.impl.constraints.trackers.Trackers;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkConstraintsTracker {
    public final ArrayList a;

    public WorkConstraintsTracker(Trackers trackers) {
        trackers.getClass();
        String str = WorkConstraintsTrackerKt.a;
        ArrayList E = CollectionsKt.E(new BatteryChargingController(trackers.b), new BatteryNotLowController(trackers.c), new StorageNotLowController(trackers.d));
        Context context = trackers.a;
        context.getClass();
        Object systemService = context.getSystemService("connectivity");
        systemService.getClass();
        E.add(new NetworkRequestConstraintController((ConnectivityManager) systemService));
        this.a = E;
    }
}
