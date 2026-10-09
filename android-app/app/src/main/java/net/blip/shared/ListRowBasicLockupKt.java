package net.blip.shared;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import defpackage.e6;
import defpackage.q;
import defpackage.r5;
import defpackage.x9;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListRowBasicLockupKt {
    public static final void a(Modifier modifier, Function2 function2, Function2 function22, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1186832597);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i7 = 4;
            } else {
                i7 = 2;
            }
            i2 = i7 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.c(16.0f)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i2 |= i6;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function2)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i2 |= i5;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.h(function22)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i2 |= i4;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 16384;
            } else {
                i3 = 8192;
            }
            i2 |= i3;
        }
        if ((i2 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            Modifier d = SizeKt.d(modifier, 1.0f);
            RowMeasurePolicy a = RowKt.a(Arrangement.e(16.0f), Alignment.Companion.k, gapComposer, 48);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, d);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            boolean z2 = gapComposer.S;
            x9 x9Var = LayoutNode.b0;
            if (z2) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, a, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer, valueOf, e6Var3);
            Updater.b(gapComposer);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c, e6Var4);
            function2.n(gapComposer, Integer.valueOf((i2 >> 6) & 14));
            Modifier a2 = RowScopeInstance.a.a();
            MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
            int hashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, a2);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d2, e6Var);
            Updater.c(gapComposer, l2, e6Var2);
            q.s(hashCode2, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c2, e6Var4);
            composableLambdaImpl.n(gapComposer, Integer.valueOf((i2 >> 12) & 14));
            gapComposer.p(true);
            function22.n(gapComposer, Integer.valueOf((i2 >> 9) & 14));
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r5(modifier, function2, function22, composableLambdaImpl, i);
        }
    }
}
