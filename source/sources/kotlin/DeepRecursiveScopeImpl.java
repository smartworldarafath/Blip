package kotlin;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DeepRecursiveScopeImpl<T, R> extends DeepRecursiveScope<T, R> implements Continuation<R> {
    public Function3 j;
    public Unit k;
    public Continuation l;
    public Object m;

    @Override // kotlin.DeepRecursiveScope
    public final void a(Continuation continuation) {
        this.l = continuation;
        this.k = Unit.a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        this.l = null;
        this.m = obj;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return EmptyCoroutineContext.j;
    }
}
