package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GraphicsLayerModifierKt {
    public static ReusableGraphicsLayerScope a;

    public static final Modifier a(Modifier modifier, Function1 function1) {
        return modifier.l(new BlockGraphicsLayerElement(function1));
    }

    public static Modifier b(Modifier modifier, float f, float f2, float f3, float f4, long j, Shape shape, boolean z, long j2, long j3, int i, int i2) {
        float f5;
        float f6;
        float f7;
        float f8;
        long j4;
        Shape shape2;
        boolean z2;
        long j5;
        long j6;
        int i3;
        if ((i2 & 1) != 0) {
            f5 = 1.0f;
        } else {
            f5 = f;
        }
        if ((i2 & 2) != 0) {
            f6 = 1.0f;
        } else {
            f6 = f2;
        }
        if ((i2 & 4) != 0) {
            f7 = 1.0f;
        } else {
            f7 = f3;
        }
        if ((i2 & 256) != 0) {
            f8 = 0.0f;
        } else {
            f8 = f4;
        }
        if ((i2 & 1024) != 0) {
            j4 = TransformOrigin.b;
        } else {
            j4 = j;
        }
        if ((i2 & 2048) != 0) {
            shape2 = RectangleShapeKt.a;
        } else {
            shape2 = shape;
        }
        if ((i2 & 4096) != 0) {
            z2 = false;
        } else {
            z2 = z;
        }
        if ((i2 & 16384) != 0) {
            j5 = GraphicsLayerScopeKt.a;
        } else {
            j5 = j2;
        }
        if ((32768 & i2) != 0) {
            j6 = GraphicsLayerScopeKt.a;
        } else {
            j6 = j3;
        }
        if ((i2 & 65536) != 0) {
            i3 = 0;
        } else {
            i3 = i;
        }
        return modifier.l(new GraphicsLayerElement(f5, f6, f7, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f8, 8.0f, j4, shape2, z2, null, j5, j6, i3, 3, null, LayerOutsets.a));
    }
}
