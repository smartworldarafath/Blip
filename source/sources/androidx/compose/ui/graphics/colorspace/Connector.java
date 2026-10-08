package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.ge;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Connector {
    public final ColorSpace a;
    public final ColorSpace b;
    public final ColorSpace c;
    public final float[] d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RgbConnector extends Connector {
        public final Rgb e;
        public final Rgb f;
        public final float[] g;

        public RgbConnector(Rgb rgb, Rgb rgb2) {
            super(rgb2, rgb, rgb2, null);
            float[] f;
            this.e = rgb;
            this.f = rgb2;
            float[] fArr = Adaptation.b.a;
            WhitePoint whitePoint = rgb.d;
            float[] fArr2 = rgb.i;
            WhitePoint whitePoint2 = rgb2.d;
            float[] fArr3 = rgb2.j;
            if (ColorSpaceKt.c(whitePoint, whitePoint2)) {
                f = ColorSpaceKt.f(fArr3, fArr2);
            } else {
                float[] a = whitePoint.a();
                float[] a2 = whitePoint2.a();
                WhitePoint whitePoint3 = Illuminant.b;
                f = ColorSpaceKt.f(ColorSpaceKt.c(whitePoint2, whitePoint3) ? fArr3 : ColorSpaceKt.e(ColorSpaceKt.f(ColorSpaceKt.b(fArr, a2, new float[]{0.964212f, 1.0f, 0.825188f}), rgb2.i)), ColorSpaceKt.c(whitePoint, whitePoint3) ? fArr2 : ColorSpaceKt.f(ColorSpaceKt.b(fArr, a, new float[]{0.964212f, 1.0f, 0.825188f}), fArr2));
            }
            this.g = f;
        }

        @Override // androidx.compose.ui.graphics.colorspace.Connector
        public final long a(long j) {
            float h = Color.h(j);
            float g = Color.g(j);
            float e = Color.e(j);
            float d = Color.d(j);
            ge geVar = this.e.p;
            float e2 = (float) geVar.e(h);
            float e3 = (float) geVar.e(g);
            float e4 = (float) geVar.e(e);
            float[] fArr = this.g;
            float f = (fArr[6] * e4) + (fArr[3] * e3) + (fArr[0] * e2);
            float f2 = (fArr[7] * e4) + (fArr[4] * e3) + (fArr[1] * e2);
            float f3 = (fArr[8] * e4) + (fArr[5] * e3) + (fArr[2] * e2);
            Rgb rgb = this.f;
            float e5 = (float) rgb.m.e(f);
            ge geVar2 = rgb.m;
            return ColorKt.a(e5, (float) geVar2.e(f2), (float) geVar2.e(f3), d, rgb);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Connector(ColorSpace colorSpace, ColorSpace colorSpace2, int i) {
        this(colorSpace2, r0, r1, r3);
        ColorSpace colorSpace3;
        ColorSpace colorSpace4;
        float[] fArr;
        float[] fArr2;
        if (ColorModel.a(colorSpace.b, 12884901888L)) {
            colorSpace3 = ColorSpaceKt.a(colorSpace);
        } else {
            colorSpace3 = colorSpace;
        }
        if (ColorModel.a(colorSpace2.b, 12884901888L)) {
            colorSpace4 = ColorSpaceKt.a(colorSpace2);
        } else {
            colorSpace4 = colorSpace2;
        }
        if (i == 3) {
            boolean a = ColorModel.a(colorSpace.b, 12884901888L);
            boolean a2 = ColorModel.a(colorSpace2.b, 12884901888L);
            if ((!a || !a2) && (a || a2)) {
                WhitePoint whitePoint = ((Rgb) (a ? colorSpace : colorSpace2)).d;
                float[] fArr3 = Illuminant.e;
                if (a) {
                    fArr2 = whitePoint.a();
                } else {
                    fArr2 = fArr3;
                }
                fArr3 = a2 ? whitePoint.a() : fArr3;
                fArr = new float[]{fArr2[0] / fArr3[0], fArr2[1] / fArr3[1], fArr2[2] / fArr3[2]};
            }
        }
        fArr = null;
    }

    public long a(long j) {
        float h = Color.h(j);
        float g = Color.g(j);
        float e = Color.e(j);
        float d = Color.d(j);
        ColorSpace colorSpace = this.b;
        long d2 = colorSpace.d(h, g, e);
        float intBitsToFloat = Float.intBitsToFloat((int) (d2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (d2 & 4294967295L));
        float e2 = colorSpace.e(h, g, e);
        float[] fArr = this.d;
        if (fArr != null) {
            intBitsToFloat *= fArr[0];
            intBitsToFloat2 *= fArr[1];
            e2 *= fArr[2];
        }
        float f = intBitsToFloat;
        float f2 = intBitsToFloat2;
        return this.c.f(f, f2, e2, d, this.a);
    }

    public Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, float[] fArr) {
        this.a = colorSpace;
        this.b = colorSpace2;
        this.c = colorSpace3;
        this.d = fArr;
    }
}
