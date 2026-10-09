package coil3.network;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"MissingPermission"})
/* loaded from: classes.dex */
final class ConnectivityCheckerApi23 implements ConnectivityChecker {
    public final ConnectivityManager b;

    public ConnectivityCheckerApi23(ConnectivityManager connectivityManager) {
        this.b = connectivityManager;
    }

    @Override // coil3.network.ConnectivityChecker
    public final boolean a() {
        ConnectivityManager connectivityManager = this.b;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
            return true;
        }
        return false;
    }
}
