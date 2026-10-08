package kotlin.random;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractPlatformRandom extends Random {
    @Override // kotlin.random.Random
    public final int a() {
        return c().nextInt();
    }

    public abstract java.util.Random c();
}
