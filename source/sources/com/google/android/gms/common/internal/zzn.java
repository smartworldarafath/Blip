package com.google.android.gms.common.internal;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzn {
    public final String a;
    public final String b;
    public final boolean c;

    public zzn(String str, boolean z) {
        Preconditions.c(str);
        this.a = str;
        Preconditions.c("com.google.android.gms");
        this.b = "com.google.android.gms";
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        if (Objects.a(this.a, zznVar.a) && Objects.a(this.b, zznVar.b) && Objects.a(null, null) && this.c == zznVar.c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, null, 4225, Boolean.valueOf(this.c)});
    }

    public final String toString() {
        String str = this.a;
        if (str != null) {
            return str;
        }
        Preconditions.e(null);
        throw null;
    }
}
