package io.sentry.android.core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SentryFrameMetrics {
    public int a;
    public int b;
    public long c;
    public long d;
    public long e;

    public final void a(long j, long j2, boolean z, boolean z2) {
        this.e += j;
        if (z2) {
            this.d += j2;
            this.b++;
        } else if (z) {
            this.c += j2;
            this.a++;
        }
    }
}
