package io.ktor.http;

import defpackage.q;
import defpackage.u2;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class URLProtocol implements Serializable {
    public static final URLProtocol l;
    public static final LinkedHashMap m;
    public final String j;
    public final int k;

    static {
        URLProtocol uRLProtocol = new URLProtocol("http", 80);
        l = uRLProtocol;
        List C = CollectionsKt.C(uRLProtocol, new URLProtocol("https", 443), new URLProtocol("ws", 80), new URLProtocol("wss", 443), new URLProtocol("socks", 1080));
        int d = MapsKt.d(CollectionsKt.m(C, 10));
        if (d < 16) {
            d = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(d);
        for (Object obj : C) {
            linkedHashMap.put(((URLProtocol) obj).j, obj);
        }
        m = linkedHashMap;
    }

    public URLProtocol(String str, int i) {
        this.j = str;
        this.k = i;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.toLowerCase(charAt) != charAt) {
                u2.g("All characters should be lower case");
                throw null;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof URLProtocol) {
                URLProtocol uRLProtocol = (URLProtocol) obj;
                if (!this.j.equals(uRLProtocol.j) || this.k != uRLProtocol.k) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Integer.hashCode(this.k) + (this.j.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("URLProtocol(name=");
        sb.append(this.j);
        sb.append(", defaultPort=");
        return q.j(sb, this.k, ')');
    }
}
