package kotlinx.coroutines;

import coil3.decode.a;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InterruptibleKt {
    public static Object a(a aVar, Continuation continuation) {
        return BuildersKt.e(EmptyCoroutineContext.j, new InterruptibleKt$runInterruptible$2(aVar, null), continuation);
    }
}
