package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RoundedCornerShape extends CornerBasedShape {
    @Override // androidx.compose.foundation.shape.CornerBasedShape
    public final Outline b(long j, float f, float f2, float f3, float f4, LayoutDirection layoutDirection) {
        float f5;
        float f6;
        float f7;
        float f8;
        if (f + f2 + f3 + f4 == 0.0f) {
            return new Outline.Rectangle(RectKt.a(0L, j));
        }
        Rect a = RectKt.a(0L, j);
        LayoutDirection layoutDirection2 = LayoutDirection.j;
        if (layoutDirection == layoutDirection2) {
            f5 = f;
        } else {
            f5 = f2;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L);
        if (layoutDirection == layoutDirection2) {
            f6 = f2;
        } else {
            f6 = f;
        }
        long floatToRawIntBits2 = (Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f6) & 4294967295L);
        if (layoutDirection == layoutDirection2) {
            f7 = f3;
        } else {
            f7 = f4;
        }
        long floatToRawIntBits3 = (Float.floatToRawIntBits(f7) << 32) | (Float.floatToRawIntBits(f7) & 4294967295L);
        if (layoutDirection == layoutDirection2) {
            f8 = f4;
        } else {
            f8 = f3;
        }
        return new Outline.Rounded(new RoundRect(a.a, a.b, a.c, a.d, floatToRawIntBits, floatToRawIntBits2, floatToRawIntBits3, (Float.floatToRawIntBits(f8) << 32) | (Float.floatToRawIntBits(f8) & 4294967295L)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundedCornerShape)) {
            return false;
        }
        RoundedCornerShape roundedCornerShape = (RoundedCornerShape) obj;
        if (Intrinsics.a(this.a, roundedCornerShape.a) && Intrinsics.a(this.b, roundedCornerShape.b) && Intrinsics.a(this.c, roundedCornerShape.c) && Intrinsics.a(this.d, roundedCornerShape.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RoundedCornerShape(topStart = " + this.a + ", topEnd = " + this.b + ", bottomEnd = " + this.c + ", bottomStart = " + this.d + ")";
    }
}
