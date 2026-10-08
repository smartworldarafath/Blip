package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReusableGraphicsLayerScope implements GraphicsLayerScope {
    public long A;
    public LayerOutsets B;
    public Density C;
    public LayoutDirection D;
    public RenderEffect E;
    public ColorFilter F;
    public int G;
    public Outline H;
    public int j;
    public float k = 1.0f;
    public float l = 1.0f;
    public float m = 1.0f;
    public float n;
    public float o;
    public float p;
    public long q;
    public long r;
    public float s;
    public float t;
    public float u;
    public float v;
    public long w;
    public Shape x;
    public boolean y;
    public int z;

    public ReusableGraphicsLayerScope() {
        long j = GraphicsLayerScopeKt.a;
        this.q = j;
        this.r = j;
        this.v = 8.0f;
        this.w = TransformOrigin.b;
        this.x = RectangleShapeKt.a;
        this.z = 0;
        this.A = 9205357640488583168L;
        this.B = LayerOutsets.a;
        this.C = DensityKt.b(1.0f);
        this.D = LayoutDirection.j;
        this.G = 3;
    }

    public final void a() {
        g(1.0f);
        h(1.0f);
        b(1.0f);
        o(0.0f);
        p(0.0f);
        j(0.0f);
        long j = GraphicsLayerScopeKt.a;
        c(j);
        m(j);
        if (this.s != 0.0f) {
            this.j |= 256;
            this.s = 0.0f;
        }
        if (this.t != 0.0f) {
            this.j |= 512;
            this.t = 0.0f;
        }
        if (this.u != 0.0f) {
            this.j |= 1024;
            this.u = 0.0f;
        }
        if (this.v != 8.0f) {
            this.j |= 2048;
            this.v = 8.0f;
        }
        n(TransformOrigin.b);
        l(RectangleShapeKt.a);
        d(false);
        e(null);
        if (!Intrinsics.a(this.F, null)) {
            this.j |= 262144;
            this.F = null;
        }
        if (this.G != 3) {
            this.j |= 524288;
            this.G = 3;
        }
        if (this.z != 0) {
            this.j |= 32768;
            this.z = 0;
        }
        LayerOutsets layerOutsets = LayerOutsets.a;
        if (!Intrinsics.a(this.B, layerOutsets)) {
            this.j |= 1048576;
            this.B = layerOutsets;
        }
        this.A = 9205357640488583168L;
        this.H = null;
        this.j = 0;
    }

    public final void b(float f) {
        if (this.m == f) {
            return;
        }
        this.j |= 4;
        this.m = f;
    }

    public final void c(long j) {
        if (!Color.c(this.q, j)) {
            this.j |= 64;
            this.q = j;
        }
    }

    public final void d(boolean z) {
        if (this.y != z) {
            this.j |= 16384;
            this.y = z;
        }
    }

    public final void e(RenderEffect renderEffect) {
        if (!Intrinsics.a(this.E, renderEffect)) {
            this.j |= 131072;
            this.E = renderEffect;
        }
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.C.e0();
    }

    public final void g(float f) {
        if (this.k == f) {
            return;
        }
        this.j |= 1;
        this.k = f;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.C.getDensity();
    }

    public final void h(float f) {
        if (this.l == f) {
            return;
        }
        this.j |= 2;
        this.l = f;
    }

    public final void j(float f) {
        if (this.p == f) {
            return;
        }
        this.j |= 32;
        this.p = f;
    }

    public final void l(Shape shape) {
        if (!Intrinsics.a(this.x, shape)) {
            this.j |= 8192;
            this.x = shape;
        }
    }

    public final void m(long j) {
        if (!Color.c(this.r, j)) {
            this.j |= 128;
            this.r = j;
        }
    }

    public final void n(long j) {
        if (!TransformOrigin.a(this.w, j)) {
            this.j |= 4096;
            this.w = j;
        }
    }

    public final void o(float f) {
        if (this.n == f) {
            return;
        }
        this.j |= 8;
        this.n = f;
    }

    public final void p(float f) {
        if (this.o == f) {
            return;
        }
        this.j |= 16;
        this.o = f;
    }
}
