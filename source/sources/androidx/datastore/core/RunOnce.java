package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RunOnce {
    public final MutexImpl a = new MutexImpl();
    public final CompletableDeferred b = CompletableDeferredKt.a(null);

    public abstract Object a(ContinuationImpl continuationImpl);

    /* JADX WARN: Code restructure failed: missing block: B:40:0x005d, code lost:
    
        if (r9.a(r0) == r1) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006e A[Catch: all -> 0x0086, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0086, blocks: (B:25:0x0060, B:29:0x006e), top: B:24:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r8v8, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(ContinuationImpl continuationImpl) {
        RunOnce$runIfNeeded$1 runOnce$runIfNeeded$1;
        int i;
        MutexImpl mutexImpl;
        Throwable th;
        Mutex mutex;
        RunOnce runOnce;
        try {
            if (continuationImpl instanceof RunOnce$runIfNeeded$1) {
                runOnce$runIfNeeded$1 = (RunOnce$runIfNeeded$1) continuationImpl;
                int i2 = runOnce$runIfNeeded$1.q;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    runOnce$runIfNeeded$1.q = i2 - Integer.MIN_VALUE;
                    Object obj = runOnce$runIfNeeded$1.o;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = runOnce$runIfNeeded$1.q;
                    Unit unit = Unit.a;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                mutex = runOnce$runIfNeeded$1.n;
                                runOnce = runOnce$runIfNeeded$1.m;
                                try {
                                    ResultKt.b(obj);
                                    runOnce.b.E0(unit);
                                    mutex.h(null);
                                    return unit;
                                } catch (Throwable th2) {
                                    th = th2;
                                    mutex.h(null);
                                    throw th;
                                }
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ?? r8 = runOnce$runIfNeeded$1.n;
                        RunOnce runOnce2 = runOnce$runIfNeeded$1.m;
                        ResultKt.b(obj);
                        mutexImpl = r8;
                        this = runOnce2;
                    } else {
                        ResultKt.b(obj);
                        if (((JobSupport) this.b).Q()) {
                            return unit;
                        }
                        runOnce$runIfNeeded$1.m = this;
                        mutexImpl = this.a;
                        runOnce$runIfNeeded$1.n = mutexImpl;
                        runOnce$runIfNeeded$1.q = 1;
                    }
                    if (!((JobSupport) this.b).Q()) {
                        mutexImpl.h(null);
                        return unit;
                    }
                    runOnce$runIfNeeded$1.m = this;
                    runOnce$runIfNeeded$1.n = mutexImpl;
                    runOnce$runIfNeeded$1.q = 2;
                    if (this.a(runOnce$runIfNeeded$1) != coroutineSingletons) {
                        runOnce = this;
                        mutex = mutexImpl;
                        runOnce.b.E0(unit);
                        mutex.h(null);
                        return unit;
                    }
                    return coroutineSingletons;
                }
            }
            if (!((JobSupport) this.b).Q()) {
            }
        } catch (Throwable th3) {
            MutexImpl mutexImpl2 = mutexImpl;
            th = th3;
            mutex = mutexImpl2;
            mutex.h(null);
            throw th;
        }
        runOnce$runIfNeeded$1 = new RunOnce$runIfNeeded$1(this, continuationImpl);
        Object obj2 = runOnce$runIfNeeded$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = runOnce$runIfNeeded$1.q;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
    }
}
