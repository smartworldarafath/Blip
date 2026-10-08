package net.blip.android.ui.components;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.TextButtonKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextButtonKt {
    public static final void a(Modifier modifier, final String str, final long j, final Function0 function0, Composer composer, final int i) {
        boolean z;
        final Modifier modifier2;
        int i2;
        int i3;
        int i4;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1495629840);
        int i5 = i | 6;
        if ((i & 48) == 0) {
            if (gapComposer.f(str)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i5 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.e(j)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i5 |= i3;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.h(function0)) {
                i2 = 2048;
            } else {
                i2 = 1024;
            }
            i5 |= i2;
        }
        if ((i5 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            RoundedCornerShape a = RoundedCornerShapeKt.a(33);
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier e = PaddingKt.e(ClickableKt.b(ClipKt.a(companion, a), false, null, new Role(0), function0, 11), 12.0f, 4.0f);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, e);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            PlatformTextKt.c(str, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).b, j, FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, (i5 >> 3) & 14, 506);
            gapComposer.p(true);
            modifier2 = companion;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: sg
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TextButtonKt.a(Modifier.this, str, j, function0, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }
}
