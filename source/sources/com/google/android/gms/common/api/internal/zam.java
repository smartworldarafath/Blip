package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zam {
    public final int a;
    public final ConnectionResult b;

    public zam(ConnectionResult connectionResult, int i) {
        Preconditions.e(connectionResult);
        this.b = connectionResult;
        this.a = i;
    }
}
