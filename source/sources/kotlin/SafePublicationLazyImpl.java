package kotlin;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SafePublicationLazyImpl<T> implements Lazy<T>, Serializable {
    public static final AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, "k");
    public volatile Function0 j;
    public volatile Object k;

    @Override // kotlin.Lazy
    public final boolean c() {
        if (this.k != UNINITIALIZED_VALUE.a) {
            return true;
        }
        return false;
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        Object obj = this.k;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.a;
        if (obj != uninitialized_value) {
            return obj;
        }
        Function0 function0 = this.j;
        if (function0 != null) {
            Object a = function0.a();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = l;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, uninitialized_value, a)) {
                if (atomicReferenceFieldUpdater.get(this) != uninitialized_value) {
                }
            }
            this.j = null;
            return a;
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
