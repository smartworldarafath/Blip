package com.google.android.datatransport;

import defpackage.q;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Encoding {
    public final String a;

    public Encoding(String str) {
        if (str != null) {
            this.a = str;
        } else {
            d.f("name is null");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Encoding)) {
            return false;
        }
        return this.a.equals(((Encoding) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return q.l(new StringBuilder("Encoding{name=\""), this.a, "\"}");
    }
}
