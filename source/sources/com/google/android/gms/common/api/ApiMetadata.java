package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ApiMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiMetadata> CREATOR = zza.a;
    public static final ApiMetadata m;
    public final ComplianceOptions j;
    public final boolean k;
    public boolean l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public ComplianceOptions a;
        public boolean b;
        public boolean c;

        public final ApiMetadata a() {
            ApiMetadata apiMetadata = new ApiMetadata(this.a, this.b);
            apiMetadata.l = this.c;
            return apiMetadata;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.common.api.ApiMetadata$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.ApiMetadata$Builder, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.b = false;
        m = obj.a();
        ?? obj2 = new Object();
        obj2.b = false;
        obj2.c = true;
        obj2.a();
    }

    public ApiMetadata(ComplianceOptions complianceOptions, boolean z) {
        this.j = complianceOptions;
        this.k = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ApiMetadata) {
            ApiMetadata apiMetadata = (ApiMetadata) obj;
            if (Objects.a(this.j, apiMetadata.j) && this.l == apiMetadata.l && this.k == apiMetadata.k) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, Boolean.valueOf(this.l), Boolean.valueOf(this.k)});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.j);
        StringBuilder sb = new StringBuilder(valueOf.length() + 31);
        sb.append("ApiMetadata(complianceOptions=");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (this.l) {
            parcel.setDataPosition(parcel.dataPosition() - 4);
            parcel.setDataSize(parcel.dataSize() - 4);
            return;
        }
        parcel.writeInt(-204102970);
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.b(parcel, 1, this.j, i);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k ? 1 : 0);
        SafeParcelWriter.h(parcel, g);
    }
}
