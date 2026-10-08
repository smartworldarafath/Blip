package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingleProcessCoordinator implements InterProcessCoordinator {
    public final MutexImpl a = new MutexImpl();
    public final AtomicInt b = new AtomicInt();
    public final Flow c = FlowKt.p(new SuspendLambda(2, null));

    /* JADX WARN: Type inference failed for: r3v3, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    public SingleProcessCoordinator(String str) {
    }

    public final Integer a() {
        return new Integer(this.b.a.get());
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005d, code lost:
    
        if (r8 != r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (r8 == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.datastore.core.SingleProcessCoordinator] */
    /* JADX WARN: Type inference failed for: r6v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Function1 function1, ContinuationImpl continuationImpl) {
        SingleProcessCoordinator$lock$1 singleProcessCoordinator$lock$1;
        int i;
        MutexImpl mutexImpl;
        try {
            if (continuationImpl instanceof SingleProcessCoordinator$lock$1) {
                singleProcessCoordinator$lock$1 = (SingleProcessCoordinator$lock$1) continuationImpl;
                int i2 = singleProcessCoordinator$lock$1.q;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    singleProcessCoordinator$lock$1.q = i2 - Integer.MIN_VALUE;
                    Object obj = singleProcessCoordinator$lock$1.o;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = singleProcessCoordinator$lock$1.q;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                Mutex mutex = (Mutex) singleProcessCoordinator$lock$1.m;
                                ResultKt.b(obj);
                                this = mutex;
                                return obj;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        MutexImpl mutexImpl2 = singleProcessCoordinator$lock$1.n;
                        function1 = (Function1) singleProcessCoordinator$lock$1.m;
                        ResultKt.b(obj);
                        mutexImpl = mutexImpl2;
                    } else {
                        ResultKt.b(obj);
                        singleProcessCoordinator$lock$1.m = function1;
                        MutexImpl mutexImpl3 = this.a;
                        singleProcessCoordinator$lock$1.n = mutexImpl3;
                        singleProcessCoordinator$lock$1.q = 1;
                        Object a = mutexImpl3.a(singleProcessCoordinator$lock$1);
                        mutexImpl = mutexImpl3;
                    }
                    singleProcessCoordinator$lock$1.m = mutexImpl;
                    singleProcessCoordinator$lock$1.n = null;
                    singleProcessCoordinator$lock$1.q = 2;
                    obj = function1.b(singleProcessCoordinator$lock$1);
                    this = mutexImpl;
                }
            }
            if (i == 0) {
            }
            singleProcessCoordinator$lock$1.m = mutexImpl;
            singleProcessCoordinator$lock$1.n = null;
            singleProcessCoordinator$lock$1.q = 2;
            obj = function1.b(singleProcessCoordinator$lock$1);
            this = mutexImpl;
        } finally {
            this.h(null);
        }
        singleProcessCoordinator$lock$1 = new SingleProcessCoordinator$lock$1(this, continuationImpl);
        Object obj2 = singleProcessCoordinator$lock$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = singleProcessCoordinator$lock$1.q;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(Function2 function2, ContinuationImpl continuationImpl) {
        SingleProcessCoordinator$tryLock$1 singleProcessCoordinator$tryLock$1;
        int i;
        MutexImpl mutexImpl;
        boolean z;
        Throwable th;
        if (continuationImpl instanceof SingleProcessCoordinator$tryLock$1) {
            singleProcessCoordinator$tryLock$1 = (SingleProcessCoordinator$tryLock$1) continuationImpl;
            int i2 = singleProcessCoordinator$tryLock$1.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                singleProcessCoordinator$tryLock$1.q = i2 - Integer.MIN_VALUE;
                Object obj = singleProcessCoordinator$tryLock$1.o;
                Object obj2 = CoroutineSingletons.j;
                i = singleProcessCoordinator$tryLock$1.q;
                if (i == 0) {
                    if (i == 1) {
                        z = singleProcessCoordinator$tryLock$1.n;
                        mutexImpl = singleProcessCoordinator$tryLock$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            if (z) {
                            }
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    MutexImpl mutexImpl2 = this.a;
                    boolean f = mutexImpl2.f();
                    try {
                        Object valueOf = Boolean.valueOf(f);
                        singleProcessCoordinator$tryLock$1.m = mutexImpl2;
                        singleProcessCoordinator$tryLock$1.n = f;
                        singleProcessCoordinator$tryLock$1.q = 1;
                        Object n = function2.n(valueOf, singleProcessCoordinator$tryLock$1);
                        if (n == obj2) {
                            return obj2;
                        }
                        mutexImpl = mutexImpl2;
                        z = f;
                        obj = n;
                    } catch (Throwable th3) {
                        mutexImpl = mutexImpl2;
                        z = f;
                        th = th3;
                        if (z) {
                            mutexImpl.h(null);
                        }
                        throw th;
                    }
                }
                if (z) {
                    mutexImpl.h(null);
                }
                return obj;
            }
        }
        singleProcessCoordinator$tryLock$1 = new SingleProcessCoordinator$tryLock$1(this, continuationImpl);
        Object obj3 = singleProcessCoordinator$tryLock$1.o;
        Object obj22 = CoroutineSingletons.j;
        i = singleProcessCoordinator$tryLock$1.q;
        if (i == 0) {
        }
        if (z) {
        }
        return obj3;
    }
}
