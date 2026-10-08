package androidx.compose.animation;

import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EnterExitTransitionKt$expandVertically$2 extends Lambda implements Function1<IntSize, IntSize> {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        long j = ((IntSize) obj).a;
        int i = (int) (j >> 32);
        EnterExitTransitionKt$expandVertically$1.k.b(Integer.valueOf((int) (j & 4294967295L)));
        Integer num = 0;
        return new IntSize((num.intValue() & 4294967295L) | (i << 32));
    }
}
