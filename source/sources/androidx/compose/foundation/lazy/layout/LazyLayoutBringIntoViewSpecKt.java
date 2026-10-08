package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutBringIntoViewSpecKt {
    public static final BringIntoViewSpec a(Function0 function0, Composer composer, int i) {
        boolean z;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) gapComposer.j(BringIntoViewSpec_androidKt.a);
        LayoutDirection layoutDirection = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
        boolean z3 = false;
        if ((((i & 896) ^ 384) > 256 && gapComposer.f(function0)) || (i & 384) == 256) {
            z = true;
        } else {
            z = false;
        }
        if ((((i & 14) ^ 6) > 4 && gapComposer.g(false)) || (i & 6) == 4) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean d = z | z2 | gapComposer.d(layoutDirection.ordinal()) | gapComposer.f(bringIntoViewSpec);
        if ((((i & 112) ^ 48) > 32 && gapComposer.g(true)) || (i & 48) == 32) {
            z3 = true;
        }
        boolean z4 = d | z3;
        Object K = gapComposer.K();
        if (z4 || K == Composer.Companion.a) {
            K = new StickyHeaderBringIntoViewSpec(function0, layoutDirection, bringIntoViewSpec);
            gapComposer.g0(K);
        }
        return (StickyHeaderBringIntoViewSpec) K;
    }
}
