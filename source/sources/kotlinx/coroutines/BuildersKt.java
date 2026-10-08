package kotlinx.coroutines;

import defpackage.e6;
import defpackage.u2;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* loaded from: classes.dex */
public abstract class BuildersKt {
    /* JADX WARN: Type inference failed for: r3v2, types: [kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.Deferred] */
    public static Deferred a(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Function2 function2) {
        CoroutineStart coroutineStart = CoroutineStart.j;
        CoroutineContext b = CoroutineContextKt.b(coroutineScope, coroutineContext);
        CoroutineStart coroutineStart2 = CoroutineStart.j;
        ?? abstractCoroutine = new AbstractCoroutine(b, true);
        abstractCoroutine.m0(coroutineStart, abstractCoroutine, function2);
        return abstractCoroutine;
    }

    public static final Job b(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        AbstractCoroutine abstractCoroutine;
        CoroutineContext b = CoroutineContextKt.b(coroutineScope, coroutineContext);
        coroutineStart.getClass();
        if (coroutineStart == CoroutineStart.k) {
            abstractCoroutine = new LazyStandaloneCoroutine(b, function2);
        } else {
            abstractCoroutine = new AbstractCoroutine(b, true);
        }
        abstractCoroutine.m0(coroutineStart, abstractCoroutine, function2);
        return abstractCoroutine;
    }

    public static /* synthetic */ Job c(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.j;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.j;
        }
        return b(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    public static final Object d(CoroutineContext coroutineContext, Function2 function2) {
        EventLoop eventLoop;
        CoroutineContext b;
        long i1;
        CompletedExceptionally completedExceptionally;
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.v(ContinuationInterceptor.Key.j);
        GlobalScope globalScope = GlobalScope.j;
        if (continuationInterceptor == null) {
            eventLoop = ThreadLocalEventLoop.a();
            b = CoroutineContextKt.b(globalScope, coroutineContext.A(eventLoop));
        } else {
            eventLoop = (EventLoop) ThreadLocalEventLoop.a.get();
            b = CoroutineContextKt.b(globalScope, coroutineContext);
        }
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(b, Thread.currentThread(), eventLoop);
        blockingCoroutine.m0(CoroutineStart.j, blockingCoroutine, function2);
        EventLoop eventLoop2 = blockingCoroutine.n;
        if (eventLoop2 != null) {
            int i = EventLoop.o;
            eventLoop2.h1(false);
        }
        while (true) {
            if (eventLoop2 != null) {
                try {
                    i1 = eventLoop2.i1();
                } catch (Throwable th) {
                    if (eventLoop2 != null) {
                        int i2 = EventLoop.o;
                        eventLoop2.f1(false);
                    }
                    throw th;
                }
            } else {
                i1 = Long.MAX_VALUE;
            }
            if (blockingCoroutine.Q()) {
                break;
            }
            LockSupport.parkNanos(blockingCoroutine, i1);
            if (Thread.interrupted()) {
                blockingCoroutine.x(new InterruptedException());
            }
        }
        if (eventLoop2 != null) {
            int i3 = EventLoop.o;
            eventLoop2.f1(false);
        }
        Object a = JobSupportKt.a(JobSupport.j.get(blockingCoroutine));
        if (a instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) a;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally == null) {
            return a;
        }
        throw completedExceptionally.a;
    }

    public static final Object e(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        CoroutineContext a;
        Object a2;
        CoroutineContext o = continuation.o();
        if (!((Boolean) coroutineContext.P0(Boolean.FALSE, new e6(28))).booleanValue()) {
            a = o.A(coroutineContext);
        } else {
            a = CoroutineContextKt.a(o, coroutineContext, false);
        }
        JobKt.c(a);
        if (a == o) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, a);
            a2 = UndispatchedKt.a(scopeCoroutine, true, scopeCoroutine, function2);
        } else {
            ContinuationInterceptor.Key key = ContinuationInterceptor.Key.j;
            if (Intrinsics.a(a.v(key), o.v(key))) {
                UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(continuation, a);
                CoroutineContext coroutineContext2 = undispatchedCoroutine.l;
                Object c = ThreadContextKt.c(coroutineContext2, null);
                try {
                    Object a3 = UndispatchedKt.a(undispatchedCoroutine, true, undispatchedCoroutine, function2);
                    ThreadContextKt.a(coroutineContext2, c);
                    a2 = a3;
                } catch (Throwable th) {
                    ThreadContextKt.a(coroutineContext2, c);
                    throw th;
                }
            } else {
                ScopeCoroutine scopeCoroutine2 = new ScopeCoroutine(continuation, a);
                try {
                    DispatchedContinuationKt.a(Unit.a, IntrinsicsKt.b(IntrinsicsKt.a(scopeCoroutine2, scopeCoroutine2, function2)));
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = DispatchedCoroutine.n;
                    while (true) {
                        int i = atomicIntegerFieldUpdater.get(scopeCoroutine2);
                        if (i != 0) {
                            if (i == 2) {
                                a2 = JobSupportKt.a(JobSupport.j.get(scopeCoroutine2));
                                if (a2 instanceof CompletedExceptionally) {
                                    throw ((CompletedExceptionally) a2).a;
                                }
                            } else {
                                u2.l("Already suspended");
                                return null;
                            }
                        } else if (atomicIntegerFieldUpdater.compareAndSet(scopeCoroutine2, 0, 1)) {
                            a2 = CoroutineSingletons.j;
                            break;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (th instanceof DispatchException) {
                        th = ((DispatchException) th).j;
                    }
                    scopeCoroutine2.g(ResultKt.a(th));
                    throw th;
                }
            }
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return a2;
    }
}
