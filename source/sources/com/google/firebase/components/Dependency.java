package com.google.firebase.components;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Dependency {
    public final Qualified a;
    public final int b;
    public final int c;

    public Dependency(Qualified qualified, int i, int i2) {
        this.a = qualified;
        this.b = i;
        this.c = i2;
    }

    public static Dependency a(Class cls) {
        return new Dependency(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Dependency) {
            Dependency dependency = (Dependency) obj;
            if (this.a.equals(dependency.a) && this.b == dependency.b && this.c == dependency.c) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.c ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003);
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.a);
        sb.append(", type=");
        int i = this.b;
        if (i == 1) {
            str = "required";
        } else if (i == 0) {
            str = "optional";
        } else {
            str = "set";
        }
        sb.append(str);
        sb.append(", injection=");
        int i2 = this.c;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    str2 = "deferred";
                } else {
                    throw new AssertionError(q.g(i2, "Unsupported injection: "));
                }
            } else {
                str2 = "provider";
            }
        } else {
            str2 = "direct";
        }
        return q.l(sb, str2, "}");
    }

    public Dependency(int i, int i2, Class cls) {
        this(Qualified.a(cls), i, i2);
    }
}
