package androidx.compose.ui.graphics.vector;

import android.graphics.Path;
import android.graphics.PathMeasure;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPathMeasure;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import defpackage.vc;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PathComponent extends VNode {
    public Brush b;
    public float c = 1.0f;
    public List d;
    public float e;
    public float f;
    public Brush g;
    public int h;
    public int i;
    public float j;
    public float k;
    public float l;
    public float m;
    public boolean n;
    public boolean o;
    public boolean p;
    public Stroke q;
    public final AndroidPath r;
    public AndroidPath s;
    public AndroidPath t;
    public final Lazy u;

    public PathComponent() {
        int i = VectorKt.a;
        this.d = EmptyList.j;
        this.e = 1.0f;
        this.h = 0;
        this.i = 0;
        this.j = 4.0f;
        this.l = 1.0f;
        this.n = true;
        this.o = true;
        AndroidPath a = AndroidPath_androidKt.a();
        this.r = a;
        this.s = a;
        this.u = LazyKt.a(LazyThreadSafetyMode.k, new vc(1));
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void a(DrawScope drawScope) {
        DrawScope drawScope2;
        Stroke stroke;
        if (this.n) {
            PathParserKt.b(this.d, this.r);
            e();
        } else if (this.p) {
            e();
        }
        this.n = false;
        this.p = false;
        Brush brush = this.b;
        if (brush != null) {
            drawScope2 = drawScope;
            DrawScope.H(drawScope2, this.s, brush, this.c, null, 56);
        } else {
            drawScope2 = drawScope;
        }
        Brush brush2 = this.g;
        if (brush2 != null) {
            Stroke stroke2 = this.q;
            if (!this.o && stroke2 != null) {
                stroke = stroke2;
            } else {
                Stroke stroke3 = new Stroke(this.f, this.j, this.h, this.i, 16);
                this.q = stroke3;
                this.o = false;
                stroke = stroke3;
            }
            DrawScope.H(drawScope2, this.s, brush2, this.e, stroke, 48);
        }
    }

    public final void e() {
        boolean z;
        Path path;
        float f = this.k;
        AndroidPath androidPath = this.r;
        if (f == 0.0f && this.l == 1.0f) {
            this.s = androidPath;
            return;
        }
        if (Intrinsics.a(this.s, androidPath)) {
            this.s = AndroidPath_androidKt.a();
        } else {
            Path.FillType fillType = this.s.a.getFillType();
            Path.FillType fillType2 = Path.FillType.EVEN_ODD;
            if (fillType == fillType2) {
                z = true;
            } else {
                z = false;
            }
            this.s.a.rewind();
            Path path2 = this.s.a;
            if (!z) {
                fillType2 = Path.FillType.WINDING;
            }
            path2.setFillType(fillType2);
        }
        Lazy lazy = this.u;
        PathMeasure pathMeasure = ((AndroidPathMeasure) ((androidx.compose.ui.graphics.PathMeasure) lazy.getValue())).a;
        if (androidPath != null) {
            path = androidPath.a;
        } else {
            path = null;
        }
        pathMeasure.setPath(path, false);
        float length = ((AndroidPathMeasure) ((androidx.compose.ui.graphics.PathMeasure) lazy.getValue())).a.getLength();
        float f2 = this.k;
        float f3 = this.m;
        float f4 = ((f2 + f3) % 1.0f) * length;
        float f5 = ((this.l + f3) % 1.0f) * length;
        if (f4 > f5) {
            AndroidPath androidPath2 = this.t;
            if (androidPath2 == null) {
                androidPath2 = AndroidPath_androidKt.a();
                this.t = androidPath2;
            }
            androidPath2.i();
            ((AndroidPathMeasure) ((androidx.compose.ui.graphics.PathMeasure) lazy.getValue())).a(f4, length, androidPath2);
            androidx.compose.ui.graphics.Path.b(this.s, androidPath2);
            androidPath2.i();
            ((AndroidPathMeasure) ((androidx.compose.ui.graphics.PathMeasure) lazy.getValue())).a(0.0f, f5, androidPath2);
            androidx.compose.ui.graphics.Path.b(this.s, androidPath2);
            return;
        }
        ((AndroidPathMeasure) ((androidx.compose.ui.graphics.PathMeasure) lazy.getValue())).a(f4, f5, this.s);
    }

    public final String toString() {
        return this.r.toString();
    }
}
