package androidx.compose.ui;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BiasAlignment implements Alignment {
    public final float a;
    public final float b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Horizontal implements Alignment.Horizontal {
        public final float a;

        public Horizontal(float f) {
            this.a = f;
        }

        public final int a(int i, int i2, LayoutDirection layoutDirection) {
            float f = (i2 - i) / 2.0f;
            LayoutDirection layoutDirection2 = LayoutDirection.j;
            float f2 = this.a;
            if (layoutDirection != layoutDirection2) {
                f2 *= -1.0f;
            }
            return Math.round((1.0f + f2) * f);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Horizontal) && Float.compare(this.a, ((Horizontal) obj).a) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.a);
        }

        public final String toString() {
            return "Horizontal(bias=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Vertical implements Alignment.Vertical {
        public final float a;

        public Vertical(float f) {
            this.a = f;
        }

        public final int a(int i, int i2) {
            return Math.round((1.0f + this.a) * ((i2 - i) / 2.0f));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Vertical) && Float.compare(this.a, ((Vertical) obj).a) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.a);
        }

        public final String toString() {
            return "Vertical(bias=" + this.a + ")";
        }
    }

    public BiasAlignment(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    @Override // androidx.compose.ui.Alignment
    public final long a(long j, long j2, LayoutDirection layoutDirection) {
        float f = (((int) (j2 >> 32)) - ((int) (j >> 32))) / 2.0f;
        float f2 = (((int) (j2 & 4294967295L)) - ((int) (j & 4294967295L))) / 2.0f;
        LayoutDirection layoutDirection2 = LayoutDirection.j;
        float f3 = this.a;
        if (layoutDirection != layoutDirection2) {
            f3 *= -1.0f;
        }
        float f4 = (1.0f + this.b) * f2;
        int round = Math.round((f3 + 1.0f) * f);
        return (Math.round(f4) & 4294967295L) | (round << 32);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAlignment)) {
            return false;
        }
        BiasAlignment biasAlignment = (BiasAlignment) obj;
        if (Float.compare(this.a, biasAlignment.a) == 0 && Float.compare(this.b, biasAlignment.b) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "BiasAlignment(horizontalBias=" + this.a + ", verticalBias=" + this.b + ")";
    }
}
