package coil3.network;

import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkResponse {
    public final int a;
    public final long b;
    public final long c;
    public final NetworkHeaders d;
    public final NetworkResponseBody e;
    public final Object f;

    public NetworkResponse(int i, long j, long j2, NetworkHeaders networkHeaders, NetworkResponseBody networkResponseBody, Object obj) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = networkHeaders;
        this.e = networkResponseBody;
        this.f = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkResponse)) {
            return false;
        }
        NetworkResponse networkResponse = (NetworkResponse) obj;
        if (this.a == networkResponse.a && this.b == networkResponse.b && this.c == networkResponse.c && Intrinsics.a(this.d, networkResponse.d) && Intrinsics.a(this.e, networkResponse.e) && Intrinsics.a(this.f, networkResponse.f)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.d.a.hashCode() + jb.a(jb.a(this.a * 31, 31, this.b), 31, this.c)) * 31;
        int i = 0;
        NetworkResponseBody networkResponseBody = this.e;
        if (networkResponseBody == null) {
            hashCode = 0;
        } else {
            hashCode = networkResponseBody.hashCode();
        }
        int i2 = (hashCode2 + hashCode) * 31;
        Object obj = this.f;
        if (obj != null) {
            i = obj.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "NetworkResponse(code=" + this.a + ", requestMillis=" + this.b + ", responseMillis=" + this.c + ", headers=" + this.d + ", body=" + this.e + ", delegate=" + this.f + ")";
    }
}
