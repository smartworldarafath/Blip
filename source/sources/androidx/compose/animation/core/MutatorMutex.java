package androidx.compose.animation.core;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
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
        public final Job a;

        public Mutator(Job job) {
            MutatePriority mutatePriority = MutatePriority.j;
            this.a = job;
        }
    }

    public static Object a(MutatorMutex mutatorMutex, Function1 function1, Continuation continuation) {
        MutatePriority mutatePriority = MutatePriority.j;
        mutatorMutex.getClass();
        return CoroutineScopeKt.c(new MutatorMutex$mutate$2(mutatorMutex, function1, null), continuation);
    }
}
