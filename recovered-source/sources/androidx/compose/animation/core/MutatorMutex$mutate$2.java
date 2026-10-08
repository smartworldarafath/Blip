package androidx.compose.animation.core;

import androidx.compose.animation.core.MutatorMutex;
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
@DebugMetadata(c = "androidx.compose.animation.core.MutatorMutex$mutate$2", f = "InternalMutatorMutex.kt", l = {178, 126}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class MutatorMutex$mutate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public Mutex n;
    public Object o;
    public MutatorMutex p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ MutatorMutex s;
    public final /* synthetic */ Function1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(MutatorMutex mutatorMutex, Function1 function1, Continuation continuation) {
        super(2, continuation);
        MutatePriority mutatePriority = MutatePriority.j;
        this.s = mutatorMutex;
        this.t = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MutatorMutex$mutate$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        MutatePriority mutatePriority = MutatePriority.j;
        MutatorMutex$mutate$2 mutatorMutex$mutate$2 = new MutatorMutex$mutate$2(this.s, this.t, continuation);
        mutatorMutex$mutate$2.r = obj;
        return mutatorMutex$mutate$2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        MutatorMutex.Mutator mutator;
        MutatorMutex mutatorMutex;
        Mutex mutex;
        Function1 function1;
        MutatorMutex mutatorMutex2;
        Throwable th;
        MutatorMutex.Mutator mutator2;
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
                            mutatorMutex2 = (MutatorMutex) this.o;
                            mutex2 = this.n;
                            mutator2 = (MutatorMutex.Mutator) this.r;
                            try {
                                ResultKt.b(obj);
                                atomicReference2 = mutatorMutex2.a;
                                while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                                }
                                mutex2.h(null);
                                return obj;
                            } catch (Throwable th2) {
                                th = th2;
                                atomicReference = mutatorMutex2.a;
                                while (!atomicReference.compareAndSet(mutator2, null)) {
                                }
                                throw th;
                            }
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    MutatorMutex mutatorMutex3 = this.p;
                    function1 = (Function1) this.o;
                    mutex = this.n;
                    MutatorMutex.Mutator mutator3 = (MutatorMutex.Mutator) this.r;
                    ResultKt.b(obj);
                    mutatorMutex = mutatorMutex3;
                    mutator = mutator3;
                } else {
                    ResultKt.b(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.r;
                    MutatePriority mutatePriority = MutatePriority.j;
                    CoroutineContext.Element v = coroutineScope.getCoroutineContext().v(Job.Key.j);
                    v.getClass();
                    mutator = new MutatorMutex.Mutator((Job) v);
                    mutatorMutex = this.s;
                    AtomicReference atomicReference3 = mutatorMutex.a;
                    while (true) {
                        MutatorMutex.Mutator mutator4 = (MutatorMutex.Mutator) atomicReference3.get();
                        if (mutator4 != null) {
                            MutatePriority mutatePriority2 = MutatePriority.j;
                            if (mutatePriority2.compareTo(mutatePriority2) < 0) {
                                throw new CancellationException("Current mutation had a higher priority");
                            }
                        }
                        while (!atomicReference3.compareAndSet(mutator4, mutator)) {
                            if (atomicReference3.get() != mutator4) {
                                break;
                            }
                        }
                        if (mutator4 != null) {
                            mutator4.a.n(new CancellationException("Mutation interrupted"));
                        }
                        mutex = mutatorMutex.b;
                        this.r = mutator;
                        this.n = mutex;
                        Function1 function12 = this.t;
                        this.o = function12;
                        this.p = mutatorMutex;
                        this.q = 1;
                        if (mutex.a(this) != coroutineSingletons) {
                            function1 = function12;
                        }
                    }
                }
                this.r = mutator;
                this.n = mutex;
                this.o = mutatorMutex;
                this.p = null;
                this.q = 2;
                Object b = function1.b(this);
                if (b != coroutineSingletons) {
                    mutatorMutex2 = mutatorMutex;
                    obj = b;
                    mutator2 = mutator;
                    mutex2 = mutex;
                    atomicReference2 = mutatorMutex2.a;
                    while (!atomicReference2.compareAndSet(mutator2, null)) {
                    }
                    mutex2.h(null);
                    return obj;
                }
                return coroutineSingletons;
            } catch (Throwable th3) {
                mutatorMutex2 = mutatorMutex;
                th = th3;
                mutator2 = mutator;
                atomicReference = mutatorMutex2.a;
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
