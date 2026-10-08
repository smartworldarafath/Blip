package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.material.InternalMutatorMutex;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.InternalMutatorMutex$mutate$2", f = "InternalMutatorMutex.kt", l = {180, 103}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class InternalMutatorMutex$mutate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public Mutex n;
    public Object o;
    public InternalMutatorMutex p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ MutatePriority s;
    public final /* synthetic */ InternalMutatorMutex t;
    public final /* synthetic */ Function1 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalMutatorMutex$mutate$2(MutatePriority mutatePriority, InternalMutatorMutex internalMutatorMutex, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.s = mutatePriority;
        this.t = internalMutatorMutex;
        this.u = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((InternalMutatorMutex$mutate$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        InternalMutatorMutex$mutate$2 internalMutatorMutex$mutate$2 = new InternalMutatorMutex$mutate$2(this.s, this.t, this.u, continuation);
        internalMutatorMutex$mutate$2.r = obj;
        return internalMutatorMutex$mutate$2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        InternalMutatorMutex.Mutator mutator;
        InternalMutatorMutex internalMutatorMutex;
        Mutex mutex;
        Function1 function1;
        InternalMutatorMutex internalMutatorMutex2;
        Throwable th;
        InternalMutatorMutex.Mutator mutator2;
        Mutex mutex2;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ?? r1 = this.q;
        try {
            try {
                if (r1 != 0) {
                    if (r1 != 1) {
                        if (r1 == 2) {
                            internalMutatorMutex2 = (InternalMutatorMutex) this.o;
                            mutex2 = this.n;
                            mutator2 = (InternalMutatorMutex.Mutator) this.r;
                            try {
                                ResultKt.b(obj);
                                atomicReference2 = internalMutatorMutex2.a;
                                while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                                }
                                mutex2.h(null);
                                return obj;
                            } catch (Throwable th2) {
                                th = th2;
                                atomicReference = internalMutatorMutex2.a;
                                while (!atomicReference.compareAndSet(mutator2, null)) {
                                }
                                throw th;
                            }
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    InternalMutatorMutex internalMutatorMutex3 = this.p;
                    function1 = (Function1) this.o;
                    mutex = this.n;
                    InternalMutatorMutex.Mutator mutator3 = (InternalMutatorMutex.Mutator) this.r;
                    ResultKt.b(obj);
                    internalMutatorMutex = internalMutatorMutex3;
                    mutator = mutator3;
                } else {
                    ResultKt.b(obj);
                    CoroutineContext.Element v = ((CoroutineScope) this.r).getCoroutineContext().v(Job.Key.j);
                    v.getClass();
                    mutator = new InternalMutatorMutex.Mutator(this.s, (Job) v);
                    internalMutatorMutex = this.t;
                    AtomicReference atomicReference3 = internalMutatorMutex.a;
                    while (true) {
                        InternalMutatorMutex.Mutator mutator4 = (InternalMutatorMutex.Mutator) atomicReference3.get();
                        if (mutator4 != null && mutator.a.compareTo(mutator4.a) < 0) {
                            throw new CancellationException("Current mutation had a higher priority");
                        }
                        while (!atomicReference3.compareAndSet(mutator4, mutator)) {
                            if (atomicReference3.get() != mutator4) {
                                break;
                            }
                        }
                        if (mutator4 != null) {
                            mutator4.b.n(null);
                        }
                        mutex = internalMutatorMutex.b;
                        this.r = mutator;
                        this.n = mutex;
                        Function1 function12 = this.u;
                        this.o = function12;
                        this.p = internalMutatorMutex;
                        this.q = 1;
                        if (mutex.a(this) != coroutineSingletons) {
                            function1 = function12;
                        }
                    }
                }
                this.r = mutator;
                this.n = mutex;
                this.o = internalMutatorMutex;
                this.p = null;
                this.q = 2;
                Object b = function1.b(this);
                if (b != coroutineSingletons) {
                    internalMutatorMutex2 = internalMutatorMutex;
                    obj = b;
                    mutator2 = mutator;
                    mutex2 = mutex;
                    atomicReference2 = internalMutatorMutex2.a;
                    while (!atomicReference2.compareAndSet(mutator2, null)) {
                    }
                    mutex2.h(null);
                    return obj;
                }
                return coroutineSingletons;
            } catch (Throwable th3) {
                internalMutatorMutex2 = internalMutatorMutex;
                th = th3;
                mutator2 = mutator;
                atomicReference = internalMutatorMutex2.a;
                while (!atomicReference.compareAndSet(mutator2, null) && atomicReference.get() == mutator2) {
                }
                throw th;
            }
        } catch (Throwable th4) {
            r1.h(null);
            throw th4;
        }
    }
}
