package net.blip.shared;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import defpackage.ad;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ParagraphsKt {
    public static final void a(Modifier modifier, Alignment.Horizontal horizontal, String str, TextStyle textStyle, long j, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        Alignment.Horizontal horizontal2;
        Modifier modifier3;
        Modifier modifier4;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2051270002);
        int i7 = i2 & 1;
        if (i7 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i | i4;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i8 = i3 | 48;
        if (gapComposer.f(str)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i9 = i8 | i5;
        TextStyle textStyle2 = textStyle;
        if (gapComposer.f(textStyle2)) {
            i6 = 2048;
        } else {
            i6 = 1024;
        }
        int i10 = i9 | i6;
        if ((i10 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i10 & 1, z)) {
            if (i7 != 0) {
                modifier4 = Modifier.Companion.b;
            } else {
                modifier4 = modifier2;
            }
            Arrangement.SpacedAligned e = Arrangement.e(((Density) gapComposer.j(CompositionLocalsKt.h)).E(j));
            BiasAlignment.Horizontal horizontal3 = Alignment.Companion.m;
            ColumnMeasurePolicy a = ColumnKt.a(e, horizontal3, gapComposer, 48);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier4);
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
            gapComposer.W(-2062318712);
            Iterator it = kotlin.text.StringsKt.x(str).iterator();
            while (it.hasNext()) {
                PlatformTextKt.c((String) it.next(), null, textStyle2, 0, false, 0, 0, null, gapComposer, (i10 >> 3) & 896, 506);
                horizontal3 = horizontal3;
                modifier4 = modifier4;
                textStyle2 = textStyle;
            }
            gapComposer.p(false);
            gapComposer.p(true);
            horizontal2 = horizontal3;
            modifier3 = modifier4;
        } else {
            gapComposer.Q();
            horizontal2 = horizontal;
            modifier3 = modifier2;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new ad(modifier3, horizontal2, str, textStyle, j, i, i2);
        }
    }
}
