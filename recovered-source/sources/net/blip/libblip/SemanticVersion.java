package net.blip.libblip;

import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticVersion {
    public final int a = 1;
    public final int b = 2;
    public final int c = 3;
    public final int d = 0;

    public final String a() {
        return this.a + "." + this.b + "." + this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SemanticVersion)) {
            return false;
        }
        SemanticVersion semanticVersion = (SemanticVersion) obj;
        if (this.a == semanticVersion.a && this.b == semanticVersion.b && this.c == semanticVersion.c && this.d == semanticVersion.d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + q.b(this.c, q.b(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder k = jb.k("SemanticVersion(major=", this.a, ", minor=", this.b, ", patch=");
        k.append(this.c);
        k.append(", build=");
        k.append(this.d);
        k.append(")");
        return k.toString();
    }
}
