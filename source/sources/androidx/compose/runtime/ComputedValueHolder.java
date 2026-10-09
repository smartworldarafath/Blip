package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComputedValueHolder<T> implements ValueHolder<T> {
    public final Function1 a;

    public ComputedValueHolder(Function1 function1) {
        this.a = function1;
    }

    @Override // androidx.compose.runtime.ValueHolder
    public final Object a(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return this.a.b(persistentCompositionLocalMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ComputedValueHolder) && Intrinsics.a(this.a, ((ComputedValueHolder) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ComputedValueHolder(compute=" + this.a + ")";
    }
}
