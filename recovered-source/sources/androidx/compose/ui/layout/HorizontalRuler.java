package androidx.compose.ui.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HorizontalRuler extends Ruler {
    @Override // androidx.compose.ui.layout.Ruler
    public final float a(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        return Float.intBitsToFloat((int) (layoutCoordinates2.g(layoutCoordinates, (Float.floatToRawIntBits(((int) (layoutCoordinates.f() >> 32)) / 2.0f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L)) & 4294967295L));
    }
}
