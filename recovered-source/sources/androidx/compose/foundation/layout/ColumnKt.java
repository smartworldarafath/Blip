package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ColumnKt {
    public static final ColumnMeasurePolicy a = new ColumnMeasurePolicy(Arrangement.b, Alignment.Companion.m);

    public static final ColumnMeasurePolicy a(Arrangement.Vertical vertical, BiasAlignment.Horizontal horizontal, Composer composer, int i) {
        boolean z;
        if (vertical.equals(Arrangement.b) && horizontal.equals(Alignment.Companion.m)) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.W(-1446604504);
            gapComposer.p(false);
            return a;
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.W(-1446550657);
        boolean z2 = true;
        if ((((i & 14) ^ 6) > 4 && gapComposer2.f(vertical)) || (i & 6) == 4) {
            z = true;
        } else {
            z = false;
        }
        if ((((i & 112) ^ 48) <= 32 || !gapComposer2.f(horizontal)) && (i & 48) != 32) {
            z2 = false;
        }
        boolean z3 = z | z2;
        Object K = gapComposer2.K();
        if (z3 || K == Composer.Companion.a) {
            K = new ColumnMeasurePolicy(vertical, horizontal);
            gapComposer2.g0(K);
        }
        ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) K;
        gapComposer2.p(false);
        return columnMeasurePolicy;
    }
}
