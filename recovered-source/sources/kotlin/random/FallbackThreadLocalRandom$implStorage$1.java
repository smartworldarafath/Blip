package kotlin.random;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FallbackThreadLocalRandom$implStorage$1 extends ThreadLocal<java.util.Random> {
    @Override // java.lang.ThreadLocal
    public final java.util.Random initialValue() {
        return new java.util.Random();
    }
}
