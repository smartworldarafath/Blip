package net.blip.libblip;

import defpackage.jb;
import defpackage.q;
import defpackage.r1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryConfig {
    public final String a;
    public final String b;
    public final String c;
    public final r1 d;

    public SentryConfig(String str, String str2, String str3, r1 r1Var) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = r1Var;
    }

    public final boolean equals(Object obj) {
        Object valueOf = Double.valueOf(0.1d);
        if (this == obj) {
            return true;
        }
        if (obj instanceof SentryConfig) {
            SentryConfig sentryConfig = (SentryConfig) obj;
            if (this.a.equals(sentryConfig.a) && this.b.equals(sentryConfig.b) && this.c.equals(sentryConfig.c) && valueOf.equals(valueOf) && this.d == sentryConfig.d) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((Double.valueOf(0.1d).hashCode() + jb.c(this.c, jb.c(this.b, this.a.hashCode() * 31, 31), 31)) * 961);
    }

    public final String toString() {
        Double valueOf = Double.valueOf(0.1d);
        StringBuilder o = q.o("SentryConfig(dsn=", this.a, ", environment=", this.b, ", release=");
        o.append(this.c);
        o.append(", sampleRate=");
        o.append(valueOf);
        o.append(", tracesSampleRate=null, userEmail=");
        o.append(this.d);
        o.append(")");
        return o.toString();
    }
}
