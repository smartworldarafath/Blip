package coil3.network.internal;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingleParameterLazy<P, T> {
    public Function1 a;
    public Object b;

    public final Object a(Object obj) {
        Object obj2;
        Object obj3 = this.b;
        UNINITIALIZED uninitialized = UNINITIALIZED.a;
        if (obj3 != uninitialized) {
            return obj3;
        }
        synchronized (this) {
            obj2 = this.b;
            if (obj2 == uninitialized) {
                Function1 function1 = this.a;
                function1.getClass();
                obj2 = function1.b(obj);
                this.b = obj2;
                this.a = null;
            }
        }
        return obj2;
    }
}
