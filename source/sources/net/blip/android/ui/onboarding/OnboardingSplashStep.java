package net.blip.android.ui.onboarding;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.a0;
import defpackage.nc;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingSplashStep {
    public static final OnboardingSplashStep a = new Object();

    public final void a(Function0 function0, Composer composer, int i) {
        int i2;
        boolean z;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1307209987);
        if (gapComposer.h(function0)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            ComposablesKt.c(ComposableSingletons$OnboardingSplashStepKt.a, ComposableSingletons$OnboardingSplashStepKt.b, ComposableSingletons$OnboardingSplashStepKt.c, ComposableSingletons$OnboardingSplashStepKt.d, ComposableLambdaKt.b(-32730197, new nc(1, function0), gapComposer), gapComposer, 28086, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 28, this, function0);
        }
    }
}
