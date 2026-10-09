package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zag extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zag> CREATOR = new Object();
    public final List j;
    public final String k;

    public zag(String str, ArrayList arrayList) {
        this.j = arrayList;
        this.k = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        List<String> list = this.j;
        if (list != null) {
            int g2 = SafeParcelWriter.g(parcel, 1);
            parcel.writeStringList(list);
            SafeParcelWriter.h(parcel, g2);
        }
        SafeParcelWriter.c(parcel, 2, this.k);
        SafeParcelWriter.h(parcel, g);
    }
}
