package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScrollExtensionsKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    public static Object a(ScrollableState scrollableState, Continuation continuation) {
        Object c = scrollableState.c(MutatePriority.j, new SuspendLambda(2, null), (ContinuationImpl) continuation);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }
}
