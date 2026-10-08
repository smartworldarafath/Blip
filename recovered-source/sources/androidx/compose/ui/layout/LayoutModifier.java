package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.ConstraintsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface LayoutModifier extends Modifier.Element {
    default int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return j(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.j, MeasuringIntrinsics$IntrinsicWidthHeight.j), ConstraintsKt.b(0, 0, 0, i, 7)).b();
    }

    default int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return j(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.j, MeasuringIntrinsics$IntrinsicWidthHeight.k), ConstraintsKt.b(0, i, 0, 0, 13)).a();
    }

    default int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return j(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.k, MeasuringIntrinsics$IntrinsicWidthHeight.j), ConstraintsKt.b(0, 0, 0, i, 7)).b();
    }

    default int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return j(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.k, MeasuringIntrinsics$IntrinsicWidthHeight.k), ConstraintsKt.b(0, i, 0, 0, 13)).a();
    }

    MeasureResult j(MeasureScope measureScope, Measurable measurable, long j);
}
