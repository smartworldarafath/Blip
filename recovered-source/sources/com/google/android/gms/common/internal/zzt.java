package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzt extends com.google.android.gms.internal.common.zza implements IAccountAccessor {
    public final Account c() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.common.internal.IAccountAccessor");
        obtain = Parcel.obtain();
        try {
            this.d.transact(2, obtain, obtain, 0);
            obtain.readException();
            obtain.recycle();
            return (Account) com.google.android.gms.internal.common.zzc.a(obtain, Account.CREATOR);
        } catch (RuntimeException e) {
            throw e;
        } finally {
            obtain.recycle();
        }
    }
}
