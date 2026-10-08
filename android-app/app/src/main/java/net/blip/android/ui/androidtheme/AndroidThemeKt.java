package net.blip.android.ui.androidtheme;

import androidx.compose.material.RippleConfiguration;
import androidx.compose.material.RippleKt;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.c0;
import defpackage.k2;
import defpackage.l2;
import net.blip.shared.AvatarKt;
import net.blip.shared.LightDarkTheme;
import net.blip.shared.LightDarkThemeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidThemeKt {
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        AndroidColors androidColors;
        RippleAlpha rippleAlpha;
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1693447524);
        if ((i & 6) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i2 = i3 | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            if (LightDarkThemeKt.a(gapComposer)) {
                androidColors = AndroidColorsKt.b;
            } else {
                androidColors = AndroidColorsKt.c;
            }
            long j = androidColors.d;
            FontListFontFamily fontListFontFamily = AndroidTextStylesKt.c;
            long j2 = AndroidTextStylesKt.b;
            AndroidTextStyles androidTextStyles = new AndroidTextStyles(new TextStyle(j, j2, FontWeight.t, fontListFontFamily, 0L, 0, TextUnitKt.b(1.15d), LineBreak.c, 14548952), new TextStyle(j, j2, null, fontListFontFamily, 0L, 0, TextUnitKt.b(1.45d), LineBreak.d, 14548956));
            ProvidedValue b = AndroidColorsKt.a.b(androidColors);
            ProvidedValue b2 = AndroidTextStylesKt.a.b(androidTextStyles);
            ProvidedValue b3 = AvatarKt.a.b(new AndroidAvatarTheme(androidColors.b));
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = RippleKt.a;
            long j3 = androidColors.o;
            ColorKt.e(j3);
            if (ColorKt.e(Color.b) > 0.5d) {
                rippleAlpha = RippleKt.d;
            } else {
                rippleAlpha = RippleKt.e;
            }
            CompositionLocalKt.b(new ProvidedValue[]{b, b2, b3, dynamicProvidableCompositionLocal.b(new RippleConfiguration(j3, rippleAlpha))}, ComposableLambdaKt.b(1330182692, new k2(androidColors, composableLambdaImpl, 0), gapComposer), gapComposer, 48);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new l2(i, 0, composableLambdaImpl);
        }
    }

    public static final void b(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z;
        LightDarkTheme lightDarkTheme = LightDarkTheme.k;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1941020141);
        if ((i & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            CompositionLocalKt.a(LightDarkThemeKt.a.b(lightDarkTheme), ComposableLambdaKt.b(-105691821, new c0(composableLambdaImpl, 1, (byte) 0), gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c0(composableLambdaImpl, i);
        }
    }
}
