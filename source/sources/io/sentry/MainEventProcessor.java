package io.sentry;

import io.sentry.exception.ExceptionMechanismException;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.Cached;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.util.HintUtils;
import java.io.Closeable;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MainEventProcessor implements EventProcessor, Closeable {
    public final SentryOptions j;
    public final SentryThreadFactory k;
    public final SentryExceptionFactory l;
    public volatile HostnameCache m = null;

    public MainEventProcessor(SentryOptions sentryOptions) {
        this.j = sentryOptions;
        SentryStackTraceFactory sentryStackTraceFactory = new SentryStackTraceFactory(sentryOptions);
        this.l = new SentryExceptionFactory(sentryStackTraceFactory);
        this.k = new SentryThreadFactory(sentryStackTraceFactory);
    }

    @Override // io.sentry.EventProcessor
    public final SentryReplayEvent a(SentryReplayEvent sentryReplayEvent, Hint hint) {
        if (sentryReplayEvent.q == null) {
            sentryReplayEvent.q = "java";
        }
        if (v(sentryReplayEvent, hint)) {
            q(sentryReplayEvent);
            SdkVersion sdkVersion = this.j.getSessionReplay().l;
            if (sdkVersion != null) {
                sentryReplayEvent.l = sdkVersion;
            }
        }
        return sentryReplayEvent;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.m != null) {
            this.m.f.shutdown();
        }
    }

    @Override // io.sentry.EventProcessor
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        ArrayList arrayList;
        if (sentryEvent.q == null) {
            sentryEvent.q = "java";
        }
        ExceptionMechanismException exceptionMechanismException = sentryEvent.s;
        if (exceptionMechanismException != null) {
            AtomicInteger atomicInteger = new AtomicInteger(-1);
            HashSet hashSet = new HashSet();
            ArrayDeque arrayDeque = new ArrayDeque();
            this.l.a(exceptionMechanismException, atomicInteger, hashSet, arrayDeque, null);
            sentryEvent.h(new ArrayList(arrayDeque));
        }
        DebugMeta debugMeta = sentryEvent.w;
        SentryOptions sentryOptions = this.j;
        DebugMeta a = DebugMeta.a(debugMeta, sentryOptions);
        if (a != null) {
            sentryEvent.w = a;
        }
        Map a2 = sentryOptions.getModulesLoader().a();
        if (a2 != null) {
            AbstractMap abstractMap = sentryEvent.H;
            if (abstractMap == null) {
                sentryEvent.H = new HashMap(a2);
            } else {
                abstractMap.putAll(a2);
            }
        }
        if (v(sentryEvent, hint)) {
            q(sentryEvent);
            if (sentryEvent.e() == null) {
                ArrayList d = sentryEvent.d();
                if (d != null && !d.isEmpty()) {
                    Iterator it = d.iterator();
                    arrayList = null;
                    while (it.hasNext()) {
                        SentryException sentryException = (SentryException) it.next();
                        if (sentryException.o != null && sentryException.m != null) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(sentryException.m);
                        }
                    }
                } else {
                    arrayList = null;
                }
                boolean isAttachThreads = sentryOptions.isAttachThreads();
                boolean z = false;
                SentryThreadFactory sentryThreadFactory = this.k;
                if (!isAttachThreads && !AbnormalExit.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                    if (sentryOptions.isAttachStacktrace() && ((d == null || d.isEmpty()) && !Cached.class.isInstance(hint.b("sentry:typeCheckHint")))) {
                        boolean isAttachStacktrace = sentryOptions.isAttachStacktrace();
                        HashMap hashMap = new HashMap();
                        Thread currentThread = Thread.currentThread();
                        hashMap.put(currentThread, currentThread.getStackTrace());
                        sentryEvent.j(sentryThreadFactory.a(hashMap, null, false, isAttachStacktrace));
                        return sentryEvent;
                    }
                } else {
                    Object b = hint.b("sentry:typeCheckHint");
                    boolean isAttachStacktrace2 = sentryOptions.isAttachStacktrace();
                    if (b instanceof AbnormalExit) {
                        z = ((AbnormalExit) b).c();
                        isAttachStacktrace2 = true;
                    }
                    sentryEvent.j(sentryThreadFactory.a(Thread.getAllStackTraces(), arrayList, z, isAttachStacktrace2));
                }
            }
        }
        return sentryEvent;
    }

    @Override // io.sentry.EventProcessor
    public final SentryTransaction n(SentryTransaction sentryTransaction, Hint hint) {
        if (sentryTransaction.q == null) {
            sentryTransaction.q = "java";
        }
        DebugMeta a = DebugMeta.a(sentryTransaction.w, this.j);
        if (a != null) {
            sentryTransaction.w = a;
        }
        if (v(sentryTransaction, hint)) {
            q(sentryTransaction);
        }
        return sentryTransaction;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Object, io.sentry.protocol.User] */
    public final void q(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.o == null) {
            sentryBaseEvent.o = this.j.getRelease();
        }
        if (sentryBaseEvent.p == null) {
            sentryBaseEvent.p = this.j.getEnvironment();
        }
        if (sentryBaseEvent.t == null) {
            sentryBaseEvent.t = this.j.getServerName();
        }
        if (this.j.isAttachServerName() && sentryBaseEvent.t == null) {
            if (this.m == null) {
                if (HostnameCache.g == null) {
                    ISentryLifecycleToken a = HostnameCache.h.a();
                    try {
                        if (HostnameCache.g == null) {
                            HostnameCache.g = new HostnameCache();
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
                this.m = HostnameCache.g;
            }
            if (this.m != null) {
                HostnameCache hostnameCache = this.m;
                if (hostnameCache.c < System.currentTimeMillis() && hostnameCache.d.compareAndSet(false, true)) {
                    hostnameCache.a();
                }
                sentryBaseEvent.t = hostnameCache.b;
            }
        }
        if (sentryBaseEvent.u == null) {
            sentryBaseEvent.u = this.j.getDist();
        }
        if (sentryBaseEvent.l == null) {
            sentryBaseEvent.l = this.j.getSdkVersion();
        }
        SentryOptions sentryOptions = this.j;
        if (sentryBaseEvent.n == null) {
            sentryBaseEvent.c(new HashMap(sentryOptions.getTags()));
        } else {
            for (Map.Entry<String, String> entry : sentryOptions.getTags().entrySet()) {
                if (!sentryBaseEvent.n.containsKey(entry.getKey())) {
                    sentryBaseEvent.b(entry.getKey(), entry.getValue());
                }
            }
        }
        User user = sentryBaseEvent.r;
        User user2 = user;
        if (user == null) {
            ?? obj = new Object();
            sentryBaseEvent.r = obj;
            user2 = obj;
        }
        if (user2.m == null && this.j.isSendDefaultPii()) {
            user2.m = "{{auto}}";
        }
    }

    public final boolean v(SentryBaseEvent sentryBaseEvent, Hint hint) {
        if (HintUtils.d(hint)) {
            return true;
        }
        this.j.getLogger().c(SentryLevel.DEBUG, "Event was cached so not applying data relevant to the current app execution/version: %s", sentryBaseEvent.j);
        return false;
    }
}
