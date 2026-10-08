package net.blip.shared;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.a0;
import defpackage.hc;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OnDisposeKt {
    public static final void a(Object obj, Function0 function0, Composer composer, int i) {
        int i2;
        boolean z;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(680358661);
        int i3 = i | 6;
        if (gapComposer.h(function0)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i4 = i3 | i2;
        boolean z2 = true;
        if ((i4 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            if ((i4 & 112) != 32) {
                z2 = false;
            }
            Object K = gapComposer.K();
            if (z2 || K == Composer.Companion.a) {
                K = new hc(0, function0);
                gapComposer.g0(K);
            }
            Unit unit = Unit.a;
            EffectsKt.c(unit, (Function1) K, gapComposer);
            obj = unit;
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 23, obj, function0);
        }
    }
}
