package kotlin.jvm.internal;

import defpackage.jb;
import defpackage.q;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FunctionReference extends CallableReference implements FunctionBase, KFunction {
    public final int q;

    public FunctionReference(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.q = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int c() {
        return this.q;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable d() {
        Reflection.a.getClass();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.reflect.KCallable] */
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof FunctionReference) {
                FunctionReference functionReference = (FunctionReference) obj;
                if (this.m.equals(functionReference.m) && this.n.equals(functionReference.n) && Intrinsics.a(this.k, functionReference.k) && e().equals(functionReference.e())) {
                    return true;
                }
                return false;
            }
            if (obj instanceof KFunction) {
                ?? r0 = this.j;
                if (r0 == 0) {
                    d();
                    this.j = this;
                } else {
                    this = r0;
                }
                return obj.equals(this);
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        e();
        return this.n.hashCode() + jb.c(this.m, e().hashCode() * 31, 31);
    }

    public final String toString() {
        KCallable kCallable = this.j;
        if (kCallable == null) {
            d();
            this.j = this;
            kCallable = this;
        }
        if (kCallable != this) {
            return kCallable.toString();
        }
        String str = this.m;
        if ("<init>".equals(str)) {
            return "constructor (Kotlin reflection is not available)";
        }
        return q.i("function ", str, " (Kotlin reflection is not available)");
    }
}
