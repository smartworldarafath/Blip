package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class WorkManagerTaskExecutor implements TaskExecutor {
    public final SerialExecutorImpl a;
    public final CoroutineDispatcher b;
    public final Handler c = new Handler(Looper.getMainLooper());
    public final Executor d = new Executor() { // from class: androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            WorkManagerTaskExecutor.this.c.post(runnable);
        }
    };

    public WorkManagerTaskExecutor(ExecutorService executorService) {
        SerialExecutorImpl serialExecutorImpl = new SerialExecutorImpl(executorService);
        this.a = serialExecutorImpl;
        this.b = ExecutorsKt.a(serialExecutorImpl);
    }
}
