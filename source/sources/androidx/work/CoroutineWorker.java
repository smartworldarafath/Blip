package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CoroutineWorker extends ListenableWorker {
    public final WorkerParameters e;
    public final CoroutineDispatcher f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DeprecatedDispatcher extends CoroutineDispatcher {
        public static final DeprecatedDispatcher l = new CoroutineDispatcher();
        public static final DefaultScheduler m = Dispatchers.a;

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
            coroutineContext.getClass();
            runnable.getClass();
            m.b1(coroutineContext, runnable);
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public final boolean d1(CoroutineContext coroutineContext) {
            coroutineContext.getClass();
            m.getClass();
            return !false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.e = workerParameters;
        this.f = DeprecatedDispatcher.l;
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture a() {
        JobImpl a = JobKt.a();
        CoroutineDispatcher coroutineDispatcher = this.f;
        coroutineDispatcher.getClass();
        return ListenableFutureKt.a(CoroutineContext.Element.DefaultImpls.c(coroutineDispatcher, a), new CoroutineWorker$getForegroundInfoAsync$1(this, null));
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture b() {
        DeprecatedDispatcher deprecatedDispatcher = DeprecatedDispatcher.l;
        CoroutineContext coroutineContext = this.f;
        if (Intrinsics.a(coroutineContext, deprecatedDispatcher)) {
            coroutineContext = this.e.d;
        }
        coroutineContext.getClass();
        return ListenableFutureKt.a(coroutineContext.A(JobKt.a()), new CoroutineWorker$startWork$1(this, null));
    }

    public abstract Object c(ContinuationImpl continuationImpl);

    public Object d(Continuation continuation) {
        throw new IllegalStateException("Not implemented");
    }
}
