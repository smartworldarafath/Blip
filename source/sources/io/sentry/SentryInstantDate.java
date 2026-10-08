package io.sentry;

import java.time.Instant;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryInstantDate extends SentryDate {
    public final Instant j = Instant.now();

    @Override // io.sentry.SentryDate
    public final long d() {
        return (this.j.getEpochSecond() * 1000000000) + r4.getNano();
    }
}
