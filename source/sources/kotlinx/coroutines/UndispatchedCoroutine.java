package kotlinx.coroutines;

import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UndispatchedCoroutine<T> extends ScopeCoroutine<T> {
    public final ThreadLocal n;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public UndispatchedCoroutine(Continuation continuation, CoroutineContext coroutineContext) {
        super(continuation, r0);
        CoroutineContext coroutineContext2;
        UndispatchedMarker undispatchedMarker = UndispatchedMarker.j;
        if (coroutineContext.v(undispatchedMarker) == null) {
            coroutineContext2 = coroutineContext.A(undispatchedMarker);
        } else {
            coroutineContext2 = coroutineContext;
        }
        this.n = new ThreadLocal();
        if (!(continuation.o().v(ContinuationInterceptor.Key.j) instanceof CoroutineDispatcher)) {
            Object c = ThreadContextKt.c(coroutineContext, null);
            ThreadContextKt.a(coroutineContext, c);
            r0(coroutineContext, c);
        }
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine
    public final void n0() {
        q0();
    }

    public final boolean p0() {
        boolean z;
        if (this.threadLocalIsSet && this.n.get() == null) {
            z = true;
        } else {
            z = false;
        }
        this.n.remove();
        return !z;
    }

    public final void q0() {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.n.get();
            if (pair != null) {
                ThreadContextKt.a((CoroutineContext) pair.j, pair.k);
            }
            this.n.remove();
        }
    }

    public final void r0(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.n.set(new Pair(coroutineContext, obj));
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.JobSupport
    public final void s(Object obj) {
        q0();
        Object a = CompletionStateKt.a(obj);
        Continuation continuation = this.m;
        CoroutineContext o = continuation.o();
        UndispatchedCoroutine undispatchedCoroutine = null;
        Object c = ThreadContextKt.c(o, null);
        if (c != ThreadContextKt.a) {
            undispatchedCoroutine = CoroutineContextKt.c(continuation, o, c);
        }
        try {
            continuation.g(a);
            if (undispatchedCoroutine != null && !undispatchedCoroutine.p0()) {
                return;
            }
            ThreadContextKt.a(o, c);
        } catch (Throwable th) {
            if (undispatchedCoroutine == null || undispatchedCoroutine.p0()) {
                ThreadContextKt.a(o, c);
            }
            throw th;
        }
    }
}
