package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.vector.PathNode;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PathBuilder {
    public final ArrayList a = new ArrayList(32);

    public final void a(float f, float f2, float f3) {
        this.a.add(new PathNode.RelativeArcTo(f, f2, 0.0f, true, true, f3, 0.0f));
    }

    public final void b() {
        this.a.add(PathNode.Close.c);
    }

    public final void c(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.add(new PathNode.CurveTo(f, f2, f3, f4, f5, f6));
    }

    public final void d(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.add(new PathNode.RelativeCurveTo(f, f2, f3, f4, f5, f6));
    }

    public final void e(float f) {
        this.a.add(new PathNode.HorizontalTo(f));
    }

    public final void f(float f) {
        this.a.add(new PathNode.RelativeHorizontalTo(f));
    }

    public final void g(float f, float f2) {
        this.a.add(new PathNode.LineTo(f, f2));
    }

    public final void h(float f, float f2) {
        this.a.add(new PathNode.RelativeLineTo(f, f2));
    }

    public final void i(float f, float f2) {
        this.a.add(new PathNode.MoveTo(f, f2));
    }

    public final void j(float f, float f2, float f3, float f4) {
        this.a.add(new PathNode.ReflectiveCurveTo(f, f2, f3, f4));
    }

    public final void k(float f, float f2, float f3, float f4) {
        this.a.add(new PathNode.RelativeReflectiveCurveTo(f, f2, f3, f4));
    }

    public final void l(float f) {
        this.a.add(new PathNode.VerticalTo(f));
    }

    public final void m(float f) {
        this.a.add(new PathNode.RelativeVerticalTo(f));
    }
}
