package androidx.compose.ui.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VerticalRuler extends Ruler {
    @Override // androidx.compose.ui.layout.Ruler
    public final float a(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        float f2 = ((int) (layoutCoordinates.f() & 4294967295L)) / 2.0f;
        return Float.intBitsToFloat((int) (layoutCoordinates2.g(layoutCoordinates, (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32)) >> 32));
    }
}
