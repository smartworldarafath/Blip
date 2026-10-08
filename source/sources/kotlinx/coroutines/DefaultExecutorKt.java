package kotlinx.coroutines;

import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DefaultExecutorKt {
    public static final Delay a;

    static {
        boolean z;
        Delay delay;
        String c = SystemPropsKt.c("kotlinx.coroutines.main.delay");
        if (c != null) {
            z = Boolean.parseBoolean(c);
        } else {
            z = false;
        }
        if (!z) {
            delay = DefaultExecutor.s;
        } else {
            DefaultScheduler defaultScheduler = Dispatchers.a;
            HandlerContext handlerContext = MainDispatcherLoader.a;
            HandlerContext handlerContext2 = handlerContext.o;
            delay = handlerContext;
            if (handlerContext == null) {
                delay = DefaultExecutor.s;
            }
        }
        a = delay;
    }
}
