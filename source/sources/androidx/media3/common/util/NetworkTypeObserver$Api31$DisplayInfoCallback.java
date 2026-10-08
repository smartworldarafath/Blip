package androidx.media3.common.util;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class NetworkTypeObserver$Api31$DisplayInfoCallback extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
    public final NetworkTypeObserver a;

    public NetworkTypeObserver$Api31$DisplayInfoCallback(NetworkTypeObserver networkTypeObserver) {
        this.a = networkTypeObserver;
    }

    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        int overrideNetworkType;
        boolean z;
        overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        int i = 5;
        if (overrideNetworkType != 3 && overrideNetworkType != 4 && overrideNetworkType != 5) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            i = 10;
        }
        this.a.d(i);
    }
}
