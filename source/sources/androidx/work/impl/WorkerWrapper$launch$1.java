package androidx.work.impl;

import androidx.room.util.DBUtil;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import defpackage.ec;
import defpackage.k8;
import defpackage.q7;
import defpackage.u2;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.work.impl.WorkerWrapper$launch$1", f = "WorkerWrapper.kt", l = {98}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class WorkerWrapper$launch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    public int n;
    public final /* synthetic */ WorkerWrapper o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkerWrapper$launch$1(WorkerWrapper workerWrapper, Continuation continuation) {
        super(2, continuation);
        this.o = workerWrapper;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((WorkerWrapper$launch$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new WorkerWrapper$launch$1(this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        final WorkerWrapper.Resolution failed;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        final WorkerWrapper workerWrapper = this.o;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                JobImpl jobImpl = workerWrapper.m;
                WorkerWrapper$launch$1$resolution$1 workerWrapper$launch$1$resolution$1 = new WorkerWrapper$launch$1$resolution$1(workerWrapper, null);
                this.n = 1;
                obj = BuildersKt.e(jobImpl, workerWrapper$launch$1$resolution$1, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            failed = (WorkerWrapper.Resolution) obj;
        } catch (WorkerStoppedException e) {
            failed = new WorkerWrapper.Resolution.ResetWorkerStatus(e.j);
        } catch (CancellationException unused) {
            failed = new WorkerWrapper.Resolution.Failed();
        } catch (Throwable th) {
            Logger.d().c(WorkerWrapperKt.a, "Unexpected error in WorkerWrapper", th);
            failed = new WorkerWrapper.Resolution.Failed();
        }
        Object n = workerWrapper.h.n(new Callable() { // from class: androidx.work.impl.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkerWrapper workerWrapper2 = workerWrapper;
                String str = workerWrapper2.l;
                String str2 = workerWrapper2.c;
                WorkSpecDao workSpecDao = workerWrapper2.i;
                WorkSpec workSpec = workerWrapper2.a;
                WorkerWrapper.Resolution resolution = WorkerWrapper.Resolution.this;
                boolean z = true;
                boolean z2 = false;
                if (resolution instanceof WorkerWrapper.Resolution.Finished) {
                    ListenableWorker.Result result = ((WorkerWrapper.Resolution.Finished) resolution).a;
                    WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) workSpecDao;
                    WorkInfo$State a = workSpecDao_Impl.a(str2);
                    WorkProgressDao_Impl workProgressDao_Impl = (WorkProgressDao_Impl) workerWrapper2.h.u();
                    workProgressDao_Impl.getClass();
                    DBUtil.b(workProgressDao_Impl.a, false, true, new q7(str2, 9));
                    if (a != null) {
                        if (a == WorkInfo$State.k) {
                            if (result instanceof ListenableWorker.Result.Success) {
                                String str3 = WorkerWrapperKt.a;
                                Logger.d().e(str3, "Worker result SUCCESS for " + str);
                                if (workSpec.b()) {
                                    workerWrapper2.c();
                                } else {
                                    workSpecDao_Impl.f(WorkInfo$State.l, str2);
                                    Data data = ((ListenableWorker.Result.Success) result).a;
                                    data.getClass();
                                    DBUtil.b(workSpecDao_Impl.a, false, true, new ec(29, data, str2));
                                    workerWrapper2.f.getClass();
                                    long currentTimeMillis = System.currentTimeMillis();
                                    DependencyDao_Impl dependencyDao_Impl = (DependencyDao_Impl) workerWrapper2.j;
                                    for (String str4 : dependencyDao_Impl.a(str2)) {
                                        if (workSpecDao_Impl.a(str4) == WorkInfo$State.n && ((Boolean) DBUtil.b(dependencyDao_Impl.a, true, false, new q7(str4, 1))).booleanValue()) {
                                            Logger.d().e(WorkerWrapperKt.a, "Setting status to enqueued for ".concat(str4));
                                            workSpecDao_Impl.f(WorkInfo$State.j, str4);
                                            workSpecDao_Impl.e(currentTimeMillis, str4);
                                        }
                                    }
                                }
                            } else {
                                String str5 = WorkerWrapperKt.a;
                                Logger.d().e(str5, "Worker result FAILURE for " + str);
                                if (workSpec.b()) {
                                    workerWrapper2.c();
                                } else {
                                    workerWrapper2.d(result);
                                }
                            }
                        } else if (!a.a()) {
                            workerWrapper2.b(-512);
                            z2 = z;
                            return Boolean.valueOf(z2);
                        }
                    }
                    z = false;
                    z2 = z;
                    return Boolean.valueOf(z2);
                }
                if (resolution instanceof WorkerWrapper.Resolution.Failed) {
                    ListenableWorker.Result result2 = ((WorkerWrapper.Resolution.Failed) resolution).a;
                    String str6 = WorkerWrapperKt.a;
                    Logger.d().e(str6, "Worker result FAILURE for " + str);
                    if (workSpec.b()) {
                        workerWrapper2.c();
                    } else {
                        workerWrapper2.d(result2);
                    }
                    return Boolean.valueOf(z2);
                }
                if (resolution instanceof WorkerWrapper.Resolution.ResetWorkerStatus) {
                    int i2 = ((WorkerWrapper.Resolution.ResetWorkerStatus) resolution).a;
                    if (Intrinsics.a(workSpec.y, Boolean.TRUE)) {
                        String str7 = WorkerWrapperKt.a;
                        Logger.d().a(str7, "Worker " + workSpec.c + " was interrupted. Backing off.");
                        workerWrapper2.b(i2);
                    } else {
                        WorkSpecDao_Impl workSpecDao_Impl2 = (WorkSpecDao_Impl) workSpecDao;
                        WorkInfo$State a2 = workSpecDao_Impl2.a(str2);
                        if (a2 != null && !a2.a()) {
                            String str8 = WorkerWrapperKt.a;
                            Logger.d().a(str8, "Status for " + str2 + " is " + a2 + "; not doing any work and rescheduling for later execution");
                            workSpecDao_Impl2.f(WorkInfo$State.j, str2);
                            workSpecDao_Impl2.g(i2, str2);
                            workSpecDao_Impl2.c(-1L, str2);
                        } else {
                            String str9 = WorkerWrapperKt.a;
                            Logger.d().a(str9, "Status for " + str2 + " is " + a2 + " ; not doing any work");
                            z = false;
                        }
                    }
                    z2 = z;
                    return Boolean.valueOf(z2);
                }
                k8.e();
                return null;
            }
        });
        n.getClass();
        return n;
    }
}
