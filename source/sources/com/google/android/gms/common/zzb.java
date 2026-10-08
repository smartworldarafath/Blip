package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzb implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        int i = 0;
        boolean z = false;
        long j2 = -1;
        String str = null;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            SafeParcelReader.i(parcel, readInt);
                        } else {
                            z = SafeParcelReader.f(parcel, readInt);
                        }
                    } else {
                        SafeParcelReader.k(parcel, readInt, 8);
                        j2 = parcel.readLong();
                    }
                } else {
                    i = SafeParcelReader.g(parcel, readInt);
                }
            } else {
                str = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.e(parcel, j);
        return new Feature(str, i, j2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Feature[i];
    }
}
