package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import defpackage.b;
import defpackage.f3;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.NonDisposableHandle;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HandlerContext extends HandlerDispatcher implements Delay {
    public static final /* synthetic */ int p = 0;
    public final Handler l;
    public final String m;
    public final boolean n;
    public final HandlerContext o;

    public HandlerContext(Handler handler, String str, boolean z) {
        HandlerContext handlerContext;
        this.l = handler;
        this.m = str;
        this.n = z;
        if (z) {
            handlerContext = this;
        } else {
            handlerContext = new HandlerContext(handler, str, true);
        }
        this.o = handlerContext;
    }

    @Override // kotlinx.coroutines.Delay
    public final void S(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        f3 f3Var = new f3(6, cancellableContinuationImpl, this);
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.l.postDelayed(f3Var, j)) {
            cancellableContinuationImpl.x(new b(15, this, f3Var));
        } else {
            f1(cancellableContinuationImpl.n, f3Var);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        if (!this.l.post(runnable)) {
            f1(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean d1(CoroutineContext coroutineContext) {
        if (this.n && Intrinsics.a(Looper.myLooper(), this.l.getLooper())) {
            return false;
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof HandlerContext) {
            HandlerContext handlerContext = (HandlerContext) obj;
            if (handlerContext.l == this.l && handlerContext.n == this.n) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void f1(CoroutineContext coroutineContext, Runnable runnable) {
        JobKt.b(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        DefaultScheduler defaultScheduler = Dispatchers.a;
        DefaultIoScheduler.l.b1(coroutineContext, runnable);
    }

    public final int hashCode() {
        int i;
        int identityHashCode = System.identityHashCode(this.l);
        if (this.n) {
            i = 1231;
        } else {
            i = 1237;
        }
        return i ^ identityHashCode;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        HandlerContext handlerContext;
        String str;
        DefaultScheduler defaultScheduler = Dispatchers.a;
        HandlerContext handlerContext2 = MainDispatcherLoader.a;
        if (this == handlerContext2) {
            str = "Dispatchers.Main";
        } else {
            try {
                handlerContext = handlerContext2.o;
            } catch (UnsupportedOperationException unused) {
                handlerContext = null;
            }
            if (this == handlerContext) {
                str = "Dispatchers.Main.immediate";
            } else {
                str = null;
            }
        }
        if (str == null) {
            String str2 = this.m;
            if (str2 == null) {
                str2 = this.l.toString();
            }
            if (this.n) {
                return str2 + ".immediate";
            }
            return str2;
        }
        return str;
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle x0(long j, final Runnable runnable, CoroutineContext coroutineContext) {
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.l.postDelayed(runnable, j)) {
            return new DisposableHandle() { // from class: a9
                @Override // kotlinx.coroutines.DisposableHandle
                public final void a() {
                    HandlerContext.this.l.removeCallbacks(runnable);
                }
            };
        }
        f1(coroutineContext, runnable);
        return NonDisposableHandle.j;
    }

    public HandlerContext(Handler handler) {
        this(handler, null, false);
    }
}
