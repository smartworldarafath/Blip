package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FixedSizeIntrinsicsPlaceable extends Placeable {
    public FixedSizeIntrinsicsPlaceable(int i, int i2) {
        j0((i2 & 4294967295L) | (i << 32));
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int K(AlignmentLine alignmentLine) {
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void c0(long j, float f, Function1 function1) {
    }
}
