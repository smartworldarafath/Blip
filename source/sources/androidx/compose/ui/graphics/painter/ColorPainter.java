package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ColorPainter extends Painter {
    public final long o;
    public ColorFilter q;
    public float p = 1.0f;
    public final long r = 9205357640488583168L;

    public ColorPainter(long j) {
        this.o = j;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean d(float f) {
        this.p = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean e(ColorFilter colorFilter) {
        this.q = colorFilter;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorPainter)) {
            return false;
        }
        if (Color.c(this.o, ((ColorPainter) obj).o)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.o);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        return this.r;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        DrawScope.r0(layoutNodeDrawScope, this.o, 0L, this.p, this.q, 86);
    }

    public final String toString() {
        return q.i("ColorPainter(color=", Color.i(this.o), ")");
    }
}
