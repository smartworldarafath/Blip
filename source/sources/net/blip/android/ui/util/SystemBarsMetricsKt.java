package net.blip.android.ui.util;

import android.view.View;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.c0;
import defpackage.ec;
import defpackage.vc;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SystemBarsMetricsKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new vc(25));

    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-54709906);
        byte b = 0;
        if ((i & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            WeakHashMap weakHashMap = WindowInsetsHolder.v;
            View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
            WindowInsetsHolder c = WindowInsetsHolder.Companion.c(view);
            boolean h = gapComposer.h(c) | gapComposer.h(view);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (h || K == composer$Companion$Empty$1) {
                K = new ec(26, c, view);
                gapComposer.g0(K);
            }
            EffectsKt.c(c, (Function1) K, gapComposer);
            PaddingValues b2 = WindowInsetsKt.b(c.g, gapComposer);
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = SnapshotStateKt.g(new SystemBarsMetrics(0.0f, 0.0f));
                gapComposer.g0(K2);
            }
            MutableState mutableState = (MutableState) K2;
            boolean f = gapComposer.f(b2);
            Object K3 = gapComposer.K();
            if (f || K3 == composer$Companion$Empty$1) {
                K3 = new SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1(b2, mutableState, null);
                gapComposer.g0(K3);
            }
            EffectsKt.e(gapComposer, b2, (Function2) K3);
            CompositionLocalKt.a(a.b((SystemBarsMetrics) mutableState.getValue()), ComposableLambdaKt.b(401937966, new c0(composableLambdaImpl, 10, b), gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c0(composableLambdaImpl, i, 11);
        }
    }

    public static final Modifier b(Composer composer, Modifier modifier) {
        modifier.getClass();
        return PaddingKt.h(modifier, 0.0f, 0.0f, 0.0f, ((SystemBarsMetrics) ((GapComposer) composer).j(a)).b, 7);
    }

    public static final Modifier c(Composer composer, Modifier modifier) {
        modifier.getClass();
        return PaddingKt.h(modifier, 0.0f, ((SystemBarsMetrics) ((GapComposer) composer).j(a)).a, 0.0f, 0.0f, 13);
    }
}
