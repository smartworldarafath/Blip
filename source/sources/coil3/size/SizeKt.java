package coil3.size;

import coil3.size.Dimension;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SizeKt {
    public static final Size a(int i, int i2) {
        DimensionKt.a(i);
        Dimension.Pixels pixels = new Dimension.Pixels(i);
        DimensionKt.a(i2);
        return new Size(pixels, new Dimension.Pixels(i2));
    }
}
