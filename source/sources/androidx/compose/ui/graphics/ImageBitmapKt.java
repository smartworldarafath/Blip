package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import java.util.Arrays;
import java.util.function.DoubleUnaryOperator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImageBitmapKt {
    public static AndroidImageBitmap a(int i, int i2, int i3) {
        ColorSpace colorSpace;
        ColorSpace.Rgb rgb;
        ColorSpace colorSpace2;
        ColorSpace colorSpace3;
        ColorSpace.Named named;
        ColorSpace colorSpace4;
        ColorSpace.Named named2;
        ColorSpace.Named named3;
        Rgb rgb2 = ColorSpaces.e;
        AndroidImageBitmap_androidKt.b(i3);
        Bitmap.Config b = AndroidImageBitmap_androidKt.b(i3);
        if (Intrinsics.a(rgb2, rgb2)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        } else if (Intrinsics.a(rgb2, ColorSpaces.q)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.ACES);
        } else if (Intrinsics.a(rgb2, ColorSpaces.r)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.ACESCG);
        } else if (Intrinsics.a(rgb2, ColorSpaces.o)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.ADOBE_RGB);
        } else if (Intrinsics.a(rgb2, ColorSpaces.j)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.BT2020);
        } else if (Intrinsics.a(rgb2, ColorSpaces.i)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.BT709);
        } else if (Intrinsics.a(rgb2, ColorSpaces.t)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.CIE_LAB);
        } else if (Intrinsics.a(rgb2, ColorSpaces.s)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.CIE_XYZ);
        } else if (Intrinsics.a(rgb2, ColorSpaces.k)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.DCI_P3);
        } else if (Intrinsics.a(rgb2, ColorSpaces.l)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.DISPLAY_P3);
        } else if (Intrinsics.a(rgb2, ColorSpaces.g)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB);
        } else if (Intrinsics.a(rgb2, ColorSpaces.h)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
        } else if (Intrinsics.a(rgb2, ColorSpaces.f)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.LINEAR_SRGB);
        } else if (Intrinsics.a(rgb2, ColorSpaces.m)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.NTSC_1953);
        } else if (Intrinsics.a(rgb2, ColorSpaces.p)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.PRO_PHOTO_RGB);
        } else if (Intrinsics.a(rgb2, ColorSpaces.n)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SMPTE_C);
        } else {
            int i4 = Build.VERSION.SDK_INT;
            ColorSpace.Rgb.TransferParameters transferParameters = null;
            if (i4 >= 34) {
                if (Intrinsics.a(rgb2, ColorSpaces.v)) {
                    named3 = ColorSpace.Named.BT2020_HLG;
                    colorSpace4 = ColorSpace.get(named3);
                } else if (Intrinsics.a(rgb2, ColorSpaces.w)) {
                    named2 = ColorSpace.Named.BT2020_PQ;
                    colorSpace4 = ColorSpace.get(named2);
                } else {
                    colorSpace4 = null;
                }
                if (colorSpace4 != null) {
                    colorSpace2 = colorSpace4;
                    return new AndroidImageBitmap(Bitmap.createBitmap((DisplayMetrics) null, i, i2, b, true, colorSpace2));
                }
            }
            if (i4 >= 36) {
                if (Intrinsics.a(rgb2, ColorSpaces.x)) {
                    named = ColorSpace.Named.OK_LAB;
                    colorSpace3 = ColorSpace.get(named);
                } else {
                    colorSpace3 = null;
                }
                if (colorSpace3 != null) {
                    colorSpace2 = colorSpace3;
                    return new AndroidImageBitmap(Bitmap.createBitmap((DisplayMetrics) null, i, i2, b, true, colorSpace2));
                }
            }
            if (rgb2 != null) {
                String str = rgb2.a;
                float[] a = rgb2.d.a();
                TransferParameters transferParameters2 = rgb2.g;
                if (transferParameters2 != null) {
                    transferParameters = new ColorSpace.Rgb.TransferParameters(transferParameters2.b, transferParameters2.c, transferParameters2.d, transferParameters2.e, transferParameters2.f, transferParameters2.g, transferParameters2.a);
                }
                float[] fArr = rgb2.i;
                final int i5 = 0;
                if (transferParameters != null) {
                    rgb = new ColorSpace.Rgb(str, rgb2.h, a, transferParameters);
                    if (!Float.isNaN(fArr[0]) && !Arrays.equals(rgb.getTransform(), fArr)) {
                        colorSpace = new ColorSpace.Rgb(str, fArr, transferParameters);
                    }
                } else {
                    float[] fArr2 = rgb2.h;
                    final Function1 function1 = rgb2.l;
                    DoubleUnaryOperator doubleUnaryOperator = new DoubleUnaryOperator() { // from class: z4
                        @Override // java.util.function.DoubleUnaryOperator
                        public final double applyAsDouble(double d) {
                            int i6 = i5;
                            Function1 function12 = function1;
                            switch (i6) {
                                case 0:
                                    return ((Number) function12.b(Double.valueOf(d))).doubleValue();
                                default:
                                    return ((Number) function12.b(Double.valueOf(d))).doubleValue();
                            }
                        }
                    };
                    final Function1 function12 = rgb2.o;
                    final int i6 = 1;
                    rgb = new ColorSpace.Rgb(str, fArr2, a, doubleUnaryOperator, new DoubleUnaryOperator() { // from class: z4
                        @Override // java.util.function.DoubleUnaryOperator
                        public final double applyAsDouble(double d) {
                            int i62 = i6;
                            Function1 function122 = function12;
                            switch (i62) {
                                case 0:
                                    return ((Number) function122.b(Double.valueOf(d))).doubleValue();
                                default:
                                    return ((Number) function122.b(Double.valueOf(d))).doubleValue();
                            }
                        }
                    }, rgb2.e, rgb2.f);
                }
                colorSpace2 = rgb;
                return new AndroidImageBitmap(Bitmap.createBitmap((DisplayMetrics) null, i, i2, b, true, colorSpace2));
            }
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        colorSpace2 = colorSpace;
        return new AndroidImageBitmap(Bitmap.createBitmap((DisplayMetrics) null, i, i2, b, true, colorSpace2));
    }
}
