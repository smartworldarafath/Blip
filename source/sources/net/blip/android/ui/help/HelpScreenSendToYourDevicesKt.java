package net.blip.android.ui.help;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.navigation.NavHostController;
import defpackage.d9;
import defpackage.e6;
import defpackage.g3;
import defpackage.q;
import defpackage.u;
import defpackage.x9;
import defpackage.z6;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HelpScreenSendToYourDevicesKt {
    public static final void a(Modifier modifier, String str, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z;
        Function2 function2;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-661289553);
        int i2 = i | 6;
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            RowMeasurePolicy a = RowKt.a(Arrangement.e(20.0f), Alignment.Companion.j, gapComposer, 54);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = ComposedModifierKt.c(gapComposer, companion);
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
            Modifier k = SizeKt.k(ClipKt.a(OffsetKt.c(companion, 2.0f, 1), RoundedCornerShapeKt.a), 40.0f);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
            Modifier b = BackgroundKt.b(k, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b, RectangleShapeKt.a);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
            int hashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, b);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, e6Var);
            Updater.c(gapComposer, l2, e6Var2);
            q.s(hashCode2, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c2, e6Var4);
            PlatformTextKt.c(str, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).h, TextUnitKt.d(18), FontWeight.s, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, 6, 506);
            gapComposer.p(true);
            MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
            int hashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l3 = gapComposer.l();
            Modifier c3 = ComposedModifierKt.c(gapComposer, companion);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d2, e6Var);
            Updater.c(gapComposer, l3, e6Var2);
            q.s(hashCode3, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c3, e6Var4);
            function2 = composableLambdaImpl;
            function2.n(gapComposer, 6);
            gapComposer.p(true);
            gapComposer.p(true);
            modifier2 = companion;
        } else {
            function2 = composableLambdaImpl;
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u(modifier2, str, function2, i, 9);
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public static final void b(int i, Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-922213778);
        int i2 = 1;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
            Clipboard clipboard = (Clipboard) gapComposer.j(CompositionLocalsKt.f);
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            ?? obj = new Object();
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = EffectsKt.h(gapComposer);
                gapComposer.g0(K);
            }
            obj.j = (CoroutineScope) K;
            ScreenLockupKt.b(0L, ComposableLambdaKt.b(756610702, new g3(navHostController, 2), gapComposer), ComposableLambdaKt.b(1878889901, new d9(obj, clipboard, context, i2), gapComposer), gapComposer, 432, 1);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z6(i, 6);
        }
    }
}
