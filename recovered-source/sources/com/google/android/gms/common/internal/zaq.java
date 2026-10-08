package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zaq implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        String str = null;
        String str2 = null;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i2 = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    i3 = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    i4 = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    SafeParcelReader.k(parcel, readInt, 8);
                    j2 = parcel.readLong();
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    SafeParcelReader.k(parcel, readInt, 8);
                    j3 = parcel.readLong();
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    str = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    str2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    i5 = SafeParcelReader.g(parcel, readInt);
                    break;
                case KeyModifiers.a /* 9 */:
                    i = SafeParcelReader.g(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.i(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.e(parcel, j);
        return new MethodInvocation(i2, i3, i4, j2, j3, str, str2, i5, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new MethodInvocation[i];
    }
}
