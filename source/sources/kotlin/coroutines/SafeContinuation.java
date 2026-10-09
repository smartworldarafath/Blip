package kotlin.coroutines;

import defpackage.u2;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SafeContinuation<T> implements Continuation<T>, CoroutineStackFrame {
    public static final AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(SafeContinuation.class, Object.class, "result");
    public final Continuation j;
    private volatile Object result;

    public SafeContinuation(Continuation continuation) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        this.j = continuation;
        this.result = coroutineSingletons;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame d() {
        Continuation continuation = this.j;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        while (true) {
            Object obj2 = this.result;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.k;
            if (obj2 == coroutineSingletons) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, coroutineSingletons, obj)) {
                    if (atomicReferenceFieldUpdater.get(this) != coroutineSingletons) {
                        break;
                    }
                }
                return;
            }
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            if (obj2 == coroutineSingletons2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = k;
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.l;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, coroutineSingletons2, coroutineSingletons3)) {
                    if (atomicReferenceFieldUpdater2.get(this) != coroutineSingletons2) {
                        break;
                    }
                }
                this.j.g(obj);
                return;
            }
            u2.l("Already resumed");
            return;
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return this.j.o();
    }

    public final String toString() {
        return "SafeContinuation for " + this.j;
    }
}
