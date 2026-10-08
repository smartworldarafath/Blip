package net.blip.android.ui.onboarding;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.a1;
import defpackage.d4;
import defpackage.kc;
import defpackage.u;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import net.blip.libblip.User;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingProfileStep {
    public static final OnboardingProfileStep a = new Object();

    public final void a(User user, Function1 function1, Function1 function12, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        function1.getClass();
        function12.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1100355960);
        if (gapComposer.h(user)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i5 = i2 | i;
        if (gapComposer.h(function1)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i5 | i3;
        if (gapComposer.h(function12)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i7 = i6 | i4;
        if ((i7 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i7 & 1, z)) {
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = SnapshotStateKt.g(new TextFieldValue(6, 0L, user.o));
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            ComposablesKt.c(ComposableLambdaKt.b(984114070, new u(function1, user, mutableState, 11), gapComposer), ComposableSingletons$OnboardingProfileStepKt.a, null, ComposableLambdaKt.b(-1205049447, new a1(mutableState, 2), gapComposer), ComposableLambdaKt.b(-503114854, new kc(!StringsKt.t(((TextFieldValue) mutableState.getValue()).a.k), function12, mutableState, 1), gapComposer), gapComposer, 27702, 4);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new d4(this, user, function1, function12, i);
        }
    }
}
