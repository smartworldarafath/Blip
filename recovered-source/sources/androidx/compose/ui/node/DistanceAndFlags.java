package androidx.compose.ui.node;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DistanceAndFlags {
    public static final int a(long j, long j2) {
        boolean d = d(j);
        if (d != d(j2)) {
            if (!d) {
                return 1;
            }
            return -1;
        }
        int signum = (int) Math.signum(b(j) - b(j2));
        if (Math.min(b(j), b(j2)) >= 0.0f && c(j) != c(j2)) {
            if (!c(j)) {
                return 1;
            }
            return -1;
        }
        return signum;
    }

    public static final float b(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    public static final boolean c(long j) {
        if ((j & 2) != 0) {
            return true;
        }
        return false;
    }

    public static final boolean d(long j) {
        if ((j & 1) != 0) {
            return true;
        }
        return false;
    }
}
