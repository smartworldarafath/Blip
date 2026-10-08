package androidx.compose.ui.unit;

import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import defpackage.q;
import defpackage.u2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DensityWithConverter implements Density {
    public final float j;
    public final float k;
    public final FontScaleConverter l;

    public DensityWithConverter(float f, float f2, FontScaleConverter fontScaleConverter) {
        this.j = f;
        this.k = f2;
        this.l = fontScaleConverter;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float E(long j) {
        if (TextUnitType.a(TextUnit.b(j), 4294967296L)) {
            return this.l.b(TextUnit.c(j));
        }
        u2.l("Only Sp can convert to Px");
        return 0.0f;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DensityWithConverter) {
                DensityWithConverter densityWithConverter = (DensityWithConverter) obj;
                if (Float.compare(this.j, densityWithConverter.j) != 0 || Float.compare(this.k, densityWithConverter.k) != 0 || !this.l.equals(densityWithConverter.l)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.j;
    }

    public final int hashCode() {
        return this.l.hashCode() + q.a(this.k, Float.hashCode(this.j) * 31, 31);
    }

    public final String toString() {
        StringBuilder n = q.n("DensityWithConverter(density=", this.j, ", fontScale=", this.k, ", converter=");
        n.append(this.l);
        n.append(")");
        return n.toString();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long x(float f) {
        return TextUnitKt.e(4294967296L, this.l.a(f));
    }
}
