package io.ktor.http;

import defpackage.fe;
import defpackage.q;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class URLBuilder {
    public static final Url k = URLUtilsKt.a("http://localhost");
    public String a;
    public boolean b;
    public int c;
    public URLProtocol d;
    public String e;
    public String f;
    public String g;
    public List h;
    public ParametersBuilderImpl i;
    public UrlDecodedParametersBuilder j;

    public final void a() {
        if (this.a.length() <= 0 && !b().j.equals("file")) {
            Url url = k;
            this.a = url.j;
            if (this.d == null) {
                this.d = url.o;
            }
            if (this.c == 0) {
                c(url.k);
            }
        }
    }

    public final URLProtocol b() {
        URLProtocol uRLProtocol = this.d;
        if (uRLProtocol == null) {
            URLProtocol uRLProtocol2 = URLProtocol.l;
            return URLProtocol.l;
        }
        return uRLProtocol;
    }

    public final void c(int i) {
        if (i >= 0 && i < 65536) {
            this.c = i;
        } else {
            fe.l(q.g(i, "Port must be between 0 and 65535, or 0 if not set. Provided: "));
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(256);
        URLBuilderKt.a(this, sb);
        return sb.toString();
    }
}
