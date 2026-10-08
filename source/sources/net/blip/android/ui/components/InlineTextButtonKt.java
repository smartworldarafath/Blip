package net.blip.android.ui.components;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import defpackage.r7;
import kotlin.jvm.functions.Function0;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InlineTextButtonKt {
    public static final void a(Modifier modifier, TextStyle textStyle, PaddingValuesImpl paddingValuesImpl, final Color color, Function0 function0, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        Modifier modifier2;
        Function0 function02;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1367102063);
        int i5 = i | 6;
        if (gapComposer.f(textStyle)) {
            i2 = 256;
        } else {
            i2 = 128;
        }
        int i6 = i5 | i2;
        if (gapComposer.f(color)) {
            i3 = 16384;
        } else {
            i3 = 8192;
        }
        int i7 = i6 | i3;
        if (gapComposer.h(function0)) {
            i4 = 131072;
        } else {
            i4 = 65536;
        }
        int i8 = i7 | i4;
        boolean z2 = true;
        if ((74899 & i8) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i8 & 1, z)) {
            RoundedCornerShape a = RoundedCornerShapeKt.a(33);
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = PaddingKt.c(ClickableKt.b(ClipKt.a(companion, a), false, null, new Role(0), function0, 11), paddingValuesImpl);
            TextStyle a2 = TextStyle.a(textStyle, 0L, 0L, null, 0L, 0L, null, 0, 16744447);
            InlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0 inlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0 = null;
            if (color == null) {
                gapComposer.W(-1836797727);
                gapComposer.p(false);
                function02 = null;
            } else {
                gapComposer.W(-1836797726);
                if ((i8 & 57344) != 16384) {
                    z2 = false;
                }
                Object K = gapComposer.K();
                if (z2 || K == Composer.Companion.a) {
                    K = new Function0<Color>() { // from class: net.blip.android.ui.components.InlineTextButtonKt$InlineTextButton$1$1$1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            return new Color(Color.this.a);
                        }
                    };
                    gapComposer.g0(K);
                }
                function02 = (Function0) K;
                gapComposer.p(false);
            }
            if (function02 != null) {
                inlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0 = new InlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0(function02);
            }
            PlatformTextKt.c("Request a new code", c, a2, 0, false, 0, 0, inlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0, gapComposer, 6, 248);
            modifier2 = companion;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r7(modifier2, textStyle, paddingValuesImpl, color, function0, i, 2);
        }
    }
}
