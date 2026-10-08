package kotlinx.coroutines;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", l = {156}, m = "withTimeoutOrNull", v = 1)
/* loaded from: classes.dex */
public final class TimeoutKt$withTimeoutOrNull$1<T> extends ContinuationImpl {
    public Ref$ObjectRef m;
    public /* synthetic */ Object n;
    public int o;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.o |= Integer.MIN_VALUE;
        return TimeoutKt.c(0L, null, this);
    }
}
