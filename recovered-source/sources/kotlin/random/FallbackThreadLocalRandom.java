package kotlin.random;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FallbackThreadLocalRandom extends AbstractPlatformRandom {
    public final FallbackThreadLocalRandom$implStorage$1 l = new ThreadLocal();

    @Override // kotlin.random.AbstractPlatformRandom
    public final java.util.Random c() {
        java.util.Random random = this.l.get();
        random.getClass();
        return random;
    }
}
