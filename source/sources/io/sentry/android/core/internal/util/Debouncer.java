package io.sentry.android.core.internal.util;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Debouncer {
    public final long a;
    public final int d;
    public final AtomicInteger c = new AtomicInteger(0);
    public final AtomicLong e = new AtomicLong(0);
    public final AndroidCurrentDateProvider b = AndroidCurrentDateProvider.j;

    public Debouncer(int i, long j) {
        this.a = j;
        this.d = i <= 0 ? 1 : i;
    }

    public final boolean a() {
        this.b.getClass();
        long uptimeMillis = SystemClock.uptimeMillis();
        AtomicLong atomicLong = this.e;
        long j = atomicLong.get();
        AtomicInteger atomicInteger = this.c;
        if (j != 0 && atomicLong.get() + this.a > uptimeMillis) {
            if (atomicInteger.incrementAndGet() < this.d) {
                return false;
            }
            atomicInteger.set(0);
            return true;
        }
        atomicInteger.set(0);
        atomicLong.set(uptimeMillis);
        return false;
    }
}
