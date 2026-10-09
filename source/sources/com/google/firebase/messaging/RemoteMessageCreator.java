package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RemoteMessageCreator implements Parcelable.Creator<RemoteMessage> {
    @Override // android.os.Parcelable.Creator
    public final RemoteMessage createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.i(parcel, readInt);
            } else {
                bundle = SafeParcelReader.a(parcel, readInt);
            }
        }
        SafeParcelReader.e(parcel, j);
        return new RemoteMessage(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
