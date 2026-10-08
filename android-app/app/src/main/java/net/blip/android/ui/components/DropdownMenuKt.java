package net.blip.android.ui.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.ContentAlphaKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.a6;
import defpackage.g6;
import defpackage.p0;
import defpackage.u;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DropdownMenuKt {
    public static final void a(String str, Composer composer, int i) {
        boolean z;
        int i2;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-332717250);
        int i3 = i | 6;
        if ((i & 48) == 0) {
            if (gapComposer.f(str)) {
                i2 = 32;
            } else {
                i2 = 16;
            }
            i3 |= i2;
        }
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
            long b = Color.b(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).e, ((Number) gapComposer.j(ContentAlphaKt.a)).floatValue() * Color.d(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).e));
            RowMeasurePolicy a = RowKt.a(Arrangement.e(12.0f), Alignment.Companion.k, gapComposer, 54);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = ComposedModifierKt.c(gapComposer, companion);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            gapComposer.W(1727161492);
            gapComposer.p(false);
            PlatformTextKt.c(str, PaddingKt.h(companion, 0.0f, 0.0f, 12.0f, 0.0f, 11), TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, b, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer, ((i3 >> 3) & 14) | 48, 504);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new g6(str, i, 1);
        }
    }

    public static final void b(Modifier modifier, Map map, Function1 function1, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        Modifier modifier2;
        Modifier.Companion companion;
        boolean z2;
        map.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1618900957);
        int i4 = i | 6;
        if (gapComposer.f(map)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i5 = i4 | i2;
        if (gapComposer.h(function1)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i6 = i5 | i3;
        int i7 = 1;
        if ((i6 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i6 & 1, z)) {
            Iterator it = map.entrySet().iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                companion = Modifier.Companion.b;
                if (!hasNext) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                String str = (String) entry.getValue();
                if ((i6 & 896) == 256) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean h = z2 | gapComposer.h(key);
                Object K = gapComposer.K();
                if (h || K == Composer.Companion.a) {
                    K = new p0(14, function1, key);
                    gapComposer.g0(K);
                }
                AndroidMenu_androidKt.b((Function0) K, companion, false, null, ComposableLambdaKt.b(-684601733, new a6(str, i7), gapComposer), gapComposer, 196656, 28);
            }
            modifier2 = companion;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u(modifier2, map, function1, i, 8);
        }
    }
}
