package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MonotonicFrameClockKt$withFrameMillis$2 implements Function1<Long, Object> {
    public final /* synthetic */ Function1 j;

    public MonotonicFrameClockKt$withFrameMillis$2(Function1 function1) {
        this.j = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return this.j.b(Long.valueOf(((Number) obj).longValue() / 1000000));
    }
}
