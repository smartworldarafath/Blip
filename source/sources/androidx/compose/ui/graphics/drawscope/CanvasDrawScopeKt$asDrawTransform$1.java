package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.InlineClassHelperKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CanvasDrawScopeKt$asDrawTransform$1 {
    public final /* synthetic */ CanvasDrawScope$drawContext$1 a;

    public CanvasDrawScopeKt$asDrawTransform$1(CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1) {
        this.a = canvasDrawScope$drawContext$1;
    }

    public final void a(float f, float f2, float f3, float f4) {
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = this.a;
        Canvas a = canvasDrawScope$drawContext$1.a();
        float intBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope$drawContext$1.d() >> 32)) - (f3 + f);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (canvasDrawScope$drawContext$1.d() & 4294967295L)) - (f4 + f2);
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        if (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) < 0.0f || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) < 0.0f) {
            InlineClassHelperKt.a("Width and height must be greater than or equal to zero");
        }
        canvasDrawScope$drawContext$1.h(floatToRawIntBits);
        a.o(f, f2);
    }

    public final void b(float f, float f2, long j) {
        Canvas a = this.a.a();
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        a.o(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        a.b(f, f2);
        a.o(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
    }

    public final void c(float f, float f2) {
        this.a.a().o(f, f2);
    }
}
