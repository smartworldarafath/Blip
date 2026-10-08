package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.SystemPropsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TasksKt {
    public static final String a;
    public static final long b;
    public static final int c;
    public static final int d;
    public static final long e;
    public static final NanoTimeSource f;

    static {
        String c2 = SystemPropsKt.c("kotlinx.coroutines.scheduler.default.name");
        if (c2 == null) {
            c2 = "DefaultDispatcher";
        }
        a = c2;
        b = SystemPropsKt.b("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        int a2 = SystemPropsKt.a();
        if (a2 < 2) {
            a2 = 2;
        }
        c = SystemPropsKt.d("kotlinx.coroutines.scheduler.core.pool.size", a2, 8);
        d = SystemPropsKt.d("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 4);
        e = TimeUnit.SECONDS.toNanos(SystemPropsKt.b("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f = NanoTimeSource.a;
    }
}
