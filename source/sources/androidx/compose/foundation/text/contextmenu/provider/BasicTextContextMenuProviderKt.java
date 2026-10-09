package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.text.contextmenu.internal.ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.b1;
import defpackage.c;
import defpackage.d4;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BasicTextContextMenuProviderKt {
    public static final void a(Modifier modifier, ProvidableCompositionLocal providableCompositionLocal, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-714464401);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i6 = 4;
            } else {
                i6 = 2;
            }
            i2 = i6 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(providableCompositionLocal)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i2 |= i5;
        }
        int i7 = i & 384;
        ComposableLambdaImpl composableLambdaImpl2 = ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.a;
        if (i7 == 0) {
            if (gapComposer.h(composableLambdaImpl2)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i2 |= i4;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 2048;
            } else {
                i3 = 1024;
            }
            i2 |= i3;
        }
        if ((i2 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = SnapshotStateKt.f(null, SnapshotStateKt.h());
                gapComposer.g0(K);
            }
            BasicTextContextMenuProvider b = b(composableLambdaImpl2, gapComposer, (i2 >> 6) & 14);
            CompositionLocalKt.a(providableCompositionLocal.b(b), ComposableLambdaKt.b(274270255, new d4(modifier, (MutableState) K, composableLambdaImpl, b, 0), gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(modifier, providableCompositionLocal, composableLambdaImpl, i, 6);
        }
    }

    public static final BasicTextContextMenuProvider b(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z;
        if ((((i & 14) ^ 6) > 4 && ((GapComposer) composer).f(composableLambdaImpl)) || (i & 6) == 4) {
            z = true;
        } else {
            z = false;
        }
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (z || K == composer$Companion$Empty$1) {
            K = new BasicTextContextMenuProvider(composableLambdaImpl);
            gapComposer.g0(K);
        }
        BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) K;
        boolean f = gapComposer.f(basicTextContextMenuProvider);
        Object K2 = gapComposer.K();
        if (f || K2 == composer$Companion$Empty$1) {
            K2 = new c(9, basicTextContextMenuProvider);
            gapComposer.g0(K2);
        }
        EffectsKt.c(basicTextContextMenuProvider, (Function1) K2, gapComposer);
        return basicTextContextMenuProvider;
    }
}
