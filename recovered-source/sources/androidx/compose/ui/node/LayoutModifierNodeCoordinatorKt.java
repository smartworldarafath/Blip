package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LayoutModifierNodeCoordinatorKt {
    public static final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, AlignmentLine alignmentLine) {
        long M0;
        LookaheadCapablePlaceable E0 = lookaheadCapablePlaceable.E0();
        if (E0 == null) {
            InlineClassHelperKt.b("Child of " + lookaheadCapablePlaceable + " cannot be null when calculating alignment line");
        }
        if (lookaheadCapablePlaceable.K0().c().containsKey(alignmentLine)) {
            Integer num = (Integer) lookaheadCapablePlaceable.K0().c().get(alignmentLine);
            if (num != null) {
                return num.intValue();
            }
        } else {
            int K = E0.K(alignmentLine);
            if (K != Integer.MIN_VALUE) {
                boolean z = lookaheadCapablePlaceable.w;
                boolean z2 = lookaheadCapablePlaceable.x;
                E0.w = true;
                lookaheadCapablePlaceable.x = true;
                lookaheadCapablePlaceable.Q0();
                E0.w = z;
                lookaheadCapablePlaceable.x = z2;
                if (alignmentLine instanceof HorizontalAlignmentLine) {
                    M0 = E0.M0() & 4294967295L;
                } else {
                    M0 = E0.M0() >> 32;
                }
                return K + ((int) M0);
            }
        }
        return Integer.MIN_VALUE;
    }
}
