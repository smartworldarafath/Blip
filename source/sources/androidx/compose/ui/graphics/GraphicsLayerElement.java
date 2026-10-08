package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeCoordinator;
import defpackage.jb;
import defpackage.q;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class GraphicsLayerElement extends ModifierNodeElement<SimpleGraphicsLayerModifier> {
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final float h;
    public final float i;
    public final float j;
    public final float k;
    public final long l;
    public final Shape m;
    public final boolean n;
    public final RenderEffect o;
    public final long p;
    public final long q;
    public final int r;
    public final int s;
    public final ColorFilter t;
    public final LayerOutsets u;

    public GraphicsLayerElement(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, RenderEffect renderEffect, long j2, long j3, int i, int i2, ColorFilter colorFilter, LayerOutsets layerOutsets) {
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = f5;
        this.g = f6;
        this.h = f7;
        this.i = f8;
        this.j = f9;
        this.k = f10;
        this.l = j;
        this.m = shape;
        this.n = z;
        this.o = renderEffect;
        this.p = j2;
        this.q = j3;
        this.r = i;
        this.s = i2;
        this.t = colorFilter;
        this.u = layerOutsets;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GraphicsLayerElement)) {
            return false;
        }
        GraphicsLayerElement graphicsLayerElement = (GraphicsLayerElement) obj;
        if (Float.compare(this.b, graphicsLayerElement.b) == 0 && Float.compare(this.c, graphicsLayerElement.c) == 0 && Float.compare(this.d, graphicsLayerElement.d) == 0 && Float.compare(this.e, graphicsLayerElement.e) == 0 && Float.compare(this.f, graphicsLayerElement.f) == 0 && Float.compare(this.g, graphicsLayerElement.g) == 0 && Float.compare(this.h, graphicsLayerElement.h) == 0 && Float.compare(this.i, graphicsLayerElement.i) == 0 && Float.compare(this.j, graphicsLayerElement.j) == 0 && Float.compare(this.k, graphicsLayerElement.k) == 0 && TransformOrigin.a(this.l, graphicsLayerElement.l) && Intrinsics.a(this.m, graphicsLayerElement.m) && this.n == graphicsLayerElement.n && Intrinsics.a(this.o, graphicsLayerElement.o) && Color.c(this.p, graphicsLayerElement.p) && Color.c(this.q, graphicsLayerElement.q) && this.r == graphicsLayerElement.r && this.s == graphicsLayerElement.s && Intrinsics.a(this.t, graphicsLayerElement.t) && Intrinsics.a(this.u, graphicsLayerElement.u)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.graphics.SimpleGraphicsLayerModifier, androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.ui.graphics.a] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        final ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = this.d;
        node.A = this.e;
        node.B = this.f;
        node.C = this.g;
        node.D = this.h;
        node.E = this.i;
        node.F = this.j;
        node.G = this.k;
        node.H = this.l;
        node.I = this.m;
        node.J = this.n;
        node.K = this.o;
        node.L = this.p;
        node.M = this.q;
        node.N = this.r;
        node.O = this.s;
        node.P = this.t;
        node.Q = this.u;
        node.R = new Function1() { // from class: androidx.compose.ui.graphics.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = SimpleGraphicsLayerModifier.this;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) ((GraphicsLayerScope) obj);
                reusableGraphicsLayerScope.g(simpleGraphicsLayerModifier.x);
                reusableGraphicsLayerScope.h(simpleGraphicsLayerModifier.y);
                reusableGraphicsLayerScope.b(simpleGraphicsLayerModifier.z);
                reusableGraphicsLayerScope.o(simpleGraphicsLayerModifier.A);
                reusableGraphicsLayerScope.p(simpleGraphicsLayerModifier.B);
                reusableGraphicsLayerScope.j(simpleGraphicsLayerModifier.C);
                float f = simpleGraphicsLayerModifier.D;
                if (reusableGraphicsLayerScope.s != f) {
                    reusableGraphicsLayerScope.j |= 256;
                    reusableGraphicsLayerScope.s = f;
                }
                float f2 = simpleGraphicsLayerModifier.E;
                if (reusableGraphicsLayerScope.t != f2) {
                    reusableGraphicsLayerScope.j |= 512;
                    reusableGraphicsLayerScope.t = f2;
                }
                float f3 = simpleGraphicsLayerModifier.F;
                if (reusableGraphicsLayerScope.u != f3) {
                    reusableGraphicsLayerScope.j |= 1024;
                    reusableGraphicsLayerScope.u = f3;
                }
                float f4 = simpleGraphicsLayerModifier.G;
                if (reusableGraphicsLayerScope.v != f4) {
                    reusableGraphicsLayerScope.j |= 2048;
                    reusableGraphicsLayerScope.v = f4;
                }
                reusableGraphicsLayerScope.n(simpleGraphicsLayerModifier.H);
                reusableGraphicsLayerScope.l(simpleGraphicsLayerModifier.I);
                reusableGraphicsLayerScope.d(simpleGraphicsLayerModifier.J);
                reusableGraphicsLayerScope.e(simpleGraphicsLayerModifier.K);
                reusableGraphicsLayerScope.c(simpleGraphicsLayerModifier.L);
                reusableGraphicsLayerScope.m(simpleGraphicsLayerModifier.M);
                int i = simpleGraphicsLayerModifier.N;
                if (reusableGraphicsLayerScope.z != i) {
                    reusableGraphicsLayerScope.j |= 32768;
                    reusableGraphicsLayerScope.z = i;
                }
                int i2 = simpleGraphicsLayerModifier.O;
                if (reusableGraphicsLayerScope.G != i2) {
                    reusableGraphicsLayerScope.j |= 524288;
                    reusableGraphicsLayerScope.G = i2;
                }
                ColorFilter colorFilter = simpleGraphicsLayerModifier.P;
                if (!Intrinsics.a(reusableGraphicsLayerScope.F, colorFilter)) {
                    reusableGraphicsLayerScope.j |= 262144;
                    reusableGraphicsLayerScope.F = colorFilter;
                }
                LayerOutsets layerOutsets = simpleGraphicsLayerModifier.Q;
                if (!Intrinsics.a(reusableGraphicsLayerScope.B, layerOutsets)) {
                    reusableGraphicsLayerScope.j |= 1048576;
                    reusableGraphicsLayerScope.B = layerOutsets;
                }
                return Unit.a;
            }
        };
        return node;
    }

    public final int hashCode() {
        int hashCode;
        int a = q.a(this.k, q.a(this.j, q.a(this.i, q.a(this.h, q.a(this.g, q.a(this.f, q.a(this.e, q.a(this.d, q.a(this.c, Float.hashCode(this.b) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31);
        int i = TransformOrigin.c;
        int b = jb.b((this.m.hashCode() + jb.a(a, 31, this.l)) * 31, 31, this.n);
        int i2 = 0;
        RenderEffect renderEffect = this.o;
        if (renderEffect == null) {
            hashCode = 0;
        } else {
            hashCode = renderEffect.hashCode();
        }
        int i3 = (b + hashCode) * 31;
        int i4 = Color.i;
        int b2 = q.b(this.s, q.b(this.r, jb.a(jb.a(i3, 31, this.p), 31, this.q), 31), 31);
        ColorFilter colorFilter = this.t;
        if (colorFilter != null) {
            i2 = colorFilter.hashCode();
        }
        return this.u.hashCode() + ((b2 + i2) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = (SimpleGraphicsLayerModifier) node;
        simpleGraphicsLayerModifier.x = this.b;
        simpleGraphicsLayerModifier.y = this.c;
        simpleGraphicsLayerModifier.z = this.d;
        simpleGraphicsLayerModifier.A = this.e;
        simpleGraphicsLayerModifier.B = this.f;
        simpleGraphicsLayerModifier.C = this.g;
        simpleGraphicsLayerModifier.D = this.h;
        simpleGraphicsLayerModifier.E = this.i;
        simpleGraphicsLayerModifier.F = this.j;
        simpleGraphicsLayerModifier.G = this.k;
        simpleGraphicsLayerModifier.H = this.l;
        simpleGraphicsLayerModifier.I = this.m;
        simpleGraphicsLayerModifier.J = this.n;
        simpleGraphicsLayerModifier.K = this.o;
        simpleGraphicsLayerModifier.L = this.p;
        simpleGraphicsLayerModifier.M = this.q;
        simpleGraphicsLayerModifier.N = this.r;
        simpleGraphicsLayerModifier.O = this.s;
        simpleGraphicsLayerModifier.P = this.t;
        simpleGraphicsLayerModifier.Q = this.u;
        a aVar = simpleGraphicsLayerModifier.R;
        if (simpleGraphicsLayerModifier.j.w && (nodeCoordinator = DelegatableNodeKt.e(simpleGraphicsLayerModifier, 2).E) != null) {
            nodeCoordinator.D1(aVar, true);
        }
    }

    public final String toString() {
        String b = TransformOrigin.b(this.l);
        String i = Color.i(this.p);
        String i2 = Color.i(this.q);
        String d = jb.d("CompositingStrategy(value=", this.r, ")");
        String a = BlendMode.a(this.s);
        StringBuilder n = q.n("GraphicsLayerElement(scaleX=", this.b, ", scaleY=", this.c, ", alpha=");
        n.append(this.d);
        n.append(", translationX=");
        n.append(this.e);
        n.append(", translationY=");
        n.append(this.f);
        n.append(", shadowElevation=");
        n.append(this.g);
        n.append(", rotationX=");
        n.append(this.h);
        n.append(", rotationY=");
        n.append(this.i);
        n.append(", rotationZ=");
        n.append(this.j);
        n.append(", cameraDistance=");
        n.append(this.k);
        n.append(", transformOrigin=");
        n.append(b);
        n.append(", shape=");
        n.append(this.m);
        n.append(", clip=");
        n.append(this.n);
        n.append(", renderEffect=");
        n.append(this.o);
        n.append(", ambientShadowColor=");
        q.B(n, i, ", spotShadowColor=", i2, ", compositingStrategy=");
        q.B(n, d, ", blendMode=", a, ", colorFilter=");
        n.append(this.t);
        n.append(", outsets=");
        n.append(this.u);
        n.append(")");
        return n.toString();
    }
}
