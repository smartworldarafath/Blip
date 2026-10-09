package io.sentry;

import io.sentry.protocol.SentryStackTrace;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryThreadFactory {
    public final SentryStackTraceFactory a;

    public SentryThreadFactory(SentryStackTraceFactory sentryStackTraceFactory) {
        this.a = sentryStackTraceFactory;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [io.sentry.protocol.SentryThread, java.lang.Object] */
    public final ArrayList a(Map map, ArrayList arrayList, boolean z, boolean z2) {
        boolean z3;
        ArrayList a;
        Thread currentThread = Thread.currentThread();
        if (!map.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            if (!map.containsKey(currentThread)) {
                map.put(currentThread, currentThread.getStackTrace());
            }
            for (Map.Entry entry : map.entrySet()) {
                Thread thread = (Thread) entry.getKey();
                if ((thread == currentThread && !z) || (arrayList != null && arrayList.contains(Long.valueOf(thread.getId())) && !z)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) entry.getValue();
                Thread thread2 = (Thread) entry.getKey();
                ?? obj = new Object();
                obj.l = thread2.getName();
                obj.k = Integer.valueOf(thread2.getPriority());
                obj.j = Long.valueOf(thread2.getId());
                obj.p = Boolean.valueOf(thread2.isDaemon());
                obj.m = thread2.getState().name();
                obj.n = Boolean.valueOf(z3);
                if (z2 && (a = this.a.a(stackTraceElementArr, false)) != null && !a.isEmpty()) {
                    SentryStackTrace sentryStackTrace = new SentryStackTrace(a);
                    sentryStackTrace.l = Boolean.TRUE;
                    obj.r = sentryStackTrace;
                }
                arrayList2.add(obj);
            }
            return arrayList2;
        }
        return null;
    }
}
