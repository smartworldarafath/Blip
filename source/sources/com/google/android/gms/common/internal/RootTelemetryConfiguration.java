package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new Object();
    public final int j;
    public final boolean k;
    public final boolean l;
    public final int m;
    public final int n;

    public RootTelemetryConfiguration(int i, int i2, int i3, boolean z, boolean z2) {
        this.j = i;
        this.k = z;
        this.l = z2;
        this.m = i2;
        this.n = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k ? 1 : 0);
        SafeParcelWriter.f(parcel, 3, 4);
        parcel.writeInt(this.l ? 1 : 0);
        SafeParcelWriter.f(parcel, 4, 4);
        parcel.writeInt(this.m);
        SafeParcelWriter.f(parcel, 5, 4);
        parcel.writeInt(this.n);
        SafeParcelWriter.h(parcel, g);
    }
}
