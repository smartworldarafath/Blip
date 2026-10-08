package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zaz implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            if (c != 5) {
                                SafeParcelReader.i(parcel, readInt);
                            } else {
                                z2 = SafeParcelReader.f(parcel, readInt);
                            }
                        } else {
                            z = SafeParcelReader.f(parcel, readInt);
                        }
                    } else {
                        connectionResult = (ConnectionResult) SafeParcelReader.b(parcel, readInt, ConnectionResult.CREATOR);
                    }
                } else {
                    int h = SafeParcelReader.h(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (h == 0) {
                        iBinder = null;
                    } else {
                        iBinder = parcel.readStrongBinder();
                        parcel.setDataPosition(dataPosition + h);
                    }
                }
            } else {
                i = SafeParcelReader.g(parcel, readInt);
            }
        }
        SafeParcelReader.e(parcel, j);
        return new zay(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zay[i];
    }
}
