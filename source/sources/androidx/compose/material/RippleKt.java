package androidx.compose.material;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import defpackage.vc;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RippleKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new vc(12));
    public static final RippleNodeFactory b;
    public static final RippleNodeFactory c;
    public static final RippleAlpha d;
    public static final RippleAlpha e;
    public static final RippleAlpha f;

    static {
        long j = Color.h;
        b = new RippleNodeFactory(true, Float.NaN, j);
        c = new RippleNodeFactory(false, Float.NaN, j);
        d = new RippleAlpha(0.16f, 0.24f, 0.08f, 0.24f);
        e = new RippleAlpha(0.08f, 0.12f, 0.04f, 0.12f);
        f = new RippleAlpha(0.08f, 0.12f, 0.04f, 0.1f);
    }

    public static IndicationNodeFactory a(int i, long j, boolean z) {
        float f2;
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            f2 = Float.NaN;
        } else {
            f2 = 24.0f;
        }
        if ((i & 4) != 0) {
            j = Color.h;
        }
        if (Dp.b(f2, Float.NaN) && Color.c(j, Color.h)) {
            if (z) {
                return b;
            }
            return c;
        }
        return new RippleNodeFactory(z, f2, j);
    }
}
