package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import net.blip.android.ui.lockups.ScreenLockupKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OnboardingScreenKt {
    public static final void a(int i, Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(552112792);
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            ScreenLockupKt.b(0L, null, ComposableSingletons$OnboardingScreenKt.a, gapComposer, 384, 3);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z6(i, 15);
        }
    }

    public static final ContentTransform b(boolean z) {
        return AnimatedContentKt.d(EnterExitTransitionKt.c(null, 3).a(EnterExitTransitionKt.h(AnimationSpecKt.b(0.75f, 200.0f, null, 4), new mc(0, z))), EnterExitTransitionKt.d(null, 3).a(EnterExitTransitionKt.j(AnimationSpecKt.b(0.75f, 200.0f, null, 4), new mc(1, z))));
    }
}
