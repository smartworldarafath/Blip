package kotlinx.coroutines;

import defpackage.f7;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CoroutineScopeKt {
    public static final ContextScope a(CoroutineContext coroutineContext) {
        if (coroutineContext.v(Job.Key.j) == null) {
            coroutineContext = coroutineContext.A(JobKt.a());
        }
        return new ContextScope(coroutineContext);
    }

    public static final void b(CoroutineScope coroutineScope, CancellationException cancellationException) {
        Job job = (Job) coroutineScope.getCoroutineContext().v(Job.Key.j);
        if (job != null) {
            job.n(cancellationException);
        } else {
            f7.i(coroutineScope, "Scope cannot be cancelled because it does not have a job: ");
        }
    }

    public static final Object c(Function2 function2, Continuation continuation) {
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, continuation.o());
        Object a = UndispatchedKt.a(scopeCoroutine, true, scopeCoroutine, function2);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return a;
    }

    public static final boolean d(CoroutineScope coroutineScope) {
        Job job = (Job) coroutineScope.getCoroutineContext().v(Job.Key.j);
        if (job != null) {
            return job.h();
        }
        return true;
    }
}
