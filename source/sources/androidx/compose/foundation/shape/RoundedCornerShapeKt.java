package androidx.compose.foundation.shape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RoundedCornerShapeKt {
    public static final RoundedCornerShape a = a(50);

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.foundation.shape.RoundedCornerShape, androidx.compose.foundation.shape.CornerBasedShape] */
    public static final RoundedCornerShape a(int i) {
        PercentCornerSize percentCornerSize = new PercentCornerSize(i);
        return new CornerBasedShape(percentCornerSize, percentCornerSize, percentCornerSize, percentCornerSize);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.foundation.shape.RoundedCornerShape, androidx.compose.foundation.shape.CornerBasedShape] */
    public static final RoundedCornerShape b(float f) {
        DpCornerSize dpCornerSize = new DpCornerSize(f);
        return new CornerBasedShape(dpCornerSize, dpCornerSize, dpCornerSize, dpCornerSize);
    }
}
