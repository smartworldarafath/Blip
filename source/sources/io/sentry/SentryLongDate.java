package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryLongDate extends SentryDate {
    public final long j;

    public SentryLongDate(long j) {
        this.j = j;
    }

    @Override // io.sentry.SentryDate
    public final long d() {
        return this.j;
    }
}
