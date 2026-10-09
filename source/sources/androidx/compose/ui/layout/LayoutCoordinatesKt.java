package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.NodeCoordinator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LayoutCoordinatesKt {
    public static final Rect a(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates L = layoutCoordinates.L();
        if (L != null) {
            return L.l(layoutCoordinates, true);
        }
        return new Rect(0.0f, 0.0f, (int) (layoutCoordinates.f() >> 32), (int) (layoutCoordinates.f() & 4294967295L));
    }

    public static final Rect b(LayoutCoordinates layoutCoordinates, boolean z) {
        LayoutCoordinates c = c(layoutCoordinates);
        float f = (int) (c.f() >> 32);
        float f2 = (int) (c.f() & 4294967295L);
        Rect l = c.l(layoutCoordinates, z);
        float f3 = l.a;
        float f4 = 0.0f;
        if (z) {
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            if (f3 > f) {
                f3 = f;
            }
        }
        float f5 = l.b;
        if (z) {
            if (f5 < 0.0f) {
                f5 = 0.0f;
            }
            if (f5 > f2) {
                f5 = f2;
            }
        }
        float f6 = l.c;
        if (z) {
            if (f6 < 0.0f) {
                f6 = 0.0f;
            }
            if (f6 <= f) {
                f = f6;
            }
            f6 = f;
        }
        float f7 = l.d;
        if (z) {
            if (f7 >= 0.0f) {
                f4 = f7;
            }
            if (f4 <= f2) {
                f2 = f4;
            }
            f7 = f2;
        }
        if (f3 == f6 || f5 == f7) {
            return Rect.e;
        }
        long d = c.d((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L));
        long d2 = c.d((Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L));
        long d3 = c.d((Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f7) & 4294967295L));
        long d4 = c.d((Float.floatToRawIntBits(f7) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32));
        float intBitsToFloat = Float.intBitsToFloat((int) (d >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (d2 >> 32));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (d4 >> 32));
        float intBitsToFloat4 = Float.intBitsToFloat((int) (d3 >> 32));
        float min = Math.min(intBitsToFloat, Math.min(intBitsToFloat2, Math.min(intBitsToFloat3, intBitsToFloat4)));
        float max = Math.max(intBitsToFloat, Math.max(intBitsToFloat2, Math.max(intBitsToFloat3, intBitsToFloat4)));
        float intBitsToFloat5 = Float.intBitsToFloat((int) (d & 4294967295L));
        float intBitsToFloat6 = Float.intBitsToFloat((int) (d2 & 4294967295L));
        float intBitsToFloat7 = Float.intBitsToFloat((int) (d4 & 4294967295L));
        float intBitsToFloat8 = Float.intBitsToFloat((int) (d3 & 4294967295L));
        return new Rect(min, Math.min(intBitsToFloat5, Math.min(intBitsToFloat6, Math.min(intBitsToFloat7, intBitsToFloat8))), max, Math.max(intBitsToFloat5, Math.max(intBitsToFloat6, Math.max(intBitsToFloat7, intBitsToFloat8))));
    }

    public static final LayoutCoordinates c(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        NodeCoordinator nodeCoordinator;
        LayoutCoordinates L = layoutCoordinates.L();
        while (true) {
            LayoutCoordinates layoutCoordinates3 = L;
            layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates3;
            if (layoutCoordinates == null) {
                break;
            }
            L = layoutCoordinates.L();
        }
        if (layoutCoordinates2 instanceof NodeCoordinator) {
            nodeCoordinator = (NodeCoordinator) layoutCoordinates2;
        } else {
            nodeCoordinator = null;
        }
        if (nodeCoordinator == null) {
            return layoutCoordinates2;
        }
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.F;
        while (true) {
            NodeCoordinator nodeCoordinator3 = nodeCoordinator2;
            NodeCoordinator nodeCoordinator4 = nodeCoordinator;
            nodeCoordinator = nodeCoordinator3;
            if (nodeCoordinator != null) {
                nodeCoordinator2 = nodeCoordinator.F;
            } else {
                return nodeCoordinator4;
            }
        }
    }
}
