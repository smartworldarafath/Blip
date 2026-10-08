package net.blip.shared;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.b1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.libblip.User;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AvatarEditorKt {
    public static final void a(User user, final Function1 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(30308941);
        if ((i & 6) == 0) {
            if (gapComposer.h(user)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function1)) {
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
        boolean z2 = false;
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            }
            gapComposer.q();
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = EffectsKt.h(gapComposer);
                gapComposer.g0(K);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) K;
            final Function2 b = ContentPicker_androidKt.b(gapComposer);
            boolean f = gapComposer.f(user.p);
            Object K2 = gapComposer.K();
            if (f || K2 == composer$Companion$Empty$1) {
                K2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K2);
            }
            final MutableState mutableState = (MutableState) K2;
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            boolean f2 = gapComposer.f(mutableState) | gapComposer.h(coroutineScope) | gapComposer.h(b);
            if ((i2 & 112) == 32) {
                z2 = true;
            }
            boolean z3 = f2 | z2;
            Object K3 = gapComposer.K();
            if (z3 || K3 == composer$Companion$Empty$1) {
                K3 = new Function0() { // from class: net.blip.shared.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        MutableState mutableState2 = mutableState;
                        boolean booleanValue2 = ((Boolean) mutableState2.getValue()).booleanValue();
                        Unit unit = Unit.a;
                        if (booleanValue2) {
                            return unit;
                        }
                        BuildersKt.c(CoroutineScope.this, null, null, new AvatarEditorKt$AvatarEditor$scope$1$1$1(b, function1, mutableState2, null), 3);
                        return unit;
                    }
                };
                gapComposer.g0(K3);
            }
            composableLambdaImpl.f(new AvatarEditorScope(booleanValue, (Function0) K3), gapComposer, Integer.valueOf((i2 >> 3) & 112));
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(user, function1, composableLambdaImpl, i, 2);
        }
    }
}
