package com.google.android.gms.internal.cloudmessaging;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zza implements IInterface {
    public final IBinder d;

    public zza(IBinder iBinder) {
        this.d = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.d;
    }
}
