package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new Object();
    public final RootTelemetryConfiguration j;
    public final boolean k;
    public final boolean l;
    public final int[] m;
    public final int n;
    public final int[] o;

    public ConnectionTelemetryConfiguration(RootTelemetryConfiguration rootTelemetryConfiguration, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.j = rootTelemetryConfiguration;
        this.k = z;
        this.l = z2;
        this.m = iArr;
        this.n = i;
        this.o = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.b(parcel, 1, this.j, i);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k ? 1 : 0);
        SafeParcelWriter.f(parcel, 3, 4);
        parcel.writeInt(this.l ? 1 : 0);
        int[] iArr = this.m;
        if (iArr != null) {
            int g2 = SafeParcelWriter.g(parcel, 4);
            parcel.writeIntArray(iArr);
            SafeParcelWriter.h(parcel, g2);
        }
        SafeParcelWriter.f(parcel, 5, 4);
        parcel.writeInt(this.n);
        int[] iArr2 = this.o;
        if (iArr2 != null) {
            int g3 = SafeParcelWriter.g(parcel, 6);
            parcel.writeIntArray(iArr2);
            SafeParcelWriter.h(parcel, g3);
        }
        SafeParcelWriter.h(parcel, g);
    }
}
