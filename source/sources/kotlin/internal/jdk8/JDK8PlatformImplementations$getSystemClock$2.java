package kotlin.internal.jdk8;

import kotlin.time.Clock;
import kotlin.time.Instant;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JDK8PlatformImplementations$getSystemClock$2 implements Clock {
    @Override // kotlin.time.Clock
    public final Instant a() {
        Instant instant = Instant.l;
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis / 1000;
        if ((currentTimeMillis ^ 1000) < 0 && j * 1000 != currentTimeMillis) {
            j--;
        }
        long j2 = currentTimeMillis % 1000;
        int i = (int) ((j2 + (1000 & (((j2 ^ 1000) & ((-j2) | j2)) >> 63))) * 1000000);
        if (j < -31557014167219200L) {
            return Instant.l;
        }
        if (j > 31556889864403199L) {
            return Instant.m;
        }
        return Instant.Companion.a(i, j);
    }
}
