package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import defpackage.z3;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BoxWithConstraintsKt {
    public static final void a(Modifier modifier, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(380139498);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i6 = 4;
            } else {
                i6 = 2;
            }
            i3 = i6 | i;
        } else {
            i3 = i;
        }
        int i7 = i2 & 2;
        if (i7 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            if (gapComposer.f(alignment)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
        }
        int i8 = i3 | 384;
        if ((i & 3072) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i8 |= i5;
        }
        boolean z2 = true;
        if ((i8 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i8 & 1, z)) {
            if (i7 != 0) {
                alignment = Alignment.Companion.a;
            }
            MeasurePolicy d = BoxKt.d(alignment, false);
            if ((i8 & 7168) != 2048) {
                z2 = false;
            }
            boolean f = gapComposer.f(d) | z2;
            Object K = gapComposer.K();
            if (f || K == Composer.Companion.a) {
                K = new c(d, composableLambdaImpl);
                gapComposer.g0(K);
            }
            SubcomposeLayoutKt.a(modifier, (Function2) K, gapComposer, i8 & 14, 0);
        } else {
            gapComposer.Q();
        }
        Alignment alignment2 = alignment;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z3(modifier, alignment2, composableLambdaImpl, i, i2, 1);
        }
    }
}
