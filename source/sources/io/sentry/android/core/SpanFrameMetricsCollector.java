package io.sentry.android.core;

import android.view.Choreographer;
import io.sentry.IPerformanceContinuousCollector;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ISpan;
import io.sentry.ITransaction;
import io.sentry.NoOpSpan;
import io.sentry.NoOpTransaction;
import io.sentry.SentryDate;
import io.sentry.SentryNanotimeDate;
import io.sentry.SentryUUID;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.util.AutoClosableReentrantLock;
import java.lang.reflect.Field;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SpanFrameMetricsCollector implements IPerformanceContinuousCollector, SentryFrameMetricsCollector.FrameMetricsCollectorListener {
    public static final SentryNanotimeDate h = new SentryNanotimeDate(new Date(0), 0);
    public final boolean a;
    public final SentryFrameMetricsCollector c;
    public volatile String d;
    public final AutoClosableReentrantLock b = new ReentrantLock();
    public final TreeSet e = new TreeSet((Comparator) new Object());
    public final ConcurrentSkipListSet f = new ConcurrentSkipListSet();
    public long g = 16666666;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.Comparator] */
    public SpanFrameMetricsCollector(SentryAndroidOptions sentryAndroidOptions, SentryFrameMetricsCollector sentryFrameMetricsCollector) {
        boolean z;
        this.c = sentryFrameMetricsCollector;
        if (sentryAndroidOptions.isEnablePerformanceV2() && sentryAndroidOptions.isEnableFramesTracking()) {
            z = true;
        } else {
            z = false;
        }
        this.a = z;
    }

    public static long g(SentryDate sentryDate) {
        if (sentryDate instanceof SentryNanotimeDate) {
            return sentryDate.b(h);
        }
        return System.nanoTime() - ((System.currentTimeMillis() * 1000000) - sentryDate.d());
    }

    @Override // io.sentry.android.core.internal.util.SentryFrameMetricsCollector.FrameMetricsCollectorListener
    public final void b(long j, long j2, long j3, long j4, boolean z, boolean z2, float f) {
        ConcurrentSkipListSet concurrentSkipListSet = this.f;
        if (concurrentSkipListSet.size() <= 3600) {
            long j5 = (long) (1.0E9d / f);
            this.g = j5;
            if (!z && !z2) {
                return;
            }
            concurrentSkipListSet.add(new Frame(j, j2, j3, j4, z, z2, j5));
        }
    }

    public final void d() {
        ISentryLifecycleToken a = this.b.a();
        try {
            if (this.d != null) {
                this.c.a(this.d);
                this.d = null;
            }
            this.f.clear();
            this.e.clear();
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

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c5 A[Catch: all -> 0x00c0, TRY_LEAVE, TryCatch #0 {all -> 0x00c0, blocks: (B:54:0x0090, B:61:0x00a8, B:69:0x00d4, B:75:0x010b, B:84:0x0126, B:86:0x0135, B:89:0x0139, B:91:0x0141, B:95:0x014e, B:102:0x0166, B:103:0x0176, B:105:0x0181, B:106:0x018b, B:110:0x018d, B:112:0x01c5), top: B:53:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01fa A[Catch: all -> 0x01fe, TryCatch #7 {all -> 0x01fe, blocks: (B:25:0x01f4, B:27:0x01fa, B:30:0x0201), top: B:24:0x01f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0201 A[Catch: all -> 0x01fe, TRY_LEAVE, TryCatch #7 {all -> 0x01fe, blocks: (B:25:0x01f4, B:27:0x01fa, B:30:0x0201), top: B:24:0x01f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x014b  */
    /* JADX WARN: Type inference failed for: r15v0, types: [io.sentry.android.core.SentryFrameMetrics, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(ISpan iSpan) {
        ISentryLifecycleToken iSentryLifecycleToken;
        SentryDate s;
        TreeSet treeSet;
        AutoClosableReentrantLock autoClosableReentrantLock;
        ConcurrentSkipListSet concurrentSkipListSet;
        long j;
        boolean z;
        boolean z2;
        Field field;
        Long l;
        Iterator it;
        ConcurrentSkipListSet concurrentSkipListSet2;
        boolean z3;
        boolean z4;
        TreeSet treeSet2 = this.e;
        if (!this.a || (iSpan instanceof NoOpSpan) || (iSpan instanceof NoOpTransaction)) {
            return;
        }
        AutoClosableReentrantLock autoClosableReentrantLock2 = this.b;
        ISentryLifecycleToken a = autoClosableReentrantLock2.a();
        try {
            if (!treeSet2.contains(iSpan)) {
                a.close();
                return;
            }
            a.close();
            ISentryLifecycleToken a2 = autoClosableReentrantLock2.a();
            try {
                boolean remove = treeSet2.remove(iSpan);
                ConcurrentSkipListSet concurrentSkipListSet3 = this.f;
                try {
                    if (remove && (s = iSpan.s()) != null) {
                        long g = g(iSpan.u());
                        long g2 = g(s);
                        long j2 = g2 - g;
                        if (j2 > 0) {
                            ?? obj = new Object();
                            long j3 = this.g;
                            int i = 1;
                            int i2 = 0;
                            if (!concurrentSkipListSet3.isEmpty()) {
                                Iterator it2 = concurrentSkipListSet3.tailSet((ConcurrentSkipListSet) new Frame(g)).iterator();
                                while (it2.hasNext()) {
                                    treeSet = treeSet2;
                                    Frame frame = (Frame) it2.next();
                                    autoClosableReentrantLock = autoClosableReentrantLock2;
                                    iSentryLifecycleToken = a2;
                                    try {
                                        long j4 = frame.j;
                                        long j5 = frame.p;
                                        long j6 = frame.k;
                                        if (j4 > g2) {
                                            break;
                                        }
                                        if (j4 >= g && j6 <= g2) {
                                            obj.a(frame.l, frame.m, frame.n, frame.o);
                                        } else if ((g > j4 && g < j6) || (g2 > j4 && g2 < j6)) {
                                            it = it2;
                                            concurrentSkipListSet2 = concurrentSkipListSet3;
                                            long min = Math.min(frame.m - Math.max(0L, Math.max(0L, g - j4) - j5), j2);
                                            long min2 = Math.min(g2, j6) - Math.max(g, frame.j);
                                            if (min2 > j5) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (min2 > 700000000) {
                                                z4 = true;
                                            } else {
                                                z4 = false;
                                            }
                                            obj.a(min2, min, z3, z4);
                                            treeSet2 = treeSet;
                                            autoClosableReentrantLock2 = autoClosableReentrantLock;
                                            a2 = iSentryLifecycleToken;
                                            j3 = j5;
                                            concurrentSkipListSet3 = concurrentSkipListSet2;
                                            it2 = it;
                                        }
                                        it = it2;
                                        concurrentSkipListSet2 = concurrentSkipListSet3;
                                        treeSet2 = treeSet;
                                        autoClosableReentrantLock2 = autoClosableReentrantLock;
                                        a2 = iSentryLifecycleToken;
                                        j3 = j5;
                                        concurrentSkipListSet3 = concurrentSkipListSet2;
                                        it2 = it;
                                    } catch (Throwable th) {
                                        th = th;
                                        Throwable th2 = th;
                                        try {
                                            iSentryLifecycleToken.close();
                                            throw th2;
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                            throw th2;
                                        }
                                    }
                                }
                            }
                            treeSet = treeSet2;
                            autoClosableReentrantLock = autoClosableReentrantLock2;
                            iSentryLifecycleToken = a2;
                            concurrentSkipListSet = concurrentSkipListSet3;
                            int i3 = obj.a + obj.b;
                            SentryFrameMetricsCollector sentryFrameMetricsCollector = this.c;
                            Choreographer choreographer = sentryFrameMetricsCollector.s;
                            if (choreographer != null && (field = sentryFrameMetricsCollector.t) != null) {
                                try {
                                    l = (Long) field.get(choreographer);
                                } catch (IllegalAccessException unused) {
                                }
                                if (l != null) {
                                    j = l.longValue();
                                    if (j != -1) {
                                        long max = Math.max(0L, g2 - j);
                                        if (max > j3) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        if (z) {
                                            if (max > 700000000) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            obj.a(max, Math.max(0L, max - j3), true, z2);
                                        } else {
                                            i = 0;
                                        }
                                        int i4 = i3 + i;
                                        long j7 = j2 - obj.e;
                                        if (j7 > 0) {
                                            i2 = (int) Math.ceil(j7 / j3);
                                        }
                                        i3 = i4 + i2;
                                    }
                                    double d = (obj.c + obj.d) / 1.0E9d;
                                    iSpan.i(Integer.valueOf(i3), "frames.total");
                                    iSpan.i(Integer.valueOf(obj.a), "frames.slow");
                                    iSpan.i(Integer.valueOf(obj.b), "frames.frozen");
                                    iSpan.i(Double.valueOf(d), "frames.delay");
                                    if (iSpan instanceof ITransaction) {
                                        iSpan.f(Integer.valueOf(i3), "frames_total");
                                        iSpan.f(Integer.valueOf(obj.a), "frames_slow");
                                        iSpan.f(Integer.valueOf(obj.b), "frames_frozen");
                                        iSpan.f(Double.valueOf(d), "frames_delay");
                                    }
                                    iSentryLifecycleToken.close();
                                    a = autoClosableReentrantLock.a();
                                    if (treeSet.isEmpty()) {
                                        d();
                                    } else {
                                        concurrentSkipListSet.headSet((ConcurrentSkipListSet) new Frame(g(((ISpan) treeSet.first()).u()))).clear();
                                    }
                                    a.close();
                                    return;
                                }
                            }
                            j = -1;
                            if (j != -1) {
                            }
                            double d2 = (obj.c + obj.d) / 1.0E9d;
                            iSpan.i(Integer.valueOf(i3), "frames.total");
                            iSpan.i(Integer.valueOf(obj.a), "frames.slow");
                            iSpan.i(Integer.valueOf(obj.b), "frames.frozen");
                            iSpan.i(Double.valueOf(d2), "frames.delay");
                            if (iSpan instanceof ITransaction) {
                            }
                            iSentryLifecycleToken.close();
                            a = autoClosableReentrantLock.a();
                            if (treeSet.isEmpty()) {
                            }
                            a.close();
                            return;
                        }
                    }
                    if (treeSet.isEmpty()) {
                    }
                    a.close();
                    return;
                } catch (Throwable th4) {
                }
                a2.close();
                treeSet = treeSet2;
                autoClosableReentrantLock = autoClosableReentrantLock2;
                concurrentSkipListSet = concurrentSkipListSet3;
                a = autoClosableReentrantLock.a();
            } catch (Throwable th5) {
                th = th5;
                iSentryLifecycleToken = a2;
            }
        } finally {
            try {
                a.close();
                throw th4;
            } catch (Throwable th6) {
                th4.addSuppressed(th6);
            }
        }
    }

    public final void f(ISpan iSpan) {
        String str;
        if (!this.a || (iSpan instanceof NoOpSpan) || (iSpan instanceof NoOpTransaction)) {
            return;
        }
        ISentryLifecycleToken a = this.b.a();
        try {
            this.e.add(iSpan);
            if (this.d == null) {
                SentryFrameMetricsCollector sentryFrameMetricsCollector = this.c;
                if (!sentryFrameMetricsCollector.p) {
                    str = null;
                } else {
                    String a2 = SentryUUID.a();
                    sentryFrameMetricsCollector.o.put(a2, this);
                    sentryFrameMetricsCollector.b();
                    str = a2;
                }
                this.d = str;
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

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Frame implements Comparable<Frame> {
        public final long j;
        public final long k;
        public final long l;
        public final long m;
        public final boolean n;
        public final boolean o;
        public final long p;

        public Frame(long j, long j2, long j3, long j4, boolean z, boolean z2, long j5) {
            this.j = j;
            this.k = j2;
            this.l = j3;
            this.m = j4;
            this.n = z;
            this.o = z2;
            this.p = j5;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Frame frame) {
            return Long.compare(this.k, frame.k);
        }

        public Frame(long j) {
            this(j, j, 0L, 0L, false, false, 0L);
        }
    }
}
