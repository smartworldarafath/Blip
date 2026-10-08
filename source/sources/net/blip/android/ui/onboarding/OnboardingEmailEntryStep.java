package net.blip.android.ui.onboarding;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.kc;
import defpackage.o1;
import defpackage.q9;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.ui.components.AlertDialogKt;
import net.blip.libblip.frontend.Err;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingEmailEntryStep {
    public static final OnboardingEmailEntryStep a = new Object();

    public final void a(String str, boolean z, Err err, Function1 function1, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z2;
        boolean z3;
        Function1 function12;
        GapComposer gapComposer;
        boolean z4;
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(1493376530);
        if (gapComposer2.f(str)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i | i2;
        if (gapComposer2.g(z)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i7 = i6 | i3;
        if (gapComposer2.h(err)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i8 = i7 | i4;
        if (gapComposer2.h(function1)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i9 = i8 | i5;
        boolean z5 = true;
        if ((i9 & 1171) != 1170) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer2.N(i9 & 1, z2)) {
            Object K = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(new TextFieldValue(6, 0L, str));
                gapComposer2.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            if ((i9 & 112) == 32) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean f = z4 | gapComposer2.f(err);
            Object K2 = gapComposer2.K();
            if (f || K2 == composer$Companion$Empty$1) {
                if (z || err == null) {
                    z5 = false;
                }
                K2 = SnapshotStateKt.g(Boolean.valueOf(z5));
                gapComposer2.g0(K2);
            }
            MutableState mutableState2 = (MutableState) K2;
            Object K3 = gapComposer2.K();
            if (K3 == composer$Companion$Empty$1) {
                K3 = new FocusRequester();
                gapComposer2.g0(K3);
            }
            q9 q9Var = new q9(z, mutableState2, function1, (FocusRequester) K3, mutableState);
            z3 = z;
            function12 = function1;
            gapComposer = gapComposer2;
            ComposablesKt.c(ComposableSingletons$OnboardingEmailEntryStepKt.a, ComposableSingletons$OnboardingEmailEntryStepKt.b, null, ComposableLambdaKt.b(-1450689053, q9Var, gapComposer2), ComposableLambdaKt.b(1021090980, new kc(z3, function12, mutableState, 0), gapComposer2), gapComposer, 27702, 4);
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                gapComposer.W(1912963238);
                String valueOf = String.valueOf(err);
                boolean f2 = gapComposer.f(mutableState2);
                Object K4 = gapComposer.K();
                if (f2 || K4 == composer$Companion$Empty$1) {
                    K4 = new o1(mutableState2, 23);
                    gapComposer.g0(K4);
                }
                Pair pair = new Pair("OK", (Function0) K4);
                boolean f3 = gapComposer.f(mutableState2);
                Object K5 = gapComposer.K();
                if (f3 || K5 == composer$Companion$Empty$1) {
                    K5 = new o1(mutableState2, 24);
                    gapComposer.g0(K5);
                }
                AlertDialogKt.a("Failed to send sign-in code", valueOf, false, null, pair, (Function0) K5, gapComposer, 6, 12);
                gapComposer = gapComposer;
                gapComposer.p(false);
            } else {
                gapComposer.W(1913218864);
                gapComposer.p(false);
            }
        } else {
            z3 = z;
            function12 = function1;
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new q9(this, str, z3, err, function12, i);
        }
    }
}
