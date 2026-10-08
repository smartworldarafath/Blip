package net.blip.android.ui.onboarding;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import defpackage.a0;
import defpackage.k1;
import defpackage.o1;
import defpackage.x9;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import net.blip.android.ui.components.AlertDialogKt;
import net.blip.android.ui.util.NuancedPermissionStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingEnableNotificationsStep {
    public static final OnboardingEnableNotificationsStep a = new Object();

    public final void a(Function0 function0, Composer composer, int i) {
        int i2;
        boolean z;
        boolean z2;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1931815351);
        if (gapComposer.h(function0)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i | i2;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Object[] objArr = new Object[0];
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = new x9(29);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.c(objArr, (Function0) K, gapComposer);
            ComposablesKt.c(ComposableSingletons$OnboardingEnableNotificationsStepKt.a, ComposableSingletons$OnboardingEnableNotificationsStepKt.b, ComposableSingletons$OnboardingEnableNotificationsStepKt.c, ComposableSingletons$OnboardingEnableNotificationsStepKt.d, ComposableLambdaKt.b(2070822263, new a0(25, NuancedPermissionStateKt.b(gapComposer), mutableState), gapComposer), gapComposer, 28086, 0);
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                gapComposer.W(1852474908);
                boolean f = gapComposer.f(mutableState);
                if ((i3 & 14) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z3 = f | z2;
                Object K2 = gapComposer.K();
                if (z3 || K2 == composer$Companion$Empty$1) {
                    K2 = new k1(function0, mutableState, 5);
                    gapComposer.g0(K2);
                }
                Pair pair = new Pair("I understand", (Function0) K2);
                boolean f2 = gapComposer.f(mutableState);
                Object K3 = gapComposer.K();
                if (f2 || K3 == composer$Companion$Empty$1) {
                    K3 = new o1(mutableState, 25);
                    gapComposer.g0(K3);
                }
                Pair pair2 = new Pair("Cancel", (Function0) K3);
                boolean f3 = gapComposer.f(mutableState);
                Object K4 = gapComposer.K();
                if (f3 || K4 == composer$Companion$Empty$1) {
                    K4 = new o1(mutableState, 26);
                    gapComposer.g0(K4);
                }
                AlertDialogKt.a("Continue without notifications?", "You won’t be able to accept incoming content on this device", false, pair, pair2, (Function0) K4, gapComposer, 54, 4);
                gapComposer = gapComposer;
                gapComposer.p(false);
            } else {
                gapComposer.W(1852994809);
                gapComposer.p(false);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 26, this, function0);
        }
    }
}
