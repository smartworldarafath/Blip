package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntOffset;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutItemAnimationKt {
    public static final SpringSpec a;

    static {
        Map map = VisibilityThresholdsKt.a;
        a = AnimationSpecKt.b(0.0f, 400.0f, new IntOffset(4294967297L), 1);
    }
}
