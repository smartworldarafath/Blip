package io.sentry.android.core;

import io.sentry.EventProcessor;
import io.sentry.Hint;
import io.sentry.ISentryLifecycleToken;
import io.sentry.MeasurementUnit;
import io.sentry.SentryEvent;
import io.sentry.SpanContext;
import io.sentry.SpanId;
import io.sentry.SpanStatus;
import io.sentry.android.core.internal.util.AndroidThreadChecker;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.protocol.App;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentrySpan;
import io.sentry.protocol.SentryTransaction;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PerformanceAndroidEventProcessor implements EventProcessor {
    public final ActivityFramesTracker j;
    public final SentryAndroidOptions k;
    public final AutoClosableReentrantLock l = new ReentrantLock();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public PerformanceAndroidEventProcessor(SentryAndroidOptions sentryAndroidOptions, ActivityFramesTracker activityFramesTracker) {
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.k = sentryAndroidOptions;
        this.j = activityFramesTracker;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [io.sentry.android.core.performance.TimeSpan, java.lang.Object] */
    public static void b(AppStartMetrics appStartMetrics, SentryTransaction sentryTransaction) {
        SpanId spanId;
        if (appStartMetrics.j == AppStartMetrics.AppStartType.COLD) {
            Contexts contexts = sentryTransaction.k;
            ArrayList arrayList = sentryTransaction.B;
            SpanContext i = contexts.i();
            if (i == null) {
                return;
            }
            SentryId sentryId = i.j;
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    SentrySpan sentrySpan = (SentrySpan) it.next();
                    if (sentrySpan.o.contentEquals("app.start.cold")) {
                        spanId = sentrySpan.m;
                        break;
                    }
                } else {
                    spanId = null;
                    break;
                }
            }
            ?? obj = new Object();
            TimeSpan timeSpan = appStartMetrics.m;
            long j = timeSpan.k;
            long j2 = timeSpan.l;
            long j3 = AppStartMetrics.y;
            obj.j = "Process Initialization";
            obj.k = j;
            obj.l = j2;
            obj.m = j3;
            if (obj.b() && Math.abs(obj.a()) <= 10000) {
                arrayList.add(e(obj, spanId, sentryId, "process.load"));
            }
            ArrayList arrayList2 = new ArrayList(appStartMetrics.p.values());
            Collections.sort(arrayList2);
            if (!arrayList2.isEmpty()) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(e((TimeSpan) it2.next(), spanId, sentryId, "contentprovider.load"));
                }
            }
            TimeSpan timeSpan2 = appStartMetrics.o;
            if (timeSpan2.m != 0) {
                arrayList.add(e(timeSpan2, spanId, sentryId, "application.load"));
            }
        }
    }

    public static boolean c(SentryTransaction sentryTransaction) {
        Iterator it = sentryTransaction.B.iterator();
        while (it.hasNext()) {
            SentrySpan sentrySpan = (SentrySpan) it.next();
            if (sentrySpan.o.contentEquals("app.start.cold") || sentrySpan.o.contentEquals("app.start.warm")) {
                return true;
            }
        }
        SpanContext i = sentryTransaction.k.i();
        if (i != null) {
            String str = i.n;
            if (str.equals("app.start.cold") || str.equals("app.start.warm")) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00be A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0039 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void d(SentryTransaction sentryTransaction) {
        boolean z;
        boolean z2;
        Map map;
        Double d;
        Double d2;
        Object obj;
        ArrayList arrayList = sentryTransaction.B;
        Iterator it = arrayList.iterator();
        SentrySpan sentrySpan = null;
        SentrySpan sentrySpan2 = null;
        while (it.hasNext()) {
            SentrySpan sentrySpan3 = (SentrySpan) it.next();
            if ("ui.load.initial_display".equals(sentrySpan3.o)) {
                sentrySpan = sentrySpan3;
            } else if ("ui.load.full_display".equals(sentrySpan3.o)) {
                sentrySpan2 = sentrySpan3;
            }
            if (sentrySpan != null && sentrySpan2 != null) {
                break;
            }
        }
        if (sentrySpan != null || sentrySpan2 != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                SentrySpan sentrySpan4 = (SentrySpan) it2.next();
                if (sentrySpan4 != sentrySpan && sentrySpan4 != sentrySpan2) {
                    Map map2 = sentrySpan4.t;
                    Double d3 = sentrySpan4.j;
                    boolean z3 = false;
                    if (map2 != null && (obj = map2.get("thread.name")) != null && !"main".equals(obj)) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (sentrySpan != null) {
                        double doubleValue = d3.doubleValue();
                        if (doubleValue >= sentrySpan.j.doubleValue() && (((d2 = sentrySpan.k) == null || doubleValue <= d2.doubleValue()) && z)) {
                            z2 = true;
                            if (sentrySpan2 != null) {
                                double doubleValue2 = d3.doubleValue();
                                if (doubleValue2 >= sentrySpan2.j.doubleValue() && ((d = sentrySpan2.k) == null || doubleValue2 <= d.doubleValue())) {
                                    z3 = true;
                                }
                            }
                            if (!z2 || z3) {
                                map = sentrySpan4.t;
                                if (map == null) {
                                    map = new ConcurrentHashMap();
                                    sentrySpan4.t = map;
                                }
                                if (z2) {
                                    map.put("ui.contributes_to_ttid", Boolean.TRUE);
                                }
                                if (!z3) {
                                    map.put("ui.contributes_to_ttfd", Boolean.TRUE);
                                }
                            }
                        }
                    }
                    z2 = false;
                    if (sentrySpan2 != null) {
                    }
                    if (!z2) {
                    }
                    map = sentrySpan4.t;
                    if (map == null) {
                    }
                    if (z2) {
                    }
                    if (!z3) {
                    }
                }
            }
        }
    }

    public static SentrySpan e(TimeSpan timeSpan, SpanId spanId, SentryId sentryId, String str) {
        long j;
        HashMap hashMap = new HashMap(2);
        hashMap.put("thread.id", Long.valueOf(AndroidThreadChecker.b));
        hashMap.put("thread.name", "main");
        Boolean bool = Boolean.TRUE;
        hashMap.put("ui.contributes_to_ttid", bool);
        hashMap.put("ui.contributes_to_ttfd", bool);
        Double valueOf = Double.valueOf(timeSpan.k / 1000.0d);
        if (timeSpan.b()) {
            j = timeSpan.a() + timeSpan.k;
        } else {
            j = 0;
        }
        return new SentrySpan(valueOf, Double.valueOf(j / 1000.0d), sentryId, new SpanId(), spanId, str, timeSpan.j, SpanStatus.OK, "auto.ui", new ConcurrentHashMap(), new ConcurrentHashMap(), hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v5, types: [io.sentry.protocol.App, java.lang.Object] */
    @Override // io.sentry.EventProcessor
    public final SentryTransaction n(SentryTransaction sentryTransaction, Hint hint) {
        Map map;
        String str;
        String str2;
        SentryAndroidOptions sentryAndroidOptions = this.k;
        ISentryLifecycleToken a = this.l.a();
        try {
            if (!sentryAndroidOptions.isTracingEnabled()) {
                a.close();
                return sentryTransaction;
            }
            AppStartMetrics c = AppStartMetrics.c();
            boolean c2 = c(sentryTransaction);
            HashMap hashMap = sentryTransaction.C;
            Contexts contexts = sentryTransaction.k;
            if (c2) {
                if (c.v && ((Boolean) c.k.a()).booleanValue()) {
                    long a2 = c.b(sentryAndroidOptions).a();
                    if (a2 != 0) {
                        MeasurementValue measurementValue = new MeasurementValue(Float.valueOf((float) a2), MeasurementUnit.Duration.MILLISECOND.apiName());
                        if (c.j == AppStartMetrics.AppStartType.COLD) {
                            str2 = "app_start_cold";
                        } else {
                            str2 = "app_start_warm";
                        }
                        hashMap.put(str2, measurementValue);
                        b(c, sentryTransaction);
                        c.v = false;
                        c.p.clear();
                        c.q.clear();
                    }
                }
                App d = contexts.d();
                App app = d;
                if (d == null) {
                    ?? obj = new Object();
                    contexts.m(obj);
                    app = obj;
                }
                if (c.j == AppStartMetrics.AppStartType.COLD) {
                    str = "cold";
                } else {
                    str = "warm";
                }
                app.s = str;
            }
            d(sentryTransaction);
            SentryId sentryId = sentryTransaction.j;
            SpanContext i = contexts.i();
            if (sentryId != null && i != null && i.n.contentEquals("ui.load")) {
                ActivityFramesTracker activityFramesTracker = this.j;
                ConcurrentHashMap concurrentHashMap = activityFramesTracker.c;
                ISentryLifecycleToken a3 = activityFramesTracker.f.a();
                try {
                    if (!activityFramesTracker.c()) {
                        a3.close();
                        map = null;
                    } else {
                        map = (Map) concurrentHashMap.get(sentryId);
                        concurrentHashMap.remove(sentryId);
                        a3.close();
                    }
                    if (map != null) {
                        hashMap.putAll(map);
                    }
                } finally {
                }
            }
            a.close();
            return sentryTransaction;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // io.sentry.EventProcessor
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        return sentryEvent;
    }
}
