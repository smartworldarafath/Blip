package kotlin.jvm.internal;

import defpackage.jb;
import java.io.Serializable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AdaptedFunctionReference implements FunctionBase, Serializable {
    public final Object j;
    public final Class k;
    public final String l;
    public final String m;
    public final boolean n = false;
    public final int o;
    public final int p;

    public AdaptedFunctionReference(int i, Object obj, Class cls, String str, String str2, int i2) {
        this.j = obj;
        this.k = cls;
        this.l = str;
        this.m = str2;
        this.o = i;
        this.p = i2 >> 1;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int c() {
        return this.o;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AdaptedFunctionReference) {
                AdaptedFunctionReference adaptedFunctionReference = (AdaptedFunctionReference) obj;
                if (this.n == adaptedFunctionReference.n && this.o == adaptedFunctionReference.o && this.p == adaptedFunctionReference.p && Intrinsics.a(this.j, adaptedFunctionReference.j) && this.k.equals(adaptedFunctionReference.k) && this.l.equals(adaptedFunctionReference.l) && this.m.equals(adaptedFunctionReference.m)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int i2;
        Object obj = this.j;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        int c = jb.c(this.m, jb.c(this.l, (this.k.hashCode() + (i * 31)) * 31, 31), 31);
        if (this.n) {
            i2 = 1231;
        } else {
            i2 = 1237;
        }
        return ((((c + i2) * 31) + this.o) * 31) + this.p;
    }

    public final String toString() {
        Reflection.a.getClass();
        return ReflectionFactory.a(this);
    }
}
