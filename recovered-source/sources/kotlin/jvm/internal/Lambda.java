package kotlin.jvm.internal;

import java.io.Serializable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Lambda<R> implements FunctionBase<R>, Serializable {
    public final int j;

    public Lambda(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int c() {
        return this.j;
    }

    public final String toString() {
        Reflection.a.getClass();
        return ReflectionFactory.a(this);
    }
}
