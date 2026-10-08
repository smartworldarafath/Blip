package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SynchronizedLazyImpl<T> implements Lazy<T>, Serializable {
    public Function0 j;
    public volatile Object k;
    public final Object l;

    public SynchronizedLazyImpl(Function0 function0) {
        function0.getClass();
        this.j = function0;
        this.k = UNINITIALIZED_VALUE.a;
        this.l = this;
    }

    @Override // kotlin.Lazy
    public final boolean c() {
        if (this.k != UNINITIALIZED_VALUE.a) {
            return true;
        }
        return false;
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        Object obj;
        Object obj2 = this.k;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.a;
        if (obj2 != uninitialized_value) {
            return obj2;
        }
        synchronized (this.l) {
            obj = this.k;
            if (obj == uninitialized_value) {
                Function0 function0 = this.j;
                function0.getClass();
                obj = function0.a();
                this.k = obj;
                this.j = null;
            }
        }
        return obj;
    }

    public final String toString() {
        if (c()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
