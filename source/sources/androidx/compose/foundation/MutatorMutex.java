package androidx.compose.foundation;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutatorMutex {
    public final AtomicReference a = new AtomicReference(null);
    public final MutexImpl b = new MutexImpl();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mutator {
        public final MutatePriority a;
        public final Job b;

        public Mutator(MutatePriority mutatePriority, Job job) {
            this.a = mutatePriority;
            this.b = job;
        }
    }

    public static final void a(MutatorMutex mutatorMutex, Mutator mutator) {
        AtomicReference atomicReference = mutatorMutex.a;
        while (true) {
            Mutator mutator2 = (Mutator) atomicReference.get();
            if (mutator2 != null && mutator.a.compareTo(mutator2.a) < 0) {
                throw new CancellationException("Current mutation had a higher priority");
            }
            while (!atomicReference.compareAndSet(mutator2, mutator)) {
                if (atomicReference.get() != mutator2) {
                    break;
                }
            }
            if (mutator2 != null) {
                mutator2.b.n(new CancellationException("Mutation interrupted"));
                return;
            }
            return;
        }
    }

    public static Object b(MutatorMutex mutatorMutex, Function1 function1, SuspendLambda suspendLambda) {
        MutatePriority mutatePriority = MutatePriority.j;
        mutatorMutex.getClass();
        return CoroutineScopeKt.c(new MutatorMutex$mutate$2(mutatorMutex, function1, null), suspendLambda);
    }

    public final Object c(Object obj, MutatePriority mutatePriority, Function2 function2, SuspendLambda suspendLambda) {
        return CoroutineScopeKt.c(new MutatorMutex$mutateWith$2(mutatePriority, this, function2, obj, null), suspendLambda);
    }
}
