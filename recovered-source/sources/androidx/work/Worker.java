package androidx.work;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.ListenableWorker;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.hh;
import defpackage.kb;
import defpackage.n5;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture a() {
        ExecutorService executorService = this.b.c;
        executorService.getClass();
        return CallbackToFutureAdapter.a(new n5(10, executorService, new hh(8, this)));
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture b() {
        ExecutorService executorService = this.b.c;
        executorService.getClass();
        return CallbackToFutureAdapter.a(new n5(10, executorService, new kb(27, this)));
    }

    public abstract ListenableWorker.Result.Success c();
}
