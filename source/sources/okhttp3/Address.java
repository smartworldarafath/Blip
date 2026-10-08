package okhttp3;

import defpackage.fe;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Address {
    public final Dns a;
    public final SocketFactory b;
    public final SSLSocketFactory c;
    public final HostnameVerifier d;
    public final CertificatePinner e;
    public final Authenticator f;
    public final ProxySelector g;
    public final HttpUrl h;
    public final List i;
    public final List j;

    public Address(String str, int i, Dns dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, CertificatePinner certificatePinner, Authenticator authenticator, List list, List list2, ProxySelector proxySelector) {
        String str2;
        str.getClass();
        dns.getClass();
        socketFactory.getClass();
        authenticator.getClass();
        list.getClass();
        list2.getClass();
        proxySelector.getClass();
        this.a = dns;
        this.b = socketFactory;
        this.c = sSLSocketFactory;
        this.d = hostnameVerifier;
        this.e = certificatePinner;
        this.f = authenticator;
        this.g = proxySelector;
        HttpUrl.Builder builder = new HttpUrl.Builder();
        if (sSLSocketFactory == null) {
            str2 = "http";
        } else {
            str2 = "https";
        }
        if (str2.equalsIgnoreCase("http")) {
            builder.a = "http";
        } else if (str2.equalsIgnoreCase("https")) {
            builder.a = "https";
        } else {
            u2.g("unexpected scheme: ".concat(str2));
            throw null;
        }
        String b = HostnamesKt.b(HttpUrl.Companion.d(str, 0, 0, 7));
        if (b != null) {
            builder.d = b;
            if (1 <= i && i < 65536) {
                builder.e = i;
                this.h = builder.a();
                this.i = Util.t(list);
                this.j = Util.t(list2);
                return;
            }
            fe.l(q.g(i, "unexpected port: "));
            throw null;
        }
        u2.g("unexpected host: ".concat(str));
        throw null;
    }

    public final boolean a(Address address) {
        address.getClass();
        if (Intrinsics.a(this.a, address.a) && Intrinsics.a(this.f, address.f) && Intrinsics.a(this.i, address.i) && Intrinsics.a(this.j, address.j) && Intrinsics.a(this.g, address.g) && Intrinsics.a(this.c, address.c) && Intrinsics.a(this.d, address.d) && Intrinsics.a(this.e, address.e) && this.h.e == address.h.e) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (Intrinsics.a(this.h, address.h) && a(address)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.e) + ((Objects.hashCode(this.d) + ((Objects.hashCode(this.c) + ((this.g.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.f.hashCode() + ((this.a.hashCode() + jb.c(this.h.h, 527, 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        HttpUrl httpUrl = this.h;
        sb.append(httpUrl.d);
        sb.append(':');
        sb.append(httpUrl.e);
        sb.append(", ");
        sb.append("proxySelector=" + this.g);
        sb.append('}');
        return sb.toString();
    }
}
