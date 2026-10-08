package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RestrictedSuspendLambda extends RestrictedContinuationImpl implements FunctionBase<Object> {
    public final int k;

    public RestrictedSuspendLambda(int i, Continuation continuation) {
        super(continuation);
        this.k = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int c() {
        return this.k;
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
