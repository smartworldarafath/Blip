package androidx.compose.ui.node;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HitTestResultKt {
    public static final long a(float f, boolean z, boolean z2) {
        long j;
        long floatToRawIntBits = Float.floatToRawIntBits(f);
        long j2 = 0;
        if (z) {
            j = 1;
        } else {
            j = 0;
        }
        if (z2) {
            j2 = 2;
        }
        return ((j | j2) & 4294967295L) | (floatToRawIntBits << 32);
    }
}
