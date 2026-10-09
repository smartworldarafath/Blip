package com.google.android.gms.common.api.internal;

import android.content.DialogInterface;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {
    public volatile boolean j;

    public abstract void d(ConnectionResult connectionResult, int i);
}
