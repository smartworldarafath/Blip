package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zab implements Parcelable.Creator {
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0021. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:5:0x001c  */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object createFromParcel(Parcel parcel) {
        int readInt;
        int j = SafeParcelReader.j(parcel);
        long j2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        while (true) {
            long j3 = j2;
            while (parcel.dataPosition() < j) {
                readInt = parcel.readInt();
                switch ((char) readInt) {
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        str = SafeParcelReader.c(parcel, readInt);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        str2 = SafeParcelReader.c(parcel, readInt);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        str3 = SafeParcelReader.c(parcel, readInt);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        str4 = SafeParcelReader.c(parcel, readInt);
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        uri = (Uri) SafeParcelReader.b(parcel, readInt, Uri.CREATOR);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        str5 = SafeParcelReader.c(parcel, readInt);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        break;
                    case KeyModifiers.a /* 9 */:
                        str6 = SafeParcelReader.c(parcel, readInt);
                    case KeyModifiers.b /* 10 */:
                        Parcelable.Creator<Scope> creator = Scope.CREATOR;
                        int h = SafeParcelReader.h(parcel, readInt);
                        int dataPosition = parcel.dataPosition();
                        if (h == 0) {
                            arrayList = null;
                        } else {
                            ArrayList createTypedArrayList = parcel.createTypedArrayList(creator);
                            parcel.setDataPosition(dataPosition + h);
                            arrayList = createTypedArrayList;
                        }
                    case 11:
                        str7 = SafeParcelReader.c(parcel, readInt);
                    case KeyModifiers.c /* 12 */:
                        str8 = SafeParcelReader.c(parcel, readInt);
                    default:
                        SafeParcelReader.i(parcel, readInt);
                }
                while (parcel.dataPosition() < j) {
                }
            }
            SafeParcelReader.e(parcel, j);
            return new GoogleSignInAccount(str, str2, str3, str4, uri, str5, j3, str6, arrayList, str7, str8);
            SafeParcelReader.k(parcel, readInt, 8);
            j2 = parcel.readLong();
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
