package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zay extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zay> CREATOR = new Object();
    public final int j;
    public final IBinder k;
    public final ConnectionResult l;
    public final boolean m;
    public final boolean n;

    public zay(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.j = i;
        this.k = iBinder;
        this.l = connectionResult;
        this.m = z;
        this.n = z2;
    }

    public final boolean equals(Object obj) {
        Object zzaVar;
        if (obj != null) {
            if (this != obj) {
                if (obj instanceof zay) {
                    zay zayVar = (zay) obj;
                    if (this.l.equals(zayVar.l)) {
                        Object obj2 = null;
                        IBinder iBinder = this.k;
                        if (iBinder == null) {
                            zzaVar = null;
                        } else {
                            int i = IAccountAccessor.Stub.d;
                            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                            if (queryLocalInterface instanceof IAccountAccessor) {
                                zzaVar = (IAccountAccessor) queryLocalInterface;
                            } else {
                                zzaVar = new com.google.android.gms.internal.common.zza(iBinder);
                            }
                        }
                        IBinder iBinder2 = zayVar.k;
                        if (iBinder2 != null) {
                            int i2 = IAccountAccessor.Stub.d;
                            IInterface queryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                            if (queryLocalInterface2 instanceof IAccountAccessor) {
                                obj2 = (IAccountAccessor) queryLocalInterface2;
                            } else {
                                obj2 = new com.google.android.gms.internal.common.zza(iBinder2);
                            }
                        }
                        if (Objects.a(zzaVar, obj2)) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        IBinder iBinder = this.k;
        if (iBinder != null) {
            int g2 = SafeParcelWriter.g(parcel, 2);
            parcel.writeStrongBinder(iBinder);
            SafeParcelWriter.h(parcel, g2);
        }
        SafeParcelWriter.b(parcel, 3, this.l, i);
        SafeParcelWriter.f(parcel, 4, 4);
        parcel.writeInt(this.m ? 1 : 0);
        SafeParcelWriter.f(parcel, 5, 4);
        parcel.writeInt(this.n ? 1 : 0);
        SafeParcelWriter.h(parcel, g);
    }
}
