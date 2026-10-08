package androidx.core.provider;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class RequestExecutor$DefaultThreadFactory implements ThreadFactory {
    public String a;
    public int b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ProcessPriorityThread extends Thread {
        public final int j;

        public ProcessPriorityThread(Runnable runnable, String str, int i) {
            super(runnable, str);
            this.j = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(this.j);
            super.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new ProcessPriorityThread(runnable, this.a, this.b);
    }
}
