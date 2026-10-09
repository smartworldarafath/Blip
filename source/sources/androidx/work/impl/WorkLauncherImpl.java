package androidx.work.impl;

import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkLauncherImpl {
    public final Processor a;
    public final TaskExecutor b;

    public WorkLauncherImpl(Processor processor, TaskExecutor taskExecutor) {
        processor.getClass();
        taskExecutor.getClass();
        this.a = processor;
        this.b = taskExecutor;
    }

    public final void a(StartStopToken startStopToken, int i) {
        startStopToken.getClass();
        StopWorkRunnable stopWorkRunnable = new StopWorkRunnable(this.a, startStopToken, false, i);
        TaskExecutor taskExecutor = this.b;
        taskExecutor.getClass();
        ((WorkManagerTaskExecutor) taskExecutor).a.execute(stopWorkRunnable);
    }
}
