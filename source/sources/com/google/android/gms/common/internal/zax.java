package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zax implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int j = SafeParcelReader.j(parcel);
        Account account = null;
        int i = 0;
        int i2 = 0;
        GoogleSignInAccount googleSignInAccount = null;
        while (parcel.dataPosition() < j) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            SafeParcelReader.i(parcel, readInt);
                        } else {
                            googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.b(parcel, readInt, GoogleSignInAccount.CREATOR);
                        }
                    } else {
                        i2 = SafeParcelReader.g(parcel, readInt);
                    }
                } else {
                    account = (Account) SafeParcelReader.b(parcel, readInt, Account.CREATOR);
                }
            } else {
                i = SafeParcelReader.g(parcel, readInt);
            }
        }
        SafeParcelReader.e(parcel, j);
        return new zaw(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zaw[i];
    }
}
