package androidx.compose.ui.platform;

import android.view.Choreographer;
import androidx.compose.runtime.MonotonicFrameClock;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidUiFrameClock implements MonotonicFrameClock {
    public final Choreographer j;
    public final AndroidUiDispatcher k;

    public AndroidUiFrameClock(Choreographer choreographer, AndroidUiDispatcher androidUiDispatcher) {
        this.j = choreographer;
        this.k = androidUiDispatcher;
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

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object w(Continuation continuation, final Function1 function1) {
        final AndroidUiDispatcher androidUiDispatcher = this.k;
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
        cancellableContinuationImpl.v();
        final Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback(this, function1) { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1
            public final /* synthetic */ Function1 k;

            {
                this.k = function1;
            }

            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                Object failure;
                try {
                    failure = this.k.b(Long.valueOf(j));
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                CancellableContinuationImpl.this.g(failure);
            }
        };
        if (Intrinsics.a(androidUiDispatcher.l, this.j)) {
            synchronized (androidUiDispatcher.n) {
                androidUiDispatcher.p.add(frameCallback);
                if (!androidUiDispatcher.s) {
                    androidUiDispatcher.s = true;
                    androidUiDispatcher.l.postFrameCallback(androidUiDispatcher.t);
                }
            }
            cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$1
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    AndroidUiDispatcher androidUiDispatcher2 = AndroidUiDispatcher.this;
                    Choreographer.FrameCallback frameCallback2 = frameCallback;
                    synchronized (androidUiDispatcher2.n) {
                        androidUiDispatcher2.p.remove(frameCallback2);
                    }
                    return Unit.a;
                }
            });
        } else {
            this.j.postFrameCallback(frameCallback);
            cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$2
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    AndroidUiFrameClock.this.j.removeFrameCallback(frameCallback);
                    return Unit.a;
                }
            });
        }
        Object u = cancellableContinuationImpl.u();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return u;
    }
}
