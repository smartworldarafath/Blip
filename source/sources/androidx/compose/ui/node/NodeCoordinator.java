package androidx.compose.ui.node;

import android.os.Build;
import android.view.ViewParent;
import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.platform.ShapeContainingUtilKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a0;
import defpackage.fc;
import defpackage.k8;
import defpackage.la;
import defpackage.n1;
import defpackage.q;
import defpackage.u2;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements Measurable, LayoutCoordinates, OwnerScope {
    public static final la e0 = new la(19);
    public static final la f0 = new la(20);
    public static final ReusableGraphicsLayerScope g0 = new ReusableGraphicsLayerScope();
    public static final LayerPositionalProperties h0 = new LayerPositionalProperties();
    public static final float[] i0 = Matrix.a();
    public static final NodeCoordinator$Companion$PointerInputSource$1 j0 = new Object();
    public static final NodeCoordinator$Companion$SemanticsSource$1 k0 = new Object();
    public final LayoutNode D;
    public NodeCoordinator E;
    public NodeCoordinator F;
    public boolean G;
    public boolean H;
    public Function1 I;
    public Density J;
    public LayoutDirection K;
    public MeasureResult M;
    public MutableObjectIntMap N;
    public float P;
    public MutableRect Q;
    public LayerPositionalProperties R;
    public Rect T;
    public Rect U;
    public boolean V;
    public boolean W;
    public GraphicsLayer X;
    public Canvas Y;
    public a0 Z;
    public final fc a0;
    public boolean b0;
    public OwnedLayer c0;
    public GraphicsLayer d0;
    public float L = 0.8f;
    public long O = 0;
    public Shape S = RectangleShapeKt.a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface HitTestSource {
        boolean a(HitTestResult hitTestResult, LayoutNode layoutNode);

        int b();

        void c(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z);

        boolean d(Modifier.Node node);

        boolean e(LayoutNode layoutNode);

        default boolean f(Modifier.Node node) {
            return true;
        }
    }

    public NodeCoordinator(LayoutNode layoutNode) {
        this.D = layoutNode;
        this.J = layoutNode.H;
        this.K = layoutNode.I;
        Rect rect = Rect.e;
        this.T = rect;
        this.U = rect;
        this.a0 = new fc(this, 1);
    }

    public static NodeCoordinator z1(LayoutCoordinates layoutCoordinates) {
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates;
        NodeCoordinator nodeCoordinator;
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            lookaheadLayoutCoordinates = (LookaheadLayoutCoordinates) layoutCoordinates;
        } else {
            lookaheadLayoutCoordinates = null;
        }
        if (lookaheadLayoutCoordinates != null && (nodeCoordinator = lookaheadLayoutCoordinates.j.D) != null) {
            return nodeCoordinator;
        }
        layoutCoordinates.getClass();
        return (NodeCoordinator) layoutCoordinates;
    }

    public final Rect A1() {
        float f;
        float Z;
        float W;
        if (d1().w) {
            LayoutCoordinates c = LayoutCoordinatesKt.c(this);
            MutableRect mutableRect = this.Q;
            if (mutableRect == null) {
                mutableRect = new MutableRect();
                this.Q = mutableRect;
            }
            long U0 = U0(c1());
            float f2 = 0.0f;
            if (e1()) {
                f = this.T.a;
            } else {
                f = 0.0f;
            }
            if (e1()) {
                f2 = this.T.b;
            }
            if (e1()) {
                Z = this.T.c;
            } else {
                Z = Z();
            }
            if (e1()) {
                W = this.T.d;
            } else {
                W = W();
            }
            int i = (int) (U0 >> 32);
            mutableRect.a = f - Float.intBitsToFloat(i);
            int i2 = (int) (U0 & 4294967295L);
            mutableRect.b = f2 - Float.intBitsToFloat(i2);
            mutableRect.c = Float.intBitsToFloat(i) + Z;
            mutableRect.d = Float.intBitsToFloat(i2) + W;
            while (this != c) {
                this.v1(mutableRect, false, true);
                if (!mutableRect.b()) {
                    this = this.F;
                    this.getClass();
                }
            }
            return new Rect(mutableRect.a, mutableRect.b, mutableRect.c, mutableRect.d);
        }
        return Rect.e;
    }

    public final void B1(NodeCoordinator nodeCoordinator, float[] fArr) {
        float[] a;
        if (!Intrinsics.a(nodeCoordinator, this)) {
            NodeCoordinator nodeCoordinator2 = this.F;
            nodeCoordinator2.getClass();
            nodeCoordinator2.B1(nodeCoordinator, fArr);
            if (!IntOffset.a(this.O, 0L)) {
                float[] fArr2 = i0;
                Matrix.d(fArr2);
                long j = this.O;
                Matrix.f(fArr2, -((int) (j >> 32)), -((int) (j & 4294967295L)));
                Matrix.e(fArr, fArr2);
            }
            OwnedLayer ownedLayer = this.c0;
            if (ownedLayer != null && (a = ((GraphicsLayerOwnerLayer) ownedLayer).a()) != null) {
                Matrix.e(fArr, a);
            }
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long C(long j) {
        if (!d1().w) {
            InlineClassHelperKt.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        LayoutCoordinates c = LayoutCoordinatesKt.c(this);
        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.a(this.D);
        androidComposeView.A();
        return t(c, Offset.e(Matrix.b(j, androidComposeView.i0), c.S(0L)));
    }

    public final void C1(NodeCoordinator nodeCoordinator, float[] fArr) {
        while (!this.equals(nodeCoordinator)) {
            OwnedLayer ownedLayer = this.c0;
            if (ownedLayer != null) {
                Matrix.e(fArr, ((GraphicsLayerOwnerLayer) ownedLayer).b());
            }
            if (!IntOffset.a(this.O, 0L)) {
                float[] fArr2 = i0;
                Matrix.d(fArr2);
                Matrix.f(fArr2, (int) (r0 >> 32), (int) (r0 & 4294967295L));
                Matrix.e(fArr, fArr2);
            }
            this = this.F;
            this.getClass();
        }
    }

    public final void D1(Function1 function1, boolean z) {
        boolean z2;
        Owner owner;
        MutableVector mutableVector;
        Reference poll;
        if (function1 != null && this.d0 != null) {
            InlineClassHelperKt.a("layerBlock can't be provided when explicitLayer is provided");
        }
        int i = 0;
        LayoutNode layoutNode = this.D;
        if (!z && this.I == function1 && Intrinsics.a(this.J, layoutNode.H) && this.K == layoutNode.I) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.J = layoutNode.H;
        this.K = layoutNode.I;
        boolean L = layoutNode.L();
        fc fcVar = this.a0;
        if (L && function1 != null) {
            this.I = function1;
            if (this.c0 == null) {
                Owner a = LayoutNodeKt.a(layoutNode);
                a0 a0Var = this.Z;
                if (a0Var == null) {
                    a0 a0Var2 = new a0(20, this, new fc(this, i));
                    this.Z = a0Var2;
                    a0Var = a0Var2;
                }
                OwnedLayer f = ((AndroidComposeView) a).f(a0Var, fcVar, null);
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) f;
                graphicsLayerOwnerLayer.e(this.l);
                graphicsLayerOwnerLayer.d(this.O);
                this.c0 = f;
                E1(true);
                layoutNode.S = true;
                fcVar.a();
                return;
            }
            if (z2) {
                E1(true);
                return;
            }
            return;
        }
        this.I = null;
        OwnedLayer ownedLayer = this.c0;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer2 = (GraphicsLayerOwnerLayer) ownedLayer;
            if (!MatrixKt.a(graphicsLayerOwnerLayer2.b())) {
                layoutNode.R(this);
            }
            graphicsLayerOwnerLayer2.m = null;
            graphicsLayerOwnerLayer2.n = null;
            graphicsLayerOwnerLayer2.p = true;
            graphicsLayerOwnerLayer2.f(false);
            GraphicsContext graphicsContext = graphicsLayerOwnerLayer2.k;
            if (graphicsContext != null) {
                graphicsContext.a(graphicsLayerOwnerLayer2.j);
                AndroidComposeView androidComposeView = graphicsLayerOwnerLayer2.l;
                WeakCache weakCache = androidComposeView.y0;
                do {
                    ReferenceQueue referenceQueue = weakCache.b;
                    mutableVector = weakCache.a;
                    poll = referenceQueue.poll();
                    if (poll != null) {
                        mutableVector.j(poll);
                    }
                } while (poll != null);
                mutableVector.b(new java.lang.ref.WeakReference(graphicsLayerOwnerLayer2, weakCache.b));
                androidComposeView.J.l(graphicsLayerOwnerLayer2);
            }
            this.c0 = null;
            layoutNode.S = true;
            fcVar.a();
            if (d1().w && layoutNode.M() && (owner = layoutNode.w) != null) {
                ((AndroidComposeView) owner).v(layoutNode);
            }
        }
        this.b0 = false;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable E0() {
        return this.E;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void E1(boolean z) {
        char c;
        long j;
        LayoutNode layoutNode;
        Object obj;
        boolean z2;
        boolean z3;
        LayoutNode layoutNode2;
        Function0 function0;
        int i;
        Function0 function02;
        if (this.d0 == null) {
            OwnedLayer ownedLayer = this.c0;
            Function1 function1 = this.I;
            if (ownedLayer != null) {
                if (function1 != null) {
                    ReusableGraphicsLayerScope reusableGraphicsLayerScope = g0;
                    reusableGraphicsLayerScope.a();
                    LayoutNode layoutNode3 = this.D;
                    reusableGraphicsLayerScope.C = layoutNode3.H;
                    reusableGraphicsLayerScope.D = layoutNode3.I;
                    reusableGraphicsLayerScope.A = IntSizeKt.a(this.l);
                    Object obj2 = new Object();
                    LayoutNodeKt.a(layoutNode3).getSnapshotObserver().a.e(this, e0, new n1(function1, this, obj2, 7));
                    LayerPositionalProperties layerPositionalProperties = this.R;
                    if (layerPositionalProperties == null) {
                        layerPositionalProperties = new LayerPositionalProperties();
                        this.R = layerPositionalProperties;
                    }
                    LayerPositionalProperties layerPositionalProperties2 = h0;
                    layerPositionalProperties2.getClass();
                    layerPositionalProperties2.a = layerPositionalProperties.a;
                    layerPositionalProperties2.b = layerPositionalProperties.b;
                    layerPositionalProperties2.c = layerPositionalProperties.c;
                    layerPositionalProperties2.d = layerPositionalProperties.d;
                    layerPositionalProperties2.e = layerPositionalProperties.e;
                    layerPositionalProperties2.f = layerPositionalProperties.f;
                    layerPositionalProperties2.g = layerPositionalProperties.g;
                    layerPositionalProperties2.h = layerPositionalProperties.h;
                    layerPositionalProperties2.i = layerPositionalProperties.i;
                    layerPositionalProperties.a = reusableGraphicsLayerScope.k;
                    layerPositionalProperties.b = reusableGraphicsLayerScope.l;
                    layerPositionalProperties.c = reusableGraphicsLayerScope.n;
                    layerPositionalProperties.d = reusableGraphicsLayerScope.o;
                    layerPositionalProperties.e = reusableGraphicsLayerScope.s;
                    layerPositionalProperties.f = reusableGraphicsLayerScope.t;
                    layerPositionalProperties.g = reusableGraphicsLayerScope.u;
                    layerPositionalProperties.h = reusableGraphicsLayerScope.v;
                    layerPositionalProperties.i = reusableGraphicsLayerScope.w;
                    GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                    AndroidComposeView androidComposeView = graphicsLayerOwnerLayer.l;
                    int i2 = reusableGraphicsLayerScope.j | graphicsLayerOwnerLayer.w;
                    graphicsLayerOwnerLayer.u = reusableGraphicsLayerScope.D;
                    Density density = reusableGraphicsLayerScope.C;
                    graphicsLayerOwnerLayer.t = density;
                    if ((1048576 & i2) != 0) {
                        GraphicsLayer graphicsLayer = graphicsLayerOwnerLayer.j;
                        reusableGraphicsLayerScope.B.getClass();
                        int y0 = density.y0(0.0f);
                        reusableGraphicsLayerScope.B.getClass();
                        int y02 = density.y0(0.0f);
                        reusableGraphicsLayerScope.B.getClass();
                        int y03 = density.y0(0.0f);
                        reusableGraphicsLayerScope.B.getClass();
                        int y04 = density.y0(0.0f);
                        graphicsLayer.v = y0;
                        graphicsLayer.w = y02;
                        graphicsLayer.x = y03;
                        graphicsLayer.y = y04;
                        graphicsLayer.a.w(y0, y02, y03, y04);
                        graphicsLayerOwnerLayer.c();
                    }
                    int i3 = i2 & 4096;
                    if (i3 != 0) {
                        graphicsLayerOwnerLayer.x = reusableGraphicsLayerScope.w;
                    }
                    if ((i2 & 1) != 0) {
                        GraphicsLayer graphicsLayer2 = graphicsLayerOwnerLayer.j;
                        float f = reusableGraphicsLayerScope.k;
                        GraphicsLayerImpl graphicsLayerImpl = graphicsLayer2.a;
                        if (graphicsLayerImpl.c() != f) {
                            graphicsLayerImpl.A(f);
                        }
                    }
                    if ((i2 & 2) != 0) {
                        GraphicsLayer graphicsLayer3 = graphicsLayerOwnerLayer.j;
                        float f2 = reusableGraphicsLayerScope.l;
                        GraphicsLayerImpl graphicsLayerImpl2 = graphicsLayer3.a;
                        if (graphicsLayerImpl2.M() != f2) {
                            graphicsLayerImpl2.n(f2);
                        }
                    }
                    if ((i2 & 4) != 0) {
                        graphicsLayerOwnerLayer.j.e(reusableGraphicsLayerScope.m);
                    }
                    if ((i2 & 8) != 0) {
                        GraphicsLayer graphicsLayer4 = graphicsLayerOwnerLayer.j;
                        float f3 = reusableGraphicsLayerScope.n;
                        GraphicsLayerImpl graphicsLayerImpl3 = graphicsLayer4.a;
                        if (graphicsLayerImpl3.D() != f3) {
                            graphicsLayerImpl3.H(f3);
                        }
                    }
                    if ((i2 & 16) != 0) {
                        GraphicsLayer graphicsLayer5 = graphicsLayerOwnerLayer.j;
                        float f4 = reusableGraphicsLayerScope.o;
                        GraphicsLayerImpl graphicsLayerImpl4 = graphicsLayer5.a;
                        if (graphicsLayerImpl4.x() != f4) {
                            graphicsLayerImpl4.g(f4);
                        }
                    }
                    if ((i2 & 32) != 0) {
                        GraphicsLayer graphicsLayer6 = graphicsLayerOwnerLayer.j;
                        float f5 = reusableGraphicsLayerScope.p;
                        GraphicsLayerImpl graphicsLayerImpl5 = graphicsLayer6.a;
                        if (graphicsLayerImpl5.L() != f5) {
                            graphicsLayerImpl5.d(f5);
                            graphicsLayer6.g = true;
                            graphicsLayer6.a();
                        }
                        if (reusableGraphicsLayerScope.p > 0.0f && !graphicsLayerOwnerLayer.C && (function02 = graphicsLayerOwnerLayer.n) != null) {
                            function02.a();
                        }
                    }
                    if ((i2 & 64) != 0) {
                        GraphicsLayer graphicsLayer7 = graphicsLayerOwnerLayer.j;
                        long j2 = reusableGraphicsLayerScope.q;
                        GraphicsLayerImpl graphicsLayerImpl6 = graphicsLayer7.a;
                        if (!Color.c(j2, graphicsLayerImpl6.u())) {
                            graphicsLayerImpl6.z(j2);
                        }
                    }
                    if ((i2 & 128) != 0) {
                        GraphicsLayer graphicsLayer8 = graphicsLayerOwnerLayer.j;
                        long j3 = reusableGraphicsLayerScope.r;
                        GraphicsLayerImpl graphicsLayerImpl7 = graphicsLayer8.a;
                        if (!Color.c(j3, graphicsLayerImpl7.y())) {
                            graphicsLayerImpl7.I(j3);
                        }
                    }
                    if ((i2 & 1024) != 0) {
                        GraphicsLayer graphicsLayer9 = graphicsLayerOwnerLayer.j;
                        float f6 = reusableGraphicsLayerScope.u;
                        GraphicsLayerImpl graphicsLayerImpl8 = graphicsLayer9.a;
                        if (graphicsLayerImpl8.s() != f6) {
                            graphicsLayerImpl8.f(f6);
                        }
                    }
                    if ((i2 & 256) != 0) {
                        GraphicsLayer graphicsLayer10 = graphicsLayerOwnerLayer.j;
                        float f7 = reusableGraphicsLayerScope.s;
                        GraphicsLayerImpl graphicsLayerImpl9 = graphicsLayer10.a;
                        if (graphicsLayerImpl9.F() != f7) {
                            graphicsLayerImpl9.N(f7);
                        }
                    }
                    if ((i2 & 512) != 0) {
                        GraphicsLayer graphicsLayer11 = graphicsLayerOwnerLayer.j;
                        float f8 = reusableGraphicsLayerScope.t;
                        GraphicsLayerImpl graphicsLayerImpl10 = graphicsLayer11.a;
                        if (graphicsLayerImpl10.p() != f8) {
                            graphicsLayerImpl10.b(f8);
                        }
                    }
                    if ((i2 & 2048) != 0) {
                        GraphicsLayer graphicsLayer12 = graphicsLayerOwnerLayer.j;
                        float f9 = reusableGraphicsLayerScope.v;
                        GraphicsLayerImpl graphicsLayerImpl11 = graphicsLayer12.a;
                        if (graphicsLayerImpl11.B() != f9) {
                            graphicsLayerImpl11.K(f9);
                        }
                    }
                    if (i3 != 0) {
                        j = 4294967295L;
                        boolean a = TransformOrigin.a(graphicsLayerOwnerLayer.x, TransformOrigin.b);
                        GraphicsLayer graphicsLayer13 = graphicsLayerOwnerLayer.j;
                        if (a) {
                            c = ' ';
                            if (!Offset.c(graphicsLayer13.z, 9205357640488583168L)) {
                                graphicsLayer13.z = 9205357640488583168L;
                                graphicsLayer13.a.t(9205357640488583168L);
                            }
                        } else {
                            c = ' ';
                            float intBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerOwnerLayer.x >> 32)) * ((int) (graphicsLayerOwnerLayer.o >> 32));
                            long floatToRawIntBits = (Float.floatToRawIntBits(Float.intBitsToFloat((int) (graphicsLayerOwnerLayer.x & 4294967295L)) * ((int) (graphicsLayerOwnerLayer.o & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                            if (!Offset.c(graphicsLayer13.z, floatToRawIntBits)) {
                                graphicsLayer13.z = floatToRawIntBits;
                                graphicsLayer13.a.t(floatToRawIntBits);
                            }
                        }
                    } else {
                        c = ' ';
                        j = 4294967295L;
                    }
                    if ((i2 & 16384) != 0) {
                        GraphicsLayer graphicsLayer14 = graphicsLayerOwnerLayer.j;
                        boolean z4 = reusableGraphicsLayerScope.y;
                        if (graphicsLayer14.A != z4) {
                            graphicsLayer14.A = z4;
                            graphicsLayer14.g = true;
                            graphicsLayer14.a();
                        }
                    }
                    if ((131072 & i2) != 0) {
                        GraphicsLayer graphicsLayer15 = graphicsLayerOwnerLayer.j;
                        RenderEffect renderEffect = reusableGraphicsLayerScope.E;
                        GraphicsLayerImpl graphicsLayerImpl12 = graphicsLayer15.a;
                        if (!Intrinsics.a(graphicsLayerImpl12.e(), renderEffect)) {
                            graphicsLayerImpl12.C(renderEffect);
                        }
                    }
                    if ((262144 & i2) != 0) {
                        GraphicsLayer graphicsLayer16 = graphicsLayerOwnerLayer.j;
                        ColorFilter colorFilter = reusableGraphicsLayerScope.F;
                        GraphicsLayerImpl graphicsLayerImpl13 = graphicsLayer16.a;
                        if (!Intrinsics.a(graphicsLayerImpl13.m(), colorFilter)) {
                            graphicsLayerImpl13.q(colorFilter);
                        }
                    }
                    if ((524288 & i2) != 0) {
                        GraphicsLayer graphicsLayer17 = graphicsLayerOwnerLayer.j;
                        int i4 = reusableGraphicsLayerScope.G;
                        GraphicsLayerImpl graphicsLayerImpl14 = graphicsLayer17.a;
                        if (graphicsLayerImpl14.O() != i4) {
                            graphicsLayerImpl14.j(i4);
                        }
                    }
                    if ((32768 & i2) != 0) {
                        GraphicsLayer graphicsLayer18 = graphicsLayerOwnerLayer.j;
                        int i5 = reusableGraphicsLayerScope.z;
                        if (i5 == 0) {
                            i = 0;
                        } else if (i5 == 1) {
                            i = 1;
                        } else {
                            i = 2;
                            if (i5 != 2) {
                                u2.l("Not supported composition strategy");
                                return;
                            }
                        }
                        GraphicsLayerImpl graphicsLayerImpl15 = graphicsLayer18.a;
                        if (graphicsLayerImpl15.l() != i) {
                            graphicsLayerImpl15.G(i);
                        }
                    }
                    if ((i2 & 7963) != 0) {
                        graphicsLayerOwnerLayer.z = true;
                        graphicsLayerOwnerLayer.A = true;
                    }
                    if (!Intrinsics.a(graphicsLayerOwnerLayer.y, reusableGraphicsLayerScope.H)) {
                        Outline outline = reusableGraphicsLayerScope.H;
                        graphicsLayerOwnerLayer.y = outline;
                        if (outline == null) {
                            layoutNode = layoutNode3;
                            obj = obj2;
                        } else {
                            GraphicsLayer graphicsLayer19 = graphicsLayerOwnerLayer.j;
                            if (outline instanceof Outline.Rectangle) {
                                Rect rect = ((Outline.Rectangle) outline).a;
                                char c2 = c;
                                float f10 = rect.a;
                                float f11 = rect.b;
                                graphicsLayer19.f((Float.floatToRawIntBits(f10) << c2) | (Float.floatToRawIntBits(f11) & j), (Float.floatToRawIntBits(rect.c - f10) << c2) | (Float.floatToRawIntBits(rect.d - f11) & j), 0.0f);
                            } else {
                                char c3 = c;
                                if (outline instanceof Outline.Generic) {
                                    Path path = ((Outline.Generic) outline).a;
                                    graphicsLayer19.k = null;
                                    graphicsLayer19.i = 9205357640488583168L;
                                    graphicsLayer19.h = 0L;
                                    graphicsLayer19.j = 0.0f;
                                    graphicsLayer19.g = true;
                                    graphicsLayer19.n = false;
                                    graphicsLayer19.l = path;
                                    graphicsLayer19.a();
                                } else if (outline instanceof Outline.Rounded) {
                                    Outline.Rounded rounded = (Outline.Rounded) outline;
                                    AndroidPath androidPath = rounded.b;
                                    if (androidPath != null) {
                                        graphicsLayer19.k = null;
                                        layoutNode = layoutNode3;
                                        obj = obj2;
                                        graphicsLayer19.i = 9205357640488583168L;
                                        graphicsLayer19.h = 0L;
                                        graphicsLayer19.j = 0.0f;
                                        graphicsLayer19.g = true;
                                        graphicsLayer19.n = false;
                                        graphicsLayer19.l = androidPath;
                                        graphicsLayer19.a();
                                    } else {
                                        layoutNode = layoutNode3;
                                        obj = obj2;
                                        RoundRect roundRect = rounded.a;
                                        float f12 = roundRect.b;
                                        float f13 = roundRect.a;
                                        graphicsLayer19.f((Float.floatToRawIntBits(f12) & j) | (Float.floatToRawIntBits(f13) << c3), (Float.floatToRawIntBits(roundRect.c - f13) << c3) | (Float.floatToRawIntBits(roundRect.d - f12) & j), Float.intBitsToFloat((int) (roundRect.h >> c3)));
                                    }
                                    if (Build.VERSION.SDK_INT < 33 && (((outline instanceof Outline.Generic) || ((outline instanceof Outline.Rounded) && !RoundRectKt.b(((Outline.Rounded) outline).a))) && (function0 = graphicsLayerOwnerLayer.n) != null)) {
                                        function0.a();
                                    }
                                } else {
                                    k8.e();
                                    return;
                                }
                            }
                            layoutNode = layoutNode3;
                            obj = obj2;
                            if (Build.VERSION.SDK_INT < 33) {
                                function0.a();
                            }
                        }
                        z2 = true;
                    } else {
                        layoutNode = layoutNode3;
                        obj = obj2;
                        z2 = false;
                    }
                    graphicsLayerOwnerLayer.w = reusableGraphicsLayerScope.j;
                    if (i2 != 0 || z2) {
                        ViewParent parent = androidComposeView.getParent();
                        if (parent != null) {
                            parent.onDescendantInvalidated(androidComposeView, androidComposeView);
                        }
                        if (AndroidComposeView.l()) {
                            androidComposeView.M(0.0f);
                        }
                    }
                    boolean z5 = this.H;
                    this.H = reusableGraphicsLayerScope.y;
                    this.L = reusableGraphicsLayerScope.m;
                    if (layerPositionalProperties2.a == layerPositionalProperties.a && layerPositionalProperties2.b == layerPositionalProperties.b && layerPositionalProperties2.c == layerPositionalProperties.c && layerPositionalProperties2.d == layerPositionalProperties.d && layerPositionalProperties2.e == layerPositionalProperties.e && layerPositionalProperties2.f == layerPositionalProperties.f && layerPositionalProperties2.g == layerPositionalProperties.g && layerPositionalProperties2.h == layerPositionalProperties.h && TransformOrigin.a(layerPositionalProperties2.i, layerPositionalProperties.i)) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z && (!z3 || z5 != this.H || obj.j)) {
                        layoutNode2 = layoutNode;
                        Owner owner = layoutNode2.w;
                        if (owner != null) {
                            ((AndroidComposeView) owner).v(layoutNode2);
                        }
                    } else {
                        layoutNode2 = layoutNode;
                    }
                    if (!z3) {
                        layoutNode2.R(this);
                        if (layoutNode2.Y > 0) {
                            AndroidComposeView androidComposeView2 = (AndroidComposeView) LayoutNodeKt.a(layoutNode2);
                            OnPositionedDispatcher onPositionedDispatcher = androidComposeView2.c0.e;
                            onPositionedDispatcher.getClass();
                            if (layoutNode2.Y > 0) {
                                onPositionedDispatcher.a.b(layoutNode2);
                                layoutNode2.X = true;
                            }
                            androidComposeView2.F(null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw q.p("updateLayerParameters requires a non-null layerBlock");
            }
            if (function1 == null) {
                return;
            }
            InlineClassHelperKt.b("null layer with a non-null layerBlock");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean F1(long j) {
        boolean z;
        boolean z2;
        boolean z3;
        if ((((9187343241974906880L ^ (j & 9187343241974906880L)) - 4294967297L) & (-9223372034707292160L)) == 0) {
            OwnedLayer ownedLayer = this.c0;
            if (ownedLayer != null && this.H) {
                float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
                float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
                GraphicsLayer graphicsLayer = ((GraphicsLayerOwnerLayer) ownedLayer).j;
                if (graphicsLayer.A) {
                    Outline d = graphicsLayer.d();
                    if (d instanceof Outline.Rectangle) {
                        Rect rect = ((Outline.Rectangle) d).a;
                        if (rect.a > intBitsToFloat || intBitsToFloat >= rect.c || rect.b > intBitsToFloat2 || intBitsToFloat2 >= rect.d) {
                            z = false;
                            z2 = true;
                        }
                    } else {
                        if (d instanceof Outline.Rounded) {
                            RoundRect roundRect = ((Outline.Rounded) d).a;
                            float f = roundRect.c;
                            float f2 = roundRect.b;
                            float f3 = roundRect.d;
                            float f4 = roundRect.a;
                            long j2 = roundRect.f;
                            long j3 = roundRect.h;
                            z = false;
                            z2 = true;
                            long j4 = roundRect.g;
                            long j5 = roundRect.e;
                            if (intBitsToFloat >= f4 && intBitsToFloat < f && intBitsToFloat2 >= f2 && intBitsToFloat2 < f3) {
                                int i = (int) (j5 >> 32);
                                float intBitsToFloat3 = Float.intBitsToFloat(i);
                                int i2 = (int) (j2 >> 32);
                                if (Float.intBitsToFloat(i2) + intBitsToFloat3 <= f - f4) {
                                    int i3 = (int) (j3 >> 32);
                                    float intBitsToFloat4 = Float.intBitsToFloat(i3);
                                    int i4 = (int) (j4 >> 32);
                                    if (Float.intBitsToFloat(i4) + intBitsToFloat4 <= f - f4) {
                                        int i5 = (int) (j5 & 4294967295L);
                                        int i6 = (int) (j3 & 4294967295L);
                                        if (Float.intBitsToFloat(i6) + Float.intBitsToFloat(i5) <= f3 - f2) {
                                            int i7 = (int) (j2 & 4294967295L);
                                            int i8 = (int) (j4 & 4294967295L);
                                            if (Float.intBitsToFloat(i8) + Float.intBitsToFloat(i7) <= f3 - f2) {
                                                float intBitsToFloat5 = Float.intBitsToFloat(i) + f4;
                                                float intBitsToFloat6 = Float.intBitsToFloat(i5) + f2;
                                                float intBitsToFloat7 = f - Float.intBitsToFloat(i2);
                                                float intBitsToFloat8 = Float.intBitsToFloat(i7) + f2;
                                                float intBitsToFloat9 = f - Float.intBitsToFloat(i4);
                                                float intBitsToFloat10 = f3 - Float.intBitsToFloat(i8);
                                                float intBitsToFloat11 = f3 - Float.intBitsToFloat(i6);
                                                float intBitsToFloat12 = Float.intBitsToFloat(i3) + f4;
                                                if (intBitsToFloat < intBitsToFloat5 && intBitsToFloat2 < intBitsToFloat6) {
                                                    z3 = ShapeContainingUtilKt.b(intBitsToFloat, intBitsToFloat2, intBitsToFloat5, intBitsToFloat6, roundRect.e);
                                                } else if (intBitsToFloat < intBitsToFloat12 && intBitsToFloat2 > intBitsToFloat11) {
                                                    z3 = ShapeContainingUtilKt.b(intBitsToFloat, intBitsToFloat2, intBitsToFloat12, intBitsToFloat11, roundRect.h);
                                                } else if (intBitsToFloat > intBitsToFloat7 && intBitsToFloat2 < intBitsToFloat8) {
                                                    z3 = ShapeContainingUtilKt.b(intBitsToFloat, intBitsToFloat2, intBitsToFloat7, intBitsToFloat8, roundRect.f);
                                                } else {
                                                    if (intBitsToFloat > intBitsToFloat9 && intBitsToFloat2 > intBitsToFloat10) {
                                                        z3 = ShapeContainingUtilKt.b(intBitsToFloat, intBitsToFloat2, intBitsToFloat9, intBitsToFloat10, roundRect.g);
                                                    }
                                                    z3 = z2;
                                                }
                                            }
                                        }
                                    }
                                }
                                AndroidPath a = AndroidPath_androidKt.a();
                                Path.d(a, roundRect);
                                z3 = ShapeContainingUtilKt.a(a, intBitsToFloat, intBitsToFloat2);
                            }
                        } else {
                            z = false;
                            z2 = true;
                            if (d instanceof Outline.Generic) {
                                z3 = ShapeContainingUtilKt.a(((Outline.Generic) d).a, intBitsToFloat, intBitsToFloat2);
                            } else {
                                k8.e();
                                return false;
                            }
                        }
                        if (z3) {
                            return z2;
                        }
                        return z;
                    }
                    z3 = z;
                    if (z3) {
                    }
                }
                z = false;
                z2 = true;
                z3 = z2;
                if (z3) {
                }
            } else {
                return true;
            }
        } else {
            return false;
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final boolean G0() {
        if (this.M != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void I(LayoutCoordinates layoutCoordinates, float[] fArr) {
        NodeCoordinator z1 = z1(layoutCoordinates);
        z1.n1();
        NodeCoordinator Z0 = Z0(z1);
        Matrix.d(fArr);
        z1.C1(Z0, fArr);
        B1(Z0, fArr);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutNode J0() {
        return this.D;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final MeasureResult K0() {
        MeasureResult measureResult = this.M;
        if (measureResult != null) {
            return measureResult;
        }
        u2.l("Asking for measurement result of unmeasured layout modifier");
        return null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates L() {
        boolean z = d1().w;
        LayoutNode layoutNode = this.D;
        if (!z) {
            StringBuilder sb = new StringBuilder("LayoutCoordinate operations are only valid when isAttached is true");
            for (LayoutNode layoutNode2 = layoutNode; layoutNode2 != null; layoutNode2 = layoutNode2.w()) {
                sb.append("\n|");
                sb.append(layoutNode2);
                sb.append(" isAttached=");
                sb.append(layoutNode2.L());
                sb.append(" modifier=");
                sb.append(layoutNode2.T);
                sb.append(" tail=");
                sb.append(d1());
            }
            InlineClassHelperKt.b(sb.toString());
        }
        n1();
        return layoutNode.O.d.F;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable L0() {
        return this.F;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final long M0() {
        return this.O;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final void Q0() {
        GraphicsLayer graphicsLayer = this.d0;
        long j = this.O;
        if (graphicsLayer != null) {
            b0(j, this.P, graphicsLayer);
        } else {
            c0(j, this.P, this.I);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long R(long j) {
        if (!d1().w) {
            InlineClassHelperKt.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return t(LayoutCoordinatesKt.c(this), ((AndroidComposeView) LayoutNodeKt.a(this.D)).G(j));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long S(long j) {
        if (!d1().w) {
            InlineClassHelperKt.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        n1();
        while (this != null) {
            LayoutNode layoutNode = this.D;
            if (this == layoutNode.O.d && !layoutNode.l) {
                long b = LayoutNodeKt.a(layoutNode).getRectManager().b(layoutNode);
                if (!IntOffset.a(b, 9223372034707292159L)) {
                    return IntOffsetKt.a(j, b);
                }
            }
            OwnedLayer ownedLayer = this.c0;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                float[] b2 = graphicsLayerOwnerLayer.b();
                if (!graphicsLayerOwnerLayer.B) {
                    j = Matrix.b(j, b2);
                }
            }
            j = IntOffsetKt.a(j, this.O);
            this = this.F;
        }
        return j;
    }

    public final void S0(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z) {
        if (nodeCoordinator != this) {
            NodeCoordinator nodeCoordinator2 = this.F;
            if (nodeCoordinator2 != null) {
                nodeCoordinator2.S0(nodeCoordinator, mutableRect, z);
            }
            long j = this.O;
            float f = (int) (j >> 32);
            mutableRect.a -= f;
            mutableRect.c -= f;
            float f2 = (int) (j & 4294967295L);
            mutableRect.b -= f2;
            mutableRect.d -= f2;
            OwnedLayer ownedLayer = this.c0;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                float[] a = graphicsLayerOwnerLayer.a();
                if (!graphicsLayerOwnerLayer.B) {
                    if (a == null) {
                        mutableRect.a = 0.0f;
                        mutableRect.b = 0.0f;
                        mutableRect.c = 0.0f;
                        mutableRect.d = 0.0f;
                    } else {
                        Matrix.c(a, mutableRect);
                    }
                }
                if (this.H && z) {
                    long j2 = this.l;
                    mutableRect.a(0.0f, 0.0f, (int) (j2 >> 32), (int) (j2 & 4294967295L));
                }
            }
        }
    }

    public final long T0(NodeCoordinator nodeCoordinator, long j) {
        if (nodeCoordinator == this) {
            return j;
        }
        NodeCoordinator nodeCoordinator2 = this.F;
        if (nodeCoordinator2 != null && !Intrinsics.a(nodeCoordinator, nodeCoordinator2)) {
            return a1(nodeCoordinator2.T0(nodeCoordinator, j));
        }
        return a1(j);
    }

    public final long U0(long j) {
        float Z;
        float W;
        if (e1()) {
            Rect rect = this.T;
            Z = rect.c - rect.a;
        } else {
            Z = Z();
        }
        if (e1()) {
            Rect rect2 = this.T;
            W = rect2.d - rect2.b;
        } else {
            W = W();
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Z;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - W;
        float max = Math.max(0.0f, intBitsToFloat / 2.0f);
        float max2 = Math.max(0.0f, intBitsToFloat2 / 2.0f);
        return (Float.floatToRawIntBits(max2) & 4294967295L) | (Float.floatToRawIntBits(max) << 32);
    }

    public final float V0(long j, long j2) {
        float Z;
        float W;
        if (Z() >= Float.intBitsToFloat((int) (j2 >> 32)) && W() >= Float.intBitsToFloat((int) (j2 & 4294967295L))) {
            return Float.POSITIVE_INFINITY;
        }
        long U0 = U0(j2);
        float intBitsToFloat = Float.intBitsToFloat((int) (U0 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (U0 & 4294967295L));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        if (intBitsToFloat3 < 0.0f) {
            Z = -intBitsToFloat3;
        } else {
            Z = intBitsToFloat3 - Z();
        }
        float max = Math.max(0.0f, Z);
        float intBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
        if (intBitsToFloat4 < 0.0f) {
            W = -intBitsToFloat4;
        } else {
            W = intBitsToFloat4 - W();
        }
        float max2 = Math.max(0.0f, W);
        long floatToRawIntBits = (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max2) & 4294967295L);
        if (intBitsToFloat > 0.0f || intBitsToFloat2 > 0.0f) {
            int i = (int) (floatToRawIntBits >> 32);
            if (Float.intBitsToFloat(i) <= intBitsToFloat) {
                int i2 = (int) (floatToRawIntBits & 4294967295L);
                if (Float.intBitsToFloat(i2) <= intBitsToFloat2) {
                    float intBitsToFloat5 = Float.intBitsToFloat(i);
                    float intBitsToFloat6 = Float.intBitsToFloat(i2);
                    return (intBitsToFloat6 * intBitsToFloat6) + (intBitsToFloat5 * intBitsToFloat5);
                }
            }
        }
        return Float.POSITIVE_INFINITY;
    }

    public final void W0(Canvas canvas, GraphicsLayer graphicsLayer) {
        boolean z;
        OwnedLayer ownedLayer = this.c0;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            CanvasDrawScope canvasDrawScope = graphicsLayerOwnerLayer.v;
            graphicsLayerOwnerLayer.g();
            if (graphicsLayerOwnerLayer.j.a.L() > 0.0f) {
                z = true;
            } else {
                z = false;
            }
            graphicsLayerOwnerLayer.C = z;
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
            canvasDrawScope$drawContext$1.e(canvas);
            canvasDrawScope$drawContext$1.b = graphicsLayer;
            GraphicsLayerKt.a(canvasDrawScope, graphicsLayerOwnerLayer.j);
            return;
        }
        long j = this.O;
        float f = (int) (j >> 32);
        float f2 = (int) (j & 4294967295L);
        canvas.o(f, f2);
        X0(canvas, graphicsLayer);
        canvas.o(-f, -f2);
    }

    public final void X0(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator;
        Canvas canvas2;
        GraphicsLayer graphicsLayer2;
        Modifier.Node f1 = f1(4);
        if (f1 == null) {
            t1(canvas, graphicsLayer);
            return;
        }
        LayoutNode layoutNode = this.D;
        layoutNode.getClass();
        LayoutNodeDrawScope sharedDrawScope = LayoutNodeKt.a(layoutNode).getSharedDrawScope();
        long a = IntSizeKt.a(this.l);
        sharedDrawScope.getClass();
        MutableVector mutableVector = null;
        while (f1 != null) {
            if (f1 instanceof DrawModifierNode) {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                sharedDrawScope.b(canvas2, a, nodeCoordinator, (DrawModifierNode) f1, graphicsLayer2);
            } else {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                if ((f1.l & 4) != 0 && (f1 instanceof DelegatingNode)) {
                    int i = 0;
                    for (Modifier.Node node = ((DelegatingNode) f1).y; node != null; node = node.o) {
                        if ((node.l & 4) != 0) {
                            i++;
                            if (i == 1) {
                                f1 = node;
                            } else {
                                if (mutableVector == null) {
                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                }
                                if (f1 != null) {
                                    mutableVector.b(f1);
                                    f1 = null;
                                }
                                mutableVector.b(node);
                            }
                        }
                    }
                    if (i == 1) {
                        canvas = canvas2;
                        this = nodeCoordinator;
                        graphicsLayer = graphicsLayer2;
                    }
                }
            }
            f1 = DelegatableNodeKt.b(mutableVector);
            canvas = canvas2;
            this = nodeCoordinator;
            graphicsLayer = graphicsLayer2;
        }
    }

    public abstract void Y0();

    public final NodeCoordinator Z0(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNode = nodeCoordinator.D;
        LayoutNode layoutNode2 = this.D;
        if (layoutNode == layoutNode2) {
            Modifier.Node d1 = nodeCoordinator.d1();
            Modifier.Node d12 = d1();
            if (!d12.j.w) {
                InlineClassHelperKt.b("visitLocalAncestors called on an unattached node");
            }
            for (Modifier.Node node = d12.j.n; node != null; node = node.n) {
                if ((node.l & 2) != 0 && node == d1) {
                    return nodeCoordinator;
                }
            }
            return this;
        }
        while (layoutNode.y > layoutNode2.y) {
            layoutNode = layoutNode.w();
            layoutNode.getClass();
        }
        LayoutNode layoutNode3 = layoutNode2;
        while (layoutNode3.y > layoutNode.y) {
            layoutNode3 = layoutNode3.w();
            layoutNode3.getClass();
        }
        while (layoutNode != layoutNode3) {
            layoutNode = layoutNode.w();
            layoutNode3 = layoutNode3.w();
            if (layoutNode == null || layoutNode3 == null) {
                u2.g("layouts are not part of the same hierarchy");
                return null;
            }
        }
        if (layoutNode3 != layoutNode2) {
            if (layoutNode != nodeCoordinator.D) {
                return layoutNode.O.c;
            }
            return nodeCoordinator;
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public final Object a() {
        LayoutNode layoutNode = this.D;
        if (!layoutNode.O.d(64)) {
            return null;
        }
        d1();
        ?? obj = new Object();
        for (Modifier.Node node = layoutNode.O.e; node != null; node = node.n) {
            if ((node.l & 64) != 0) {
                DelegatingNode delegatingNode = node;
                ?? r5 = 0;
                while (delegatingNode != 0) {
                    if (delegatingNode instanceof ParentDataModifierNode) {
                        obj.j = ((ParentDataModifierNode) delegatingNode).Z(layoutNode.H, obj.j);
                    } else if ((delegatingNode.l & 64) != 0 && (delegatingNode instanceof DelegatingNode)) {
                        Modifier.Node node2 = delegatingNode.y;
                        int i = 0;
                        delegatingNode = delegatingNode;
                        r5 = r5;
                        while (node2 != null) {
                            if ((node2.l & 64) != 0) {
                                i++;
                                r5 = r5;
                                if (i == 1) {
                                    delegatingNode = node2;
                                } else {
                                    if (r5 == 0) {
                                        r5 = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (delegatingNode != 0) {
                                        r5.b(delegatingNode);
                                        delegatingNode = 0;
                                    }
                                    r5.b(node2);
                                }
                            }
                            node2 = node2.o;
                            delegatingNode = delegatingNode;
                            r5 = r5;
                        }
                        if (i == 1) {
                        }
                    }
                    delegatingNode = DelegatableNodeKt.b(r5);
                }
            }
        }
        return obj.j;
    }

    public final long a1(long j) {
        long j2 = this.O;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - ((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - ((int) (j2 & 4294967295L));
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        OwnedLayer ownedLayer = this.c0;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] a = graphicsLayerOwnerLayer.a();
            if (a == null) {
                return 9187343241974906880L;
            }
            if (!graphicsLayerOwnerLayer.B) {
                return Matrix.b(floatToRawIntBits, a);
            }
        }
        return floatToRawIntBits;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public abstract void b0(long j, float f, GraphicsLayer graphicsLayer);

    public abstract LookaheadDelegate b1();

    public final long c1() {
        return this.J.D0(this.D.J.d());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long d(long j) {
        long S = S(j);
        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.a(this.D);
        androidComposeView.A();
        return Matrix.b(S, androidComposeView.h0);
    }

    public abstract Modifier.Node d1();

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.D.H.e0();
    }

    public final boolean e1() {
        if (this.V && !this.T.f()) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long f() {
        return this.l;
    }

    public final Modifier.Node f1(int i) {
        boolean g = NodeKindKt.g(i);
        Modifier.Node d1 = d1();
        if (g || (d1 = d1.n) != null) {
            for (Modifier.Node g1 = g1(g); g1 != null && (g1.m & i) != 0; g1 = g1.o) {
                if ((g1.l & i) != 0) {
                    return g1;
                }
                if (g1 == d1) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long g(LayoutCoordinates layoutCoordinates, long j) {
        return t(layoutCoordinates, j);
    }

    public final Modifier.Node g1(boolean z) {
        Modifier.Node d1;
        NodeChain nodeChain = this.D.O;
        if (nodeChain.d == this) {
            return nodeChain.f;
        }
        NodeCoordinator nodeCoordinator = this.F;
        if (z) {
            if (nodeCoordinator != null && (d1 = nodeCoordinator.d1()) != null) {
                return d1.o;
            }
            return null;
        }
        if (nodeCoordinator != null) {
            return nodeCoordinator.d1();
        }
        return null;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.D.H.getDensity();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.D.I;
    }

    public final void h1(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        if (node == null) {
            k1(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.f(node)) {
            h1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z);
            return;
        }
        int i2 = hitTestResult.l;
        MutableObjectList mutableObjectList = hitTestResult.j;
        hitTestResult.c(i2 + 1, mutableObjectList.b);
        hitTestResult.l++;
        mutableObjectList.g(node);
        hitTestResult.k.a(HitTestResultKt.a(-1.0f, z, false));
        h1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z);
        hitTestResult.l = i2;
    }

    public final void i1(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f) {
        if (node == null) {
            k1(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.f(node)) {
            i1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z, f);
            return;
        }
        int i2 = hitTestResult.l;
        MutableObjectList mutableObjectList = hitTestResult.j;
        hitTestResult.c(i2 + 1, mutableObjectList.b);
        hitTestResult.l++;
        mutableObjectList.g(node);
        hitTestResult.k.a(HitTestResultKt.a(f, z, false));
        s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z, f, true);
        hitTestResult.l = i2;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void j(float[] fArr) {
        Owner a = LayoutNodeKt.a(this.D);
        NodeCoordinator z1 = z1(LayoutCoordinatesKt.c(this));
        C1(z1, fArr);
        if (a instanceof MatrixPositionCalculator) {
            ((AndroidComposeView) ((MatrixPositionCalculator) a)).p(fArr);
            return;
        }
        long u = z1.u(0L);
        if ((9223372034707292159L & u) != 9205357640488583168L) {
            Matrix.f(fArr, Float.intBitsToFloat((int) (u >> 32)), Float.intBitsToFloat((int) (u & 4294967295L)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c4, code lost:
    
        if (androidx.compose.ui.node.DistanceAndFlags.a(r18.b(), androidx.compose.ui.node.HitTestResultKt.a(r2, r7, false)) > 0) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j1(HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        float f;
        boolean z2;
        boolean z3;
        Modifier.Node f1 = f1(hitTestSource.b());
        if (!F1(j)) {
            if (i == 1) {
                float V0 = V0(j, c1());
                if ((Float.floatToRawIntBits(V0) & Integer.MAX_VALUE) < 2139095040) {
                    if (hitTestResult.l != hitTestResult.j.b - 1) {
                        if (DistanceAndFlags.a(hitTestResult.b(), HitTestResultKt.a(V0, false, false)) <= 0) {
                            return;
                        }
                    }
                    i1(f1, hitTestSource, j, hitTestResult, i, false, V0);
                    return;
                }
                return;
            }
            return;
        }
        if (f1 == null) {
            k1(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        if (intBitsToFloat >= 0.0f && intBitsToFloat2 >= 0.0f && intBitsToFloat < Z() && intBitsToFloat2 < W()) {
            h1(f1, hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (i == 1) {
            f = V0(j, c1());
        } else {
            f = Float.POSITIVE_INFINITY;
        }
        if ((Float.floatToRawIntBits(f) & Integer.MAX_VALUE) < 2139095040) {
            if (hitTestResult.l == hitTestResult.j.b - 1) {
                z2 = z;
            } else {
                z2 = z;
            }
            z3 = true;
            s1(f1, hitTestSource, j, hitTestResult, i, z2, f, z3);
        }
        z2 = z;
        z3 = false;
        s1(f1, hitTestSource, j, hitTestResult, i, z2, f, z3);
    }

    public void k1(HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        NodeCoordinator nodeCoordinator = this.E;
        if (nodeCoordinator != null) {
            nodeCoordinator.j1(hitTestSource, nodeCoordinator.a1(j), hitTestResult, i, z);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final Rect l(LayoutCoordinates layoutCoordinates, boolean z) {
        if (!d1().w) {
            InlineClassHelperKt.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!layoutCoordinates.o()) {
            InlineClassHelperKt.b("LayoutCoordinates " + layoutCoordinates + " is not attached!");
        }
        NodeCoordinator z1 = z1(layoutCoordinates);
        z1.n1();
        NodeCoordinator Z0 = Z0(z1);
        MutableRect mutableRect = this.Q;
        if (mutableRect == null) {
            mutableRect = new MutableRect();
            this.Q = mutableRect;
        }
        mutableRect.a = 0.0f;
        mutableRect.b = 0.0f;
        mutableRect.c = (int) (layoutCoordinates.f() >> 32);
        mutableRect.d = (int) (layoutCoordinates.f() & 4294967295L);
        while (z1 != Z0) {
            z1.v1(mutableRect, z, false);
            if (mutableRect.b()) {
                return Rect.e;
            }
            z1 = z1.F;
            z1.getClass();
        }
        S0(Z0, mutableRect, z);
        return new Rect(mutableRect.a, mutableRect.b, mutableRect.c, mutableRect.d);
    }

    public final void l1() {
        OwnedLayer ownedLayer = this.c0;
        if (ownedLayer != null) {
            ((GraphicsLayerOwnerLayer) ownedLayer).c();
            return;
        }
        NodeCoordinator nodeCoordinator = this.F;
        if (nodeCoordinator != null) {
            nodeCoordinator.l1();
        }
    }

    public final boolean m1() {
        if (this.c0 != null && this.L <= 0.0f) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.F;
        if (nodeCoordinator != null) {
            return nodeCoordinator.m1();
        }
        return false;
    }

    public final void n1() {
        this.D.P.b();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean o() {
        return d1().w;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final void o1() {
        Function1 function1;
        Modifier.Node node;
        boolean g = NodeKindKt.g(128);
        Modifier.Node g1 = g1(g);
        if (g1 != null && (g1.j.m & 128) != 0) {
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a);
            try {
                if (g) {
                    node = d1();
                } else {
                    node = d1().n;
                    if (node == null) {
                    }
                }
                for (Modifier.Node g12 = g1(g); g12 != null; g12 = g12.o) {
                    if ((g12.m & 128) == 0) {
                        break;
                    }
                    if ((g12.l & 128) != 0) {
                        DelegatingNode delegatingNode = g12;
                        ?? r8 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof MeasuredSizeAwareModifierNode) {
                                ((MeasuredSizeAwareModifierNode) delegatingNode).b(this.l);
                            } else if ((delegatingNode.l & 128) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node2 = delegatingNode.y;
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r8 = r8;
                                while (node2 != null) {
                                    if ((node2.l & 128) != 0) {
                                        i++;
                                        r8 = r8;
                                        if (i == 1) {
                                            delegatingNode = node2;
                                        } else {
                                            if (r8 == 0) {
                                                r8 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r8.b(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r8.b(node2);
                                        }
                                    }
                                    node2 = node2.o;
                                    delegatingNode = delegatingNode;
                                    r8 = r8;
                                }
                                if (i == 1) {
                                }
                            }
                            delegatingNode = DelegatableNodeKt.b(r8);
                        }
                    }
                    if (g12 == node) {
                        break;
                    }
                }
            } finally {
                Snapshot.Companion.e(a, b, function1);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public final void p1() {
        boolean g = NodeKindKt.g(4194304);
        Modifier.Node d1 = d1();
        if (g || (d1 = d1.n) != null) {
            for (Modifier.Node g1 = g1(g); g1 != null && (g1.m & 4194304) != 0; g1 = g1.o) {
                if ((g1.l & 4194304) != 0) {
                    DelegatingNode delegatingNode = g1;
                    ?? r5 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof LayoutAwareModifierNode) {
                            ((LayoutAwareModifierNode) delegatingNode).C(this);
                        } else if ((delegatingNode.l & 4194304) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node = delegatingNode.y;
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r5 = r5;
                            while (node != null) {
                                if ((node.l & 4194304) != 0) {
                                    i++;
                                    r5 = r5;
                                    if (i == 1) {
                                        delegatingNode = node;
                                    } else {
                                        if (r5 == 0) {
                                            r5 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode != 0) {
                                            r5.b(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r5.b(node);
                                    }
                                }
                                node = node.o;
                                delegatingNode = delegatingNode;
                                r5 = r5;
                            }
                            if (i == 1) {
                            }
                        }
                        delegatingNode = DelegatableNodeKt.b(r5);
                    }
                }
                if (g1 == d1) {
                    return;
                }
            }
        }
    }

    public final void q1() {
        this.G = true;
        this.a0.a();
        w1();
        if (!IntOffset.a(this.O, 0L)) {
            this.D.R(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public final void r1() {
        boolean g = NodeKindKt.g(1048576);
        Modifier.Node g1 = g1(g);
        if (g1 != null && (g1.j.m & 1048576) != 0) {
            Modifier.Node d1 = d1();
            if (g || (d1 = d1.n) != null) {
                for (Modifier.Node g12 = g1(g); g12 != null && (g12.m & 1048576) != 0; g12 = g12.o) {
                    if ((g12.l & 1048576) != 0) {
                        DelegatingNode delegatingNode = g12;
                        ?? r4 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof UnplacedAwareModifierNode) {
                                ((UnplacedAwareModifierNode) delegatingNode).L0();
                            } else if ((delegatingNode.l & 1048576) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node = delegatingNode.y;
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r4 = r4;
                                while (node != null) {
                                    if ((node.l & 1048576) != 0) {
                                        i++;
                                        r4 = r4;
                                        if (i == 1) {
                                            delegatingNode = node;
                                        } else {
                                            if (r4 == 0) {
                                                r4 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r4.b(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r4.b(node);
                                        }
                                    }
                                    node = node.o;
                                    delegatingNode = delegatingNode;
                                    r4 = r4;
                                }
                                if (i == 1) {
                                }
                            }
                            delegatingNode = DelegatableNodeKt.b(r4);
                        }
                    }
                    if (g12 == d1) {
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v25 */
    public final void s1(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f, boolean z2) {
        int a;
        int a2;
        Modifier.Node b;
        if (node == null) {
            k1(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.f(node)) {
            s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z, f, z2);
            return;
        }
        int i2 = i;
        boolean z3 = z;
        char c = 3;
        if (i2 == 3 || i2 == 4) {
            DelegatingNode delegatingNode = node;
            MutableVector mutableVector = null;
            while (true) {
                if (delegatingNode == 0) {
                    break;
                }
                int i3 = 0;
                if (delegatingNode instanceof PointerInputModifierNode) {
                    long t = ((PointerInputModifierNode) delegatingNode).t();
                    int i4 = (int) (j >> 32);
                    float intBitsToFloat = Float.intBitsToFloat(i4);
                    LayoutNode layoutNode = this.D;
                    LayoutDirection layoutDirection = layoutNode.I;
                    int i5 = TouchBoundsExpansion.b;
                    long j2 = Long.MIN_VALUE & t;
                    if (j2 != 0 && layoutDirection != LayoutDirection.j) {
                        a = TouchBoundsExpansion.Companion.a(2, t);
                    } else {
                        a = TouchBoundsExpansion.Companion.a(0, t);
                    }
                    if (intBitsToFloat >= (-a)) {
                        float intBitsToFloat2 = Float.intBitsToFloat(i4);
                        int Z = Z();
                        LayoutDirection layoutDirection2 = layoutNode.I;
                        if (j2 != 0 && layoutDirection2 != LayoutDirection.j) {
                            a2 = TouchBoundsExpansion.Companion.a(0, t);
                        } else {
                            a2 = TouchBoundsExpansion.Companion.a(2, t);
                        }
                        if (intBitsToFloat2 < Z + a2) {
                            int i6 = (int) (j & 4294967295L);
                            float intBitsToFloat3 = Float.intBitsToFloat(i6);
                            int i7 = TouchBoundsExpansion.b;
                            if (intBitsToFloat3 >= (-TouchBoundsExpansion.Companion.a(1, t))) {
                                if (Float.intBitsToFloat(i6) < TouchBoundsExpansion.Companion.a(3, t) + W()) {
                                    MutableLongList mutableLongList = hitTestResult.k;
                                    MutableObjectList mutableObjectList = hitTestResult.j;
                                    int i8 = hitTestResult.l;
                                    int i9 = mutableObjectList.b;
                                    if (i8 == i9 - 1) {
                                        hitTestResult.c(i8 + 1, i9);
                                        hitTestResult.l++;
                                        mutableObjectList.g(node);
                                        mutableLongList.a(HitTestResultKt.a(0.0f, z3, true));
                                        s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i2, z3, f, z2);
                                        hitTestResult.l = i8;
                                        return;
                                    }
                                    long b2 = hitTestResult.b();
                                    int i10 = hitTestResult.l;
                                    if (DistanceAndFlags.c(b2)) {
                                        int i11 = mutableObjectList.b;
                                        int i12 = i11 - 1;
                                        hitTestResult.l = i12;
                                        hitTestResult.c(i11, mutableObjectList.b);
                                        hitTestResult.l++;
                                        mutableObjectList.g(node);
                                        mutableLongList.a(HitTestResultKt.a(0.0f, z3, true));
                                        s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z3, f, z2);
                                        hitTestResult.l = i12;
                                        if (DistanceAndFlags.b(hitTestResult.b()) < 0.0f) {
                                            hitTestResult.c(i10 + 1, hitTestResult.l + 1);
                                        }
                                        hitTestResult.l = i10;
                                        return;
                                    }
                                    if (DistanceAndFlags.b(b2) > 0.0f) {
                                        int i13 = hitTestResult.l;
                                        hitTestResult.c(i13 + 1, mutableObjectList.b);
                                        hitTestResult.l++;
                                        mutableObjectList.g(node);
                                        mutableLongList.a(HitTestResultKt.a(0.0f, z3, true));
                                        s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z3, f, z2);
                                        hitTestResult.l = i13;
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                } else {
                    char c2 = c;
                    if ((delegatingNode.l & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                        Modifier.Node node2 = delegatingNode.y;
                        b = delegatingNode;
                        mutableVector = mutableVector;
                        while (node2 != null) {
                            if ((node2.l & 16) != 0) {
                                i3++;
                                mutableVector = mutableVector;
                                if (i3 == 1) {
                                    b = node2;
                                } else {
                                    if (mutableVector == null) {
                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (b != null) {
                                        mutableVector.b(b);
                                        b = null;
                                    }
                                    mutableVector.b(node2);
                                }
                            }
                            node2 = node2.o;
                            b = b;
                            mutableVector = mutableVector;
                        }
                        if (i3 == 1) {
                            i2 = i;
                            z3 = z;
                            c = c2;
                            delegatingNode = b;
                            mutableVector = mutableVector;
                        }
                    }
                    b = DelegatableNodeKt.b(mutableVector);
                    i2 = i;
                    z3 = z;
                    c = c2;
                    delegatingNode = b;
                    mutableVector = mutableVector;
                }
            }
        }
        if (z2) {
            i1(node, hitTestSource, j, hitTestResult, i, z, f);
        } else {
            y1(node, hitTestSource, j, hitTestResult, i, z, f);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long t(LayoutCoordinates layoutCoordinates, long j) {
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            LookaheadLayoutCoordinates lookaheadLayoutCoordinates = (LookaheadLayoutCoordinates) layoutCoordinates;
            lookaheadLayoutCoordinates.j.D.n1();
            return lookaheadLayoutCoordinates.t(this, j ^ (-9223372034707292160L)) ^ (-9223372034707292160L);
        }
        NodeCoordinator z1 = z1(layoutCoordinates);
        z1.n1();
        NodeCoordinator Z0 = Z0(z1);
        while (z1 != Z0) {
            OwnedLayer ownedLayer = z1.c0;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                float[] b = graphicsLayerOwnerLayer.b();
                if (!graphicsLayerOwnerLayer.B) {
                    j = Matrix.b(j, b);
                }
            }
            j = IntOffsetKt.a(j, z1.O);
            z1 = z1.F;
            z1.getClass();
        }
        return T0(Z0, j);
    }

    public abstract void t1(Canvas canvas, GraphicsLayer graphicsLayer);

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long u(long j) {
        if (!d1().w) {
            InlineClassHelperKt.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return ((AndroidComposeView) LayoutNodeKt.a(this.D)).q(S(j));
    }

    public final void u1(long j, float f, Function1 function1, GraphicsLayer graphicsLayer) {
        int i = 0;
        LayoutNode layoutNode = this.D;
        if (graphicsLayer != null) {
            if (function1 != null) {
                InlineClassHelperKt.a("both ways to create layers shouldn't be used together");
            }
            if (this.d0 != graphicsLayer) {
                this.d0 = null;
                D1(null, false);
                this.d0 = graphicsLayer;
            }
            if (this.c0 == null) {
                Owner a = LayoutNodeKt.a(layoutNode);
                a0 a0Var = this.Z;
                if (a0Var == null) {
                    a0 a0Var2 = new a0(20, this, new fc(this, i));
                    this.Z = a0Var2;
                    a0Var = a0Var2;
                }
                fc fcVar = this.a0;
                OwnedLayer f2 = ((AndroidComposeView) a).f(a0Var, fcVar, graphicsLayer);
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) f2;
                graphicsLayerOwnerLayer.e(this.l);
                graphicsLayerOwnerLayer.d(j);
                this.c0 = f2;
                layoutNode.S = true;
                fcVar.a();
            }
        } else {
            if (this.d0 != null) {
                this.d0 = null;
                D1(null, false);
            }
            D1(function1, false);
        }
        if (!IntOffset.a(this.O, j)) {
            ((AndroidComposeView) LayoutNodeKt.a(layoutNode)).M(-4.0f);
            this.O = j;
            OwnedLayer ownedLayer = this.c0;
            if (ownedLayer != null) {
                ((GraphicsLayerOwnerLayer) ownedLayer).d(j);
            } else {
                NodeCoordinator nodeCoordinator = this.F;
                if (nodeCoordinator != null) {
                    nodeCoordinator.l1();
                }
            }
            layoutNode.R(this);
            LookaheadCapablePlaceable.O0(this);
            Owner owner = layoutNode.w;
            if (owner != null) {
                ((AndroidComposeView) owner).v(layoutNode);
            }
        }
        this.P = f;
        if (this == layoutNode.O.d) {
            LayoutNodeKt.a(layoutNode).getRectManager().h(layoutNode);
        }
        if (!this.x) {
            A0(K0());
        }
    }

    public final void v1(MutableRect mutableRect, boolean z, boolean z2) {
        long j;
        OwnedLayer ownedLayer = this.c0;
        if (ownedLayer != null) {
            if (this.H) {
                if (z2) {
                    long c1 = c1();
                    float f = mutableRect.a;
                    float f2 = mutableRect.b;
                    if (mutableRect.c >= 0.0f) {
                        long j2 = this.l;
                        if (f <= ((int) (j2 >> 32)) && mutableRect.d >= 0.0f && f2 <= ((int) (j2 & 4294967295L))) {
                            float intBitsToFloat = Float.intBitsToFloat((int) (c1 >> 32));
                            float intBitsToFloat2 = Float.intBitsToFloat((int) (c1 & 4294967295L));
                            float f3 = (intBitsToFloat - (mutableRect.c - mutableRect.a)) / 2.0f;
                            if (f3 > 0.0f) {
                                f -= f3;
                            } else {
                                float f4 = (-intBitsToFloat) / 2.0f;
                                if (f < f4) {
                                    f = f4;
                                }
                            }
                            float f5 = (intBitsToFloat2 - (mutableRect.d - mutableRect.b)) / 2.0f;
                            if (f5 > 0.0f) {
                                f2 -= f5;
                            } else {
                                float f6 = (-intBitsToFloat2) / 2.0f;
                                if (f2 < f6) {
                                    f2 = f6;
                                }
                            }
                            j = (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
                            float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
                            float intBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
                            long j3 = this.l;
                            float f7 = (int) (j3 >> 32);
                            int i = (int) (c1 >> 32);
                            float f8 = (int) (j3 & 4294967295L);
                            int i2 = (int) (c1 & 4294967295L);
                            mutableRect.a(intBitsToFloat3, intBitsToFloat4, Math.min(Float.intBitsToFloat(i) + f7, Math.max(f7, Float.intBitsToFloat(i) + intBitsToFloat3)), Math.min(Float.intBitsToFloat(i2) + f8, Math.max(f8, Float.intBitsToFloat(i2) + intBitsToFloat4)));
                        }
                    }
                    j = 0;
                    float intBitsToFloat32 = Float.intBitsToFloat((int) (j >> 32));
                    float intBitsToFloat42 = Float.intBitsToFloat((int) (j & 4294967295L));
                    long j32 = this.l;
                    float f72 = (int) (j32 >> 32);
                    int i3 = (int) (c1 >> 32);
                    float f82 = (int) (j32 & 4294967295L);
                    int i22 = (int) (c1 & 4294967295L);
                    mutableRect.a(intBitsToFloat32, intBitsToFloat42, Math.min(Float.intBitsToFloat(i3) + f72, Math.max(f72, Float.intBitsToFloat(i3) + intBitsToFloat32)), Math.min(Float.intBitsToFloat(i22) + f82, Math.max(f82, Float.intBitsToFloat(i22) + intBitsToFloat42)));
                } else if (z) {
                    long j4 = this.l;
                    mutableRect.a(0.0f, 0.0f, (int) (j4 >> 32), (int) (j4 & 4294967295L));
                }
                if (mutableRect.b()) {
                    return;
                }
            }
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] b = graphicsLayerOwnerLayer.b();
            if (!graphicsLayerOwnerLayer.B) {
                if (b == null) {
                    mutableRect.a = 0.0f;
                    mutableRect.b = 0.0f;
                    mutableRect.c = 0.0f;
                    mutableRect.d = 0.0f;
                } else {
                    Matrix.c(b, mutableRect);
                }
            }
        }
        long j5 = this.O;
        float f9 = (int) (j5 >> 32);
        mutableRect.a += f9;
        mutableRect.c += f9;
        float f10 = (int) (j5 & 4294967295L);
        mutableRect.b += f10;
        mutableRect.d += f10;
    }

    public final void w1() {
        if (this.c0 != null) {
            if (this.d0 != null) {
                this.d0 = null;
            }
            D1(null, false);
            this.D.Y(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [androidx.compose.runtime.collection.MutableVector] */
    public final void x1(MeasureResult measureResult) {
        NodeCoordinator nodeCoordinator;
        MeasureResult measureResult2 = this.M;
        if (measureResult != measureResult2) {
            this.M = measureResult;
            LayoutNode layoutNode = this.D;
            int i = 0;
            if (measureResult2 == null || measureResult.b() != measureResult2.b() || measureResult.a() != measureResult2.a()) {
                int b = measureResult.b();
                int a = measureResult.a();
                OwnedLayer ownedLayer = this.c0;
                if (ownedLayer != null) {
                    ((GraphicsLayerOwnerLayer) ownedLayer).e((b << 32) | (a & 4294967295L));
                } else if (layoutNode.M() && (nodeCoordinator = this.F) != null) {
                    nodeCoordinator.l1();
                }
                j0((a & 4294967295L) | (b << 32));
                if (this.I != null) {
                    E1(false);
                }
                boolean g = NodeKindKt.g(4);
                Modifier.Node d1 = d1();
                if (g || (d1 = d1.n) != null) {
                    for (Modifier.Node g1 = g1(g); g1 != null && (g1.m & 4) != 0; g1 = g1.o) {
                        if ((g1.l & 4) != 0) {
                            DelegatingNode delegatingNode = g1;
                            ?? r9 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof DrawModifierNode) {
                                    ((DrawModifierNode) delegatingNode).R();
                                } else if ((delegatingNode.l & 4) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node = delegatingNode.y;
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r9 = r9;
                                    while (node != null) {
                                        if ((node.l & 4) != 0) {
                                            i2++;
                                            r9 = r9;
                                            if (i2 == 1) {
                                                delegatingNode = node;
                                            } else {
                                                if (r9 == 0) {
                                                    r9 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r9.b(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r9.b(node);
                                            }
                                        }
                                        node = node.o;
                                        delegatingNode = delegatingNode;
                                        r9 = r9;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.b(r9);
                            }
                        }
                        if (g1 == d1) {
                            break;
                        }
                    }
                }
                Owner owner = layoutNode.w;
                if (owner != null) {
                    ((AndroidComposeView) owner).v(layoutNode);
                }
                layoutNode.R(this);
            }
            MutableObjectIntMap mutableObjectIntMap = this.N;
            if ((mutableObjectIntMap != null && mutableObjectIntMap.e != 0) || !measureResult.c().isEmpty()) {
                MutableObjectIntMap mutableObjectIntMap2 = this.N;
                Map c = measureResult.c();
                if (mutableObjectIntMap2 != null && mutableObjectIntMap2.e == c.size()) {
                    Object[] objArr = mutableObjectIntMap2.b;
                    int[] iArr = mutableObjectIntMap2.c;
                    long[] jArr = mutableObjectIntMap2.a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i3 = 0;
                        loop0: while (true) {
                            long j = jArr[i3];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i4 = 8 - ((~(i3 - length)) >>> 31);
                                for (int i5 = i; i5 < i4; i5++) {
                                    if ((255 & j) < 128) {
                                        int i6 = (i3 << 3) + i5;
                                        Object obj = objArr[i6];
                                        int i7 = iArr[i6];
                                        Integer num = (Integer) c.get((AlignmentLine) obj);
                                        if (num == null || num.intValue() != i7) {
                                            break loop0;
                                        }
                                    }
                                    j >>= 8;
                                }
                                if (i4 != 8) {
                                    return;
                                }
                            }
                            if (i3 != length) {
                                i3++;
                                i = 0;
                            } else {
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
                layoutNode.P.p.H.g();
                MutableObjectIntMap mutableObjectIntMap3 = this.N;
                if (mutableObjectIntMap3 == null) {
                    MutableObjectIntMap mutableObjectIntMap4 = ObjectIntMapKt.a;
                    mutableObjectIntMap3 = new MutableObjectIntMap();
                    this.N = mutableObjectIntMap3;
                }
                mutableObjectIntMap3.b();
                for (Map.Entry entry : measureResult.c().entrySet()) {
                    mutableObjectIntMap3.g(((Number) entry.getValue()).intValue(), entry.getKey());
                }
            }
        }
    }

    public final void y1(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f) {
        int i2;
        int i3;
        if (node == null) {
            k1(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.f(node)) {
            y1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z, f);
            return;
        }
        if (hitTestSource.d(node)) {
            MutableLongList mutableLongList = hitTestResult.k;
            MutableObjectList mutableObjectList = hitTestResult.j;
            int i4 = hitTestResult.l;
            int i5 = mutableObjectList.b;
            if (i4 == i5 - 1) {
                int i6 = i4 + 1;
                hitTestResult.c(i6, i5);
                hitTestResult.l++;
                mutableObjectList.g(node);
                mutableLongList.a(HitTestResultKt.a(f, z, false));
                s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z, f, false);
                hitTestResult.l = i4;
                if (i6 != mutableObjectList.b - 1 && !DistanceAndFlags.c(hitTestResult.b())) {
                    return;
                }
                int i7 = hitTestResult.l;
                int i8 = i7 + 1;
                mutableObjectList.m(i8);
                if (i8 >= 0 && i8 < (i3 = mutableLongList.b)) {
                    long[] jArr = mutableLongList.a;
                    long j2 = jArr[i8];
                    if (i8 != i3 - 1) {
                        ArraysKt.h(jArr, jArr, i8, i7 + 2, i3);
                    }
                    mutableLongList.b--;
                    return;
                }
                u2.o("Index must be between 0 and size");
                return;
            }
            long b = hitTestResult.b();
            int i9 = hitTestResult.l;
            int i10 = mutableObjectList.b;
            int i11 = i10 - 1;
            hitTestResult.l = i11;
            hitTestResult.c(i10, mutableObjectList.b);
            hitTestResult.l++;
            mutableObjectList.g(node);
            mutableLongList.a(HitTestResultKt.a(f, z, false));
            s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z, f, false);
            hitTestResult.l = i11;
            long b2 = hitTestResult.b();
            if (hitTestResult.l + 1 < mutableObjectList.b - 1 && DistanceAndFlags.a(b, b2) > 0) {
                int i12 = i9 + 1;
                boolean c = DistanceAndFlags.c(b2);
                int i13 = hitTestResult.l;
                if (c) {
                    i2 = i13 + 2;
                } else {
                    i2 = i13 + 1;
                }
                hitTestResult.c(i12, i2);
            } else {
                hitTestResult.c(hitTestResult.l + 1, mutableObjectList.b);
            }
            hitTestResult.l = i9;
            return;
        }
        s1(NodeCoordinatorKt.a(node, hitTestSource.b()), hitTestSource, j, hitTestResult, i, z, f, false);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.node.OwnerScope
    public final boolean z() {
        if (this.c0 != null && !this.G && this.D.L()) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutCoordinates F0() {
        return this;
    }
}
