package androidx.media3.common.util;

import defpackage.l6;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BackgroundExecutor {
    public static ExecutorService a;

    public static synchronized Executor a() {
        ExecutorService executorService;
        synchronized (BackgroundExecutor.class) {
            try {
                if (a == null) {
                    String str = Util.a;
                    a = Executors.newSingleThreadExecutor(new l6("ExoPlayer:BackgroundExecutor", 1));
                }
                executorService = a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return executorService;
    }
}
