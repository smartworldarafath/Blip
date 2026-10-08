package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComplianceOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ComplianceOptions> CREATOR = new Object();
    public final int j;
    public final int k;
    public final int l;
    public final boolean m;

    public ComplianceOptions(int i, int i2, int i3, boolean z) {
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ComplianceOptions)) {
            return false;
        }
        ComplianceOptions complianceOptions = (ComplianceOptions) obj;
        if (this.j != complianceOptions.j || this.k != complianceOptions.k || this.l != complianceOptions.l || this.m != complianceOptions.m) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.j), Integer.valueOf(this.k), Integer.valueOf(this.l), Boolean.valueOf(this.m)});
    }

    public final String toString() {
        int i = this.j;
        int length = String.valueOf(i).length();
        int i2 = this.k;
        int length2 = String.valueOf(i2).length();
        int i3 = this.l;
        int length3 = String.valueOf(i3).length();
        boolean z = this.m;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 19 + length3 + 13 + String.valueOf(z).length() + 1);
        sb.append("ComplianceOptions{callerProductId=");
        sb.append(i);
        sb.append(", dataOwnerProductId=");
        sb.append(i2);
        sb.append(", processingReason=");
        sb.append(i3);
        sb.append(", isUserData=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k);
        SafeParcelWriter.f(parcel, 3, 4);
        parcel.writeInt(this.l);
        SafeParcelWriter.f(parcel, 4, 4);
        parcel.writeInt(this.m ? 1 : 0);
        SafeParcelWriter.h(parcel, g);
    }
}
