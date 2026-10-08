package io.sentry;

import io.sentry.exception.ExceptionMechanismException;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryStackTrace;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryExceptionFactory {
    public final SentryStackTraceFactory a;

    public SentryExceptionFactory(SentryStackTraceFactory sentryStackTraceFactory) {
        this.a = sentryStackTraceFactory;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, io.sentry.protocol.SentryException] */
    public static SentryException b(Throwable th, Mechanism mechanism, Long l, List list, boolean z) {
        String str;
        Package r0 = th.getClass().getPackage();
        String name = th.getClass().getName();
        ?? obj = new Object();
        String message = th.getMessage();
        if (r0 != null) {
            name = name.replace(r0.getName() + ".", "");
        }
        if (r0 != null) {
            str = r0.getName();
        } else {
            str = null;
        }
        if (list != null && !list.isEmpty()) {
            SentryStackTrace sentryStackTrace = new SentryStackTrace(list);
            if (z) {
                sentryStackTrace.l = Boolean.TRUE;
            }
            obj.n = sentryStackTrace;
        }
        obj.m = l;
        obj.j = name;
        obj.o = mechanism;
        obj.l = str;
        obj.k = message;
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Throwable th, AtomicInteger atomicInteger, HashSet hashSet, ArrayDeque arrayDeque, String str) {
        Thread currentThread;
        Mechanism mechanism;
        boolean z;
        Long l;
        int i = atomicInteger.get();
        String str2 = str;
        while (th != null && hashSet.add(th)) {
            if (str2 == null) {
                str2 = "chained";
            }
            if (th instanceof ExceptionMechanismException) {
                ExceptionMechanismException exceptionMechanismException = (ExceptionMechanismException) th;
                Mechanism mechanism2 = exceptionMechanismException.j;
                Throwable th2 = exceptionMechanismException.k;
                currentThread = exceptionMechanismException.l;
                z = exceptionMechanismException.m;
                th = th2;
                mechanism = mechanism2;
            } else {
                Object obj = new Object();
                currentThread = Thread.currentThread();
                mechanism = obj;
                z = false;
            }
            ArrayList a = this.a.a(th.getStackTrace(), Boolean.FALSE.equals(mechanism.m));
            if (currentThread != null) {
                l = Long.valueOf(currentThread.getId());
            } else {
                l = null;
            }
            SentryException b = b(th, mechanism, l, a, z);
            ArrayDeque arrayDeque2 = arrayDeque;
            arrayDeque2.addFirst(b);
            if (mechanism.j == null) {
                mechanism.j = str2;
            }
            if (atomicInteger.get() >= 0) {
                mechanism.r = Integer.valueOf(i);
            }
            i = atomicInteger.incrementAndGet();
            mechanism.q = Integer.valueOf(i);
            Throwable[] suppressed = th.getSuppressed();
            if (suppressed != null && suppressed.length > 0) {
                int length = suppressed.length;
                int i2 = 0;
                while (i2 < length) {
                    a(suppressed[i2], atomicInteger, hashSet, arrayDeque2, "suppressed");
                    i2++;
                    arrayDeque2 = arrayDeque;
                }
            }
            th = th.getCause();
            str2 = null;
        }
    }
}
