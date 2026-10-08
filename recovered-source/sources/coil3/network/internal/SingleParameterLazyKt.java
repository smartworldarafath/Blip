package coil3.network.internal;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SingleParameterLazyKt {
    /* JADX WARN: Type inference failed for: r0v0, types: [coil3.network.internal.SingleParameterLazy, java.lang.Object] */
    public static final SingleParameterLazy a(Function1 function1) {
        ?? obj = new Object();
        obj.a = function1;
        obj.b = UNINITIALIZED.a;
        return obj;
    }
}
