package androidx.compose.material;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material.SnackbarKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnackbarKt {
    public static final void a(final Modifier modifier, final Shape shape, final long j, final long j2, final long j3, final float f, Composer composer, final int i) {
        int i2;
        boolean z;
        boolean h;
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(258660814);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h = gapComposer.f(null);
            } else {
                h = gapComposer.h(null);
            }
            if (h) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i2 = i3 | i;
        } else {
            i2 = i;
        }
        int i4 = i2 | 432;
        if ((i & 3072) == 0) {
            i4 = i2 | 1456;
        }
        if ((i & 24576) == 0) {
            i4 |= 8192;
        }
        if ((196608 & i) == 0) {
            i4 |= 65536;
        }
        if ((1572864 & i) == 0) {
            i4 |= 524288;
        }
        int i5 = 12582912 | i4;
        if ((4793491 & i5) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                RoundedCornerShape roundedCornerShape = MaterialTheme.b(gapComposer).a;
                ColorKt.d(Color.b(MaterialTheme.a(gapComposer).d(), 0.8f), MaterialTheme.a(gapComposer).f());
                MaterialTheme.a(gapComposer).f();
                Colors a = MaterialTheme.a(gapComposer);
                if (a.g()) {
                    ColorKt.d(Color.b(a.f(), 0.6f), a.e());
                } else {
                    long j4 = ((Color) ((SnapshotMutableStateImpl) a.b).getValue()).a;
                }
            }
            gapComposer.q();
            throw null;
        }
        gapComposer.Q();
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: wf
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SnackbarKt.a(Modifier.this, shape, j, j2, j3, f, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }
}
