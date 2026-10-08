package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zaae implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        int i = 0;
        while (true) {
            ArrayList arrayList = null;
            while (parcel.dataPosition() < j) {
                int readInt = parcel.readInt();
                char c = (char) readInt;
                if (c != 1) {
                    if (c != 2) {
                        SafeParcelReader.i(parcel, readInt);
                    } else {
                        Parcelable.Creator<MethodInvocation> creator = MethodInvocation.CREATOR;
                        int h = SafeParcelReader.h(parcel, readInt);
                        int dataPosition = parcel.dataPosition();
                        if (h == 0) {
                            break;
                        }
                        arrayList = parcel.createTypedArrayList(creator);
                        parcel.setDataPosition(dataPosition + h);
                    }
                } else {
                    i = SafeParcelReader.g(parcel, readInt);
                }
            }
            SafeParcelReader.e(parcel, j);
            return new TelemetryData(i, arrayList);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new TelemetryData[i];
    }
}
