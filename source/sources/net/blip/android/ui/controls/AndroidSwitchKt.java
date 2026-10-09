package net.blip.android.ui.controls;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.e2;
import kotlin.jvm.functions.Function1;
import net.blip.shared.LightDarkThemeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidSwitchKt {
    public static final Colors a;
    public static final Colors b;

    static {
        long c = ColorKt.c(4285206271L);
        long b2 = Color.b(ColorKt.c(4285206271L), 0.25f);
        long c2 = ColorKt.c(4294111986L);
        long j = Color.b;
        a = new Colors(c, b2, c2, Color.b(j, 0.25f), ColorKt.c(4292467161L), Color.b(j, 0.07f));
        long c3 = ColorKt.c(4286789119L);
        long b3 = Color.b(ColorKt.c(4286789119L), 0.25f);
        long c4 = ColorKt.c(4283453520L);
        long j2 = Color.d;
        b = new Colors(c3, b3, c4, Color.b(j2, 0.12f), ColorKt.c(4281348144L), Color.b(j2, 0.05f));
    }

    public static final void a(boolean z, Function1 function1, Modifier modifier, boolean z2, MutableInteractionSource mutableInteractionSource, Composer composer, int i) {
        int i2;
        int i3;
        boolean z3;
        Modifier modifier2;
        Function1 function12;
        boolean z4;
        MutableInteractionSource mutableInteractionSource2;
        boolean z5;
        Colors colors;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(151009236);
        if (gapComposer.g(z)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(function1)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3 | 27648;
        if ((i5 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer.N(i5 & 1, z3)) {
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = InteractionSourceKt.a();
                gapComposer.g0(K);
            }
            MutableInteractionSource mutableInteractionSource3 = (MutableInteractionSource) K;
            if (LightDarkThemeKt.a(gapComposer)) {
                colors = a;
            } else {
                colors = b;
            }
            modifier2 = modifier;
            SwitchKt.a(z, function1, modifier2, mutableInteractionSource3, colors, gapComposer, i5 & 65534);
            z4 = z;
            function12 = function1;
            mutableInteractionSource2 = mutableInteractionSource3;
            z5 = true;
        } else {
            modifier2 = modifier;
            function12 = function1;
            z4 = z;
            gapComposer.Q();
            mutableInteractionSource2 = mutableInteractionSource;
            z5 = z2;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new e2(z4, function12, modifier2, z5, mutableInteractionSource2, i);
        }
    }
}
