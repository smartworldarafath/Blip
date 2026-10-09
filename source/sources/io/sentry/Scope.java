package io.sentry;

import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.featureflags.IFeatureFlagBuffer;
import io.sentry.featureflags.NoOpFeatureFlagBuffer;
import io.sentry.protocol.App;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.FeatureFlags;
import io.sentry.protocol.Request;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.CollectionUtils;
import io.sentry.util.EventProcessorUtils;
import io.sentry.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Scope implements IScope {
    public SentryLevel a;
    public ITransaction b;
    public final WeakReference c;
    public User d;
    public String e;
    public Request f;
    public final ArrayList g;
    public volatile Queue h;
    public final ConcurrentHashMap i;
    public final ConcurrentHashMap j;
    public final ConcurrentHashMap k;
    public final CopyOnWriteArrayList l;
    public volatile SentryOptions m;
    public volatile Session n;
    public final AutoClosableReentrantLock o;
    public final AutoClosableReentrantLock p;
    public final AutoClosableReentrantLock q;
    public final Contexts r;
    public final CopyOnWriteArrayList s;
    public PropagationContext t;
    public SentryId u;
    public ISentryClient v;
    public final Map w;
    public final IFeatureFlagBuffer x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface IWithPropagationContext {
        void a(PropagationContext propagationContext);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface IWithSession {
        void a(Session session);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface IWithTransaction {
        void c(ITransaction iTransaction);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SessionPair {
        public final Session a;
        public final Session b;

        public SessionPair(Session session, Session session2) {
            this.b = session;
            this.a = session2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.Object, io.sentry.protocol.Request] */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.lang.Object, io.sentry.protocol.User] */
    public Scope(Scope scope) {
        User user;
        Request request;
        this.c = new WeakReference(null);
        this.g = new ArrayList();
        this.i = new ConcurrentHashMap();
        this.j = new ConcurrentHashMap();
        this.k = new ConcurrentHashMap();
        this.l = new CopyOnWriteArrayList();
        this.o = new ReentrantLock();
        this.p = new ReentrantLock();
        this.q = new ReentrantLock();
        this.r = new Contexts();
        this.s = new CopyOnWriteArrayList();
        this.u = SentryId.k;
        this.v = NoOpSentryClient.a;
        this.w = Collections.synchronizedMap(new WeakHashMap());
        this.b = scope.b;
        this.c = scope.c;
        this.n = scope.n;
        this.m = scope.m;
        this.a = scope.a;
        this.v = scope.v;
        User user2 = scope.d;
        if (user2 != null) {
            ?? obj = new Object();
            obj.j = user2.j;
            obj.l = user2.l;
            obj.k = user2.k;
            obj.m = user2.m;
            obj.n = user2.n;
            obj.o = user2.o;
            obj.p = CollectionUtils.a(user2.p);
            obj.q = CollectionUtils.a(user2.q);
            user = obj;
        } else {
            user = null;
        }
        this.d = user;
        this.e = scope.e;
        this.u = scope.u;
        Request request2 = scope.f;
        if (request2 != null) {
            ?? obj2 = new Object();
            obj2.j = request2.j;
            obj2.n = request2.n;
            obj2.k = request2.k;
            obj2.l = request2.l;
            obj2.o = CollectionUtils.a(request2.o);
            obj2.p = CollectionUtils.a(request2.p);
            obj2.r = CollectionUtils.a(request2.r);
            obj2.u = CollectionUtils.a(request2.u);
            obj2.m = request2.m;
            obj2.s = request2.s;
            obj2.q = request2.q;
            obj2.t = request2.t;
            request = obj2;
        } else {
            request = null;
        }
        this.f = request;
        this.g = new ArrayList(scope.g);
        this.l = new CopyOnWriteArrayList(scope.l);
        Breadcrumb[] breadcrumbArr = (Breadcrumb[]) scope.h.toArray(new Breadcrumb[0]);
        Queue e = e(scope.m.getMaxBreadcrumbs());
        for (Breadcrumb breadcrumb : breadcrumbArr) {
            e.add(new Breadcrumb(breadcrumb));
        }
        this.h = e;
        ConcurrentHashMap concurrentHashMap = scope.i;
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        for (Map.Entry entry : concurrentHashMap.entrySet()) {
            if (entry != null) {
                concurrentHashMap2.put((String) entry.getKey(), (String) entry.getValue());
            }
        }
        this.i = concurrentHashMap2;
        ConcurrentHashMap concurrentHashMap3 = scope.j;
        ConcurrentHashMap concurrentHashMap4 = new ConcurrentHashMap();
        for (Map.Entry entry2 : concurrentHashMap3.entrySet()) {
            if (entry2 != null) {
                String str = (String) entry2.getKey();
                if (entry2.getValue() == null) {
                    concurrentHashMap4.put(str, null);
                } else {
                    d.i();
                    throw null;
                }
            }
        }
        this.j = concurrentHashMap4;
        ConcurrentHashMap concurrentHashMap5 = scope.k;
        ConcurrentHashMap concurrentHashMap6 = new ConcurrentHashMap();
        for (Map.Entry entry3 : concurrentHashMap5.entrySet()) {
            if (entry3 != null) {
                concurrentHashMap6.put((String) entry3.getKey(), entry3.getValue());
            }
        }
        this.k = concurrentHashMap6;
        this.r = new Contexts(scope.r);
        this.s = new CopyOnWriteArrayList(scope.s);
        this.x = scope.x.m16clone();
        this.t = new PropagationContext(scope.t);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Queue, io.sentry.SynchronizedCollection] */
    public static Queue e(int i) {
        if (i > 0) {
            return new SynchronizedCollection(new CircularFifoQueue(i));
        }
        return new DisabledQueue();
    }

    @Override // io.sentry.IScope
    public final void A(SentryEvent sentryEvent) {
        if (this.m.isTracingEnabled() && sentryEvent.a() != null) {
            Map map = this.w;
            Throwable a = sentryEvent.a();
            Objects.b(a, "throwable cannot be null");
            while (a.getCause() != null && a.getCause() != a) {
                a = a.getCause();
            }
        }
    }

    @Override // io.sentry.IScope
    public final Contexts B() {
        return this.r;
    }

    @Override // io.sentry.IScope
    public final PropagationContext C(IWithPropagationContext iWithPropagationContext) {
        ISentryLifecycleToken a = this.q.a();
        try {
            iWithPropagationContext.a(this.t);
            PropagationContext propagationContext = new PropagationContext(this.t);
            a.close();
            return propagationContext;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // io.sentry.IScope
    public final String D() {
        return this.e;
    }

    @Override // io.sentry.IScope
    public final void E(IWithTransaction iWithTransaction) {
        ISentryLifecycleToken a = this.p.a();
        try {
            iWithTransaction.c(this.b);
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

    @Override // io.sentry.IScope
    public final void G(ITransaction iTransaction) {
        ISentryLifecycleToken a = this.p.a();
        try {
            this.b = iTransaction;
            for (IScopeObserver iScopeObserver : this.m.getScopeObservers()) {
                if (iTransaction != null) {
                    iScopeObserver.e(iTransaction.getName());
                    iScopeObserver.c(iTransaction.r(), this);
                } else {
                    iScopeObserver.e(null);
                    iScopeObserver.c(null, this);
                }
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

    @Override // io.sentry.IScope
    public final List H() {
        return this.g;
    }

    @Override // io.sentry.IScope
    public final User I() {
        return this.d;
    }

    @Override // io.sentry.IScope
    public final List J() {
        return EventProcessorUtils.a(this.l);
    }

    @Override // io.sentry.IScope
    public final String K() {
        ITransaction iTransaction = this.b;
        if (iTransaction != null) {
            return iTransaction.getName();
        }
        return null;
    }

    @Override // io.sentry.IScope
    public final void L(PropagationContext propagationContext) {
        this.t = propagationContext;
        SpanContext spanContext = new SpanContext(propagationContext.a, propagationContext.b, "default", null);
        spanContext.r = "auto";
        Iterator<IScopeObserver> it = this.m.getScopeObservers().iterator();
        while (it.hasNext()) {
            it.next().c(spanContext, this);
        }
    }

    @Override // io.sentry.IScope
    public final void a(Breadcrumb breadcrumb, Hint hint) {
        if (breadcrumb != null && !(this.h instanceof DisabledQueue)) {
            if (hint == null) {
                hint = new Hint();
            }
            SentryOptions.BeforeBreadcrumbCallback beforeBreadcrumb = this.m.getBeforeBreadcrumb();
            if (beforeBreadcrumb != null) {
                try {
                    breadcrumb = beforeBreadcrumb.b(breadcrumb, hint);
                } catch (Throwable th) {
                    this.m.getLogger().b(SentryLevel.ERROR, "The BeforeBreadcrumbCallback callback threw an exception. Exception details will be added to the breadcrumb.", th);
                    if (th.getMessage() != null) {
                        breadcrumb.c(th.getMessage(), "sentry:message");
                    }
                }
            }
            if (breadcrumb != null) {
                this.h.add(breadcrumb);
                for (IScopeObserver iScopeObserver : this.m.getScopeObservers()) {
                    iScopeObserver.f(breadcrumb);
                    iScopeObserver.a(this.h);
                }
                return;
            }
            this.m.getLogger().c(SentryLevel.INFO, "Breadcrumb was dropped by beforeBreadcrumb", new Object[0]);
        }
    }

    @Override // io.sentry.IScope
    public final ISpan b() {
        ISpan k;
        ISpan iSpan = (ISpan) this.c.get();
        if (iSpan != null) {
            return iSpan;
        }
        ITransaction iTransaction = this.b;
        if (iTransaction != null && (k = iTransaction.k()) != null) {
            return k;
        }
        return iTransaction;
    }

    @Override // io.sentry.IScope
    public final FeatureFlags c() {
        return this.x.c();
    }

    @Override // io.sentry.IScope
    public final void clear() {
        this.a = null;
        this.d = null;
        this.f = null;
        this.e = null;
        this.g.clear();
        this.h.clear();
        Iterator<IScopeObserver> it = this.m.getScopeObservers().iterator();
        while (it.hasNext()) {
            it.next().a(this.h);
        }
        this.i.clear();
        this.j.clear();
        this.k.clear();
        this.l.clear();
        o();
        this.s.clear();
        Iterator<IScopeObserver> it2 = this.m.getScopeObservers().iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
    }

    @Override // io.sentry.IScope
    /* renamed from: clone */
    public final IScope m8clone() {
        return new Scope(this);
    }

    @Override // io.sentry.IScope
    public final Request d() {
        return this.f;
    }

    @Override // io.sentry.IScope
    public final Map getExtras() {
        return this.k;
    }

    @Override // io.sentry.IScope
    public final SentryId h() {
        return this.u;
    }

    @Override // io.sentry.IScope
    public final void i(SentryId sentryId) {
        this.u = sentryId;
        Iterator<IScopeObserver> it = this.m.getScopeObservers().iterator();
        while (it.hasNext()) {
            it.next().i(sentryId);
        }
    }

    @Override // io.sentry.IScope
    public final SentryOptions j() {
        return this.m;
    }

    @Override // io.sentry.IScope
    public final ITransaction k() {
        return this.b;
    }

    @Override // io.sentry.IScope
    public final Session l() {
        ISentryLifecycleToken a = this.o.a();
        try {
            Session session = null;
            if (this.n != null) {
                Session session2 = this.n;
                session2.getClass();
                session2.b(DateUtils.b());
                this.m.getContinuousProfiler().e();
                Session clone = this.n.clone();
                this.n = null;
                session = clone;
            }
            a.close();
            return session;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // io.sentry.IScope
    public final SessionPair m() {
        String str;
        ISentryLifecycleToken a = this.o.a();
        try {
            if (this.n != null) {
                Session session = this.n;
                session.getClass();
                session.b(DateUtils.b());
                this.m.getContinuousProfiler().e();
            }
            Session session2 = this.n;
            SessionPair sessionPair = null;
            Session session3 = null;
            if (this.m.getRelease() != null) {
                String distinctId = this.m.getDistinctId();
                User user = this.d;
                String environment = this.m.getEnvironment();
                String release = this.m.getRelease();
                Session.State state = Session.State.Ok;
                Date b = DateUtils.b();
                Date b2 = DateUtils.b();
                String a2 = SentryUUID.a();
                Boolean bool = Boolean.TRUE;
                if (user != null) {
                    str = user.m;
                } else {
                    str = null;
                }
                this.n = new Session(state, b, b2, 0, distinctId, a2, bool, null, null, str, null, environment, release, null);
                if (session2 != null) {
                    session3 = session2.clone();
                }
                sessionPair = new SessionPair(this.n.clone(), session3);
            } else {
                this.m.getLogger().c(SentryLevel.WARNING, "Release is not set on SentryOptions. Session could not be started", new Object[0]);
            }
            a.close();
            return sessionPair;
        } catch (Throwable th) {
            try {
                a.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    @Override // io.sentry.IScope
    public final void n(SentryLevel sentryLevel) {
        this.a = sentryLevel;
        Iterator<IScopeObserver> it = this.m.getScopeObservers().iterator();
        while (it.hasNext()) {
            it.next().n(sentryLevel);
        }
    }

    @Override // io.sentry.IScope
    public final void o() {
        ISentryLifecycleToken a = this.p.a();
        try {
            this.b = null;
            a.close();
            for (IScopeObserver iScopeObserver : this.m.getScopeObservers()) {
                iScopeObserver.e(null);
                iScopeObserver.c(null, this);
            }
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // io.sentry.IScope
    public final IFeatureFlagBuffer p() {
        return this.x;
    }

    @Override // io.sentry.IScope
    public final Session q() {
        return this.n;
    }

    @Override // io.sentry.IScope
    public final Queue r() {
        return this.h;
    }

    @Override // io.sentry.IScope
    public final SentryLevel s() {
        return this.a;
    }

    @Override // io.sentry.IScope
    public final PropagationContext t() {
        return this.t;
    }

    @Override // io.sentry.IScope
    public final Session u(IWithSession iWithSession) {
        Session session;
        ISentryLifecycleToken a = this.o.a();
        try {
            iWithSession.a(this.n);
            if (this.n != null) {
                session = this.n.clone();
            } else {
                session = null;
            }
            a.close();
            return session;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [io.sentry.protocol.App, java.lang.Object] */
    @Override // io.sentry.IScope
    public final void v(String str) {
        this.e = str;
        Contexts contexts = this.r;
        App d = contexts.d();
        App app = d;
        if (d == null) {
            ?? obj = new Object();
            contexts.m(obj);
            app = obj;
        }
        if (str == null) {
            app.r = null;
        } else {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(str);
            app.r = arrayList;
        }
        Iterator<IScopeObserver> it = this.m.getScopeObservers().iterator();
        while (it.hasNext()) {
            it.next().d(contexts);
        }
    }

    @Override // io.sentry.IScope
    public final ISentryClient w() {
        return this.v;
    }

    @Override // io.sentry.IScope
    public final Map x() {
        return CollectionUtils.a(this.i);
    }

    @Override // io.sentry.IScope
    public final List y() {
        return this.l;
    }

    @Override // io.sentry.IScope
    public final List z() {
        return new CopyOnWriteArrayList(this.s);
    }

    /* renamed from: clone, reason: collision with other method in class */
    public final Object m13clone() {
        return new Scope(this);
    }

    @Override // io.sentry.IScope
    public final void F(SentryId sentryId) {
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, io.sentry.featureflags.FeatureFlagBuffer] */
    public Scope(SentryOptions sentryOptions) {
        NoOpFeatureFlagBuffer noOpFeatureFlagBuffer;
        this.c = new WeakReference(null);
        this.g = new ArrayList();
        this.i = new ConcurrentHashMap();
        this.j = new ConcurrentHashMap();
        this.k = new ConcurrentHashMap();
        this.l = new CopyOnWriteArrayList();
        this.o = new ReentrantLock();
        this.p = new ReentrantLock();
        this.q = new ReentrantLock();
        this.r = new Contexts();
        this.s = new CopyOnWriteArrayList();
        this.u = SentryId.k;
        this.v = NoOpSentryClient.a;
        this.w = Collections.synchronizedMap(new WeakHashMap());
        Objects.b(sentryOptions, "SentryOptions is required.");
        this.m = sentryOptions;
        this.h = e(this.m.getMaxBreadcrumbs());
        if (sentryOptions.getMaxFeatureFlags() > 0) {
            ?? obj = new Object();
            new ReentrantLock();
            obj.a = new CopyOnWriteArrayList();
            noOpFeatureFlagBuffer = obj;
        } else {
            noOpFeatureFlagBuffer = NoOpFeatureFlagBuffer.a;
        }
        this.x = noOpFeatureFlagBuffer;
        this.t = new PropagationContext();
    }
}
