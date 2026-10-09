package net.blip.android.ui.androidtheme;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import defpackage.n;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidColorsKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new n(2));
    public static final AndroidColors b;
    public static final AndroidColors c;

    static {
        long j = Color.b;
        long c2 = ColorKt.c(4285206271L);
        long b2 = Color.b(ColorKt.c(4285206271L), 0.6f);
        long j2 = Color.d;
        long d = ColorKt.d(b2, j2);
        long b3 = Color.b(j, 0.8f);
        Rgb rgb = ColorSpaces.e;
        long a2 = ColorKt.a(0.0f, 0.0f, 0.0f, 0.6f, rgb);
        long a3 = ColorKt.a(0.0f, 0.0f, 0.0f, 0.4f, rgb);
        long c3 = ColorKt.c(4293013552L);
        long c4 = ColorKt.c(4294440951L);
        long j3 = Color.c;
        b = new AndroidColors(j, c2, d, b3, a2, a3, c3, j2, j2, c4, j3, Color.b(j, 0.15f), ColorKt.c(4280427042L), j2, j, j2);
        c = new AndroidColors(j2, ColorKt.c(4286789119L), ColorKt.d(Color.b(ColorKt.c(4288504063L), 0.75f), j), j2, ColorKt.a(1.0f, 1.0f, 1.0f, 0.6f, rgb), ColorKt.a(1.0f, 1.0f, 1.0f, 0.4f, rgb), ColorKt.c(4293479243L), j2, ColorKt.c(4279440147L), j, j3, Color.b(j2, 0.15f), ColorKt.c(4279440147L), ColorKt.c(4280821800L), j2, j);
    }
}
