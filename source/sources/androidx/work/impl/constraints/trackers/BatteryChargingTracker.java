package androidx.work.impl.constraints.trackers;

import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.Logger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BatteryChargingTracker extends BroadcastReceiverConstraintTracker<Boolean> {
    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final Boolean a() {
        boolean z;
        Intent registerReceiver = this.b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            Logger.d().b(BatteryChargingTrackerKt.a, "getInitialState - null intent received");
            return Boolean.FALSE;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        if (intExtra != 2 && intExtra != 5) {
            z = false;
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final IntentFilter c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.CHARGING");
        intentFilter.addAction("android.os.action.DISCHARGING");
        return intentFilter;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final void d(Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            Logger.d().a(BatteryChargingTrackerKt.a, "Received ".concat(action));
            switch (action.hashCode()) {
                case -1886648615:
                    if (!action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                        return;
                    }
                    b(Boolean.FALSE);
                    return;
                case -54942926:
                    if (action.equals("android.os.action.DISCHARGING")) {
                        b(Boolean.FALSE);
                        return;
                    }
                    return;
                case 948344062:
                    if (action.equals("android.os.action.CHARGING")) {
                        b(Boolean.TRUE);
                        return;
                    }
                    return;
                case 1019184907:
                    if (action.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                        b(Boolean.TRUE);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
