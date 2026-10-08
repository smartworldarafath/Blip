package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zab> CREATOR = new Object();
    public final int j;
    public final String k;
    public final long l;
    public final int m;
    public final boolean n;

    public zab(int i, String str, long j, int i2, boolean z) {
        this.j = i;
        this.k = str;
        this.l = j;
        this.m = i2;
        this.n = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.c(parcel, 2, this.k);
        SafeParcelWriter.f(parcel, 3, 8);
        parcel.writeLong(this.l);
        SafeParcelWriter.f(parcel, 4, 4);
        parcel.writeInt(this.m);
        SafeParcelWriter.f(parcel, 5, 4);
        parcel.writeInt(this.n ? 1 : 0);
        SafeParcelWriter.h(parcel, g);
    }
}
