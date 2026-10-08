package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzm implements Parcelable.Creator {
    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        int i2 = getServiceRequest.j;
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = getServiceRequest.k;
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = getServiceRequest.l;
        SafeParcelWriter.f(parcel, 3, 4);
        parcel.writeInt(i4);
        SafeParcelWriter.c(parcel, 4, getServiceRequest.m);
        IBinder iBinder = getServiceRequest.n;
        if (iBinder != null) {
            int g2 = SafeParcelWriter.g(parcel, 5);
            parcel.writeStrongBinder(iBinder);
            SafeParcelWriter.h(parcel, g2);
        }
        SafeParcelWriter.d(parcel, 6, getServiceRequest.o, i);
        SafeParcelWriter.a(parcel, 7, getServiceRequest.p);
        SafeParcelWriter.b(parcel, 8, getServiceRequest.q, i);
        SafeParcelWriter.d(parcel, 10, getServiceRequest.r, i);
        SafeParcelWriter.d(parcel, 11, getServiceRequest.s, i);
        boolean z = getServiceRequest.t;
        SafeParcelWriter.f(parcel, 12, 4);
        parcel.writeInt(z ? 1 : 0);
        int i5 = getServiceRequest.u;
        SafeParcelWriter.f(parcel, 13, 4);
        parcel.writeInt(i5);
        boolean z2 = getServiceRequest.v;
        SafeParcelWriter.f(parcel, 14, 4);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.c(parcel, 15, getServiceRequest.w);
        SafeParcelWriter.h(parcel, g);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        Bundle bundle = new Bundle();
        Scope[] scopeArr = GetServiceRequest.x;
        String str = null;
        IBinder iBinder = null;
        Account account = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        Feature[] featureArr = GetServiceRequest.y;
        Feature[] featureArr2 = featureArr;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    i2 = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    i3 = SafeParcelReader.g(parcel, readInt);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    str = SafeParcelReader.c(parcel, readInt);
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    int h = SafeParcelReader.h(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (h == 0) {
                        iBinder = null;
                        break;
                    } else {
                        IBinder readStrongBinder = parcel.readStrongBinder();
                        parcel.setDataPosition(dataPosition + h);
                        iBinder = readStrongBinder;
                        break;
                    }
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    scopeArr = (Scope[]) SafeParcelReader.d(parcel, readInt, Scope.CREATOR);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    bundle = SafeParcelReader.a(parcel, readInt);
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    account = (Account) SafeParcelReader.b(parcel, readInt, Account.CREATOR);
                    break;
                case KeyModifiers.a /* 9 */:
                default:
                    SafeParcelReader.i(parcel, readInt);
                    break;
                case KeyModifiers.b /* 10 */:
                    featureArr = (Feature[]) SafeParcelReader.d(parcel, readInt, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.d(parcel, readInt, Feature.CREATOR);
                    break;
                case KeyModifiers.c /* 12 */:
                    z = SafeParcelReader.f(parcel, readInt);
                    break;
                case '\r':
                    i4 = SafeParcelReader.g(parcel, readInt);
                    break;
                case 14:
                    z2 = SafeParcelReader.f(parcel, readInt);
                    break;
                case 15:
                    str2 = SafeParcelReader.c(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.e(parcel, j);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
