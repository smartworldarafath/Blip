package androidx.compose.foundation.text.contextmenu.internal;

import android.view.View;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.f2;
import defpackage.h2;
import defpackage.o1;
import defpackage.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidTextContextMenuToolbarProvider_androidKt {
    public static final void a(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(2064964257);
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
            b(modifier, composableLambdaImpl, gapComposer, ((i2 << 3) & 896) | (i2 & 14) | 48);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new h2(modifier, composableLambdaImpl, i, 0);
        }
    }

    public static final void b(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(771959668);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(null)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
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
                K2 = new o1(mutableState, 3);
                gapComposer.g0(K2);
            }
            CompositionLocalKt.a(TextContextMenuProviderKt.b.b(c((Function0) K2, gapComposer, 0)), ComposableLambdaKt.b(-291176396, new u(modifier, mutableState, composableLambdaImpl, 2), gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new h2(modifier, composableLambdaImpl, i, 1);
        }
    }

    public static final AndroidTextContextMenuToolbarProvider c(Function0 function0, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
        boolean f = gapComposer.f(view);
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (f || K == composer$Companion$Empty$1) {
            K = new AndroidTextContextMenuToolbarProvider(view, null, function0);
            gapComposer.g0(K);
        }
        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) K;
        boolean h = gapComposer.h(androidTextContextMenuToolbarProvider);
        Object K2 = gapComposer.K();
        if (h || K2 == composer$Companion$Empty$1) {
            K2 = new f2(androidTextContextMenuToolbarProvider, 3);
            gapComposer.g0(K2);
        }
        EffectsKt.c(androidTextContextMenuToolbarProvider, (Function1) K2, gapComposer);
        return androidTextContextMenuToolbarProvider;
    }
}
