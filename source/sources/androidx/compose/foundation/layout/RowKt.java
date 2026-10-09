package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RowKt {
    public static final RowMeasurePolicy a = new RowMeasurePolicy(Arrangement.a, Alignment.Companion.j);

    public static final RowMeasurePolicy a(Arrangement.Horizontal horizontal, Alignment.Vertical vertical, Composer composer, int i) {
        boolean z;
        if (horizontal.equals(Arrangement.a) && Intrinsics.a(vertical, Alignment.Companion.j)) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.W(-1073830487);
            gapComposer.p(false);
            return a;
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.W(-1073779616);
        boolean z2 = true;
        if ((((i & 14) ^ 6) > 4 && gapComposer2.f(horizontal)) || (i & 6) == 4) {
            z = true;
        } else {
            z = false;
        }
        if ((((i & 112) ^ 48) <= 32 || !gapComposer2.f(vertical)) && (i & 48) != 32) {
            z2 = false;
        }
        boolean z3 = z | z2;
        Object K = gapComposer2.K();
        if (z3 || K == Composer.Companion.a) {
            K = new RowMeasurePolicy(horizontal, vertical);
            gapComposer2.g0(K);
        }
        RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) K;
        gapComposer2.p(false);
        return rowMeasurePolicy;
    }
}
