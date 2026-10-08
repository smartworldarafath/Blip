package net.blip.android.transferworker;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.ForegroundInfo;
import androidx.work.WorkerParameters;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import net.blip.android.App;
import net.blip.android.notifications.NotificationFactory;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferWorker extends CoroutineWorker {
    public static final String j = Companion.class.getDeclaringClass().getName().concat(".transfer_id");
    public static final Logger k = LoggerKt.a.m("TransferWorker", new Pair[0]);
    public final StateFlow g;
    public final Flow h;
    public final int i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        int i;
        context.getClass();
        workerParameters.getClass();
        Context context2 = App.m;
        this.g = App.Companion.b().a;
        this.h = new NotificationFactory(context).f(App.Companion.b().a, e());
        if (Build.VERSION.SDK_INT >= 34) {
            i = 1;
        } else {
            i = 0;
        }
        this.i = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(ContinuationImpl continuationImpl) {
        TransferWorker$doWork$1 transferWorker$doWork$1;
        int i;
        if (continuationImpl instanceof TransferWorker$doWork$1) {
            transferWorker$doWork$1 = (TransferWorker$doWork$1) continuationImpl;
            int i2 = transferWorker$doWork$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                transferWorker$doWork$1.o = i2 - Integer.MIN_VALUE;
                Object obj = transferWorker$doWork$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = transferWorker$doWork$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    TransferWorker$doWork$2 transferWorker$doWork$2 = new TransferWorker$doWork$2(this, null);
                    transferWorker$doWork$1.o = 1;
                    obj = CoroutineScopeKt.c(transferWorker$doWork$2, transferWorker$doWork$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                obj.getClass();
                return obj;
            }
        }
        transferWorker$doWork$1 = new TransferWorker$doWork$1(this, continuationImpl);
        Object obj2 = transferWorker$doWork$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = transferWorker$doWork$1.o;
        if (i == 0) {
        }
        obj2.getClass();
        return obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object d(Continuation continuation) {
        TransferWorker$getForegroundInfo$1 transferWorker$getForegroundInfo$1;
        int i;
        if (continuation instanceof TransferWorker$getForegroundInfo$1) {
            transferWorker$getForegroundInfo$1 = (TransferWorker$getForegroundInfo$1) continuation;
            int i2 = transferWorker$getForegroundInfo$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                transferWorker$getForegroundInfo$1.o = i2 - Integer.MIN_VALUE;
                Object obj = transferWorker$getForegroundInfo$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = transferWorker$getForegroundInfo$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    CancellableFlow e = FlowKt.e((CancellableFlow) this.h);
                    transferWorker$getForegroundInfo$1.o = 1;
                    obj = FlowKt.n(e, transferWorker$getForegroundInfo$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                Pair pair = (Pair) obj;
                return new ForegroundInfo(((Number) pair.j).intValue(), (Notification) pair.k, this.i);
            }
        }
        transferWorker$getForegroundInfo$1 = new TransferWorker$getForegroundInfo$1(this, (ContinuationImpl) continuation);
        Object obj2 = transferWorker$getForegroundInfo$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = transferWorker$getForegroundInfo$1.o;
        if (i == 0) {
        }
        Pair pair2 = (Pair) obj2;
        return new ForegroundInfo(((Number) pair2.j).intValue(), (Notification) pair2.k, this.i);
    }

    public final String e() {
        String str;
        Data data = this.b.b;
        data.getClass();
        String str2 = j;
        str2.getClass();
        Object obj = data.a.get(str2);
        if (obj instanceof String) {
            str = (String) obj;
        } else {
            str = null;
        }
        str.getClass();
        return str;
    }
}
