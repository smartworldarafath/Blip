package androidx.compose.ui.node;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TouchBoundsExpansion {
    public static final long a = Companion.b(0, 0, 0, 0);
    public static final /* synthetic */ int b = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final int a(int i, long j) {
            int i2 = TouchBoundsExpansion.b;
            return ((int) (j >> (i * 15))) & 32767;
        }

        public static long b(int i, int i2, int i3, int i4) {
            return ((i2 & 32767) << 15) | (i & 32767) | ((i3 & 32767) << 30) | ((i4 & 32767) << 45) | Long.MIN_VALUE;
        }
    }
}
