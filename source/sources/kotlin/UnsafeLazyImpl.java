package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UnsafeLazyImpl<T> implements Lazy<T>, Serializable {
    public Function0 j;
    public Object k;

    @Override // kotlin.Lazy
    public final boolean c() {
        if (this.k != UNINITIALIZED_VALUE.a) {
            return true;
        }
        return false;
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        if (this.k == UNINITIALIZED_VALUE.a) {
            Function0 function0 = this.j;
            function0.getClass();
            this.k = function0.a();
            this.j = null;
        }
        return this.k;
    }

    public final String toString() {
        if (c()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
