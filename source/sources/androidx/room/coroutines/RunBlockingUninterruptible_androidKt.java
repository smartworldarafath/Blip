package androidx.room.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RunBlockingUninterruptible_androidKt {
    public static final Object a(Function2 function2) {
        Thread.interrupted();
        return BuildersKt.d(EmptyCoroutineContext.j, new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(function2, null));
    }
}
