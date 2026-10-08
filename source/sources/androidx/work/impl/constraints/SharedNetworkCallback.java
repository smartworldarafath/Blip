package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SharedNetworkCallback extends ConnectivityManager.NetworkCallback {
    public static final SharedNetworkCallback a = new ConnectivityManager.NetworkCallback();
    public static final Object b = new Object();
    public static final LinkedHashMap c = new LinkedHashMap();
    public static NetworkCapabilities d;
    public static boolean e;
    public static Boolean f;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0055 A[Catch: all -> 0x0058, TryCatch #0 {all -> 0x0058, blocks: (B:4:0x000a, B:6:0x000e, B:9:0x0014, B:10:0x0020, B:12:0x0026, B:14:0x004a, B:18:0x0055, B:20:0x0060, B:21:0x005a, B:33:0x0087), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a A[Catch: all -> 0x0058, TryCatch #0 {all -> 0x0058, blocks: (B:4:0x000a, B:6:0x000e, B:9:0x0014, B:10:0x0020, B:12:0x0026, B:14:0x004a, B:18:0x0055, B:20:0x0060, B:21:0x005a, B:33:0x0087), top: B:3:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a() {
        boolean z;
        Object constraintsNotMet;
        boolean canBeSatisfiedBy;
        ArrayList arrayList = new ArrayList();
        synchronized (b) {
            try {
                if (e && f != null) {
                    for (Map.Entry entry : c.entrySet()) {
                        Function1 function1 = (Function1) entry.getKey();
                        NetworkRequest networkRequest = (NetworkRequest) entry.getValue();
                        SharedNetworkCallback sharedNetworkCallback = a;
                        NetworkCapabilities networkCapabilities = d;
                        sharedNetworkCallback.getClass();
                        Boolean bool = f;
                        bool.getClass();
                        if (!bool.booleanValue()) {
                            canBeSatisfiedBy = networkRequest.canBeSatisfiedBy(networkCapabilities);
                            if (canBeSatisfiedBy) {
                                z = true;
                                if (!z) {
                                    constraintsNotMet = ConstraintsState.ConstraintsMet.a;
                                } else {
                                    constraintsNotMet = new ConstraintsState.ConstraintsNotMet(7);
                                }
                                arrayList.add(new Pair(function1, constraintsNotMet));
                            }
                        }
                        z = false;
                        if (!z) {
                        }
                        arrayList.add(new Pair(function1, constraintsNotMet));
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        ((Function1) pair.j).b((ConstraintsState) pair.k);
                    }
                    return;
                }
                Logger.d().a(WorkConstraintsTrackerKt.a, "Not dispatching constraint state yet: isBlocked=" + f + ", capabilitiesInitialized=" + e);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onBlockedStatusChanged(Network network, boolean z) {
        network.getClass();
        Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController onBlockedStatusChanged callback " + z);
        synchronized (b) {
            if (Intrinsics.a(f, Boolean.valueOf(z))) {
                return;
            }
            f = Boolean.valueOf(z);
            a();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        network.getClass();
        networkCapabilities.getClass();
        Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (b) {
            d = networkCapabilities;
            e = true;
        }
        a();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        network.getClass();
        Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController onLost callback");
        synchronized (b) {
            d = null;
            Iterator it = c.keySet().iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).b(new ConstraintsState.ConstraintsNotMet(7));
            }
        }
    }
}
