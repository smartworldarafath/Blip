package com.google.android.gms.internal.base;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.api.internal.zacm;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zab extends Binder implements IInterface {
    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i > 16777215) {
            if (super.onTransact(i, parcel, parcel2, i2)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        com.google.android.gms.signin.internal.zad zadVar = (com.google.android.gms.signin.internal.zad) this;
        switch (i) {
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                zac.b(parcel);
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                zac.b(parcel);
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
            default:
                return false;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                zac.b(parcel);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                zac.b(parcel);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                com.google.android.gms.signin.internal.zak zakVar = (com.google.android.gms.signin.internal.zak) zac.a(parcel, com.google.android.gms.signin.internal.zak.CREATOR);
                zac.b(parcel);
                ((zacm) zadVar).j(zakVar);
                break;
            case KeyModifiers.a /* 9 */:
                zac.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
