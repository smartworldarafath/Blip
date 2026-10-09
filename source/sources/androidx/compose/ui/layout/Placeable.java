package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.MotionReferencePlacementDelegate;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.wc;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Placeable implements Measured {
    public int j;
    public int k;
    public long l = 0;
    public long m = PlaceableKt.b;
    public long n = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class PlacementScope implements Density {
        public boolean j;

        /* JADX WARN: Multi-variable type inference failed */
        public static final void a(PlacementScope placementScope, Placeable placeable) {
            placementScope.getClass();
            if (placeable instanceof MotionReferencePlacementDelegate) {
                ((MotionReferencePlacementDelegate) placeable).M(placementScope.j);
            }
        }

        public static /* synthetic */ void g(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            placementScope.e(placeable, i, i2, 0.0f);
        }

        public static void h(PlacementScope placementScope, Placeable placeable, long j) {
            placementScope.getClass();
            a(placementScope, placeable);
            placeable.c0(IntOffset.c(j, placeable.n), 0.0f, null);
        }

        public static void j(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            long j = (i << 32) | (i2 & 4294967295L);
            if (placementScope.c() != LayoutDirection.j && placementScope.d() != 0) {
                int d = (placementScope.d() - placeable.j) - ((int) (j >> 32));
                a(placementScope, placeable);
                placeable.c0(IntOffset.c((d << 32) | (((int) (j & 4294967295L)) & 4294967295L), placeable.n), 0.0f, null);
            } else {
                a(placementScope, placeable);
                placeable.c0(IntOffset.c(j, placeable.n), 0.0f, null);
            }
        }

        public static void l(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            wc wcVar = PlaceableKt.a;
            long j = (i << 32) | (i2 & 4294967295L);
            if (placementScope.c() != LayoutDirection.j && placementScope.d() != 0) {
                int d = (placementScope.d() - placeable.j) - ((int) (j >> 32));
                a(placementScope, placeable);
                placeable.c0(IntOffset.c((d << 32) | (((int) (j & 4294967295L)) & 4294967295L), placeable.n), 0.0f, wcVar);
            } else {
                a(placementScope, placeable);
                placeable.c0(IntOffset.c(j, placeable.n), 0.0f, wcVar);
            }
        }

        public static /* synthetic */ void n(PlacementScope placementScope, Placeable placeable, int i, int i2, Function1 function1, int i3) {
            if ((i3 & 8) != 0) {
                function1 = PlaceableKt.a;
            }
            placementScope.m(placeable, i, i2, function1);
        }

        public static void o(PlacementScope placementScope, Placeable placeable, long j) {
            wc wcVar = PlaceableKt.a;
            placementScope.getClass();
            a(placementScope, placeable);
            placeable.c0(IntOffset.c(j, placeable.n), 0.0f, wcVar);
        }

        public float b(Ruler ruler) {
            return Float.NaN;
        }

        public abstract LayoutDirection c();

        public abstract int d();

        public final void e(Placeable placeable, int i, int i2, float f) {
            a(this, placeable);
            placeable.c0(IntOffset.c((i2 & 4294967295L) | (i << 32), placeable.n), f, null);
        }

        public final void m(Placeable placeable, int i, int i2, Function1 function1) {
            a(this, placeable);
            placeable.c0(IntOffset.c((i2 & 4294967295L) | (i << 32), placeable.n), 0.0f, function1);
        }
    }

    public int W() {
        return (int) (this.l & 4294967295L);
    }

    public int Z() {
        return (int) (this.l >> 32);
    }

    public final void a0() {
        this.j = RangesKt.d((int) (this.l >> 32), Constraints.j(this.m), Constraints.h(this.m));
        this.k = RangesKt.d((int) (this.l & 4294967295L), Constraints.i(this.m), Constraints.g(this.m));
        int i = this.j;
        long j = this.l;
        this.n = (((i - ((int) (j >> 32))) / 2) << 32) | (4294967295L & ((r0 - ((int) (j & 4294967295L))) / 2));
    }

    public void b0(long j, float f, GraphicsLayer graphicsLayer) {
        c0(j, f, null);
    }

    public abstract void c0(long j, float f, Function1 function1);

    public final void j0(long j) {
        if (!IntSize.a(this.l, j)) {
            this.l = j;
            a0();
        }
    }

    public final void k0(long j) {
        if (!Constraints.b(this.m, j)) {
            this.m = j;
            a0();
        }
    }
}
