package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zze implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        String str = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            SafeParcelReader.i(parcel, readInt);
                        } else {
                            connectionResult = (ConnectionResult) SafeParcelReader.b(parcel, readInt, ConnectionResult.CREATOR);
                        }
                    } else {
                        pendingIntent = (PendingIntent) SafeParcelReader.b(parcel, readInt, PendingIntent.CREATOR);
                    }
                } else {
                    str = SafeParcelReader.c(parcel, readInt);
                }
            } else {
                i = SafeParcelReader.g(parcel, readInt);
            }
        }
        SafeParcelReader.e(parcel, j);
        return new Status(i, str, pendingIntent, connectionResult);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Status[i];
    }
}
