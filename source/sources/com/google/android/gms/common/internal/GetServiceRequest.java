package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new Object();
    public static final Scope[] x = new Scope[0];
    public static final Feature[] y = new Feature[0];
    public final int j;
    public final int k;
    public final int l;
    public String m;
    public IBinder n;
    public Scope[] o;
    public Bundle p;
    public Account q;
    public Feature[] r;
    public Feature[] s;
    public final boolean t;
    public final int u;
    public boolean v;
    public final String w;

    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i4, boolean z2, String str2) {
        IInterface zzaVar;
        scopeArr = scopeArr == null ? x : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        Feature[] featureArr3 = y;
        featureArr = featureArr == null ? featureArr3 : featureArr;
        featureArr2 = featureArr2 == null ? featureArr3 : featureArr2;
        this.j = i;
        this.k = i2;
        this.l = i3;
        if ("com.google.android.gms".equals(str)) {
            this.m = "com.google.android.gms";
        } else {
            this.m = str;
        }
        if (i < 2) {
            Account account2 = null;
            if (iBinder != null) {
                int i5 = IAccountAccessor.Stub.d;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                if (queryLocalInterface instanceof IAccountAccessor) {
                    zzaVar = (IAccountAccessor) queryLocalInterface;
                } else {
                    zzaVar = new com.google.android.gms.internal.common.zza(iBinder);
                }
                int i6 = AccountAccessor.e;
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    try {
                        account2 = ((zzt) zzaVar).c();
                    } catch (RemoteException unused) {
                        Log.w("AccountAccessor", "Remote account accessor probably died");
                    }
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            this.q = account2;
        } else {
            this.n = iBinder;
            this.q = account;
        }
        this.o = scopeArr;
        this.p = bundle;
        this.r = featureArr;
        this.s = featureArr2;
        this.t = z;
        this.u = i4;
        this.v = z2;
        this.w = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzm.a(this, parcel, i);
    }
}
