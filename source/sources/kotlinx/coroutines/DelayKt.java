package kotlinx.coroutines;

import defpackage.f7;
import defpackage.k8;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DelayKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(ContinuationImpl continuationImpl) {
        DelayKt$awaitCancellation$1 delayKt$awaitCancellation$1;
        int i;
        if (continuationImpl instanceof DelayKt$awaitCancellation$1) {
            DelayKt$awaitCancellation$1 delayKt$awaitCancellation$12 = (DelayKt$awaitCancellation$1) continuationImpl;
            int i2 = delayKt$awaitCancellation$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                delayKt$awaitCancellation$12.n = i2 - Integer.MIN_VALUE;
                delayKt$awaitCancellation$1 = delayKt$awaitCancellation$12;
                Object obj = delayKt$awaitCancellation$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = delayKt$awaitCancellation$1.n;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return;
                    }
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    delayKt$awaitCancellation$1.n = 1;
                    CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(delayKt$awaitCancellation$1));
                    cancellableContinuationImpl.v();
                    if (cancellableContinuationImpl.u() == coroutineSingletons) {
                        return;
                    }
                }
                f7.h();
            }
        }
        delayKt$awaitCancellation$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = delayKt$awaitCancellation$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = delayKt$awaitCancellation$1.n;
        if (i == 0) {
        }
        f7.h();
    }

    public static final Object b(long j, Continuation continuation) {
        if (j > 0) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
            cancellableContinuationImpl.v();
            if (j < Long.MAX_VALUE) {
                c(cancellableContinuationImpl.n).S(j, cancellableContinuationImpl);
            }
            Object u = cancellableContinuationImpl.u();
            if (u == CoroutineSingletons.j) {
                return u;
            }
        }
        return Unit.a;
    }

    public static final Delay c(CoroutineContext coroutineContext) {
        Delay delay;
        CoroutineContext.Element v = coroutineContext.v(ContinuationInterceptor.Key.j);
        if (v instanceof Delay) {
            delay = (Delay) v;
        } else {
            delay = null;
        }
        if (delay == null) {
            return DefaultExecutorKt.a;
        }
        return delay;
    }

    public static final long d(long j) {
        boolean z;
        Duration.Companion companion = Duration.k;
        if (j > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return Duration.d(Duration.g(j, DurationKt.e(999999L, DurationUnit.k)));
        }
        if (!z) {
            return 0L;
        }
        k8.e();
        return 0L;
    }
}
