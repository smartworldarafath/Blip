package androidx.work.impl;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.work.impl.WorkerWrapper$runWorker$result$1", f = "WorkerWrapper.kt", l = {297, 308}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class WorkerWrapper$runWorker$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
    public int n;
    public final /* synthetic */ WorkerWrapper o;
    public final /* synthetic */ ListenableWorker p;
    public final /* synthetic */ WorkForegroundUpdater q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkerWrapper$runWorker$result$1(WorkerWrapper workerWrapper, ListenableWorker listenableWorker, WorkForegroundUpdater workForegroundUpdater, Continuation continuation) {
        super(2, continuation);
        this.o = workerWrapper;
        this.p = listenableWorker;
        this.q = workForegroundUpdater;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((WorkerWrapper$runWorker$result$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new WorkerWrapper$runWorker$result$1(this.o, this.p, this.q, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        if (androidx.work.impl.utils.WorkForegroundKt.a(r1, r2, r3, r9.q, r5, r6) == r7) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1;
        WorkerWrapper workerWrapper = this.o;
        WorkSpec workSpec = workerWrapper.a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        ListenableWorker listenableWorker = this.p;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return obj;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            workerWrapper$runWorker$result$1 = this;
        } else {
            ResultKt.b(obj);
            Context context = workerWrapper.b;
            WorkManagerTaskExecutor workManagerTaskExecutor = workerWrapper.d;
            this.n = 1;
            workerWrapper$runWorker$result$1 = this;
        }
        String str = WorkerWrapperKt.a;
        Logger.d().a(str, "Starting work for " + workSpec.c);
        ListenableFuture b = listenableWorker.b();
        workerWrapper$runWorker$result$1.n = 2;
        Object a = WorkerWrapperKt.a(b, listenableWorker, workerWrapper$runWorker$result$1);
        if (a == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a;
    }
}
