package net.blip.android.ui.transfer;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import defpackage.e6;
import defpackage.i2;
import defpackage.q;
import defpackage.q4;
import defpackage.u7;
import defpackage.x9;
import defpackage.z;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.components.SearchFieldKt;
import net.blip.android.ui.transfer.TransferHeaderKt;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferHeaderKt {
    public static final void a(Modifier modifier, final Transfer transfer, final boolean z, final boolean z2, final String str, final Function1 function1, final Function0 function0, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z3;
        GapComposer gapComposer;
        final Modifier modifier2;
        float f;
        float f2;
        str.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-288643072);
        int i8 = i | 6;
        if (gapComposer2.h(transfer)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i9 = i8 | i2;
        if (gapComposer2.g(z)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i10 = i9 | i3;
        if (gapComposer2.g(z2)) {
            i4 = 2048;
        } else {
            i4 = 1024;
        }
        int i11 = i10 | i4;
        if (gapComposer2.f(str)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i12 = i11 | i5;
        if (gapComposer2.h(function1)) {
            i6 = 131072;
        } else {
            i6 = 65536;
        }
        int i13 = i12 | i6;
        if (gapComposer2.h(function0)) {
            i7 = 1048576;
        } else {
            i7 = 524288;
        }
        int i14 = i13 | i7;
        if ((599187 & i14) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer2.N(i14 & 1, z3)) {
            Object K = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer2.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier b = BackgroundKt.b(SizeKt.d(companion, 1.0f), ((AndroidColors) gapComposer2.j(AndroidColorsKt.a)).j, RectangleShapeKt.a);
            long b2 = Color.b(Color.b, 0.015f);
            b.getClass();
            Modifier b3 = WindowInsetsPadding_androidKt.b(ComposedModifierKt.a(b, new q4(b2)));
            MeasurePolicy d = BoxKt.d(Alignment.Companion.b, false);
            int hashCode = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l = gapComposer2.l();
            Modifier c = ComposedModifierKt.c(gapComposer2, b3);
            ComposeUiNode.b.getClass();
            gapComposer2.Z();
            boolean z4 = gapComposer2.S;
            x9 x9Var = LayoutNode.b0;
            if (z4) {
                gapComposer2.k(x9Var);
            } else {
                gapComposer2.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer2, d, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer2, l, e6Var2);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer2, valueOf, e6Var3);
            Updater.b(gapComposer2);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer2, c, e6Var4);
            ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.n, gapComposer2, 48);
            int hashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l2 = gapComposer2.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer2, companion);
            gapComposer2.Z();
            if (gapComposer2.S) {
                gapComposer2.k(x9Var);
            } else {
                gapComposer2.j0();
            }
            Updater.c(gapComposer2, a, e6Var);
            Updater.c(gapComposer2, l2, e6Var2);
            q.s(hashCode2, gapComposer2, e6Var3, gapComposer2);
            Updater.c(gapComposer2, c2, e6Var4);
            AnimatedVisibilityKt.c(!((Boolean) mutableState.getValue()).booleanValue(), null, EnterExitTransitionKt.c(AnimationSpecKt.c(200, 0, null, 6), 2).a(EnterExitTransitionKt.b(AnimationSpecKt.c(200, 0, null, 6), 14)), EnterExitTransitionKt.d(AnimationSpecKt.c(333, 0, null, 6), 2).a(EnterExitTransitionKt.g(AnimationSpecKt.c(333, 0, null, 6), 14)), null, ComposableLambdaKt.b(1843785900, new z(3, transfer, z), gapComposer2), gapComposer2, 1600518);
            if (z) {
                f = 1.0f;
            } else {
                f = 0.3f;
            }
            State b4 = AnimateAsStateKt.b(f, null, gapComposer2, 3072, 22);
            Modifier d2 = SizeKt.d(companion, 1.0f);
            boolean f3 = gapComposer2.f(b4);
            Object K2 = gapComposer2.K();
            if (f3 || K2 == composer$Companion$Empty$1) {
                K2 = new u7(b4, 2);
                gapComposer2.g0(K2);
            }
            Modifier a2 = GraphicsLayerModifierKt.a(d2, (Function1) K2);
            Object K3 = gapComposer2.K();
            if (K3 == composer$Companion$Empty$1) {
                K3 = new i2(mutableState, 18);
                gapComposer2.g0(K3);
            }
            int i15 = i14 << 3;
            SearchFieldKt.a(a2, str, "Search for someone to send to", z, z2, null, function1, (Function1) K3, gapComposer2, ((i14 >> 9) & 112) | 12583296 | (i15 & 7168) | (57344 & i15) | (i15 & 3670016), 32);
            gapComposer = gapComposer2;
            gapComposer.p(true);
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                f2 = 0.0f;
            } else {
                f2 = 1.0f;
            }
            State b5 = AnimateAsStateKt.b(f2, null, gapComposer, 3072, 22);
            IconButtonKt.a(function0, AlphaKt.a(OffsetKt.b(BoxScopeInstance.a.d(companion, Alignment.Companion.a), 12.0f, 6.0f - ((1.0f - ((Number) b5.getValue()).floatValue()) * 60.0f)), ((Number) b5.getValue()).floatValue() * 1.0f), false, ComposableSingletons$TransferHeaderKt.b, gapComposer, ((i14 >> 18) & 14) | 24576, 12);
            gapComposer.p(true);
            modifier2 = companion;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(transfer, z, z2, str, function1, function0, i) { // from class: rh
                public final /* synthetic */ Transfer k;
                public final /* synthetic */ boolean l;
                public final /* synthetic */ boolean m;
                public final /* synthetic */ String n;
                public final /* synthetic */ Function1 o;
                public final /* synthetic */ Function0 p;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a3 = RecomposeScopeImplKt.a(1);
                    TransferHeaderKt.a(Modifier.this, this.k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, a3);
                    return Unit.a;
                }
            };
        }
    }
}
