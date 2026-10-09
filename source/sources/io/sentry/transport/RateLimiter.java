package io.sentry.transport;

import io.sentry.DataCategory;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryOptions;
import io.sentry.util.AutoClosableReentrantLock;
import java.io.Closeable;
import java.util.Date;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RateLimiter implements Closeable {
    public final SentryOptions k;
    public final ConcurrentHashMap l = new ConcurrentHashMap();
    public final CopyOnWriteArrayList m = new CopyOnWriteArrayList();
    public Timer n = null;
    public final AutoClosableReentrantLock o = new ReentrantLock();
    public final CurrentDateProvider j = CurrentDateProvider.j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface IRateLimitObserver {
        void A(RateLimiter rateLimiter);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public RateLimiter(SentryOptions sentryOptions) {
        this.k = sentryOptions;
    }

    public final void a(DataCategory dataCategory, Date date) {
        ConcurrentHashMap concurrentHashMap = this.l;
        Date date2 = (Date) concurrentHashMap.get(dataCategory);
        if (date2 != null && !date.after(date2)) {
            return;
        }
        concurrentHashMap.put(dataCategory, date);
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((IRateLimitObserver) it.next()).A(this);
        }
        ISentryLifecycleToken a = this.o.a();
        try {
            if (this.n == null) {
                this.n = new Timer(true);
            }
            this.n.schedule(new TimerTask() { // from class: io.sentry.transport.RateLimiter.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    RateLimiter rateLimiter = RateLimiter.this;
                    Iterator it2 = rateLimiter.m.iterator();
                    while (it2.hasNext()) {
                        ((IRateLimitObserver) it2.next()).A(rateLimiter);
                    }
                }
            }, date);
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ISentryLifecycleToken a = this.o.a();
        try {
            Timer timer = this.n;
            if (timer != null) {
                timer.cancel();
                this.n = null;
            }
            a.close();
            this.m.clear();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean h(DataCategory dataCategory) {
        Date date;
        this.j.getClass();
        Date date2 = new Date(System.currentTimeMillis());
        DataCategory dataCategory2 = DataCategory.All;
        ConcurrentHashMap concurrentHashMap = this.l;
        Date date3 = (Date) concurrentHashMap.get(dataCategory2);
        if (date3 != null && !date2.after(date3)) {
            return true;
        }
        if (!DataCategory.Unknown.equals(dataCategory) && (date = (Date) concurrentHashMap.get(dataCategory)) != null) {
            return !date2.after(date);
        }
        return false;
    }
}
