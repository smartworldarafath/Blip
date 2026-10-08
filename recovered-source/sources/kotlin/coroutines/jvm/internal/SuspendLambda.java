package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SuspendLambda extends ContinuationImpl implements FunctionBase<Object> {
    public final int m;

    public SuspendLambda(int i, Continuation continuation) {
        super(continuation);
        this.m = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int c() {
        return this.m;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final String toString() {
        if (this.j == null) {
            Reflection.a.getClass();
            return ReflectionFactory.a(this);
        }
        return super.toString();
    }
}
