package racra.compose.smooth_corner_rect_library;

import android.graphics.Path;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AbsoluteSmoothCornerShape extends CornerBasedShape {
    public final float e;
    public final int f;
    public final float g;
    public final int h;
    public final float i;
    public final int j;
    public final float k;
    public final int l;

    public AbsoluteSmoothCornerShape(float f, int i, float f2, int i2, float f3, int i3, float f4, int i4) {
        super(CornerSizeKt.a(f), CornerSizeKt.a(f2), CornerSizeKt.a(f3), CornerSizeKt.a(f4));
        this.e = f;
        this.f = i;
        this.g = f2;
        this.h = i2;
        this.i = f3;
        this.j = i3;
        this.k = f4;
        this.l = i4;
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    public final Outline b(long j, float f, float f2, float f3, float f4, LayoutDirection layoutDirection) {
        layoutDirection.getClass();
        if (f + f2 + f3 + f4 == 0.0f) {
            return new Outline.Rectangle(RectKt.a(0L, j));
        }
        int i = this.f;
        int i2 = this.h;
        int i3 = this.j;
        int i4 = this.l;
        if (i + i2 + i3 + i4 == 0) {
            Rect a = RectKt.a(0L, j);
            return new Outline.Rounded(new RoundRect(a.a, a.b, a.c, a.d, CornerRadiusKt.a(f), CornerRadiusKt.a(f2), CornerRadiusKt.a(f3), CornerRadiusKt.a(f4)));
        }
        AndroidPath a2 = AndroidPath_androidKt.a();
        Path path = a2.a;
        float min = Math.min(Size.b(j), Size.d(j)) / 2.0f;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SmoothCorner smoothCorner = (SmoothCorner) linkedHashMap.get(f + " - " + i);
        if (smoothCorner == null) {
            smoothCorner = new SmoothCorner(f, min, i);
        }
        Arc arc = smoothCorner.e;
        PointRelativeToVertex pointRelativeToVertex = smoothCorner.c;
        PointRelativeToVertex pointRelativeToVertex2 = smoothCorner.b;
        PointRelativeToVertex pointRelativeToVertex3 = smoothCorner.a;
        path.moveTo(pointRelativeToVertex3.b, pointRelativeToVertex3.a);
        float f5 = pointRelativeToVertex2.b;
        float f6 = pointRelativeToVertex2.a;
        float f7 = pointRelativeToVertex.b;
        float f8 = pointRelativeToVertex.a;
        PointRelativeToVertex pointRelativeToVertex4 = smoothCorner.d;
        a2.e(f5, f6, f7, f8, pointRelativeToVertex4.b, pointRelativeToVertex4.a);
        float f9 = arc.a * 2.0f;
        a2.a(new Rect(0.0f, 0.0f, f9, f9), (float) (Math.toRadians(180.0d) + arc.b), arc.c);
        a2.e(pointRelativeToVertex.a, pointRelativeToVertex.b, pointRelativeToVertex2.a, pointRelativeToVertex2.b, pointRelativeToVertex3.a, pointRelativeToVertex3.b);
        SmoothCorner smoothCorner2 = (SmoothCorner) linkedHashMap.get(f2 + " - " + i2);
        if (smoothCorner2 == null) {
            smoothCorner2 = new SmoothCorner(f2, min, i2);
        }
        PointRelativeToVertex pointRelativeToVertex5 = smoothCorner2.c;
        PointRelativeToVertex pointRelativeToVertex6 = smoothCorner2.b;
        PointRelativeToVertex pointRelativeToVertex7 = smoothCorner2.a;
        Arc arc2 = smoothCorner2.e;
        a2.g(Size.d(j) - pointRelativeToVertex7.a, pointRelativeToVertex7.b);
        float d = Size.d(j) - pointRelativeToVertex6.a;
        float f10 = pointRelativeToVertex6.b;
        float d2 = Size.d(j) - pointRelativeToVertex5.a;
        float f11 = pointRelativeToVertex5.b;
        float d3 = Size.d(j);
        PointRelativeToVertex pointRelativeToVertex8 = smoothCorner2.d;
        a2.e(d, f10, d2, f11, d3 - pointRelativeToVertex8.a, pointRelativeToVertex8.b);
        a2.a(new Rect(Size.d(j) - (arc2.a * 2.0f), 0.0f, Size.d(j), arc2.a * 2.0f), (float) (Math.toRadians(270.0d) + arc2.b), arc2.c);
        a2.e(Size.d(j) - pointRelativeToVertex5.b, pointRelativeToVertex5.a, Size.d(j) - pointRelativeToVertex6.b, pointRelativeToVertex6.a, Size.d(j) - pointRelativeToVertex7.b, pointRelativeToVertex7.a);
        SmoothCorner smoothCorner3 = (SmoothCorner) linkedHashMap.get(f3 + " - " + i3);
        if (smoothCorner3 == null) {
            smoothCorner3 = new SmoothCorner(f3, min, i3);
        }
        PointRelativeToVertex pointRelativeToVertex9 = smoothCorner3.d;
        Arc arc3 = smoothCorner3.e;
        PointRelativeToVertex pointRelativeToVertex10 = smoothCorner3.c;
        PointRelativeToVertex pointRelativeToVertex11 = smoothCorner3.b;
        PointRelativeToVertex pointRelativeToVertex12 = smoothCorner3.a;
        float d4 = Size.d(j);
        float f12 = pointRelativeToVertex12.b;
        float f13 = pointRelativeToVertex12.a;
        a2.g(d4 - f12, Size.b(j) - f13);
        float d5 = Size.d(j);
        float f14 = pointRelativeToVertex11.b;
        float f15 = pointRelativeToVertex11.a;
        float f16 = d5 - f14;
        float b = Size.b(j) - f15;
        float d6 = Size.d(j);
        float f17 = pointRelativeToVertex10.b;
        float f18 = pointRelativeToVertex10.a;
        a2.e(f16, b, d6 - f17, Size.b(j) - f18, Size.d(j) - pointRelativeToVertex9.b, Size.b(j) - pointRelativeToVertex9.a);
        a2.a(new Rect(Size.d(j) - (arc3.a * 2.0f), Size.b(j) - (arc3.a * 2.0f), Size.d(j), Size.b(j)), (float) (Math.toRadians(0.0d) + arc3.b), arc3.c);
        a2.e(Size.d(j) - f18, Size.b(j) - pointRelativeToVertex10.b, Size.d(j) - f15, Size.b(j) - pointRelativeToVertex11.b, Size.d(j) - f13, Size.b(j) - pointRelativeToVertex12.b);
        SmoothCorner smoothCorner4 = (SmoothCorner) linkedHashMap.get(f4 + " - " + i4);
        if (smoothCorner4 == null) {
            smoothCorner4 = new SmoothCorner(f4, min, i4);
        }
        Arc arc4 = smoothCorner4.e;
        PointRelativeToVertex pointRelativeToVertex13 = smoothCorner4.d;
        PointRelativeToVertex pointRelativeToVertex14 = smoothCorner4.c;
        PointRelativeToVertex pointRelativeToVertex15 = smoothCorner4.b;
        PointRelativeToVertex pointRelativeToVertex16 = smoothCorner4.a;
        a2.g(pointRelativeToVertex16.a, Size.b(j) - pointRelativeToVertex16.b);
        a2.e(pointRelativeToVertex15.a, Size.b(j) - pointRelativeToVertex15.b, pointRelativeToVertex14.a, Size.b(j) - pointRelativeToVertex14.b, pointRelativeToVertex13.a, Size.b(j) - pointRelativeToVertex13.b);
        float b2 = Size.b(j);
        float f19 = arc4.a * 2.0f;
        a2.a(new Rect(0.0f, b2 - f19, f19, Size.b(j)), (float) (Math.toRadians(90.0d) + arc4.b), arc4.c);
        a2.e(pointRelativeToVertex14.b, Size.b(j) - pointRelativeToVertex14.a, pointRelativeToVertex15.b, Size.b(j) - pointRelativeToVertex15.a, pointRelativeToVertex16.b, Size.b(j) - pointRelativeToVertex16.a);
        path.close();
        return new Outline.Generic(a2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AbsoluteSmoothCornerShape) {
                AbsoluteSmoothCornerShape absoluteSmoothCornerShape = (AbsoluteSmoothCornerShape) obj;
                if (!Dp.b(this.e, absoluteSmoothCornerShape.e) || this.f != absoluteSmoothCornerShape.f || !Dp.b(this.g, absoluteSmoothCornerShape.g) || this.h != absoluteSmoothCornerShape.h || !Dp.b(this.i, absoluteSmoothCornerShape.i) || this.j != absoluteSmoothCornerShape.j || !Dp.b(this.k, absoluteSmoothCornerShape.k) || this.l != absoluteSmoothCornerShape.l) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Integer.hashCode(this.l) + q.a(this.k, q.b(this.j, q.a(this.i, q.b(this.h, q.a(this.g, q.b(this.f, Float.hashCode(this.e) * 31, 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AbsoluteSmoothCornerShape(cornerRadiusTL=");
        sb.append((Object) Dp.c(this.e));
        sb.append(", smoothnessAsPercentTL=");
        sb.append(this.f);
        sb.append(", cornerRadiusTR=");
        sb.append((Object) Dp.c(this.g));
        sb.append(", smoothnessAsPercentTR=");
        sb.append(this.h);
        sb.append(", cornerRadiusBR=");
        sb.append((Object) Dp.c(this.i));
        sb.append(", smoothnessAsPercentBR=");
        sb.append(this.j);
        sb.append(", cornerRadiusBL=");
        sb.append((Object) Dp.c(this.k));
        sb.append(", smoothnessAsPercentBL=");
        return q.j(sb, this.l, ')');
    }
}
