package kotlin;

import java.io.Serializable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InitializedLazyImpl<T> implements Lazy<T>, Serializable {
    public final Object j;

    public InitializedLazyImpl(Object obj) {
        this.j = obj;
    }

    @Override // kotlin.Lazy
    public final boolean c() {
        return true;
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        return this.j;
    }

    public final String toString() {
        return String.valueOf(this.j);
    }
}
