package io.sentry;

import defpackage.jb;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.SpanFrameMetricsCollector;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultCompositePerformanceCollector implements CompositePerformanceCollector {
    public final ArrayList d;
    public final ArrayList e;
    public final boolean f;
    public final SentryOptions g;
    public final AutoClosableReentrantLock a = new ReentrantLock();
    public volatile Timer b = null;
    public final ConcurrentHashMap c = new ConcurrentHashMap();
    public final AtomicBoolean h = new AtomicBoolean(false);
    public long i = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class CompositeData {
        public final ArrayList a = new ArrayList();
        public final ITransaction b;
        public final long c;

        public CompositeData(SentryTracer sentryTracer) {
            this.b = sentryTracer;
            this.c = DefaultCompositePerformanceCollector.this.g.getDateProvider().a().d();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public DefaultCompositePerformanceCollector(SentryAndroidOptions sentryAndroidOptions) {
        boolean z = false;
        Objects.b(sentryAndroidOptions, "The options object is required.");
        this.g = sentryAndroidOptions;
        this.d = new ArrayList();
        this.e = new ArrayList();
        for (IPerformanceCollector iPerformanceCollector : sentryAndroidOptions.getPerformanceCollectors()) {
            if (iPerformanceCollector instanceof IPerformanceSnapshotCollector) {
                this.d.add((IPerformanceSnapshotCollector) iPerformanceCollector);
            }
            if (iPerformanceCollector instanceof IPerformanceContinuousCollector) {
                this.e.add((IPerformanceContinuousCollector) iPerformanceCollector);
            }
        }
        if (this.d.isEmpty() && this.e.isEmpty()) {
            z = true;
        }
        this.f = z;
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void a(String str) {
        if (this.f) {
            this.g.getLogger().c(SentryLevel.INFO, "No collector found. Performance stats will not be captured during transactions.", new Object[0]);
            return;
        }
        if (!this.c.containsKey(str)) {
            this.c.put(str, new CompositeData(null));
        }
        if (!this.h.getAndSet(true)) {
            ISentryLifecycleToken a = this.a.a();
            try {
                if (this.b == null) {
                    this.b = new Timer(true);
                }
                this.b.schedule(new TimerTask() { // from class: io.sentry.DefaultCompositePerformanceCollector.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        Iterator it = DefaultCompositePerformanceCollector.this.d.iterator();
                        while (it.hasNext()) {
                            ((IPerformanceSnapshotCollector) it.next()).c();
                        }
                    }
                }, 0L);
                final ArrayList arrayList = new ArrayList();
                this.b.scheduleAtFixedRate(new TimerTask() { // from class: io.sentry.DefaultCompositePerformanceCollector.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        long currentTimeMillis = System.currentTimeMillis();
                        DefaultCompositePerformanceCollector defaultCompositePerformanceCollector = DefaultCompositePerformanceCollector.this;
                        if (currentTimeMillis - defaultCompositePerformanceCollector.i > 10) {
                            ArrayList arrayList2 = arrayList;
                            arrayList2.clear();
                            defaultCompositePerformanceCollector.i = currentTimeMillis;
                            PerformanceCollectionData performanceCollectionData = new PerformanceCollectionData(defaultCompositePerformanceCollector.g.getDateProvider().a().d());
                            Iterator it = defaultCompositePerformanceCollector.d.iterator();
                            while (it.hasNext()) {
                                ((IPerformanceSnapshotCollector) it.next()).a(performanceCollectionData);
                            }
                            for (CompositeData compositeData : defaultCompositePerformanceCollector.c.values()) {
                                ArrayList arrayList3 = compositeData.a;
                                ITransaction iTransaction = compositeData.b;
                                arrayList3.add(performanceCollectionData);
                                if (iTransaction != null && DefaultCompositePerformanceCollector.this.g.getDateProvider().a().d() > compositeData.c + 30000000000L) {
                                    arrayList2.add(iTransaction);
                                }
                            }
                            Iterator it2 = arrayList2.iterator();
                            while (it2.hasNext()) {
                                defaultCompositePerformanceCollector.f((ITransaction) it2.next());
                            }
                        }
                    }
                }, 100L, 100L);
                a.close();
            } finally {
            }
        }
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void b(Span span) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((SpanFrameMetricsCollector) ((IPerformanceContinuousCollector) it.next())).e(span);
        }
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final List c(String str) {
        ConcurrentHashMap concurrentHashMap = this.c;
        CompositeData compositeData = (CompositeData) concurrentHashMap.remove(str);
        this.g.getLogger().c(SentryLevel.DEBUG, jb.f("stop collecting performance info for ", str), new Object[0]);
        if (concurrentHashMap.isEmpty()) {
            close();
        }
        if (compositeData != null) {
            return compositeData.a;
        }
        return null;
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void close() {
        this.g.getLogger().c(SentryLevel.DEBUG, "stop collecting all performance info for transactions", new Object[0]);
        this.c.clear();
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((SpanFrameMetricsCollector) ((IPerformanceContinuousCollector) it.next())).d();
        }
        if (this.h.getAndSet(false)) {
            ISentryLifecycleToken a = this.a.a();
            try {
                if (this.b != null) {
                    this.b.cancel();
                    this.b = null;
                }
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
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void d(Span span) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((SpanFrameMetricsCollector) ((IPerformanceContinuousCollector) it.next())).f(span);
        }
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void e(SentryTracer sentryTracer) {
        if (this.f) {
            this.g.getLogger().c(SentryLevel.INFO, "No collector found. Performance stats will not be captured during transactions.", new Object[0]);
            return;
        }
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((SpanFrameMetricsCollector) ((IPerformanceContinuousCollector) it.next())).f(sentryTracer);
        }
        String sentryId = sentryTracer.a.toString();
        ConcurrentHashMap concurrentHashMap = this.c;
        if (!concurrentHashMap.containsKey(sentryId)) {
            concurrentHashMap.put(sentryId, new CompositeData(sentryTracer));
        }
        a(sentryId);
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final List f(ITransaction iTransaction) {
        this.g.getLogger().c(SentryLevel.DEBUG, "stop collecting performance info for transactions %s (%s)", iTransaction.getName(), iTransaction.r().j.toString());
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((SpanFrameMetricsCollector) ((IPerformanceContinuousCollector) it.next())).e(iTransaction);
        }
        return c(iTransaction.n().toString());
    }
}
