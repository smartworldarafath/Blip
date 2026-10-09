package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import defpackage.v0;
import defpackage.w0;
import defpackage.x0;
import defpackage.y0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidCursorHandle_androidKt {
    public static final float a = (25.0f * 2.0f) / 2.4142137f;

    public static final void a(OffsetProvider offsetProvider, Modifier modifier, long j, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1776202187);
        if (gapComposer.f(offsetProvider)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i5 = i2 | i;
        if (gapComposer.f(modifier)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i5 | i3 | 128;
        int i7 = 0;
        boolean z2 = true;
        if ((i6 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i6 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                i4 = i6 & (-897);
            } else {
                i4 = i6 & (-897);
                j = 9205357640488583168L;
            }
            gapComposer.q();
            int i8 = i4 & 14;
            if (i8 != 4) {
                z2 = false;
            }
            Object K = gapComposer.K();
            if (z2 || K == Composer.Companion.a) {
                K = new defpackage.c(6, offsetProvider);
                gapComposer.g0(K);
            }
            AndroidSelectionHandles_androidKt.a(offsetProvider, Alignment.Companion.b, ComposableLambdaKt.b(-1653527038, new v0(i7, j, SemanticsModifierKt.a(modifier, false, (Function1) K)), gapComposer), gapComposer, i8 | 432);
        } else {
            gapComposer.Q();
        }
        long j2 = j;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new w0(offsetProvider, modifier, j2, i);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i, int i2) {
        int i3;
        int i4;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(694251107);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i4 = i | 6;
        } else {
            if (gapComposer.f(modifier)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i4 = i3 | i;
        }
        int i6 = 0;
        if ((i4 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            if (i5 != 0) {
                modifier = Modifier.Companion.b;
            }
            SpacerKt.a(gapComposer, DrawModifierKt.c(SizeKt.l(modifier, a, 25.0f), new y0(i6, ((TextSelectionColors) gapComposer.j(TextSelectionColorsKt.a)).a)));
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new x0(modifier, i, i2, 0);
        }
    }
}
