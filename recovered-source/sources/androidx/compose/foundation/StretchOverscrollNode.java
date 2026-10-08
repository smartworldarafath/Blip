package androidx.compose.foundation;

import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.bb;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class StretchOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public final EdgeEffectWrapper A;
    public RenderNode B;
    public final AndroidEdgeEffectOverscrollEffect z;

    public StretchOverscrollNode(SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper) {
        this.z = androidEdgeEffectOverscrollEffect;
        this.A = edgeEffectWrapper;
        Y0(suspendingPointerInputModifierNodeImpl);
    }

    public static boolean b1(float f, EdgeEffect edgeEffect, Canvas canvas) {
        if (f == 0.0f) {
            return edgeEffect.draw(canvas);
        }
        int save = canvas.save();
        canvas.rotate(f);
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    public final RenderNode c1() {
        RenderNode renderNode = this.B;
        if (renderNode == null) {
            RenderNode g = bb.g();
            this.B = g;
            return g;
        }
        return renderNode;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z;
        boolean z2;
        RecordingCanvas beginRecording;
        boolean z3;
        boolean z4;
        char c;
        float f;
        float f2;
        float f3;
        float f4;
        boolean z5;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        long i = canvasDrawScope.i();
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.z;
        androidEdgeEffectOverscrollEffect.k(i);
        Canvas a = AndroidCanvas_androidKt.a(canvasDrawScope.k.a());
        ((SnapshotMutableStateImpl) androidEdgeEffectOverscrollEffect.d).getValue();
        if (Size.e(canvasDrawScope.i())) {
            layoutNodeDrawScope.a();
            return;
        }
        boolean isHardwareAccelerated = a.isHardwareAccelerated();
        EdgeEffectWrapper edgeEffectWrapper = this.A;
        if (!isHardwareAccelerated) {
            EdgeEffect edgeEffect = edgeEffectWrapper.d;
            if (edgeEffect != null) {
                edgeEffect.finish();
            }
            EdgeEffect edgeEffect2 = edgeEffectWrapper.e;
            if (edgeEffect2 != null) {
                edgeEffect2.finish();
            }
            EdgeEffect edgeEffect3 = edgeEffectWrapper.f;
            if (edgeEffect3 != null) {
                edgeEffect3.finish();
            }
            EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
            if (edgeEffect4 != null) {
                edgeEffect4.finish();
            }
            EdgeEffect edgeEffect5 = edgeEffectWrapper.h;
            if (edgeEffect5 != null) {
                edgeEffect5.finish();
            }
            EdgeEffect edgeEffect6 = edgeEffectWrapper.i;
            if (edgeEffect6 != null) {
                edgeEffect6.finish();
            }
            EdgeEffect edgeEffect7 = edgeEffectWrapper.j;
            if (edgeEffect7 != null) {
                edgeEffect7.finish();
            }
            EdgeEffect edgeEffect8 = edgeEffectWrapper.k;
            if (edgeEffect8 != null) {
                edgeEffect8.finish();
            }
            layoutNodeDrawScope.a();
            return;
        }
        float i0 = layoutNodeDrawScope.i0(30.0f);
        if (!EdgeEffectWrapper.f(edgeEffectWrapper.d) && !EdgeEffectWrapper.g(edgeEffectWrapper.h) && !EdgeEffectWrapper.f(edgeEffectWrapper.e) && !EdgeEffectWrapper.g(edgeEffectWrapper.i)) {
            z = false;
        } else {
            z = true;
        }
        if (!EdgeEffectWrapper.f(edgeEffectWrapper.f) && !EdgeEffectWrapper.g(edgeEffectWrapper.j) && !EdgeEffectWrapper.f(edgeEffectWrapper.g) && !EdgeEffectWrapper.g(edgeEffectWrapper.k)) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z && z2) {
            c1().setPosition(0, 0, a.getWidth(), a.getHeight());
        } else if (z) {
            c1().setPosition(0, 0, (MathKt.b(i0) * 2) + a.getWidth(), a.getHeight());
        } else if (z2) {
            c1().setPosition(0, 0, a.getWidth(), (MathKt.b(i0) * 2) + a.getHeight());
        } else {
            layoutNodeDrawScope.a();
            return;
        }
        beginRecording = c1().beginRecording();
        if (EdgeEffectWrapper.g(edgeEffectWrapper.j)) {
            EdgeEffect edgeEffect9 = edgeEffectWrapper.j;
            if (edgeEffect9 == null) {
                edgeEffect9 = edgeEffectWrapper.a(Orientation.k);
                edgeEffectWrapper.j = edgeEffect9;
            }
            b1(90.0f, edgeEffect9, beginRecording);
            edgeEffect9.finish();
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.f)) {
            EdgeEffect c2 = edgeEffectWrapper.c();
            z4 = b1(270.0f, c2, beginRecording);
            if (EdgeEffectWrapper.g(edgeEffectWrapper.f)) {
                z3 = z2;
                float intBitsToFloat = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.d() & 4294967295L));
                EdgeEffect edgeEffect10 = edgeEffectWrapper.j;
                if (edgeEffect10 == null) {
                    edgeEffect10 = edgeEffectWrapper.a(Orientation.k);
                    edgeEffectWrapper.j = edgeEffect10;
                }
                EdgeEffectCompat.d(edgeEffect10, EdgeEffectCompat.b(c2), 1.0f - intBitsToFloat);
            } else {
                z3 = z2;
            }
        } else {
            z3 = z2;
            z4 = false;
        }
        if (EdgeEffectWrapper.g(edgeEffectWrapper.h)) {
            EdgeEffect edgeEffect11 = edgeEffectWrapper.h;
            if (edgeEffect11 == null) {
                edgeEffect11 = edgeEffectWrapper.a(Orientation.j);
                edgeEffectWrapper.h = edgeEffect11;
            }
            b1(180.0f, edgeEffect11, beginRecording);
            edgeEffect11.finish();
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
            EdgeEffect e = edgeEffectWrapper.e();
            if (!b1(0.0f, e, beginRecording) && !z4) {
                z4 = false;
            } else {
                z4 = true;
            }
            c = ' ';
            if (EdgeEffectWrapper.g(edgeEffectWrapper.d)) {
                float intBitsToFloat2 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.d() >> 32));
                EdgeEffect edgeEffect12 = edgeEffectWrapper.h;
                if (edgeEffect12 == null) {
                    edgeEffect12 = edgeEffectWrapper.a(Orientation.j);
                    edgeEffectWrapper.h = edgeEffect12;
                }
                EdgeEffectCompat.d(edgeEffect12, EdgeEffectCompat.b(e), intBitsToFloat2);
            }
        } else {
            c = ' ';
        }
        if (EdgeEffectWrapper.g(edgeEffectWrapper.k)) {
            EdgeEffect edgeEffect13 = edgeEffectWrapper.k;
            if (edgeEffect13 == null) {
                edgeEffect13 = edgeEffectWrapper.a(Orientation.k);
                edgeEffectWrapper.k = edgeEffect13;
            }
            b1(270.0f, edgeEffect13, beginRecording);
            edgeEffect13.finish();
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
            EdgeEffect d = edgeEffectWrapper.d();
            if (!b1(90.0f, d, beginRecording) && !z4) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                float intBitsToFloat3 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.d() & 4294967295L));
                EdgeEffect edgeEffect14 = edgeEffectWrapper.k;
                if (edgeEffect14 == null) {
                    edgeEffect14 = edgeEffectWrapper.a(Orientation.k);
                    edgeEffectWrapper.k = edgeEffect14;
                }
                EdgeEffectCompat.d(edgeEffect14, EdgeEffectCompat.b(d), intBitsToFloat3);
            }
        }
        if (EdgeEffectWrapper.g(edgeEffectWrapper.i)) {
            EdgeEffect edgeEffect15 = edgeEffectWrapper.i;
            if (edgeEffect15 == null) {
                edgeEffect15 = edgeEffectWrapper.a(Orientation.j);
                edgeEffectWrapper.i = edgeEffect15;
            }
            f = 0.0f;
            b1(0.0f, edgeEffect15, beginRecording);
            edgeEffect15.finish();
        } else {
            f = 0.0f;
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.e)) {
            EdgeEffect b = edgeEffectWrapper.b();
            if (!b1(180.0f, b, beginRecording) && !z4) {
                z5 = false;
            } else {
                z5 = true;
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.e)) {
                float intBitsToFloat4 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.d() >> c));
                EdgeEffect edgeEffect16 = edgeEffectWrapper.i;
                if (edgeEffect16 == null) {
                    edgeEffect16 = edgeEffectWrapper.a(Orientation.j);
                    edgeEffectWrapper.i = edgeEffect16;
                }
                EdgeEffectCompat.d(edgeEffect16, EdgeEffectCompat.b(b), 1.0f - intBitsToFloat4);
            }
            z4 = z5;
        }
        if (z4) {
            androidEdgeEffectOverscrollEffect.e();
        }
        if (z3) {
            f2 = f;
        } else {
            f2 = i0;
        }
        if (z) {
            i0 = f;
        }
        LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.a = beginRecording;
        long i2 = canvasDrawScope.i();
        Density b2 = canvasDrawScope.k.b();
        LayoutDirection c3 = canvasDrawScope.k.c();
        androidx.compose.ui.graphics.Canvas a2 = canvasDrawScope.k.a();
        long d2 = canvasDrawScope.k.d();
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
        GraphicsLayer graphicsLayer = canvasDrawScope$drawContext$1.b;
        canvasDrawScope$drawContext$1.f(layoutNodeDrawScope);
        canvasDrawScope$drawContext$1.g(layoutDirection);
        canvasDrawScope$drawContext$1.e(androidCanvas);
        canvasDrawScope$drawContext$1.h(i2);
        canvasDrawScope$drawContext$1.b = null;
        androidCanvas.g();
        try {
            canvasDrawScope.k.a.c(f2, i0);
            try {
                layoutNodeDrawScope.a();
                androidCanvas.r();
                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$12 = canvasDrawScope.k;
                canvasDrawScope$drawContext$12.f(b2);
                canvasDrawScope$drawContext$12.g(c3);
                canvasDrawScope$drawContext$12.e(a2);
                canvasDrawScope$drawContext$12.h(d2);
                canvasDrawScope$drawContext$12.b = graphicsLayer;
                c1().endRecording();
                int save = a.save();
                a.translate(f3, f4);
                a.drawRenderNode(c1());
                a.restoreToCount(save);
            } finally {
                canvasDrawScope.k.a.c(-f2, -i0);
            }
        } catch (Throwable th) {
            androidCanvas.r();
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$13 = canvasDrawScope.k;
            canvasDrawScope$drawContext$13.f(b2);
            canvasDrawScope$drawContext$13.g(c3);
            canvasDrawScope$drawContext$13.e(a2);
            canvasDrawScope$drawContext$13.h(d2);
            canvasDrawScope$drawContext$13.b = graphicsLayer;
            throw th;
        }
    }
}
