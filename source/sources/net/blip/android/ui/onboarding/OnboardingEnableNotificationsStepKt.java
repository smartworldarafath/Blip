package net.blip.android.ui.onboarding;

import android.content.Context;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WithAlignmentLineElement;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.c9;
import defpackage.e6;
import defpackage.q;
import defpackage.r4;
import defpackage.x9;
import defpackage.z6;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.libblip.DeviceKind;
import net.blip.shared.AvatarKt;
import net.blip.shared.LightDarkThemeKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OnboardingEnableNotificationsStepKt {
    public static final void a(int i, Composer composer) {
        boolean z;
        int i2;
        GapComposer gapComposer;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1365623199);
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer2.N(i & 1, z)) {
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.b;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.m;
            ColumnMeasurePolicy a = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
            int hashCode = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l = gapComposer2.l();
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = ComposedModifierKt.c(gapComposer2, companion);
            ComposeUiNode.b.getClass();
            gapComposer2.Z();
            boolean z2 = gapComposer2.S;
            Function0 function0 = LayoutNode.b0;
            if (z2) {
                gapComposer2.k(function0);
            } else {
                gapComposer2.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer2, a, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer2, l, e6Var2);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer2, valueOf, e6Var3);
            Updater.b(gapComposer2);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer2, c, e6Var4);
            Modifier g = PaddingKt.g(companion, 16.0f, 16.0f, 20.0f, 16.0f);
            i2 = 14;
            RowMeasurePolicy a2 = RowKt.a(Arrangement.e(10.0f), Alignment.Companion.k, gapComposer2, 54);
            int hashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l2 = gapComposer2.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer2, g);
            gapComposer2.Z();
            if (gapComposer2.S) {
                gapComposer2.k(function0);
            } else {
                gapComposer2.j0();
            }
            Updater.c(gapComposer2, a2, e6Var);
            Updater.c(gapComposer2, l2, e6Var2);
            q.s(hashCode2, gapComposer2, e6Var3, gapComposer2);
            Updater.c(gapComposer2, c2, e6Var4);
            AvatarKt.b(SizeKt.k(companion, 48.0f), null, DeviceKind.p, gapComposer2, 390, 2);
            ColumnMeasurePolicy a3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
            int hashCode3 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l3 = gapComposer2.l();
            Modifier c3 = ComposedModifierKt.c(gapComposer2, companion);
            gapComposer2.Z();
            if (gapComposer2.S) {
                gapComposer2.k(function0);
            } else {
                gapComposer2.j0();
            }
            Updater.c(gapComposer2, a3, e6Var);
            Updater.c(gapComposer2, l3, e6Var2);
            q.s(hashCode3, gapComposer2, e6Var3, gapComposer2);
            Updater.c(gapComposer2, c3, e6Var4);
            Modifier d = SizeKt.d(companion, 1.0f);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.d;
            BiasAlignment.Vertical vertical = Alignment.Companion.j;
            RowMeasurePolicy a4 = RowKt.a(arrangement$SpaceBetween$1, vertical, gapComposer2, 6);
            int hashCode4 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l4 = gapComposer2.l();
            Modifier c4 = ComposedModifierKt.c(gapComposer2, d);
            gapComposer2.Z();
            if (gapComposer2.S) {
                gapComposer2.k(function0);
            } else {
                gapComposer2.j0();
            }
            Updater.c(gapComposer2, a4, e6Var);
            Updater.c(gapComposer2, l4, e6Var2);
            q.s(hashCode4, gapComposer2, e6Var3, gapComposer2);
            Updater.c(gapComposer2, c4, e6Var4);
            HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.a;
            WithAlignmentLineElement withAlignmentLineElement = new WithAlignmentLineElement(horizontalAlignmentLine);
            CompositionLocal compositionLocal = AndroidTextStylesKt.a;
            PlatformTextKt.c("Your laptop", withAlignmentLineElement, TextStyle.a(((AndroidTextStyles) gapComposer2.j(compositionLocal)).b, 0L, TextUnitKt.d(16), FontWeight.s, 0L, 0L, null, 0, 16777209), 0, false, 0, 0, null, gapComposer2, 6, 504);
            WithAlignmentLineElement withAlignmentLineElement2 = new WithAlignmentLineElement(horizontalAlignmentLine);
            TextStyle textStyle = ((AndroidTextStyles) gapComposer2.j(compositionLocal)).b;
            CompositionLocal compositionLocal2 = AndroidColorsKt.a;
            PlatformTextKt.c("9:57 AM", withAlignmentLineElement2, TextStyle.a(textStyle, ((AndroidColors) gapComposer2.j(compositionLocal2)).e, TextUnitKt.d(12), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer2, 6, 504);
            gapComposer2.p(true);
            PlatformTextKt.c("Wants to send 15 photos", null, TextStyle.a(((AndroidTextStyles) gapComposer2.j(compositionLocal)).b, ((AndroidColors) gapComposer2.j(compositionLocal2)).e, TextUnitKt.d(14), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer2, 6, 506);
            GapComposer gapComposer3 = gapComposer2;
            gapComposer3.p(true);
            gapComposer3.p(true);
            DividerKt.a(PaddingKt.h(companion, 76.0f, 0.0f, 16.0f, 0.0f, 10), ((AndroidColors) gapComposer3.j(compositionLocal2)).l, 0.5f, gapComposer3, 390, 8);
            Modifier g2 = PaddingKt.g(SizeKt.d(companion, 1.0f), 76.0f, 0.0f, 8.0f, 4.0f);
            RowMeasurePolicy a5 = RowKt.a(Arrangement.e(16.0f), vertical, gapComposer3, 6);
            int hashCode5 = Long.hashCode(gapComposer3.T);
            PersistentCompositionLocalMap l5 = gapComposer3.l();
            Modifier c5 = ComposedModifierKt.c(gapComposer3, g2);
            gapComposer3.Z();
            if (gapComposer3.S) {
                gapComposer3.k(function0);
            } else {
                gapComposer3.j0();
            }
            Updater.c(gapComposer3, a5, e6Var);
            Updater.c(gapComposer3, l5, e6Var2);
            q.s(hashCode5, gapComposer3, e6Var3, gapComposer3);
            Updater.c(gapComposer3, c5, e6Var4);
            Context context = (Context) gapComposer3.j(AndroidCompositionLocals_androidKt.b);
            boolean h = gapComposer3.h(context);
            Object K = gapComposer3.K();
            Object obj = Composer.Companion.a;
            if (h || K == obj) {
                K = new c9(context, 1);
                gapComposer3.g0(K);
            }
            ButtonKt.b((Function0) K, false, null, ComposableSingletons$OnboardingEnableNotificationsStepKt.f, gapComposer3, 510);
            boolean h2 = gapComposer3.h(context);
            Object K2 = gapComposer3.K();
            if (h2 || K2 == obj) {
                K2 = new c9(context, 2);
                gapComposer3.g0(K2);
            }
            ButtonKt.b((Function0) K2, false, null, ComposableSingletons$OnboardingEnableNotificationsStepKt.g, gapComposer3, 510);
            gapComposer3.p(true);
            gapComposer3.p(true);
            gapComposer = gapComposer3;
        } else {
            i2 = 14;
            gapComposer2.Q();
            gapComposer = gapComposer2;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z6(i, i2);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        long j;
        long j2;
        long j3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-276813085);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i | i2;
        if ((i4 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            boolean a = LightDarkThemeKt.a(gapComposer);
            if (a) {
                j = 4294440951L;
            } else {
                j = 4282861383L;
            }
            long c = ColorKt.c(j);
            if (a) {
                j2 = 4293651435L;
            } else {
                j2 = 4282071867L;
            }
            long c2 = ColorKt.c(j2);
            if (a) {
                j3 = 4292796126L;
            } else {
                j3 = 4281216558L;
            }
            long c3 = ColorKt.c(j3);
            Modifier d = SizeKt.d(modifier, 1.0f);
            BiasAlignment biasAlignment = Alignment.Companion.a;
            MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c4 = ComposedModifierKt.c(gapComposer, d);
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
            Updater.c(gapComposer, d2, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer, valueOf, e6Var3);
            Updater.b(gapComposer);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c4, e6Var4);
            float c5 = c(0, 1, 0L, gapComposer);
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier d3 = SizeKt.d(ScaleKt.a(companion, c5), 0.9f);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.a;
            BiasAlignment biasAlignment2 = Alignment.Companion.h;
            Modifier a2 = ClipKt.a(boxScopeInstance.d(d3, biasAlignment2), RoundedCornerShapeKt.b(16.0f));
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.a;
            Modifier a3 = ZIndexModifierKt.a(BackgroundKt.b(a2, c, rectangleShapeKt$RectangleShape$1), 3.0f);
            MeasurePolicy d4 = BoxKt.d(biasAlignment, false);
            int hashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier c6 = ComposedModifierKt.c(gapComposer, a3);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d4, e6Var);
            Updater.c(gapComposer, l2, e6Var2);
            q.s(hashCode2, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c6, e6Var4);
            a(0, gapComposer);
            gapComposer.p(true);
            BoxKt.a(ZIndexModifierKt.a(SizeKt.e(BackgroundKt.b(ClipKt.a(OffsetKt.c(boxScopeInstance.d(SizeKt.d(ScaleKt.a(companion, c(6, 0, 250L, gapComposer)), (float) Math.pow(0.8999999761581421d, 2.0d)), biasAlignment2), 10.0f, 1), RoundedCornerShapeKt.b(14.4f)), c2, rectangleShapeKt$RectangleShape$1), 96.0f), 2.0f), gapComposer, 0);
            i3 = 1;
            BoxKt.a(ZIndexModifierKt.a(SizeKt.e(BackgroundKt.b(ClipKt.a(OffsetKt.c(boxScopeInstance.d(SizeKt.d(ScaleKt.a(companion, c(6, 0, 500L, gapComposer)), (float) Math.pow(0.8999999761581421d, 3.0d)), biasAlignment2), 17.0f, 1), RoundedCornerShapeKt.b(((float) Math.pow(0.8999999761581421d, 2.0d)) * 16.0f)), c3, rectangleShapeKt$RectangleShape$1), 96.0f), 1.0f), gapComposer, 0);
            gapComposer.p(true);
        } else {
            i3 = 1;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r4(modifier, i, i3);
        }
    }

    public static final float c(int i, int i2, long j, Composer composer) {
        boolean z = true;
        if ((i2 & 1) != 0) {
            j = 0;
        }
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = PrimitiveSnapshotStateKt.a(0.0f);
            gapComposer.g0(K);
        }
        MutableFloatState mutableFloatState = (MutableFloatState) K;
        State b = AnimateAsStateKt.b(((SnapshotMutableFloatStateImpl) mutableFloatState).j(), AnimationSpecKt.b(0.75f, 200.0f, null, 4), gapComposer, 3120, 20);
        Boolean bool = Boolean.TRUE;
        if ((((i & 14) ^ 6) <= 4 || !gapComposer.e(j)) && (i & 6) != 4) {
            z = false;
        }
        Object K2 = gapComposer.K();
        if (z || K2 == composer$Companion$Empty$1) {
            K2 = new OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1(j, mutableFloatState, null);
            gapComposer.g0(K2);
        }
        EffectsKt.e(gapComposer, bool, (Function2) K2);
        return ((Number) b.getValue()).floatValue();
    }
}
