package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zaa implements IInterface {
    public final IBinder d;
    public final String e;

    public zaa(IBinder iBinder, String str) {
        this.d = iBinder;
        this.e = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.d;
    }
}
