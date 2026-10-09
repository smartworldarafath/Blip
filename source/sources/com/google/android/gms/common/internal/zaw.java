package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zaw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaw> CREATOR = new Object();
    public final int j;
    public final Account k;
    public final int l;
    public final GoogleSignInAccount m;

    public zaw(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.j = i;
        this.k = account;
        this.l = i2;
        this.m = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.b(parcel, 2, this.k, i);
        SafeParcelWriter.f(parcel, 3, 4);
        parcel.writeInt(this.l);
        SafeParcelWriter.b(parcel, 4, this.m, i);
        SafeParcelWriter.h(parcel, g);
    }
}
