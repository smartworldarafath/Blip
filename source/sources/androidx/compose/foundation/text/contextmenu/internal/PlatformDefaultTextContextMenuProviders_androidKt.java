package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.window.PopupProperties;
import defpackage.cd;
import defpackage.h2;
import defpackage.r7;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlatformDefaultTextContextMenuProviders_androidKt {
    public static final void a(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        Modifier modifier2;
        ComposableLambdaImpl composableLambdaImpl2;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(790527681);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.f(null, SnapshotStateKt.h());
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = new cd(mutableState, 8);
                gapComposer.g0(K2);
            }
            Function0 function0 = (Function0) K2;
            PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.a;
            BasicTextContextMenuProvider b = BasicTextContextMenuProviderKt.b(ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.b, gapComposer, 6);
            modifier2 = modifier;
            composableLambdaImpl2 = composableLambdaImpl;
            CompositionLocalKt.b(new ProvidedValue[]{TextContextMenuProviderKt.b.b(AndroidTextContextMenuToolbarProvider_androidKt.c(function0, gapComposer, 2)), TextContextMenuProviderKt.a.b(b)}, ComposableLambdaKt.b(1070596993, new r7(modifier2, mutableState, composableLambdaImpl2, b, function0, 4), gapComposer), gapComposer, 56);
        } else {
            modifier2 = modifier;
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new h2(modifier2, composableLambdaImpl2, i, 4);
        }
    }

    public static final void b(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(155925518);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            if (gapComposer.j(TextContextMenuProviderKt.a) != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposer.j(TextContextMenuProviderKt.b) != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 && z3) {
                gapComposer.W(-1977187922);
                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, true);
                int hashCode = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l = gapComposer.l();
                Modifier c = ComposedModifierKt.c(gapComposer, modifier);
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
                composableLambdaImpl.n(gapComposer, Integer.valueOf((i2 >> 3) & 14));
                gapComposer.p(true);
                gapComposer.p(false);
            } else if (z2) {
                gapComposer.W(-1976997706);
                AndroidTextContextMenuToolbarProvider_androidKt.a(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.p(false);
            } else if (z3) {
                gapComposer.W(-1976846922);
                DefaultTextContextMenuDropdownProvider_androidKt.d(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.p(false);
            } else {
                gapComposer.W(-1976716505);
                a(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.p(false);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new h2(modifier, composableLambdaImpl, i, 3);
        }
    }
}
