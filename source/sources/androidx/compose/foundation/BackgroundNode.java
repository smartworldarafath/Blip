package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.k8;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackgroundNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode, SemanticsModifierNode {
    public Shape A;
    public long B;
    public LayoutDirection C;
    public Outline D;
    public Shape E;
    public Outline F;
    public long x;
    public Brush y;
    public float z;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.d(semanticsPropertyReceiver, this.A);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0187  */
    @Override // androidx.compose.ui.node.DrawModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(final LayoutNodeDrawScope layoutNodeDrawScope) {
        Outline outline;
        LayoutNodeDrawScope layoutNodeDrawScope2;
        long j;
        char c;
        Brush brush;
        Brush brush2;
        Path path;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        if (this.A == RectangleShapeKt.a) {
            if (!Color.c(this.x, Color.h)) {
                DrawScope.r0(layoutNodeDrawScope, this.x, 0L, 0.0f, null, 126);
            }
            Brush brush3 = this.y;
            if (brush3 != null) {
                DrawScope.O(layoutNodeDrawScope, brush3, 0L, 0L, this.z, null, 118);
            }
        } else {
            if (Size.a(canvasDrawScope.i(), this.B) && layoutNodeDrawScope.getLayoutDirection() == this.C && Intrinsics.a(this.E, this.A)) {
                outline = this.D;
                outline.getClass();
            } else {
                ObserverModifierNodeKt.a(this, new Function0() { // from class: androidx.compose.foundation.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        BackgroundNode backgroundNode = BackgroundNode.this;
                        Shape shape = backgroundNode.A;
                        LayoutNodeDrawScope layoutNodeDrawScope3 = layoutNodeDrawScope;
                        backgroundNode.F = shape.a(layoutNodeDrawScope3.j.i(), layoutNodeDrawScope3.getLayoutDirection(), layoutNodeDrawScope3);
                        return Unit.a;
                    }
                });
                outline = this.F;
                this.F = null;
            }
            Outline outline2 = outline;
            this.D = outline2;
            this.B = canvasDrawScope.i();
            this.C = layoutNodeDrawScope.getLayoutDirection();
            this.E = this.A;
            outline2.getClass();
            boolean c2 = Color.c(this.x, Color.h);
            Fill fill = Fill.a;
            if (!c2) {
                long j2 = this.x;
                if (outline2 instanceof Outline.Rectangle) {
                    Rect rect = ((Outline.Rectangle) outline2).a;
                    float f = rect.a;
                    float f2 = rect.b;
                    layoutNodeDrawScope.D(j2, (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32), OutlineKt.a(rect), 1.0f, fill, null, 3);
                    layoutNodeDrawScope2 = layoutNodeDrawScope;
                    fill = fill;
                } else {
                    layoutNodeDrawScope2 = layoutNodeDrawScope;
                    if (outline2 instanceof Outline.Rounded) {
                        Outline.Rounded rounded = (Outline.Rounded) outline2;
                        AndroidPath androidPath = rounded.b;
                        if (androidPath != null) {
                            layoutNodeDrawScope2.c(androidPath, j2, fill);
                        } else {
                            RoundRect roundRect = rounded.a;
                            float f3 = roundRect.b;
                            float f4 = roundRect.a;
                            float intBitsToFloat = Float.intBitsToFloat((int) (roundRect.h >> 32));
                            c = ' ';
                            j = 4294967295L;
                            long floatToRawIntBits = (Float.floatToRawIntBits(f4) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L);
                            float f5 = roundRect.c - f4;
                            float f6 = roundRect.d - f3;
                            long floatToRawIntBits2 = (Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f6) & 4294967295L);
                            long floatToRawIntBits3 = (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                            int i = (int) (floatToRawIntBits >> 32);
                            int i2 = (int) (floatToRawIntBits & 4294967295L);
                            canvasDrawScope.j.c.u(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (floatToRawIntBits2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (floatToRawIntBits2 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (floatToRawIntBits3 >> 32)), Float.intBitsToFloat((int) (floatToRawIntBits3 & 4294967295L)), CanvasDrawScope.a(canvasDrawScope, j2, fill, 1.0f, null, 3));
                        }
                    } else {
                        c = ' ';
                        j = 4294967295L;
                        if (outline2 instanceof Outline.Generic) {
                            layoutNodeDrawScope2.c(((Outline.Generic) outline2).a, j2, fill);
                        } else {
                            k8.e();
                            return;
                        }
                    }
                    brush = this.y;
                    if (brush != null) {
                        float f7 = this.z;
                        if (outline2 instanceof Outline.Rectangle) {
                            Rect rect2 = ((Outline.Rectangle) outline2).a;
                            float f8 = rect2.a;
                            float f9 = rect2.b;
                            LayoutNodeDrawScope layoutNodeDrawScope3 = layoutNodeDrawScope2;
                            layoutNodeDrawScope3.m0(brush, (Float.floatToRawIntBits(f9) & j) | (Float.floatToRawIntBits(f8) << c), OutlineKt.a(rect2), f7, fill, 3);
                        } else {
                            if (outline2 instanceof Outline.Rounded) {
                                Outline.Rounded rounded2 = (Outline.Rounded) outline2;
                                brush2 = brush;
                                path = rounded2.b;
                                if (path == null) {
                                    RoundRect roundRect2 = rounded2.a;
                                    float f10 = roundRect2.b;
                                    float f11 = roundRect2.a;
                                    float intBitsToFloat2 = Float.intBitsToFloat((int) (roundRect2.h >> c));
                                    float f12 = roundRect2.c - f11;
                                    float f13 = roundRect2.d - f10;
                                    layoutNodeDrawScope.d(brush2, (Float.floatToRawIntBits(f11) << c) | (Float.floatToRawIntBits(f10) & j), (Float.floatToRawIntBits(f12) << c) | (Float.floatToRawIntBits(f13) & j), (Float.floatToRawIntBits(intBitsToFloat2) & j) | (Float.floatToRawIntBits(intBitsToFloat2) << c), f7, fill);
                                }
                            } else if (outline2 instanceof Outline.Generic) {
                                brush2 = brush;
                                path = ((Outline.Generic) outline2).a;
                            } else {
                                k8.e();
                                return;
                            }
                            layoutNodeDrawScope.u0(path, brush2, f7, fill, 3);
                        }
                    }
                }
            } else {
                layoutNodeDrawScope2 = layoutNodeDrawScope;
            }
            c = ' ';
            j = 4294967295L;
            brush = this.y;
            if (brush != null) {
            }
        }
        layoutNodeDrawScope.a();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean n() {
        return false;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        this.B = 9205357640488583168L;
        this.C = null;
        this.D = null;
        this.E = null;
        DrawModifierNodeKt.a(this);
    }
}
