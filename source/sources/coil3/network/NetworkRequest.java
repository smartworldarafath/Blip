package coil3.network;

import coil3.Extras;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkRequest {
    public final String a;
    public final String b;
    public final NetworkHeaders c;
    public final Extras d;

    public NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, Extras extras) {
        this.a = str;
        this.b = str2;
        this.c = networkHeaders;
        this.d = extras;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof NetworkRequest) {
                NetworkRequest networkRequest = (NetworkRequest) obj;
                if (!this.a.equals(networkRequest.a) || !Intrinsics.a(this.b, networkRequest.b) || !this.c.equals(networkRequest.c) || !Intrinsics.a(this.d, networkRequest.d)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.d.a.hashCode() + ((this.c.a.hashCode() + jb.c(this.b, this.a.hashCode() * 31, 31)) * 961);
    }

    public final String toString() {
        StringBuilder o = q.o("NetworkRequest(url=", this.a, ", method=", this.b, ", headers=");
        o.append(this.c);
        o.append(", body=null, extras=");
        o.append(this.d);
        o.append(")");
        return o.toString();
    }
}
