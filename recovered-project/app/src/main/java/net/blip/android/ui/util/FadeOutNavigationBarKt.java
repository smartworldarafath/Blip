package net.blip.android.ui.util;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.util.FadeOutNavigationBarKt;
import net.blip.shared.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FadeOutNavigationBarKt {
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        if ((r21 & 1) != 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(long j, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        long j2;
        int i3;
        boolean z;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(986432319);
        if ((i & 6) == 0) {
            j2 = j;
            if ((i2 & 1) == 0 && gapComposer.e(j2)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i3 = i | i5;
        } else {
            j2 = j;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
        }
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                if ((i2 & 1) != 0) {
                    j2 = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).i;
                    i3 &= -15;
                }
                gapComposer.q();
                Modifier.Companion companion = Modifier.Companion.b;
                Modifier c = SizeKt.c(companion, 1.0f);
                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                int hashCode = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l = gapComposer.l();
                Modifier c2 = ComposedModifierKt.c(gapComposer, c);
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
                Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
                composableLambdaImpl.n(gapComposer, Integer.valueOf((i3 >> 3) & 14));
                Modifier e = SizeKt.e(BoxScopeInstance.a.d(SizeKt.d(companion, 1.0f), Alignment.Companion.h), ((SystemBarsMetrics) gapComposer.j(SystemBarsMetricsKt.a)).b * 1.75f);
                Pair[] pairArr = {new Pair(Float.valueOf(0.0f), new Color(ColorKt.a(j2, 0.0f))), new Pair(Float.valueOf(0.8f), new Color(ColorKt.a(j2, 0.7f)))};
                long floatToRawIntBits = (Float.floatToRawIntBits(0.0f) << 32) | (4294967295L & Float.floatToRawIntBits(Float.POSITIVE_INFINITY));
                ArrayList arrayList = new ArrayList(2);
                for (int i6 = 0; i6 < 2; i6++) {
                    arrayList.add(new Color(((Color) pairArr[i6].k).a));
                }
                ArrayList arrayList2 = new ArrayList(2);
                for (int i7 = 0; i7 < 2; i7++) {
                    arrayList2.add(Float.valueOf(((Number) pairArr[i7].j).floatValue()));
                }
                BoxKt.a(BackgroundKt.a(e, new LinearGradient(floatToRawIntBits, arrayList, arrayList2)), gapComposer, 0);
                gapComposer.p(true);
            }
        } else {
            gapComposer.Q();
        }
        final long j3 = j2;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: g8
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    FadeOutNavigationBarKt.a(j3, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                    return Unit.a;
                }
            };
        }
    }
}
