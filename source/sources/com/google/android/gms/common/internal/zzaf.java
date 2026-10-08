package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzaf extends Exception {
    public final ConnectionResult j;

    public zzaf(ConnectionResult connectionResult) {
        boolean z;
        if (connectionResult.k != 0 && connectionResult.l != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.a("ResolvableConnectionException can only be created with a connection result containing a resolution.", z);
        this.j = connectionResult;
    }
}
