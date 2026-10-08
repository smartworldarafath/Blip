package androidx.compose.runtime;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OpaqueKey {
    public final String a;

    public OpaqueKey(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OpaqueKey) || !this.a.equals(((OpaqueKey) obj).a)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return q.i("OpaqueKey(key=", this.a, ")");
    }
}
