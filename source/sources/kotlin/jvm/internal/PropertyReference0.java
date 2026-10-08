package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PropertyReference0 extends PropertyReference implements KProperty0 {
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        return get();
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable d() {
        Reflection.a.getClass();
        return this;
    }
}
