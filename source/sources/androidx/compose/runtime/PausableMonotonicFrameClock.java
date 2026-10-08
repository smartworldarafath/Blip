package androidx.compose.runtime;

import defpackage.u2;
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
public final class PausableMonotonicFrameClock implements MonotonicFrameClock {
    public final MonotonicFrameClock j;
    public final Latch k = new Latch();

    public PausableMonotonicFrameClock(MonotonicFrameClock monotonicFrameClock) {
        this.j = monotonicFrameClock;
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

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if (r8 == r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0081 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object w(Continuation continuation, Function1 function1) {
        PausableMonotonicFrameClock$withFrameNanos$1 pausableMonotonicFrameClock$withFrameNanos$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        boolean z;
        Object u;
        Object w;
        if (continuation instanceof PausableMonotonicFrameClock$withFrameNanos$1) {
            pausableMonotonicFrameClock$withFrameNanos$1 = (PausableMonotonicFrameClock$withFrameNanos$1) continuation;
            int i2 = pausableMonotonicFrameClock$withFrameNanos$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pausableMonotonicFrameClock$withFrameNanos$1.p = i2 - Integer.MIN_VALUE;
                Object obj = pausableMonotonicFrameClock$withFrameNanos$1.n;
                coroutineSingletons = CoroutineSingletons.j;
                i = pausableMonotonicFrameClock$withFrameNanos$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            return obj;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    function1 = pausableMonotonicFrameClock$withFrameNanos$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    final Latch latch = this.k;
                    pausableMonotonicFrameClock$withFrameNanos$1.m = function1;
                    pausableMonotonicFrameClock$withFrameNanos$1.p = 1;
                    synchronized (latch.a) {
                        z = latch.d;
                    }
                    if (z) {
                        u = Unit.a;
                    } else {
                        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(pausableMonotonicFrameClock$withFrameNanos$1));
                        cancellableContinuationImpl.v();
                        synchronized (latch.a) {
                            latch.b.add(cancellableContinuationImpl);
                        }
                        cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Latch$await$2$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj2) {
                                Latch latch2 = Latch.this;
                                Object obj3 = latch2.a;
                                CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                                synchronized (obj3) {
                                    latch2.b.remove(cancellableContinuationImpl2);
                                }
                                return Unit.a;
                            }
                        });
                        u = cancellableContinuationImpl.u();
                        if (u != coroutineSingletons) {
                            u = Unit.a;
                        }
                    }
                }
                MonotonicFrameClock monotonicFrameClock = this.j;
                pausableMonotonicFrameClock$withFrameNanos$1.m = null;
                pausableMonotonicFrameClock$withFrameNanos$1.p = 2;
                w = monotonicFrameClock.w(pausableMonotonicFrameClock$withFrameNanos$1, function1);
                if (w != coroutineSingletons) {
                    return coroutineSingletons;
                }
                return w;
            }
        }
        pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, continuation);
        Object obj2 = pausableMonotonicFrameClock$withFrameNanos$1.n;
        coroutineSingletons = CoroutineSingletons.j;
        i = pausableMonotonicFrameClock$withFrameNanos$1.p;
        if (i == 0) {
        }
        MonotonicFrameClock monotonicFrameClock2 = this.j;
        pausableMonotonicFrameClock$withFrameNanos$1.m = null;
        pausableMonotonicFrameClock$withFrameNanos$1.p = 2;
        w = monotonicFrameClock2.w(pausableMonotonicFrameClock$withFrameNanos$1, function1);
        if (w != coroutineSingletons) {
        }
    }
}
