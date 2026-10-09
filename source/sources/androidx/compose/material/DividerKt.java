package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DividerKt {
    /* JADX WARN: Removed duplicated region for block: B:25:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(Modifier modifier, long j, float f, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        final float f2;
        float f3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1249392198);
        int i7 = i2 & 1;
        if (i7 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) == 0 && gapComposer.e(j)) {
            i5 = 32;
        } else {
            i5 = 16;
        }
        int i8 = i3 | i5;
        int i9 = i2 & 4;
        if (i9 != 0) {
            i8 |= 384;
        } else if ((i & 384) == 0) {
            if (gapComposer.c(f)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i8 |= i6;
        }
        int i10 = i8 | 3072;
        if ((i10 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i10 & 1, z)) {
            gapComposer.S();
            int i11 = i & 1;
            Modifier.Companion companion = Modifier.Companion.b;
            if (i11 != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                if (i7 != 0) {
                    modifier = companion;
                }
                if ((i2 & 2) != 0) {
                    j = Color.b(MaterialTheme.a(gapComposer).d(), 0.12f);
                }
                if (i9 != 0) {
                    f2 = 1.0f;
                    gapComposer.q();
                    if (!Dp.b(f2, 0.0f)) {
                        gapComposer.W(-455979798);
                        f3 = 1.0f / ((Density) gapComposer.j(CompositionLocalsKt.h)).getDensity();
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-455913241);
                        gapComposer.p(false);
                        f3 = f2;
                    }
                    BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(modifier.l(companion), 1.0f), f3), j, RectangleShapeKt.a), gapComposer, 0);
                }
            }
            f2 = f;
            gapComposer.q();
            if (!Dp.b(f2, 0.0f)) {
            }
            BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(modifier.l(companion), 1.0f), f3), j, RectangleShapeKt.a), gapComposer, 0);
        } else {
            gapComposer.Q();
            f2 = f;
        }
        final Modifier modifier2 = modifier;
        final long j2 = j;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: y7
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    DividerKt.a(Modifier.this, j2, f2, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                    return Unit.a;
                }
            };
        }
    }
}
