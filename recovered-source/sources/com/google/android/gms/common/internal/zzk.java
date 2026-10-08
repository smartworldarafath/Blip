package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzk implements Parcelable.Creator {
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, com.google.android.gms.common.internal.zzj] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        Bundle bundle = null;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
        int i = 0;
        Feature[] featureArr = null;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            SafeParcelReader.i(parcel, readInt);
                        } else {
                            connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) SafeParcelReader.b(parcel, readInt, ConnectionTelemetryConfiguration.CREATOR);
                        }
                    } else {
                        i = SafeParcelReader.g(parcel, readInt);
                    }
                } else {
                    featureArr = (Feature[]) SafeParcelReader.d(parcel, readInt, Feature.CREATOR);
                }
            } else {
                bundle = SafeParcelReader.a(parcel, readInt);
            }
        }
        SafeParcelReader.e(parcel, j);
        ?? obj = new Object();
        obj.j = bundle;
        obj.k = featureArr;
        obj.l = i;
        obj.m = connectionTelemetryConfiguration;
        return obj;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzj[i];
    }
}
