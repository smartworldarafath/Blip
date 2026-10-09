package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new Object();
    public final int j;
    public final int k;
    public final int l;
    public final long m;
    public final long n;
    public final String o;
    public final String p;
    public final int q;
    public final int r;

    public MethodInvocation(int i, int i2, int i3, long j, long j2, String str, String str2, int i4, int i5) {
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = j;
        this.n = j2;
        this.o = str;
        this.p = str2;
        this.q = i4;
        this.r = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k);
        SafeParcelWriter.f(parcel, 3, 4);
        parcel.writeInt(this.l);
        SafeParcelWriter.f(parcel, 4, 8);
        parcel.writeLong(this.m);
        SafeParcelWriter.f(parcel, 5, 8);
        parcel.writeLong(this.n);
        SafeParcelWriter.c(parcel, 6, this.o);
        SafeParcelWriter.c(parcel, 7, this.p);
        SafeParcelWriter.f(parcel, 8, 4);
        parcel.writeInt(this.q);
        SafeParcelWriter.f(parcel, 9, 4);
        parcel.writeInt(this.r);
        SafeParcelWriter.h(parcel, g);
    }
}
