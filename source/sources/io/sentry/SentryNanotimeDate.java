package io.sentry;

import java.util.Date;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryNanotimeDate extends SentryDate {
    public final Date j;
    public final long k;

    public SentryNanotimeDate() {
        this(DateUtils.b(), System.nanoTime());
    }

    @Override // io.sentry.SentryDate, java.lang.Comparable
    /* renamed from: a */
    public final int compareTo(SentryDate sentryDate) {
        if (sentryDate instanceof SentryNanotimeDate) {
            SentryNanotimeDate sentryNanotimeDate = (SentryNanotimeDate) sentryDate;
            long time = this.j.getTime();
            long time2 = sentryNanotimeDate.j.getTime();
            if (time == time2) {
                return Long.valueOf(this.k).compareTo(Long.valueOf(sentryNanotimeDate.k));
            }
            return Long.valueOf(time).compareTo(Long.valueOf(time2));
        }
        return super.compareTo(sentryDate);
    }

    @Override // io.sentry.SentryDate
    public final long b(SentryDate sentryDate) {
        if (sentryDate instanceof SentryNanotimeDate) {
            return this.k - ((SentryNanotimeDate) sentryDate).k;
        }
        return super.b(sentryDate);
    }

    @Override // io.sentry.SentryDate
    public final long c(SentryDate sentryDate) {
        if (sentryDate != null && (sentryDate instanceof SentryNanotimeDate)) {
            SentryNanotimeDate sentryNanotimeDate = (SentryNanotimeDate) sentryDate;
            long j = sentryNanotimeDate.k;
            int compareTo = compareTo(sentryDate);
            long j2 = this.k;
            if (compareTo < 0) {
                return d() + (j - j2);
            }
            return sentryNanotimeDate.d() + (j2 - j);
        }
        return super.c(sentryDate);
    }

    @Override // io.sentry.SentryDate
    public final long d() {
        return this.j.getTime() * 1000000;
    }

    public SentryNanotimeDate(Date date, long j) {
        this.j = date;
        this.k = j;
    }
}
