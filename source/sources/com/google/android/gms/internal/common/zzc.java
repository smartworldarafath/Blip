package com.google.android.gms.internal.common;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzc {
    public static final /* synthetic */ int a = 0;

    static {
        zzc.class.getClassLoader();
    }

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(dataAvail).length() + 45);
        sb.append("Parcel data not fully consumed, unread size: ");
        sb.append(dataAvail);
        throw new BadParcelableException(sb.toString());
    }
}
