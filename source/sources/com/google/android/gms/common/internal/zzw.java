package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzw extends com.google.android.gms.internal.common.zzb implements zzx {
    @Override // com.google.android.gms.internal.common.zzb
    public final boolean c(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int f = f();
            parcel2.writeNoException();
            parcel2.writeInt(f);
            return true;
        }
        ObjectWrapper b = b();
        parcel2.writeNoException();
        int i2 = com.google.android.gms.internal.common.zzc.a;
        parcel2.writeStrongBinder(b);
        return true;
    }
}
