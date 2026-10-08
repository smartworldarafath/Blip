package androidx.compose.runtime;

import androidx.compose.runtime.internal.AwaiterQueue;
import defpackage.ee;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public final ee j;
    public final AwaiterQueue k = new AwaiterQueue();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FrameAwaiter<R> extends AwaiterQueue.Awaiter {
        public CancellableContinuationImpl a;
        public Function1 b;

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void a() {
            this.b = null;
            this.a = null;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void b(Throwable th) {
            CancellableContinuationImpl cancellableContinuationImpl = this.a;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.g(ResultKt.a(th));
            }
        }
    }

    public BroadcastFrameClock(ee eeVar) {
        this.j = eeVar;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.c(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return function2.n(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.a(this, key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.runtime.internal.AwaiterQueue$Awaiter, androidx.compose.runtime.BroadcastFrameClock$FrameAwaiter, java.lang.Object] */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object w(Continuation continuation, Function1 function1) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
        cancellableContinuationImpl.v();
        ?? obj = new Object();
        obj.a = cancellableContinuationImpl;
        obj.b = function1;
        final CancellationHandle a = this.k.a(obj, this.j);
        cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.BroadcastFrameClock$withFrameNanos$2$1
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj2) {
                CancellationHandle.this.cancel();
                return Unit.a;
            }
        });
        Object u = cancellableContinuationImpl.u();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return u;
    }
}
