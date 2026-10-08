package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ShadowKt {
    public static Modifier a(Modifier modifier, float f, Shape shape, long j, int i) {
        long j2;
        boolean z = false;
        if ((i & 4) != 0 && Dp.a(f, 0.0f) > 0) {
            z = true;
        }
        long j3 = GraphicsLayerScopeKt.a;
        if ((i & 16) != 0) {
            j2 = j3;
        } else {
            j2 = j;
        }
        if (Dp.a(f, 0.0f) <= 0 && !z) {
            return modifier;
        }
        return modifier.l(new ShadowGraphicsLayerElement(f, shape, z, j3, j2));
    }
}
