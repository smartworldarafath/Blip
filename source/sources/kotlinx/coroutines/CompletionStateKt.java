package kotlinx.coroutines;

import kotlin.ResultKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompletionStateKt {
    public static final Object a(Object obj) {
        if (obj instanceof CompletedExceptionally) {
            return ResultKt.a(((CompletedExceptionally) obj).a);
        }
        return obj;
    }
}
