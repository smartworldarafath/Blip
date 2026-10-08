package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.jb;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BitmapPainter extends Painter {
    public final ImageBitmap o;
    public final long p;
    public int q;
    public final long r;
    public float s;
    public ColorFilter t;

    public BitmapPainter(ImageBitmap imageBitmap, long j) {
        int i;
        this.o = imageBitmap;
        this.p = j;
        this.q = 1;
        int i2 = (int) (j >> 32);
        if (i2 >= 0 && (i = (int) (4294967295L & j)) >= 0) {
            AndroidImageBitmap androidImageBitmap = (AndroidImageBitmap) imageBitmap;
            if (i2 <= androidImageBitmap.a.getWidth() && i <= androidImageBitmap.a.getHeight()) {
                this.r = j;
                this.s = 1.0f;
                return;
            }
        }
        u2.g("Failed requirement.");
        throw null;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean d(float f) {
        this.s = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean e(ColorFilter colorFilter) {
        this.t = colorFilter;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BitmapPainter) {
                BitmapPainter bitmapPainter = (BitmapPainter) obj;
                if (Intrinsics.a(this.o, bitmapPainter.o) && IntOffset.a(0L, 0L) && IntSize.a(this.p, bitmapPainter.p) && this.q == bitmapPainter.q) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Integer.hashCode(this.q) + jb.a(jb.a(this.o.hashCode() * 31, 31, 0L), 31, this.p);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        return IntSizeKt.a(this.r);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        DrawScope.A(layoutNodeDrawScope, this.o, this.p, (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L))) & 4294967295L), this.s, this.t, this.q, 328);
    }

    public final String toString() {
        String str;
        String d = IntOffset.d(0L);
        String b = IntSize.b(this.p);
        int i = this.q;
        if (i == 0) {
            str = "None";
        } else if (i == 1) {
            str = "Low";
        } else if (i == 2) {
            str = "Medium";
        } else if (i == 3) {
            str = "High";
        } else {
            str = "Unknown";
        }
        return "BitmapPainter(image=" + this.o + ", srcOffset=" + d + ", srcSize=" + b + ", filterQuality=" + str + ")";
    }

    public BitmapPainter(ImageBitmap imageBitmap) {
        this(imageBitmap, (((AndroidImageBitmap) imageBitmap).a.getHeight() & 4294967295L) | (((AndroidImageBitmap) imageBitmap).a.getWidth() << 32));
    }
}
