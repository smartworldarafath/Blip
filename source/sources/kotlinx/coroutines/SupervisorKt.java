package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SupervisorKt {
    public static final CompletableJob a(Job job) {
        return new JobImpl(job);
    }

    public static CompletableJob b() {
        return new JobImpl(null);
    }

    public static final Object c(Function2 function2, Continuation continuation) {
        CoroutineContext coroutineContext = ((ContinuationImpl) continuation).k;
        coroutineContext.getClass();
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, coroutineContext);
        Object a = UndispatchedKt.a(scopeCoroutine, true, scopeCoroutine, function2);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return a;
    }
}
