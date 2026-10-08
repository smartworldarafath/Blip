package androidx.compose.foundation;

import androidx.compose.foundation.MutatorMutex;
import defpackage.u2;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.MutatorMutex$mutateWith$2", f = "MutatorMutex.kt", l = {212, 167}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class MutatorMutex$mutateWith$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public Mutex n;
    public Object o;
    public Object p;
    public MutatorMutex q;
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ MutatePriority t;
    public final /* synthetic */ MutatorMutex u;
    public final /* synthetic */ Function2 v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutateWith$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, Function2 function2, Object obj, Continuation continuation) {
        super(2, continuation);
        this.t = mutatePriority;
        this.u = mutatorMutex;
        this.v = function2;
        this.w = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MutatorMutex$mutateWith$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        MutatorMutex$mutateWith$2 mutatorMutex$mutateWith$2 = new MutatorMutex$mutateWith$2(this.t, this.u, this.v, this.w, continuation);
        mutatorMutex$mutateWith$2.s = obj;
        return mutatorMutex$mutateWith$2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        MutatorMutex.Mutator mutator;
        MutatorMutex mutatorMutex;
        MutexImpl mutexImpl;
        Function2 function2;
        Object obj2;
        MutatorMutex mutatorMutex2;
        Throwable th;
        MutatorMutex.Mutator mutator2;
        Mutex mutex;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ?? r1 = this.r;
        try {
            try {
                if (r1 != 0) {
                    if (r1 != 1) {
                        if (r1 == 2) {
                            mutatorMutex2 = (MutatorMutex) this.o;
                            mutex = this.n;
                            mutator2 = (MutatorMutex.Mutator) this.s;
                            try {
                                ResultKt.b(obj);
                                atomicReference2 = mutatorMutex2.a;
                                while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                                }
                                mutex.h(null);
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
                    MutatorMutex mutatorMutex3 = this.q;
                    obj2 = this.p;
                    Function2 function22 = (Function2) this.o;
                    ?? r6 = this.n;
                    MutatorMutex.Mutator mutator3 = (MutatorMutex.Mutator) this.s;
                    ResultKt.b(obj);
                    function2 = function22;
                    mutexImpl = r6;
                    mutatorMutex = mutatorMutex3;
                    mutator = mutator3;
                } else {
                    ResultKt.b(obj);
                    CoroutineContext.Element v = ((CoroutineScope) this.s).getCoroutineContext().v(Job.Key.j);
                    v.getClass();
                    mutator = new MutatorMutex.Mutator(this.t, (Job) v);
                    mutatorMutex = this.u;
                    MutatorMutex.a(mutatorMutex, mutator);
                    mutexImpl = mutatorMutex.b;
                    this.s = mutator;
                    this.n = mutexImpl;
                    function2 = this.v;
                    this.o = function2;
                    Object obj3 = this.w;
                    this.p = obj3;
                    this.q = mutatorMutex;
                    this.r = 1;
                    if (mutexImpl.a(this) != coroutineSingletons) {
                        obj2 = obj3;
                    }
                    return coroutineSingletons;
                }
                this.s = mutator;
                this.n = mutexImpl;
                this.o = mutatorMutex;
                this.p = null;
                this.q = null;
                this.r = 2;
                Object n = function2.n(obj2, this);
                if (n != coroutineSingletons) {
                    mutatorMutex2 = mutatorMutex;
                    obj = n;
                    mutator2 = mutator;
                    mutex = mutexImpl;
                    atomicReference2 = mutatorMutex2.a;
                    while (!atomicReference2.compareAndSet(mutator2, null)) {
                    }
                    mutex.h(null);
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
