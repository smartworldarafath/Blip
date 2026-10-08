package io.sentry.android.core.performance;

import android.os.SystemClock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TimeSpan implements Comparable<TimeSpan> {
    public String j;
    public long k;
    public long l;
    public long m;

    public final long a() {
        long j = this.m;
        if (j == 0) {
            return 0L;
        }
        return j - this.l;
    }

    public final boolean b() {
        if (this.l != 0) {
            return true;
        }
        return false;
    }

    public final void c(long j) {
        this.l = j;
        this.k = System.currentTimeMillis() - (SystemClock.uptimeMillis() - this.l);
    }

    @Override // java.lang.Comparable
    public final int compareTo(TimeSpan timeSpan) {
        return Long.compare(this.k, timeSpan.k);
    }
}
