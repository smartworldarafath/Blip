package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Objects;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zabl {
    public final ApiKey a;
    public final Feature b;

    public /* synthetic */ zabl(ApiKey apiKey, Feature feature) {
        this.a = apiKey;
        this.b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zabl) {
            zabl zablVar = (zabl) obj;
            if (Objects.a(this.a, zablVar.a) && Objects.a(this.b, zablVar.b)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.a, "key");
        toStringHelper.a(this.b, "feature");
        return toStringHelper.toString();
    }
}
