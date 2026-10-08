package androidx.work;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConfigurationKt {
    public static final ExecutorService a(final boolean z) {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.ConfigurationKt$createDefaultExecutor$factory$1
            public final AtomicInteger a = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                String str;
                runnable.getClass();
                if (z) {
                    str = "WM.task-";
                } else {
                    str = "androidx.work-";
                }
                return new Thread(runnable, str + this.a.incrementAndGet());
            }
        });
        newFixedThreadPool.getClass();
        return newFixedThreadPool;
    }
}
