package androidx.compose.foundation.shape;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CornerBasedShape implements Shape {
    public final CornerSize a;
    public final CornerSize b;
    public final CornerSize c;
    public final CornerSize d;

    public CornerBasedShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        this.a = cornerSize;
        this.b = cornerSize2;
        this.c = cornerSize3;
        this.d = cornerSize4;
    }

    @Override // androidx.compose.ui.graphics.Shape
    public final Outline a(long j, LayoutDirection layoutDirection, Density density) {
        float a = this.a.a(j, density);
        float a2 = this.b.a(j, density);
        float a3 = this.c.a(j, density);
        float a4 = this.d.a(j, density);
        float c = Size.c(j);
        float f = a + a4;
        if (f > c) {
            float f2 = c / f;
            a *= f2;
            a4 *= f2;
        }
        float f3 = a2 + a3;
        if (f3 > c) {
            float f4 = c / f3;
            a2 *= f4;
            a3 *= f4;
        }
        if (a < 0.0f || a2 < 0.0f || a3 < 0.0f || a4 < 0.0f) {
            StringBuilder n = q.n("Corner size in Px can't be negative(topStart = ", a, ", topEnd = ", a2, ", bottomEnd = ");
            n.append(a3);
            n.append(", bottomStart = ");
            n.append(a4);
            n.append(")!");
            InlineClassHelperKt.a(n.toString());
        }
        return b(j, a, a2, a3, a4, layoutDirection);
    }

    public abstract Outline b(long j, float f, float f2, float f3, float f4, LayoutDirection layoutDirection);
}
