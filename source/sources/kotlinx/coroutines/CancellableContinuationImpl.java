package kotlinx.coroutines;

import defpackage.f7;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame, Waiter {
    public static final /* synthetic */ AtomicIntegerFieldUpdater o = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    public final Continuation m;
    public final CoroutineContext n;

    public CancellableContinuationImpl(int i, Continuation continuation) {
        super(i);
        this.m = continuation;
        this.n = continuation.o();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = Active.j;
    }

    public static void B(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    public static Object G(NotCompleted notCompleted, Object obj, int i, Function3 function3) {
        CancelHandler cancelHandler;
        if (obj instanceof CompletedExceptionally) {
            return obj;
        }
        if (i != 1 && i != 2) {
            return obj;
        }
        if (function3 == null && !(notCompleted instanceof CancelHandler)) {
            return obj;
        }
        if (notCompleted instanceof CancelHandler) {
            cancelHandler = (CancelHandler) notCompleted;
        } else {
            cancelHandler = null;
        }
        return new CompletedContinuation(obj, cancelHandler, function3, (Throwable) null, 16);
    }

    public final boolean A() {
        if (this.l == 2) {
            if (DispatchedContinuation.q.get((DispatchedContinuation) this.m) != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public String C() {
        return "CancellableContinuation";
    }

    public final void D() {
        DispatchedContinuation dispatchedContinuation;
        Continuation continuation = this.m;
        Throwable th = null;
        if (continuation instanceof DispatchedContinuation) {
            dispatchedContinuation = (DispatchedContinuation) continuation;
        } else {
            dispatchedContinuation = null;
        }
        if (dispatchedContinuation != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = DispatchedContinuation.q;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(dispatchedContinuation);
                Symbol symbol = DispatchedContinuationKt.b;
                if (obj != symbol) {
                    if (!(obj instanceof Throwable)) {
                        f7.i(obj, "Inconsistent state ");
                        return;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != obj) {
                            u2.g("Failed requirement.");
                            return;
                        }
                    }
                    th = (Throwable) obj;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, symbol, this)) {
                    if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != symbol) {
                        break;
                    }
                }
            }
            if (th != null) {
                q();
                p(th);
            }
        }
    }

    public final void E(Object obj, int i, Function3 function3) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof NotCompleted) {
                Object G = G((NotCompleted) obj2, obj, i, function3);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, G)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (!A()) {
                    q();
                }
                r(i);
                return;
            }
            if (obj2 instanceof CancelledContinuation) {
                CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                if (CancelledContinuation.c.compareAndSet(cancelledContinuation, 0, 1)) {
                    if (function3 != null) {
                        k(function3, cancelledContinuation.a, obj);
                        return;
                    }
                    return;
                }
            }
            f7.i(obj, "Already resumed, but proposed with update ");
            return;
        }
    }

    public final void F(CoroutineDispatcher coroutineDispatcher) {
        DispatchedContinuation dispatchedContinuation;
        CoroutineDispatcher coroutineDispatcher2;
        int i;
        Continuation continuation = this.m;
        if (continuation instanceof DispatchedContinuation) {
            dispatchedContinuation = (DispatchedContinuation) continuation;
        } else {
            dispatchedContinuation = null;
        }
        if (dispatchedContinuation != null) {
            coroutineDispatcher2 = dispatchedContinuation.m;
        } else {
            coroutineDispatcher2 = null;
        }
        if (coroutineDispatcher2 == coroutineDispatcher) {
            i = 4;
        } else {
            i = this.l;
        }
        E(Unit.a, i, null);
    }

    @Override // kotlinx.coroutines.Waiter
    public final void a(Segment segment, int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = o;
            i2 = atomicIntegerFieldUpdater.get(this);
            if ((i2 & 536870911) != 536870911) {
                u2.l("invokeOnCancellation should be called at most once");
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        y(segment);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final void b(CancellationException cancellationException) {
        CancellationException cancellationException2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                if (!(obj instanceof CompletedExceptionally)) {
                    if (obj instanceof CompletedContinuation) {
                        CompletedContinuation completedContinuation = (CompletedContinuation) obj;
                        if (completedContinuation.e == null) {
                            CompletedContinuation a = CompletedContinuation.a(completedContinuation, null, cancellationException, 15);
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, a)) {
                                if (atomicReferenceFieldUpdater.get(this) != obj) {
                                    cancellationException2 = cancellationException;
                                }
                            }
                            CancelHandler cancelHandler = completedContinuation.b;
                            if (cancelHandler != null) {
                                j(cancelHandler, cancellationException);
                            }
                            Function3 function3 = completedContinuation.c;
                            if (function3 != null) {
                                k(function3, cancellationException, completedContinuation.a);
                                return;
                            }
                            return;
                        }
                        u2.l("Must be called at most once");
                        return;
                    }
                    cancellationException2 = cancellationException;
                    CompletedContinuation completedContinuation2 = new CompletedContinuation(obj, (CancelHandler) null, (Function3) null, cancellationException2, 14);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, completedContinuation2)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    return;
                    cancellationException = cancellationException2;
                } else {
                    return;
                }
            } else {
                u2.l("Not completed");
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation c() {
        return this.m;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame d() {
        Continuation continuation = this.m;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Throwable e(Object obj) {
        Throwable e = super.e(obj);
        if (e != null) {
            return e;
        }
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object f(Object obj) {
        if (obj instanceof CompletedContinuation) {
            return ((CompletedContinuation) obj).a;
        }
        return obj;
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        Throwable a = Result.a(obj);
        if (a != null) {
            obj = new CompletedExceptionally(a, false);
        }
        E(obj, this.l, null);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object i() {
        return p.get(this);
    }

    public final void j(CancelHandler cancelHandler, Throwable th) {
        try {
            cancelHandler.b(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.a(new RuntimeException("Exception in invokeOnCancellation handler for " + this, th2), this.n);
        }
    }

    public final void k(Function3 function3, Throwable th, Object obj) {
        CoroutineContext coroutineContext = this.n;
        try {
            function3.f(th, obj, coroutineContext);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.a(new RuntimeException("Exception in resume onCancellation handler for " + this, th2), coroutineContext);
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final Symbol l(Object obj, Function3 function3) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof NotCompleted) {
                Object G = G((NotCompleted) obj2, obj, this.l, function3);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, G)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                boolean A = A();
                Symbol symbol = CancellableContinuationImplKt.a;
                if (!A) {
                    q();
                }
                return symbol;
            }
            return null;
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void m(Object obj, Function3 function3) {
        E(obj, this.l, function3);
    }

    public final void n(Segment segment, Throwable th) {
        CoroutineContext coroutineContext = this.n;
        int i = o.get(this) & 536870911;
        if (i != 536870911) {
            try {
                segment.h(i, coroutineContext);
                return;
            } catch (Throwable th2) {
                CoroutineExceptionHandlerKt.a(new RuntimeException("Exception in invokeOnCancellation handler for " + this, th2), coroutineContext);
                return;
            }
        }
        u2.l("The index for Segment.onCancellation(..) is broken");
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return this.n;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final boolean p(Throwable th) {
        Throwable th2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            Object obj = atomicReferenceFieldUpdater.get(this);
            boolean z = false;
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
            if ((obj instanceof CancelHandler) || (obj instanceof Segment)) {
                z = true;
            }
            if (th == null) {
                th2 = new CancellationException("Continuation " + this + " was cancelled normally");
            } else {
                th2 = th;
            }
            CompletedExceptionally completedExceptionally = new CompletedExceptionally(th2, z);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, completedExceptionally)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            NotCompleted notCompleted = (NotCompleted) obj;
            if (notCompleted instanceof CancelHandler) {
                j((CancelHandler) obj, th);
            } else if (notCompleted instanceof Segment) {
                n((Segment) obj, th);
            }
            if (!A()) {
                q();
            }
            r(this.l);
            return true;
        }
    }

    public final void q() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = q;
        DisposableHandle disposableHandle = (DisposableHandle) atomicReferenceFieldUpdater.get(this);
        if (disposableHandle == null) {
            return;
        }
        disposableHandle.a();
        atomicReferenceFieldUpdater.set(this, NonDisposableHandle.j);
    }

    public final void r(int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        boolean z;
        boolean z2;
        do {
            atomicIntegerFieldUpdater = o;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 == 1) {
                    boolean z3 = false;
                    if (i == 4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Continuation continuation = this.m;
                    if (!z && (continuation instanceof DispatchedContinuation)) {
                        if (i != 1 && i != 2) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        int i4 = this.l;
                        if (i4 == 1 || i4 == 2) {
                            z3 = true;
                        }
                        if (z2 == z3) {
                            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
                            CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.m;
                            CoroutineContext o2 = dispatchedContinuation.n.o();
                            if (DispatchedContinuationKt.c(coroutineDispatcher, o2)) {
                                DispatchedContinuationKt.b(coroutineDispatcher, o2, this);
                                return;
                            }
                            EventLoop a = ThreadLocalEventLoop.a();
                            if (a.l >= 4294967296L) {
                                a.g1(this);
                                return;
                            }
                            a.h1(true);
                            try {
                                DispatchedTaskKt.a(this, continuation, true);
                                do {
                                } while (a.j1());
                            } finally {
                                try {
                                    return;
                                } finally {
                                }
                            }
                            return;
                        }
                    }
                    DispatchedTaskKt.a(this, continuation, z);
                    return;
                }
                u2.l("Already resumed");
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 1073741824 + (536870911 & i2)));
    }

    public Throwable s(JobSupport jobSupport) {
        return jobSupport.R();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void t(Object obj) {
        r(this.l);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(C());
        sb.append('(');
        sb.append(DebugStringsKt.b(this.m));
        sb.append("){");
        Object obj = p.get(this);
        if (obj instanceof NotCompleted) {
            str = "Active";
        } else if (obj instanceof CancelledContinuation) {
            str = "Cancelled";
        } else {
            str = "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(DebugStringsKt.a(this));
        return sb.toString();
    }

    public final Object u() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        Job job;
        boolean A = A();
        do {
            atomicIntegerFieldUpdater = o;
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 2) {
                    if (A) {
                        D();
                    }
                    Object obj = p.get(this);
                    if (!(obj instanceof CompletedExceptionally)) {
                        int i3 = this.l;
                        if ((i3 == 1 || i3 == 2) && (job = (Job) this.n.v(Job.Key.j)) != null && !job.h()) {
                            CancellationException R = job.R();
                            b(R);
                            throw R;
                        }
                        return f(obj);
                    }
                    throw ((CompletedExceptionally) obj).a;
                }
                u2.l("Already suspended");
                return null;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 536870912 + (536870911 & i)));
        if (((DisposableHandle) q.get(this)) == null) {
            w();
        }
        if (A) {
            D();
        }
        return CoroutineSingletons.j;
    }

    public final void v() {
        DisposableHandle w = w();
        if (w != null && !(p.get(this) instanceof NotCompleted)) {
            w.a();
            q.set(this, NonDisposableHandle.j);
        }
    }

    public final DisposableHandle w() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Job job = (Job) this.n.v(Job.Key.j);
        if (job == null) {
            return null;
        }
        DisposableHandle e = JobKt.e(job, true, new ChildContinuation(this));
        do {
            atomicReferenceFieldUpdater = q;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, e)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return e;
    }

    public final void x(Function1 function1) {
        y(new CancelHandler.UserSupplied(function1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00aa, code lost:
    
        B(r8, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ad, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y(NotCompleted notCompleted) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof Active) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, notCompleted)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            if ((obj instanceof CancelHandler) || (obj instanceof Segment)) {
                break;
            }
            if (obj instanceof CompletedExceptionally) {
                CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
                if (CompletedExceptionally.b.compareAndSet(completedExceptionally, 0, 1)) {
                    if (obj instanceof CancelledContinuation) {
                        Throwable th = completedExceptionally.a;
                        if (notCompleted instanceof CancelHandler) {
                            j((CancelHandler) notCompleted, th);
                            return;
                        } else {
                            notCompleted.getClass();
                            n((Segment) notCompleted, th);
                            return;
                        }
                    }
                    return;
                }
                B(notCompleted, obj);
                throw null;
            }
            if (obj instanceof CompletedContinuation) {
                CompletedContinuation completedContinuation = (CompletedContinuation) obj;
                if (completedContinuation.b == null) {
                    if (notCompleted instanceof Segment) {
                        return;
                    }
                    notCompleted.getClass();
                    CancelHandler cancelHandler = (CancelHandler) notCompleted;
                    Throwable th2 = completedContinuation.e;
                    if (th2 != null) {
                        j(cancelHandler, th2);
                        return;
                    }
                    CompletedContinuation a = CompletedContinuation.a(completedContinuation, cancelHandler, null, 29);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, a)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    return;
                }
                B(notCompleted, obj);
                throw null;
            }
            if (notCompleted instanceof Segment) {
                return;
            }
            notCompleted.getClass();
            CompletedContinuation completedContinuation2 = new CompletedContinuation(obj, (CancelHandler) notCompleted, (Function3) null, (Throwable) null, 28);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, completedContinuation2)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            return;
        }
    }

    public final boolean z() {
        return p.get(this) instanceof NotCompleted;
    }
}
