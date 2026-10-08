package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntSize;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimatedContentKt$SizeTransform$1 extends Lambda implements Function2<IntSize, IntSize, SpringSpec<IntSize>> {
    public static final AnimatedContentKt$SizeTransform$1 k = new Lambda(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        long j = ((IntSize) obj).a;
        long j2 = ((IntSize) obj2).a;
        Map map = VisibilityThresholdsKt.a;
        return AnimationSpecKt.b(0.0f, 400.0f, new IntSize(4294967297L), 1);
    }
}
