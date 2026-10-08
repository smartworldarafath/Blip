package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WrapperVerificationHelperMethods {
    public static final WrapperVerificationHelperMethods a = new Object();

    public final long a(android.graphics.Paint paint) {
        long colorLong;
        int i = Color.i;
        colorLong = paint.getColorLong();
        long j = 63 & colorLong;
        if (j < 16) {
            return colorLong;
        }
        return (colorLong & (-64)) | (j + 1);
    }

    public final void b(android.graphics.Paint paint, int i) {
        paint.setBlendMode(AndroidBlendMode_androidKt.a(i));
    }

    public final void c(android.graphics.Paint paint, long j) {
        paint.setColor(AndroidColor_androidKt.b(j));
    }
}
