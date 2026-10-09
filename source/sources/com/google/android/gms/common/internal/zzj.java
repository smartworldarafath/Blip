package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new Object();
    public Bundle j;
    public Feature[] k;
    public int l;
    public ConnectionTelemetryConfiguration m;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.a(parcel, 1, this.j);
        SafeParcelWriter.d(parcel, 2, this.k, i);
        int i2 = this.l;
        SafeParcelWriter.f(parcel, 3, 4);
        parcel.writeInt(i2);
        SafeParcelWriter.b(parcel, 4, this.m, i);
        SafeParcelWriter.h(parcel, g);
    }
}
