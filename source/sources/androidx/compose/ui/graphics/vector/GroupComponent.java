package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.c;
import defpackage.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GroupComponent extends VNode {
    public float[] b;
    public final ArrayList c = new ArrayList();
    public boolean d = true;
    public long e = Color.h;
    public List f;
    public boolean g;
    public AndroidPath h;
    public Function1 i;
    public final c j;
    public String k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public boolean s;

    public GroupComponent() {
        int i = VectorKt.a;
        this.f = EmptyList.j;
        this.g = true;
        this.j = new c(24, this);
        this.k = "";
        this.o = 1.0f;
        this.p = 1.0f;
        this.s = true;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void a(DrawScope drawScope) {
        if (this.s) {
            float[] fArr = this.b;
            if (fArr == null) {
                fArr = Matrix.a();
                this.b = fArr;
            } else {
                Matrix.d(fArr);
            }
            Matrix.f(fArr, this.q + this.m, this.r + this.n);
            float f = this.l;
            if (fArr.length >= 16) {
                double d = f * 0.017453292519943295d;
                float sin = (float) Math.sin(d);
                float cos = (float) Math.cos(d);
                float f2 = fArr[0];
                float f3 = fArr[4];
                float f4 = (sin * f3) + (cos * f2);
                float f5 = -sin;
                float f6 = (f3 * cos) + (f2 * f5);
                float f7 = fArr[1];
                float f8 = fArr[5];
                float f9 = (sin * f8) + (cos * f7);
                float f10 = (f8 * cos) + (f7 * f5);
                float f11 = fArr[2];
                float f12 = fArr[6];
                float f13 = (sin * f12) + (cos * f11);
                float f14 = (f12 * cos) + (f11 * f5);
                float f15 = fArr[3];
                float f16 = fArr[7];
                fArr[0] = f4;
                fArr[1] = f9;
                fArr[2] = f13;
                fArr[3] = (sin * f16) + (cos * f15);
                fArr[4] = f6;
                fArr[5] = f10;
                fArr[6] = f14;
                fArr[7] = (cos * f16) + (f5 * f15);
            }
            float f17 = this.o;
            float f18 = this.p;
            if (fArr.length >= 16) {
                fArr[0] = fArr[0] * f17;
                fArr[1] = fArr[1] * f17;
                fArr[2] = fArr[2] * f17;
                fArr[3] = fArr[3] * f17;
                fArr[4] = fArr[4] * f18;
                fArr[5] = fArr[5] * f18;
                fArr[6] = fArr[6] * f18;
                fArr[7] = fArr[7] * f18;
                fArr[8] = fArr[8] * 1.0f;
                fArr[9] = fArr[9] * 1.0f;
                fArr[10] = fArr[10] * 1.0f;
                fArr[11] = fArr[11] * 1.0f;
            }
            Matrix.f(fArr, -this.m, -this.n);
            this.s = false;
        }
        if (this.g) {
            if (!this.f.isEmpty()) {
                AndroidPath androidPath = this.h;
                if (androidPath == null) {
                    androidPath = AndroidPath_androidKt.a();
                    this.h = androidPath;
                }
                PathParserKt.b(this.f, androidPath);
            }
            this.g = false;
        }
        CanvasDrawScope$drawContext$1 l0 = drawScope.l0();
        long d2 = l0.d();
        l0.a().g();
        try {
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = l0.a.a;
            float[] fArr2 = this.b;
            if (fArr2 != null) {
                canvasDrawScope$drawContext$1.a().k(fArr2);
            }
            AndroidPath androidPath2 = this.h;
            if (!this.f.isEmpty() && androidPath2 != null) {
                canvasDrawScope$drawContext$1.a().j(androidPath2);
            }
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((VNode) arrayList.get(i)).a(drawScope);
            }
        } finally {
            q.v(l0, d2);
        }
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final Function1 b() {
        return this.i;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void d(c cVar) {
        this.i = cVar;
    }

    public final void e(int i, VNode vNode) {
        ArrayList arrayList = this.c;
        if (i < arrayList.size()) {
            arrayList.set(i, vNode);
        } else {
            arrayList.add(vNode);
        }
        g(vNode);
        vNode.d(this.j);
        c();
    }

    public final void f(long j) {
        if (this.d && j != 16) {
            long j2 = this.e;
            if (j2 == 16) {
                this.e = j;
                return;
            }
            int i = VectorKt.a;
            if (Color.h(j2) != Color.h(j) || Color.g(j2) != Color.g(j) || Color.e(j2) != Color.e(j)) {
                this.d = false;
                this.e = Color.h;
            }
        }
    }

    public final void g(VNode vNode) {
        if (vNode instanceof PathComponent) {
            PathComponent pathComponent = (PathComponent) vNode;
            Brush brush = pathComponent.b;
            if (this.d && brush != null) {
                if (brush instanceof SolidColor) {
                    f(((SolidColor) brush).a);
                } else {
                    this.d = false;
                    this.e = Color.h;
                }
            }
            Brush brush2 = pathComponent.g;
            if (this.d && brush2 != null) {
                if (brush2 instanceof SolidColor) {
                    f(((SolidColor) brush2).a);
                    return;
                } else {
                    this.d = false;
                    this.e = Color.h;
                    return;
                }
            }
            return;
        }
        if (vNode instanceof GroupComponent) {
            GroupComponent groupComponent = (GroupComponent) vNode;
            if (groupComponent.d && this.d) {
                f(groupComponent.e);
            } else {
                this.d = false;
                this.e = Color.h;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VGroup: ");
        sb.append(this.k);
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            VNode vNode = (VNode) arrayList.get(i);
            sb.append("\t");
            sb.append(vNode.toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}
