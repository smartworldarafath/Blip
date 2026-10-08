package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.logging.Logging;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class SafeLoggingExecutor implements Executor {
    public final Executor j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SafeLoggingRunnable implements Runnable {
        public final Runnable j;

        public SafeLoggingRunnable(Runnable runnable) {
            this.j = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.j.run();
            } catch (Exception e) {
                Logging.b("Executor", "Background execution failure.", e);
            }
        }
    }

    public SafeLoggingExecutor(ExecutorService executorService) {
        this.j = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.j.execute(new SafeLoggingRunnable(runnable));
    }
}
