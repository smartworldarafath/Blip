package androidx.work.impl.utils;

import android.content.Context;
import android.os.Build;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.ExecutorsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WorkForegroundKt {
    public static final String a = Logger.f("WorkForegroundRunnable");

    public static final Object a(Context context, WorkSpec workSpec, ListenableWorker listenableWorker, WorkForegroundUpdater workForegroundUpdater, WorkManagerTaskExecutor workManagerTaskExecutor, Continuation continuation) {
        if (workSpec.q && Build.VERSION.SDK_INT < 31) {
            Executor executor = workManagerTaskExecutor.d;
            executor.getClass();
            Object e = BuildersKt.e(ExecutorsKt.a(executor), new WorkForegroundKt$workForeground$2(listenableWorker, workSpec, workForegroundUpdater, context, null), continuation);
            if (e == CoroutineSingletons.j) {
                return e;
            }
        }
        return Unit.a;
    }
}
