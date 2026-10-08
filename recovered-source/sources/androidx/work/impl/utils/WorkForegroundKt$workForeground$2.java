package androidx.work.impl.utils;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.WorkerWrapperKt;
import androidx.work.impl.model.WorkSpec;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.n5;
import defpackage.p1;
import defpackage.q;
import defpackage.u2;
import java.util.UUID;
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
@DebugMetadata(c = "androidx.work.impl.utils.WorkForegroundKt$workForeground$2", f = "WorkForeground.kt", l = {42, 50}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class WorkForegroundKt$workForeground$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Void>, Object> {
    public int n;
    public final /* synthetic */ ListenableWorker o;
    public final /* synthetic */ WorkSpec p;
    public final /* synthetic */ WorkForegroundUpdater q;
    public final /* synthetic */ Context r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkForegroundKt$workForeground$2(ListenableWorker listenableWorker, WorkSpec workSpec, WorkForegroundUpdater workForegroundUpdater, Context context, Continuation continuation) {
        super(2, continuation);
        this.o = listenableWorker;
        this.p = workSpec;
        this.q = workForegroundUpdater;
        this.r = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((WorkForegroundKt$workForeground$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new WorkForegroundKt$workForeground$2(this.o, this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        if (r9 == r1) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        String str = this.p.c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        ListenableWorker listenableWorker = this.o;
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
        } else {
            ResultKt.b(obj);
            ListenableFuture a = listenableWorker.a();
            this.n = 1;
            obj = WorkerWrapperKt.a(a, listenableWorker, this);
        }
        ForegroundInfo foregroundInfo = (ForegroundInfo) obj;
        if (foregroundInfo != null) {
            String str2 = WorkForegroundKt.a;
            Logger.d().a(str2, "Updating notification for " + str);
            UUID uuid = listenableWorker.b.a;
            WorkForegroundUpdater workForegroundUpdater = this.q;
            SerialExecutorImpl serialExecutorImpl = workForegroundUpdater.a.a;
            p1 p1Var = new p1(workForegroundUpdater, uuid, foregroundInfo, this.r);
            serialExecutorImpl.getClass();
            ListenableFuture a2 = CallbackToFutureAdapter.a(new n5(5, serialExecutorImpl, p1Var));
            this.n = 2;
            Object a3 = ListenableFutureKt.a(a2, this);
            if (a3 == coroutineSingletons) {
                return coroutineSingletons;
            }
            return a3;
        }
        u2.l(q.i("Worker was marked important (", str, ") but did not provide ForegroundInfo"));
        return null;
    }
}
