package androidx.compose.foundation.lazy.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Averages {
    public long a;
    public long b;
    public long c;
    public long d;
    public int e;

    public static long a(long j, long j2) {
        if (j2 == 0) {
            return j;
        }
        return (j / 4) + ((j2 / 4) * 3);
    }
}
