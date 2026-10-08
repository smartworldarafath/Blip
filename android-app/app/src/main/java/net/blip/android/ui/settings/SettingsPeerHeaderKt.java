package net.blip.android.ui.settings;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.bd;
import defpackage.z3;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.libblip.Peer;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SettingsPeerHeaderKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(Modifier modifier, Peer peer, Function2 function2, Composer composer, int i, int i2) {
        int i3;
        Function2 function22;
        int i4;
        boolean z;
        Modifier modifier2;
        RecomposeScopeImpl r;
        Function2 function23;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-597882976);
        int i5 = i | 6;
        if (gapComposer.h(peer)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i5 | i3;
        int i7 = i2 & 4;
        if (i7 != 0) {
            i6 |= 384;
        } else if ((i & 384) == 0) {
            function22 = function2;
            if (gapComposer.h(function22)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i6 |= i4;
            if ((i6 & 147) == 146) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i6 & 1, z)) {
                if (i7 != 0) {
                    function23 = ComposableLambdaKt.b(1415642823, new bd(peer, 2), gapComposer);
                } else {
                    function23 = function22;
                }
                Modifier.Companion companion = Modifier.Companion.b;
                Modifier h = PaddingKt.h(SizeKt.d(companion, 1.0f), 24.0f, 0.0f, 24.0f, 40.0f, 2);
                ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.n, gapComposer, 48);
                int hashCode = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l = gapComposer.l();
                Modifier c = ComposedModifierKt.c(gapComposer, h);
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
                function23.n(gapComposer, Integer.valueOf((i6 >> 6) & 14));
                SpacerKt.a(gapComposer, SizeKt.e(companion, 20.0f));
                String b = peer.b();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
                Function2 function24 = function23;
                PlatformTextKt.c(b, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).a, 0L, TextUnitKt.d(24), null, 0L, 0L, null, 0, 16744445), 0, false, 0, 0, null, gapComposer, 0, 506);
                SpacerKt.a(gapComposer, SizeKt.e(companion, 1.0f));
                PlatformTextKt.c(peer.a(), null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).e, TextUnitKt.d(18), null, 0L, 0L, null, LineBreak.c, 14647292), 0, false, 0, 0, null, gapComposer, 0, 506);
                gapComposer.p(true);
                modifier2 = companion;
                function22 = function24;
            } else {
                gapComposer.Q();
                modifier2 = modifier;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new z3(modifier2, peer, function22, i, i2, 5);
                return;
            }
            return;
        }
        function22 = function2;
        if ((i6 & 147) == 146) {
        }
        if (!gapComposer.N(i6 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
