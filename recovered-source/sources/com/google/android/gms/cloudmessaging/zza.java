package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.i(parcel, readInt);
            } else {
                intent = (Intent) SafeParcelReader.b(parcel, readInt, Intent.CREATOR);
            }
        }
        SafeParcelReader.e(parcel, j);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new CloudMessage[i];
    }
}
