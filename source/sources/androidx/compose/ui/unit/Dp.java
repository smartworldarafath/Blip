package androidx.compose.ui.unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Dp implements Comparable<Dp> {
    public final float j;

    public static int a(float f, float f2) {
        if (!Float.isNaN(f) && !Float.isNaN(f2)) {
            return Float.compare(f, f2);
        }
        return 0;
    }

    public static final boolean b(float f, float f2) {
        if (Float.compare(f, f2) == 0) {
            return true;
        }
        return false;
    }

    public static String c(float f) {
        if (Float.isNaN(f)) {
            return "Dp.Unspecified";
        }
        return f + ".dp";
    }

    @Override // java.lang.Comparable
    public final int compareTo(Dp dp) {
        return a(this.j, dp.j);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Dp) {
            if (Float.compare(this.j, ((Dp) obj).j) != 0) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.j);
    }

    public final String toString() {
        return c(this.j);
    }
}
