package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PaddingValuesImpl implements PaddingValues {
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public PaddingValuesImpl(float f, float f2, float f3, float f4) {
        boolean z;
        boolean z2;
        boolean z3;
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        if (f >= 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (f2 >= 0.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z4 = z & z2;
        if (f3 >= 0.0f) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!(z4 & z3 & (f4 >= 0.0f))) {
            InlineClassHelperKt.a("Padding must be non-negative");
        }
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float a() {
        return this.d;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float b(LayoutDirection layoutDirection) {
        if (layoutDirection == LayoutDirection.j) {
            return this.a;
        }
        return this.c;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float c(LayoutDirection layoutDirection) {
        if (layoutDirection == LayoutDirection.j) {
            return this.c;
        }
        return this.a;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PaddingValuesImpl) {
            PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
            if (Dp.b(this.a, paddingValuesImpl.a) && Dp.b(this.b, paddingValuesImpl.b) && Dp.b(this.c, paddingValuesImpl.c) && Dp.b(this.d, paddingValuesImpl.d)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + q.a(this.c, q.a(this.b, Float.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        String c = Dp.c(this.a);
        String c2 = Dp.c(this.b);
        String c3 = Dp.c(this.c);
        String c4 = Dp.c(this.d);
        StringBuilder o = q.o("PaddingValues(start=", c, ", top=", c2, ", end=");
        o.append(c3);
        o.append(", bottom=");
        o.append(c4);
        o.append(")");
        return o.toString();
    }
}
