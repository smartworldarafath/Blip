package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new Object();
    public final int j;
    public final int k;
    public final Intent l;

    public zaa(int i, int i2, Intent intent) {
        this.j = i;
        this.k = i2;
        this.l = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k);
        SafeParcelWriter.b(parcel, 3, this.l, i);
        SafeParcelWriter.h(parcel, g);
    }
}
