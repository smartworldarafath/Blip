package kotlin.time;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongParser {
    public static final LongParser c = new LongParser(4611686018427387903L, true);
    public final long a;
    public final long b;

    public LongParser(long j, boolean z) {
        this.a = j / 10;
        this.b = j % 10;
    }
}
