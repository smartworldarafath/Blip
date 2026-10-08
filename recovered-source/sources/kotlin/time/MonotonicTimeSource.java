package kotlin.time;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MonotonicTimeSource {
    public static final long a = System.nanoTime();
    public static final /* synthetic */ int b = 0;

    public static long a() {
        return System.nanoTime() - a;
    }
}
