package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        Integer num = null;
        int i = 0;
        int i2 = 0;
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
                                int h = SafeParcelReader.h(parcel, readInt);
                                if (h == 0) {
                                    num = null;
                                } else if (h == 4) {
                                    num = Integer.valueOf(parcel.readInt());
                                } else {
                                    String hexString = Integer.toHexString(h);
                                    StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + String.valueOf(4).length() + 19 + String.valueOf(h).length() + 4 + 1);
                                    sb.append("Expected size 4 got ");
                                    sb.append(h);
                                    sb.append(" (0x");
                                    sb.append(hexString);
                                    sb.append(")");
                                    throw new SafeParcelReader.ParseException(sb.toString(), parcel);
                                }
                            }
                        } else {
                            str = SafeParcelReader.c(parcel, readInt);
                        }
                    } else {
                        pendingIntent = (PendingIntent) SafeParcelReader.b(parcel, readInt, PendingIntent.CREATOR);
                    }
                } else {
                    i2 = SafeParcelReader.g(parcel, readInt);
                }
            } else {
                i = SafeParcelReader.g(parcel, readInt);
            }
        }
        SafeParcelReader.e(parcel, j);
        return new ConnectionResult(i, i2, pendingIntent, str, num);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
