package io.sentry;

import defpackage.n5;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.thread.IThreadChecker;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryTracer implements ITransaction {
    public final Span b;
    public final Scopes d;
    public final String e;
    public volatile TimerTask g;
    public volatile TimerTask h;
    public volatile Timer i;
    public final AutoClosableReentrantLock j;
    public final AutoClosableReentrantLock k;
    public final AtomicBoolean l;
    public final AtomicBoolean m;
    public final TransactionNameSource n;
    public final Instrumenter o;
    public final Contexts p;
    public final CompositePerformanceCollector q;
    public final TransactionOptions r;
    public final SentryId a = new SentryId();
    public final CopyOnWriteArrayList c = new CopyOnWriteArrayList();
    public FinishStatus f = FinishStatus.c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FinishStatus {
        public static final FinishStatus c = new FinishStatus(false, null);
        public final boolean a;
        public final SpanStatus b;

        public FinishStatus(boolean z, SpanStatus spanStatus) {
            this.a = z;
            this.b = spanStatus;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public SentryTracer(TransactionContext transactionContext, Scopes scopes, TransactionOptions transactionOptions, CompositePerformanceCollector compositePerformanceCollector) {
        this.i = null;
        ?? reentrantLock = new ReentrantLock();
        this.j = reentrantLock;
        this.k = new ReentrantLock();
        this.l = new AtomicBoolean(false);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.m = atomicBoolean;
        Contexts contexts = new Contexts();
        this.p = contexts;
        Span span = new Span(transactionContext, this, scopes, transactionOptions);
        this.b = span;
        this.e = transactionContext.y;
        this.o = transactionContext.u;
        this.d = scopes;
        Boolean bool = Boolean.TRUE;
        compositePerformanceCollector = bool.equals(span.v()) ? compositePerformanceCollector : null;
        this.q = compositePerformanceCollector;
        this.n = transactionContext.z;
        this.r = transactionOptions;
        z(span);
        SentryId y = y();
        if (!y.equals(SentryId.k) && bool.equals(span.v())) {
            contexts.k(new ProfileContext(y), "profile");
        }
        if (compositePerformanceCollector != null) {
            compositePerformanceCollector.e(this);
        }
        if (transactionOptions.g == null && transactionOptions.h == null) {
            return;
        }
        boolean z = true;
        this.i = new Timer(true);
        Long l = transactionOptions.h;
        if (l != null) {
            ISentryLifecycleToken a = reentrantLock.a();
            try {
                if (this.i != null) {
                    v();
                    atomicBoolean.set(true);
                    this.h = new TimerTask() { // from class: io.sentry.SentryTracer.2
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public final void run() {
                            boolean z2;
                            SentryTracer sentryTracer = SentryTracer.this;
                            SpanStatus a2 = sentryTracer.a();
                            if (a2 == null) {
                                a2 = SpanStatus.DEADLINE_EXCEEDED;
                            }
                            if (sentryTracer.r.g != null) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            sentryTracer.e(a2, z2, null);
                            sentryTracer.m.set(false);
                        }
                    };
                    try {
                        this.i.schedule(this.h, l.longValue());
                    } catch (Throwable th) {
                        this.d.j().getLogger().b(SentryLevel.WARNING, "Failed to schedule finish timer", th);
                        SpanStatus a2 = a();
                        if (a2 == null) {
                            a2 = SpanStatus.DEADLINE_EXCEEDED;
                        }
                        if (this.r.g == null) {
                            z = false;
                        }
                        e(a2, z, null);
                        this.m.set(false);
                    }
                }
                a.close();
            } catch (Throwable th2) {
                try {
                    a.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        p();
    }

    @Override // io.sentry.ISpan
    public final SpanStatus a() {
        return this.b.c.p;
    }

    @Override // io.sentry.ISpan
    public final TraceContext b() {
        Scopes scopes = this.d;
        if (scopes.j().isTraceSampling()) {
            Span span = this.b;
            SpanContext spanContext = span.c;
            SpanContext spanContext2 = span.c;
            Baggage baggage = spanContext.v;
            if (baggage != null) {
                ISentryLifecycleToken a = this.k.a();
                try {
                    if (baggage.e) {
                        AtomicReference atomicReference = new AtomicReference();
                        if (!scopes.isEnabled()) {
                            scopes.j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
                        } else {
                            try {
                                atomicReference.set(scopes.e.e(null).h());
                            } catch (Throwable th) {
                                scopes.j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th);
                            }
                        }
                        baggage.d(spanContext2.j, (SentryId) atomicReference.get(), scopes.j(), spanContext2.m, this.e, this.n);
                        baggage.e = false;
                    }
                    a.close();
                    return baggage.e();
                } finally {
                }
            }
        }
        return null;
    }

    @Override // io.sentry.ISpan
    public final ISpan c(String str, SentryDate sentryDate, Instrumenter instrumenter) {
        return l("activity.load", str, sentryDate, instrumenter, new SpanOptions());
    }

    @Override // io.sentry.ISpan
    public final boolean d() {
        return this.b.f;
    }

    @Override // io.sentry.ITransaction
    public final void e(SpanStatus spanStatus, boolean z, Hint hint) {
        if (this.b.f) {
            return;
        }
        SentryDate a = this.d.j().getDateProvider().a();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.c);
        ListIterator listIterator = copyOnWriteArrayList.listIterator(copyOnWriteArrayList.size());
        while (listIterator.hasPrevious()) {
            Span span = (Span) listIterator.previous();
            span.i = null;
            span.t(spanStatus, a);
        }
        x(spanStatus, a, z, hint);
    }

    @Override // io.sentry.ISpan
    public final void f(Number number, String str) {
        this.b.f(number, str);
    }

    @Override // io.sentry.ISpan
    public final void g(SpanStatus spanStatus) {
        t(spanStatus, null);
    }

    @Override // io.sentry.ITransaction
    public final String getName() {
        return this.e;
    }

    @Override // io.sentry.ISpan
    public final void h() {
        t(a(), null);
    }

    @Override // io.sentry.ISpan
    public final void i(Object obj, String str) {
        Span span = this.b;
        if (span.f) {
            this.d.j().getLogger().c(SentryLevel.DEBUG, "The transaction is already finished. Data %s cannot be set", str);
        } else {
            span.i(obj, str);
        }
    }

    @Override // io.sentry.ISpan
    public final void j() {
        Scopes scopes = this.d;
        if (!scopes.isEnabled()) {
            scopes.j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            return;
        }
        try {
            scopes.e.e(null).G(this);
        } catch (Throwable th) {
            scopes.j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th);
        }
    }

    @Override // io.sentry.ITransaction
    public final ISpan k() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.c);
        ListIterator listIterator = copyOnWriteArrayList.listIterator(copyOnWriteArrayList.size());
        while (listIterator.hasPrevious()) {
            Span span = (Span) listIterator.previous();
            if (!span.f) {
                return span;
            }
        }
        return null;
    }

    @Override // io.sentry.ISpan
    public final ISpan l(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter, SpanOptions spanOptions) {
        boolean z = this.b.f;
        NoOpSpan noOpSpan = NoOpSpan.a;
        if (z || !this.o.equals(instrumenter)) {
            return noOpSpan;
        }
        int size = this.c.size();
        Scopes scopes = this.d;
        if (size < scopes.j().getMaxSpans()) {
            return this.b.l(str, str2, sentryDate, instrumenter, spanOptions);
        }
        scopes.j().getLogger().c(SentryLevel.WARNING, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan.", str, str2);
        return noOpSpan;
    }

    @Override // io.sentry.ISpan
    public final void m(String str) {
        Span span = this.b;
        if (span.f) {
            this.d.j().getLogger().c(SentryLevel.DEBUG, "The transaction is already finished. Description %s cannot be set", str);
        } else {
            span.c.o = str;
        }
    }

    @Override // io.sentry.ITransaction
    public final SentryId n() {
        return this.a;
    }

    @Override // io.sentry.ISpan
    public final String o() {
        return this.b.c.o;
    }

    @Override // io.sentry.ITransaction
    public final void p() {
        Long l;
        ISentryLifecycleToken a = this.j.a();
        try {
            if (this.i != null && (l = this.r.g) != null) {
                w();
                this.l.set(true);
                this.g = new TimerTask() { // from class: io.sentry.SentryTracer.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        SentryTracer sentryTracer = SentryTracer.this;
                        SpanStatus a2 = sentryTracer.a();
                        if (a2 == null) {
                            a2 = SpanStatus.OK;
                        }
                        sentryTracer.t(a2, null);
                        sentryTracer.l.set(false);
                    }
                };
                try {
                    this.i.schedule(this.g, l.longValue());
                } catch (Throwable th) {
                    this.d.j().getLogger().b(SentryLevel.WARNING, "Failed to schedule finish timer", th);
                    SpanStatus a2 = a();
                    if (a2 == null) {
                        a2 = SpanStatus.OK;
                    }
                    t(a2, null);
                    this.l.set(false);
                }
            }
            a.close();
        } catch (Throwable th2) {
            try {
                a.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override // io.sentry.ISpan
    public final void q(String str, Long l, MeasurementUnit measurementUnit) {
        this.b.q(str, l, measurementUnit);
    }

    @Override // io.sentry.ISpan
    public final SpanContext r() {
        return this.b.c;
    }

    @Override // io.sentry.ISpan
    public final SentryDate s() {
        return this.b.b;
    }

    @Override // io.sentry.ISpan
    public final void t(SpanStatus spanStatus, SentryDate sentryDate) {
        x(spanStatus, sentryDate, true, null);
    }

    @Override // io.sentry.ISpan
    public final SentryDate u() {
        return this.b.a;
    }

    public final void v() {
        ISentryLifecycleToken a = this.j.a();
        try {
            if (this.h != null) {
                this.h.cancel();
                this.m.set(false);
                this.h = null;
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

    public final void w() {
        ISentryLifecycleToken a = this.j.a();
        try {
            if (this.g != null) {
                this.g.cancel();
                this.l.set(false);
                this.g = null;
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

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x(SpanStatus spanStatus, SentryDate sentryDate, boolean z, Hint hint) {
        ProfilingTraceData profilingTraceData;
        Scopes scopes;
        Boolean bool;
        SentryDate sentryDate2 = this.b.b;
        if (sentryDate == null) {
            sentryDate = sentryDate2;
        }
        if (sentryDate == null) {
            sentryDate = this.d.j().getDateProvider().a();
        }
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Span) it.next()).h.getClass();
        }
        this.f = new FinishStatus(true, spanStatus);
        if (!this.b.f) {
            if (this.r.f) {
                ListIterator listIterator = this.c.listIterator();
                while (listIterator.hasNext()) {
                    Span span = (Span) listIterator.next();
                    if (!span.f && span.b == null) {
                        return;
                    }
                }
            }
            AtomicReference atomicReference = new AtomicReference();
            Span span2 = this.b;
            span2.i = new h(this, span2.i, atomicReference);
            span2.t(this.f.b, sentryDate);
            Boolean bool2 = Boolean.TRUE;
            if (bool2.equals(this.b.v())) {
                TracesSamplingDecision tracesSamplingDecision = this.b.c.m;
                if (tracesSamplingDecision == null) {
                    bool = null;
                } else {
                    bool = tracesSamplingDecision.d;
                }
                if (bool2.equals(bool)) {
                    profilingTraceData = this.d.j().getTransactionProfiler().b(this, (List) atomicReference.get(), this.d.j());
                    if (this.d.j().isContinuousProfilingEnabled()) {
                        ProfileLifecycle profileLifecycle = this.d.j().getProfileLifecycle();
                        ProfileLifecycle profileLifecycle2 = ProfileLifecycle.TRACE;
                        if (profileLifecycle == profileLifecycle2 && this.b.c.x.equals(SentryId.k)) {
                            this.d.j().getContinuousProfiler().c(profileLifecycle2);
                        }
                    }
                    if (atomicReference.get() != null) {
                        ((List) atomicReference.get()).clear();
                    }
                    scopes = this.d;
                    if (scopes.isEnabled()) {
                        scopes.j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
                    } else {
                        try {
                            IScope e = scopes.e.e(null);
                            e.E(new n5(11, this, e));
                        } catch (Throwable th) {
                            scopes.j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th);
                        }
                    }
                    SentryTransaction sentryTransaction = new SentryTransaction(this);
                    if (this.i != null) {
                        ISentryLifecycleToken a = this.j.a();
                        try {
                            if (this.i != null) {
                                w();
                                v();
                                this.i.cancel();
                                this.i = null;
                            }
                            a.close();
                        } catch (Throwable th2) {
                            try {
                                a.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                    if (!z && this.c.isEmpty() && this.r.g != null) {
                        this.d.j().getLogger().c(SentryLevel.DEBUG, "Dropping idle transaction %s because it has no child spans", this.e);
                        return;
                    } else {
                        sentryTransaction.C.putAll(this.b.k);
                        this.d.u(sentryTransaction, b(), hint, profilingTraceData);
                    }
                }
            }
            profilingTraceData = null;
            if (this.d.j().isContinuousProfilingEnabled()) {
            }
            if (atomicReference.get() != null) {
            }
            scopes = this.d;
            if (scopes.isEnabled()) {
            }
            SentryTransaction sentryTransaction2 = new SentryTransaction(this);
            if (this.i != null) {
            }
            if (!z) {
            }
            sentryTransaction2.C.putAll(this.b.k);
            this.d.u(sentryTransaction2, b(), hint, profilingTraceData);
        }
    }

    public final SentryId y() {
        Span span = this.b;
        if (!span.c.x.equals(SentryId.k)) {
            return span.c.x;
        }
        return this.d.j().getContinuousProfiler().f();
    }

    public final void z(Span span) {
        IThreadChecker threadChecker = this.d.j().getThreadChecker();
        SentryId y = y();
        if (!y.equals(SentryId.k) && Boolean.TRUE.equals(span.v())) {
            span.i(y.toString(), "profiler_id");
        }
        span.i(String.valueOf(threadChecker.b()), "thread.id");
        span.i(threadChecker.a(), "thread.name");
    }
}
