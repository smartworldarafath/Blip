package androidx.compose.foundation;

import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class GlowOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public final EdgeEffectWrapper A;
    public final PaddingValues B;
    public final AndroidEdgeEffectOverscrollEffect z;

    public GlowOverscrollNode(SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper, PaddingValues paddingValues) {
        this.z = androidEdgeEffectOverscrollEffect;
        this.A = edgeEffectWrapper;
        this.B = paddingValues;
        Y0(suspendingPointerInputModifierNodeImpl);
    }

    public static boolean b1(float f, long j, EdgeEffect edgeEffect, Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(f);
        canvas.translate(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z;
        char c;
        long j;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        long i = canvasDrawScope.i();
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.z;
        androidEdgeEffectOverscrollEffect.k(i);
        if (Size.e(canvasDrawScope.i())) {
            layoutNodeDrawScope.a();
            return;
        }
        layoutNodeDrawScope.a();
        ((SnapshotMutableStateImpl) androidEdgeEffectOverscrollEffect.d).getValue();
        Canvas a = AndroidCanvas_androidKt.a(canvasDrawScope.k.a());
        EdgeEffectWrapper edgeEffectWrapper = this.A;
        boolean f = EdgeEffectWrapper.f(edgeEffectWrapper.f);
        PaddingValues paddingValues = this.B;
        boolean z2 = false;
        if (f) {
            EdgeEffect c2 = edgeEffectWrapper.c();
            float f2 = -Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L));
            float i0 = layoutNodeDrawScope.i0(paddingValues.b(layoutNodeDrawScope.getLayoutDirection()));
            z = b1(270.0f, (Float.floatToRawIntBits(i0) & 4294967295L) | (Float.floatToRawIntBits(f2) << 32), c2, a);
        } else {
            z = false;
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
            EdgeEffect e = edgeEffectWrapper.e();
            float i02 = layoutNodeDrawScope.i0(paddingValues.d());
            c = ' ';
            j = 4294967295L;
            if (!b1(0.0f, (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(i02) & 4294967295L), e, a) && !z) {
                z = false;
            } else {
                z = true;
            }
        } else {
            c = ' ';
            j = 4294967295L;
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
            EdgeEffect d = edgeEffectWrapper.d();
            float i03 = layoutNodeDrawScope.i0(paddingValues.c(layoutNodeDrawScope.getLayoutDirection())) + (-MathKt.b(Float.intBitsToFloat((int) (canvasDrawScope.i() >> c))));
            if (!b1(90.0f, (Float.floatToRawIntBits(i03) & j) | (Float.floatToRawIntBits(0.0f) << c), d, a) && !z) {
                z = false;
            } else {
                z = true;
            }
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.e)) {
            EdgeEffect b = edgeEffectWrapper.b();
            float i04 = layoutNodeDrawScope.i0(paddingValues.a());
            float f3 = -Float.intBitsToFloat((int) (canvasDrawScope.i() >> c));
            float f4 = (-Float.intBitsToFloat((int) (canvasDrawScope.i() & j))) + i04;
            if (b1(180.0f, (Float.floatToRawIntBits(f3) << c) | (Float.floatToRawIntBits(f4) & j), b, a) || z) {
                z2 = true;
            }
            z = z2;
        }
        if (z) {
            androidEdgeEffectOverscrollEffect.e();
        }
    }
}
