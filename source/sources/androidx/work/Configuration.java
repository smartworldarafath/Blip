package androidx.work;

import androidx.work.impl.DefaultRunnableScheduler;
import java.util.concurrent.ExecutorService;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Configuration {
    public final ExecutorService a = ConfigurationKt.a(false);
    public final DefaultScheduler b = Dispatchers.a;
    public final ExecutorService c = ConfigurationKt.a(true);
    public final SystemClock d = new Object();
    public final DefaultWorkerFactory e = DefaultWorkerFactory.a;
    public final NoOpInputMergerFactory f = NoOpInputMergerFactory.a;
    public final DefaultRunnableScheduler g = new DefaultRunnableScheduler();
    public final int h = 4;
    public final int i = Integer.MAX_VALUE;
    public final int k = 20;
    public final int j = 8;
    public final boolean l = true;
    public final ConfigurationKt$createDefaultTracer$tracer$1 m = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.work.SystemClock, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.work.ConfigurationKt$createDefaultTracer$tracer$1, java.lang.Object] */
    public Configuration(Builder builder) {
    }
}
