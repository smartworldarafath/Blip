package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zza implements Parcelable.Creator {
    public static final zza a = new Object();

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int dataPosition = parcel.dataPosition();
        if (parcel.readInt() == -204102970) {
            int j = SafeParcelReader.j(parcel);
            boolean z = false;
            ComplianceOptions complianceOptions = null;
            while (parcel.dataPosition() < j) {
                int readInt = parcel.readInt();
                char c = (char) readInt;
                if (c != 1) {
                    if (c != 2) {
                        SafeParcelReader.i(parcel, readInt);
                    } else {
                        z = SafeParcelReader.f(parcel, readInt);
                    }
                } else {
                    complianceOptions = (ComplianceOptions) SafeParcelReader.b(parcel, readInt, ComplianceOptions.CREATOR);
                }
            }
            SafeParcelReader.e(parcel, j);
            return new ApiMetadata(complianceOptions, z);
        }
        parcel.setDataPosition(dataPosition - 4);
        return ApiMetadata.m;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new ApiMetadata[i];
    }
}
