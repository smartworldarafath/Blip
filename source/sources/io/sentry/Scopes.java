package io.sentry;

import defpackage.f3;
import defpackage.p;
import defpackage.u2;
import io.sentry.Scope;
import io.sentry.clientreport.DiscardReason;
import io.sentry.clientreport.IClientReportRecorder;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.RateLimiter;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import io.sentry.util.SpanUtils;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Scopes implements IScopes {
    public final IScope a;
    public final IScope b;
    public final IScope c;
    public final CompositePerformanceCollector d;
    public final CombinedScopeView e;
    public final IFeedbackApi f;

    public Scopes(IScope iScope, IScope iScope2, IScope iScope3) {
        this.e = new CombinedScopeView(iScope3, iScope2, iScope);
        this.a = iScope;
        this.b = iScope2;
        this.c = iScope3;
        SentryOptions j = j();
        Objects.b(j, "SentryOptions is required.");
        if (j.getDsn() != null && !j.getDsn().isEmpty()) {
            this.d = j.getCompositePerformanceCollector();
            this.f = new FeedbackApi(this);
        } else {
            u2.g("Scopes requires a DSN to be instantiated. Considering using the NoOpScopes if no DSN is available.");
            throw null;
        }
    }

    @Override // io.sentry.IScopes
    public final void a(Breadcrumb breadcrumb, Hint hint) {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'addBreadcrumb' call is a no-op.", new Object[0]);
        } else {
            this.e.a(breadcrumb, hint);
        }
    }

    @Override // io.sentry.IScopes
    public final void b(boolean z) {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'close' call is a no-op.", new Object[0]);
            return;
        }
        try {
            for (Integration integration : j().getIntegrations()) {
                if (integration instanceof Closeable) {
                    try {
                        ((Closeable) integration).close();
                    } catch (Throwable th) {
                        j().getLogger().c(SentryLevel.WARNING, "Failed to close the integration {}.", integration, th);
                    }
                }
            }
            for (EventProcessor eventProcessor : j().getEventProcessors()) {
                if (eventProcessor instanceof Closeable) {
                    try {
                        ((Closeable) eventProcessor).close();
                    } catch (Throwable th2) {
                        j().getLogger().c(SentryLevel.WARNING, "Failed to close the event processor {}.", eventProcessor, th2);
                    }
                }
            }
            boolean isEnabled = isEnabled();
            CombinedScopeView combinedScopeView = this.e;
            if (!isEnabled) {
                j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            } else {
                try {
                    combinedScopeView.e(null).clear();
                } catch (Throwable th3) {
                    j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th3);
                }
            }
            ScopeType scopeType = ScopeType.ISOLATION;
            if (!isEnabled()) {
                j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            } else {
                try {
                    combinedScopeView.e(scopeType).clear();
                } catch (Throwable th4) {
                    j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th4);
                }
            }
            j().getBackpressureMonitor().close();
            j().getTransactionProfiler().close();
            j().getContinuousProfiler().b(true);
            j().getCompositePerformanceCollector().close();
            j().getConnectionStatusProvider().close();
            ISentryExecutorService executorService = j().getExecutorService();
            if (z) {
                try {
                    executorService.submit(new f3(28, this, executorService));
                } catch (RejectedExecutionException e) {
                    j().getLogger().b(SentryLevel.WARNING, "Failed to submit executor service shutdown task during restart. Shutting down synchronously.", e);
                    executorService.a(j().getShutdownTimeoutMillis());
                }
            } else {
                executorService.a(j().getShutdownTimeoutMillis());
            }
            ScopeType scopeType2 = ScopeType.CURRENT;
            if (!isEnabled()) {
                j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            } else {
                try {
                    combinedScopeView.e(scopeType2).w().b(z);
                } catch (Throwable th5) {
                    j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th5);
                }
            }
            ScopeType scopeType3 = ScopeType.ISOLATION;
            if (!isEnabled()) {
                j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            } else {
                try {
                    combinedScopeView.e(scopeType3).w().b(z);
                } catch (Throwable th6) {
                    j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th6);
                }
            }
            ScopeType scopeType4 = ScopeType.GLOBAL;
            if (!isEnabled()) {
                j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
                return;
            }
            try {
                combinedScopeView.e(scopeType4).w().b(z);
            } catch (Throwable th7) {
                j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th7);
            }
        } catch (Throwable th8) {
            j().getLogger().b(SentryLevel.ERROR, "Error while closing the Scopes.", th8);
        }
    }

    @Override // io.sentry.IScopes
    public final void c(long j) {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'flush' call is a no-op.", new Object[0]);
            return;
        }
        try {
            this.e.w().c(j);
        } catch (Throwable th) {
            j().getLogger().b(SentryLevel.ERROR, "Error in the 'client.flush'.", th);
        }
    }

    @Override // io.sentry.IScopes
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final IHub m14clone() {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Disabled Scopes cloned.", new Object[0]);
        }
        return new HubScopesWrapper((Scopes) v("scopes clone"));
    }

    @Override // io.sentry.IScopes
    public final RateLimiter d() {
        return this.e.w().d();
    }

    @Override // io.sentry.IScopes
    public final boolean f() {
        return this.e.w().f();
    }

    @Override // io.sentry.IScopes
    public final SentryId g(SentryEnvelope sentryEnvelope, Hint hint) {
        SentryId sentryId = SentryId.k;
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureEnvelope' call is a no-op.", new Object[0]);
            return sentryId;
        }
        try {
            SentryId g = this.e.w().g(sentryEnvelope, hint);
            if (g != null) {
                return g;
            }
            return sentryId;
        } catch (Throwable th) {
            this.j().getLogger().b(SentryLevel.ERROR, "Error while capturing envelope.", th);
            return sentryId;
        }
    }

    @Override // io.sentry.IScopes
    public final SentryId h(ProfileChunk profileChunk) {
        Objects.b(profileChunk, "profilingContinuousData is required");
        SentryId sentryId = SentryId.k;
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureTransaction' call is a no-op.", new Object[0]);
            return sentryId;
        }
        try {
            return this.e.w().h(profileChunk);
        } catch (Throwable th) {
            this.j().getLogger().b(SentryLevel.ERROR, "Error while capturing profile chunk with id: " + profileChunk.l, th);
            return sentryId;
        }
    }

    @Override // io.sentry.IScopes
    public final boolean isEnabled() {
        return this.e.w().isEnabled();
    }

    @Override // io.sentry.IScopes
    public final SentryOptions j() {
        return this.e.a.j();
    }

    @Override // io.sentry.IScopes
    public final ITransaction k() {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'getTransaction' call is a no-op.", new Object[0]);
            return null;
        }
        return this.e.k();
    }

    @Override // io.sentry.IScopes
    public final void l() {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'endSession' call is a no-op.", new Object[0]);
            return;
        }
        CombinedScopeView combinedScopeView = this.e;
        Session l = combinedScopeView.l();
        if (l != null) {
            combinedScopeView.w().a(l, HintUtils.a(new Object()));
        }
    }

    @Override // io.sentry.IScopes
    public final void m() {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'startSession' call is a no-op.", new Object[0]);
            return;
        }
        CombinedScopeView combinedScopeView = this.e;
        Scope.SessionPair m = combinedScopeView.m();
        if (m != null) {
            Session session = m.a;
            if (session != null) {
                combinedScopeView.w().a(session, HintUtils.a(new Object()));
            }
            combinedScopeView.w().a(m.b, HintUtils.a(new Object()));
            return;
        }
        j().getLogger().c(SentryLevel.WARNING, "Session could not be started.", new Object[0]);
    }

    @Override // io.sentry.IScopes
    public final ITransaction n(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        double doubleValue;
        Double valueOf;
        transactionContext.r = transactionOptions.d;
        boolean isEnabled = isEnabled();
        ITransaction iTransaction = NoOpTransaction.a;
        if (!isEnabled) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
        } else if (SpanUtils.a(transactionContext.r, j().getIgnoredSpanOrigins())) {
            j().getLogger().c(SentryLevel.DEBUG, "Returning no-op for span origin %s as the SDK has been configured to ignore it", transactionContext.r);
        } else if (!j().getInstrumenter().equals(transactionContext.u)) {
            j().getLogger().c(SentryLevel.DEBUG, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s", transactionContext.u, j().getInstrumenter());
        } else if (!j().isTracingEnabled()) {
            j().getLogger().c(SentryLevel.INFO, "Tracing is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
        } else {
            Baggage baggage = transactionContext.v;
            if (baggage == null || (valueOf = baggage.d) == null) {
                Double d = this.e.t().c.d;
                if (d == null) {
                    doubleValue = 0.0d;
                } else {
                    doubleValue = d.doubleValue();
                }
                valueOf = Double.valueOf(doubleValue);
            }
            TracesSamplingDecision a = j().getInternalTracesSampler().a(new SamplingContext(transactionContext, valueOf));
            Boolean bool = a.a;
            transactionContext.a(a);
            ISpanFactory spanFactory = j().getSpanFactory();
            if (bool.booleanValue() && j().isContinuousProfilingEnabled()) {
                ProfileLifecycle profileLifecycle = j().getProfileLifecycle();
                ProfileLifecycle profileLifecycle2 = ProfileLifecycle.TRACE;
                if (profileLifecycle == profileLifecycle2 && transactionContext.x.equals(SentryId.k)) {
                    j().getContinuousProfiler().d(profileLifecycle2, j().getInternalTracesSampler());
                }
            }
            iTransaction = spanFactory.a(transactionContext, this, transactionOptions, this.d);
            if (bool.booleanValue() && a.d.booleanValue()) {
                ITransactionProfiler transactionProfiler = j().getTransactionProfiler();
                if (!transactionProfiler.isRunning()) {
                    transactionProfiler.start();
                    transactionProfiler.a(iTransaction);
                } else if (transactionOptions.e) {
                    transactionProfiler.a(iTransaction);
                }
            }
        }
        if (ScopeBindingMode.ON == transactionOptions.b) {
            iTransaction.j();
        }
        return iTransaction;
    }

    @Override // io.sentry.IScopes
    public final void o(ScopeCallback scopeCallback) {
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            return;
        }
        try {
            scopeCallback.i(this.e.e(null));
        } catch (Throwable th) {
            j().getLogger().b(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th);
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.Message] */
    @Override // io.sentry.IScopes
    public final SentryId p(String str, SentryLevel sentryLevel, p pVar) {
        IScope m8clone;
        SentryId sentryId = SentryId.k;
        boolean isEnabled = isEnabled();
        CombinedScopeView combinedScopeView = this.e;
        if (!isEnabled) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureMessage' call is a no-op.", new Object[0]);
        } else {
            try {
                if (pVar != null) {
                    try {
                        m8clone = combinedScopeView.m8clone();
                        pVar.i(m8clone);
                    } catch (Throwable th) {
                        j().getLogger().b(SentryLevel.ERROR, "Error in the 'ScopeCallback' callback.", th);
                    }
                    ISentryClient w = combinedScopeView.w();
                    w.getClass();
                    SentryEvent sentryEvent = new SentryEvent();
                    ?? obj = new Object();
                    obj.j = str;
                    sentryEvent.z = obj;
                    sentryEvent.D = sentryLevel;
                    sentryId = w.k(sentryEvent, m8clone, null);
                }
                m8clone = combinedScopeView;
                ISentryClient w2 = combinedScopeView.w();
                w2.getClass();
                SentryEvent sentryEvent2 = new SentryEvent();
                ?? obj2 = new Object();
                obj2.j = str;
                sentryEvent2.z = obj2;
                sentryEvent2.D = sentryLevel;
                sentryId = w2.k(sentryEvent2, m8clone, null);
            } catch (Throwable th2) {
                j().getLogger().b(SentryLevel.ERROR, "Error while capturing message: ".concat(str), th2);
            }
        }
        combinedScopeView.F(sentryId);
        return sentryId;
    }

    @Override // io.sentry.IScopes
    public final SentryId r(SentryReplayEvent sentryReplayEvent, Hint hint) {
        IScope iScope = this.e;
        SentryId sentryId = SentryId.k;
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureReplay' call is a no-op.", new Object[0]);
            return sentryId;
        }
        try {
            return iScope.w().e(sentryReplayEvent, iScope, hint);
        } catch (Throwable th) {
            this.j().getLogger().b(SentryLevel.ERROR, "Error while capturing replay", th);
            return sentryId;
        }
    }

    @Override // io.sentry.IScopes
    public final IScope s() {
        return this.a;
    }

    @Override // io.sentry.IScopes
    public final IFeedbackApi t() {
        return this.f;
    }

    @Override // io.sentry.IScopes
    public final SentryId u(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData) {
        TracesSamplingDecision tracesSamplingDecision;
        SentryTransaction sentryTransaction2;
        IScope iScope = this.e;
        ArrayList arrayList = sentryTransaction.B;
        SentryId sentryId = SentryId.k;
        boolean z = false;
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureTransaction' call is a no-op.", new Object[0]);
            return sentryId;
        }
        if (sentryTransaction.A != null) {
            Boolean bool = Boolean.TRUE;
            SpanContext i = sentryTransaction.k.i();
            if (i == null) {
                tracesSamplingDecision = null;
            } else {
                tracesSamplingDecision = i.m;
            }
            if (tracesSamplingDecision != null) {
                z = tracesSamplingDecision.a.booleanValue();
            }
            if (!bool.equals(Boolean.valueOf(z))) {
                j().getLogger().c(SentryLevel.DEBUG, "Transaction %s was dropped due to sampling decision.", sentryTransaction.j);
                if (j().getBackpressureMonitor().a() > 0) {
                    IClientReportRecorder clientReportRecorder = j().getClientReportRecorder();
                    DiscardReason discardReason = DiscardReason.BACKPRESSURE;
                    clientReportRecorder.a(discardReason, DataCategory.Transaction);
                    j().getClientReportRecorder().c(discardReason, DataCategory.Span, arrayList.size() + 1);
                    return sentryId;
                }
                IClientReportRecorder clientReportRecorder2 = j().getClientReportRecorder();
                DiscardReason discardReason2 = DiscardReason.SAMPLE_RATE;
                clientReportRecorder2.a(discardReason2, DataCategory.Transaction);
                j().getClientReportRecorder().c(discardReason2, DataCategory.Span, arrayList.size() + 1);
                return sentryId;
            }
            try {
                sentryTransaction2 = sentryTransaction;
                try {
                    return iScope.w().i(sentryTransaction2, traceContext, iScope, hint, profilingTraceData);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    this.j().getLogger().b(SentryLevel.ERROR, "Error while capturing transaction with id: " + sentryTransaction2.j, th2);
                    return sentryId;
                }
            } catch (Throwable th3) {
                th = th3;
                sentryTransaction2 = sentryTransaction;
            }
        } else {
            j().getLogger().c(SentryLevel.WARNING, "Transaction: %s is not finished and this 'captureTransaction' call is a no-op.", sentryTransaction.j);
            return sentryId;
        }
    }

    @Override // io.sentry.IScopes
    public final IScopes v(String str) {
        return new Scopes(this.a.m8clone(), this.b.m8clone(), this.c);
    }

    @Override // io.sentry.IScopes
    public final SentryId w(Feedback feedback) {
        IScope iScope = this.e;
        SentryId sentryId = SentryId.k;
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureFeedback' call is a no-op.", new Object[0]);
            return sentryId;
        }
        if (feedback.j.isEmpty()) {
            j().getLogger().c(SentryLevel.WARNING, "captureFeedback called with empty message.", new Object[0]);
            return sentryId;
        }
        try {
            return iScope.w().j(feedback, iScope);
        } catch (Throwable th) {
            this.j().getLogger().b(SentryLevel.ERROR, "Error while capturing feedback: " + feedback.j, th);
            return sentryId;
        }
    }

    @Override // io.sentry.IScopes
    public final SentryId x(SentryEvent sentryEvent, Hint hint) {
        IScope iScope = this.e;
        SentryId sentryId = SentryId.k;
        if (!isEnabled()) {
            j().getLogger().c(SentryLevel.WARNING, "Instance is disabled and this 'captureEvent' call is a no-op.", new Object[0]);
            return sentryId;
        }
        try {
            iScope.A(sentryEvent);
            sentryId = iScope.w().k(sentryEvent, iScope, hint);
            iScope.F(sentryId);
            return sentryId;
        } catch (Throwable th) {
            j().getLogger().b(SentryLevel.ERROR, "Error while capturing event with id: " + sentryEvent.j, th);
            return sentryId;
        }
    }
}
