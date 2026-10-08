package kotlin.random;

import java.io.Serializable;
import kotlin.internal.jdk8.JDK8PlatformImplementations;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Random {
    public static final Default j = new Object();
    public static final AbstractPlatformRandom k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Default extends Random implements Serializable {
        @Override // kotlin.random.Random
        public final int a() {
            return Random.k.a();
        }

        @Override // kotlin.random.Random
        public final int b() {
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.random.Random$Default, java.lang.Object] */
    static {
        FallbackThreadLocalRandom fallbackThreadLocalRandom;
        if (JDK8PlatformImplementations.c(34)) {
            fallbackThreadLocalRandom = new Object();
        } else {
            fallbackThreadLocalRandom = new FallbackThreadLocalRandom();
        }
        k = fallbackThreadLocalRandom;
    }

    public abstract int a();

    public int b() {
        int a;
        int i;
        do {
            a = a() >>> 1;
            i = a % 100000;
        } while ((a - i) + 99999 < 0);
        return i;
    }
}
