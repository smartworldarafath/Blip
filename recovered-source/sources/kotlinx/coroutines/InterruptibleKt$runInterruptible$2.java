package kotlinx.coroutines;

import coil3.decode.a;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class InterruptibleKt$runInterruptible$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ a o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InterruptibleKt$runInterruptible$2(a aVar, Continuation continuation) {
        super(2, continuation);
        this.o = aVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((InterruptibleKt$runInterruptible$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$2 = new InterruptibleKt$runInterruptible$2(this.o, continuation);
        interruptibleKt$runInterruptible$2.n = obj;
        return interruptibleKt$runInterruptible$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        int i;
        CoroutineScope coroutineScope = (CoroutineScope) this.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
        a aVar = this.o;
        try {
            ThreadState threadState = new ThreadState();
            threadState.o = JobKt.e(JobKt.d(coroutineContext), true, threadState);
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = ThreadState.p;
            try {
                do {
                    i = atomicIntegerFieldUpdater.get(threadState);
                    if (i != 0) {
                        if (i != 2 && i != 3) {
                            ThreadState.p(i);
                            throw null;
                        }
                    }
                    return aVar.a();
                } while (!atomicIntegerFieldUpdater.compareAndSet(threadState, i, 0));
                return aVar.a();
            } finally {
                threadState.o();
            }
        } catch (InterruptedException e) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
        }
    }
}
