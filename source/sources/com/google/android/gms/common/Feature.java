package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new Object();
    public final String j;
    public final int k;
    public final long l;
    public final boolean m;

    public Feature(String str, int i, long j, boolean z) {
        this.j = str;
        this.k = i;
        this.l = j;
        this.m = z;
    }

    public final long a() {
        long j = this.l;
        if (j == -1) {
            return this.k;
        }
        return j;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (Objects.a(this.j, feature.j) && a() == feature.a() && this.m == feature.m) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, Long.valueOf(a()), Boolean.valueOf(this.m)});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.j, "name");
        toStringHelper.a(Long.valueOf(a()), "version");
        toStringHelper.a(Boolean.valueOf(this.m), "is_fully_rolled_out");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.c(parcel, 1, this.j);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k);
        long a = a();
        SafeParcelWriter.f(parcel, 3, 8);
        parcel.writeLong(a);
        SafeParcelWriter.f(parcel, 4, 4);
        parcel.writeInt(this.m ? 1 : 0);
        SafeParcelWriter.h(parcel, g);
    }

    public Feature(String str) {
        this(str, -1, 1L, false);
    }
}
