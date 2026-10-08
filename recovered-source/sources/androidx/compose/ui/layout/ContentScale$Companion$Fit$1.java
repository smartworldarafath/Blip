package androidx.compose.ui.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentScale$Companion$Fit$1 implements ContentScale {
    @Override // androidx.compose.ui.layout.ContentScale
    public final long a(long j, long j2) {
        float a = ContentScaleKt.a(j, j2);
        long floatToRawIntBits = (Float.floatToRawIntBits(a) << 32) | (Float.floatToRawIntBits(a) & 4294967295L);
        int i = ScaleFactor.a;
        return floatToRawIntBits;
    }
}
