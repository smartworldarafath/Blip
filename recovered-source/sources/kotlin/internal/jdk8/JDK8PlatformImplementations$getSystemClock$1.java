package kotlin.internal.jdk8;

import kotlin.time.Clock;
import kotlin.time.Instant;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JDK8PlatformImplementations$getSystemClock$1 implements Clock {
    @Override // kotlin.time.Clock
    public final Instant a() {
        java.time.Instant now = java.time.Instant.now();
        now.getClass();
        Instant instant = Instant.l;
        return Instant.Companion.a(now.getNano(), now.getEpochSecond());
    }
}
