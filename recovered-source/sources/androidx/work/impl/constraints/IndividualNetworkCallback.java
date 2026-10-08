package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import defpackage.ec;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IndividualNetworkCallback extends ConnectivityManager.NetworkCallback {
    public static final /* synthetic */ int b = 0;
    public final ec a;

    public IndividualNetworkCallback(ec ecVar) {
        this.a = ecVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        network.getClass();
        networkCapabilities.getClass();
        Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        this.a.b(ConstraintsState.ConstraintsMet.a);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        network.getClass();
        Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController onLost callback");
        this.a.b(new ConstraintsState.ConstraintsNotMet(7));
    }
}
