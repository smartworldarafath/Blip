package com.google.android.gms.cloudmessaging;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RegisterRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RegisterRequest> CREATOR = new Object();
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public int o;
    public final String p;

    public RegisterRequest(String str, String str2, String str3, String str4, String str5) {
        this.j = str;
        this.k = str2;
        this.l = str3;
        this.m = str4;
        this.n = str5;
        this.p = "fcm-25.1.2";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.c(parcel, 1, this.j);
        SafeParcelWriter.c(parcel, 2, this.k);
        SafeParcelWriter.c(parcel, 3, this.l);
        SafeParcelWriter.c(parcel, 4, this.m);
        SafeParcelWriter.c(parcel, 5, this.n);
        int i2 = this.o;
        SafeParcelWriter.f(parcel, 6, 4);
        parcel.writeInt(i2);
        SafeParcelWriter.c(parcel, 7, this.p);
        SafeParcelWriter.h(parcel, g);
    }

    public RegisterRequest(String str, String str2, String str3, String str4, String str5, int i, String str6) {
        this.j = str;
        this.k = str2;
        this.l = str3;
        this.m = str4;
        this.n = str5;
        this.o = i;
        this.p = str6;
    }
}
