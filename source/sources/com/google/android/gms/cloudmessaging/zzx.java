package com.google.android.gms.cloudmessaging;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzx implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        int i = 0;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    str = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    str2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    str3 = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    str4 = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    str5 = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    i = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    str6 = SafeParcelReader.c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.i(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.e(parcel, j);
        return new RegisterRequest(str, str2, str3, str4, str5, i, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new RegisterRequest[i];
    }
}
