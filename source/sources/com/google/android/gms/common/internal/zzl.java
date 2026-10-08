package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzl implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        RootTelemetryConfiguration rootTelemetryConfiguration = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    rootTelemetryConfiguration = (RootTelemetryConfiguration) SafeParcelReader.b(parcel, readInt, RootTelemetryConfiguration.CREATOR);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    z = SafeParcelReader.f(parcel, readInt);
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    z2 = SafeParcelReader.f(parcel, readInt);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    int h = SafeParcelReader.h(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (h == 0) {
                        iArr = null;
                        break;
                    } else {
                        iArr = parcel.createIntArray();
                        parcel.setDataPosition(dataPosition + h);
                        break;
                    }
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    i = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    int h2 = SafeParcelReader.h(parcel, readInt);
                    int dataPosition2 = parcel.dataPosition();
                    if (h2 == 0) {
                        iArr2 = null;
                        break;
                    } else {
                        iArr2 = parcel.createIntArray();
                        parcel.setDataPosition(dataPosition2 + h2);
                        break;
                    }
                default:
                    SafeParcelReader.i(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.e(parcel, j);
        return new ConnectionTelemetryConfiguration(rootTelemetryConfiguration, z, z2, iArr, i, iArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ConnectionTelemetryConfiguration[i];
    }
}
