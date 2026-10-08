package kotlin.jvm.internal;

import defpackage.jb;
import defpackage.q;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PropertyReference extends CallableReference implements KProperty {
    public final boolean q;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, r7);
        boolean z;
        if ((i & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        this.q = false;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof PropertyReference) {
                PropertyReference propertyReference = (PropertyReference) obj;
                if (e().equals(propertyReference.e()) && this.m.equals(propertyReference.m) && this.n.equals(propertyReference.n) && Intrinsics.a(this.k, propertyReference.k)) {
                    return true;
                }
                return false;
            }
            if (obj instanceof KProperty) {
                return obj.equals(g());
            }
            return false;
        }
        return true;
    }

    public final KCallable g() {
        if (this.q) {
            return this;
        }
        KCallable kCallable = this.j;
        if (kCallable == null) {
            KCallable d = d();
            this.j = d;
            return d;
        }
        return kCallable;
    }

    public final int hashCode() {
        return this.n.hashCode() + jb.c(this.m, e().hashCode() * 31, 31);
    }

    public final String toString() {
        KCallable g = g();
        if (g != this) {
            return g.toString();
        }
        return q.l(new StringBuilder("property "), this.m, " (Kotlin reflection is not available)");
    }
}
