package net.blip.shared;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import defpackage.a0;
import defpackage.la;
import defpackage.pc;
import defpackage.s7;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.Core;
import net.blip.libblip.HardwareInfo;
import net.blip.libblip.OnboardingKt;
import net.blip.libblip.frontend.Onboarding;
import net.blip.libblip.frontend.State;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OnboardingStepperKt {
    public static final void a(ContentTransform contentTransform, ContentTransform contentTransform2, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        Onboarding.Step step;
        Onboarding.Step.Kind kind;
        boolean z2;
        boolean z3;
        boolean z4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(344653226);
        if (gapComposer.h(contentTransform)) {
            i2 = 8388608;
        } else {
            i2 = 4194304;
        }
        int i4 = i2 | i;
        if (gapComposer.h(contentTransform2)) {
            i3 = 67108864;
        } else {
            i3 = 33554432;
        }
        int i5 = i4 | i3;
        if ((38347923 & i5) != 38347922) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            }
            gapComposer.q();
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ProvideSharedCompositionLocalsKt.d;
            defpackage.c cVar = ((Core) gapComposer.j(dynamicProvidableCompositionLocal)).b;
            State b = ProvideSharedCompositionLocalsKt.b(dynamicProvidableCompositionLocal, gapComposer);
            HardwareInfo hardwareInfo = (HardwareInfo) gapComposer.j(ProvideSharedCompositionLocalsKt.c);
            Onboarding onboarding = b.s;
            if (onboarding != null && (step = onboarding.m) != null) {
                Object K = gapComposer.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                if (K == composer$Companion$Empty$1) {
                    K = SnapshotStateKt.g(new Pair(null, step));
                    gapComposer.g0(K);
                }
                MutableState mutableState = (MutableState) K;
                Object K2 = gapComposer.K();
                if (K2 == composer$Companion$Empty$1) {
                    K2 = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposer.g0(K2);
                }
                MutableState mutableState2 = (MutableState) K2;
                boolean f = gapComposer.f(step);
                Object K3 = gapComposer.K();
                Unit unit = Unit.a;
                if (f || K3 == composer$Companion$Empty$1) {
                    if (((Boolean) mutableState2.getValue()).booleanValue()) {
                        mutableState2.setValue(Boolean.FALSE);
                    } else {
                        mutableState.setValue(new Pair(((Pair) mutableState.getValue()).k, step));
                    }
                    gapComposer.g0(unit);
                }
                Onboarding.Step step2 = (Onboarding.Step) ((Pair) mutableState.getValue()).j;
                List list = OnboardingKt.a;
                if (step2 != null) {
                    kind = step2.m;
                } else {
                    kind = null;
                }
                list.getClass();
                if (list.indexOf(kind) <= list.indexOf(step.m)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                TransitionInstance e = TransitionKt.e(step, "OnboardingStep", gapComposer, 48);
                boolean g = e.g();
                Modifier modifier = Modifier.Companion.b;
                if (g) {
                    modifier = SuspendingPointerInputFilterKt.a(modifier, unit, Modifier_DisablePointerInputKt$disablePointerInput$1$1.a);
                }
                boolean g2 = gapComposer.g(z2);
                if ((((29360128 & i5) ^ 12582912) > 8388608 && gapComposer.h(contentTransform)) || (i5 & 12582912) == 8388608) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                boolean z5 = z3 | g2;
                if ((((234881024 & i5) ^ 100663296) > 67108864 && gapComposer.h(contentTransform2)) || (i5 & 100663296) == 67108864) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z6 = z4 | z5;
                Object K4 = gapComposer.K();
                if (z6 || K4 == composer$Companion$Empty$1) {
                    K4 = new s7(2, contentTransform, contentTransform2, z2);
                    gapComposer.g0(K4);
                }
                Function1 function1 = (Function1) K4;
                Object K5 = gapComposer.K();
                if (K5 == composer$Companion$Empty$1) {
                    K5 = new la(22);
                    gapComposer.g0(K5);
                }
                AnimatedContentKt.a(e, modifier, function1, null, (Function1) K5, ComposableLambdaKt.b(-1318786095, new pc(cVar, b, hardwareInfo, 0), gapComposer), gapComposer, 221184, 4);
            } else {
                io.sentry.d.d();
                return;
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 29, contentTransform, contentTransform2);
        }
    }
}
