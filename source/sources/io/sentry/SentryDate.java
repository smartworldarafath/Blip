package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SentryDate implements Comparable<SentryDate> {
    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(SentryDate sentryDate) {
        return Long.valueOf(d()).compareTo(Long.valueOf(sentryDate.d()));
    }

    public long b(SentryDate sentryDate) {
        return d() - sentryDate.d();
    }

    public long c(SentryDate sentryDate) {
        if (sentryDate != null && compareTo(sentryDate) < 0) {
            return sentryDate.d();
        }
        return d();
    }

    public abstract long d();
}
