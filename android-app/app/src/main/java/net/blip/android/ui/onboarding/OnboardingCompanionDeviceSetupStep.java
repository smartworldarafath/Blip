package net.blip.android.ui.onboarding;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.a0;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingCompanionDeviceSetupStep {
    public static final OnboardingCompanionDeviceSetupStep a = new Object();

    public final void a(Function0 function0, Composer composer, int i) {
        boolean z;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1754504963);
        int i2 = i & 1;
        if (i2 != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!gapComposer.N(i2, z)) {
            gapComposer.Q();
            RecomposeScopeImpl r = gapComposer.r();
            if (r != null) {
                r.d = new a0(i, 24, this, function0);
                return;
            }
            return;
        }
        throw new Error("An operation is not implemented: Remove this step from core entirely");
    }
}
