package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompositionLocal<T> {
    public final LazyValueHolder a;

    public CompositionLocal(Function0 function0) {
        this.a = new LazyValueHolder(function0);
    }

    public ValueHolder a() {
        return this.a;
    }
}
