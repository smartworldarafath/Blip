package io.sentry;

import defpackage.p;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.RateLimiter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScopesAdapter implements IScopes {
    public static final ScopesAdapter a = new Object();

    @Override // io.sentry.IScopes
    public final void a(Breadcrumb breadcrumb, Hint hint) {
        Sentry.b().a(breadcrumb, hint);
    }

    @Override // io.sentry.IScopes
    public final void b(boolean z) {
        Sentry.a();
    }

    @Override // io.sentry.IScopes
    public final void c(long j) {
        Sentry.b().c(j);
    }

    @Override // io.sentry.IScopes
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final IHub m15clone() {
        return Sentry.b().m15clone();
    }

    @Override // io.sentry.IScopes
    public final RateLimiter d() {
        return Sentry.b().d();
    }

    public final void e(Breadcrumb breadcrumb) {
        a(breadcrumb, new Hint());
    }

    @Override // io.sentry.IScopes
    public final boolean f() {
        return Sentry.b().f();
    }

    @Override // io.sentry.IScopes
    public final SentryId g(SentryEnvelope sentryEnvelope, Hint hint) {
        return Sentry.b().g(sentryEnvelope, hint);
    }

    @Override // io.sentry.IScopes
    public final SentryId h(ProfileChunk profileChunk) {
        return Sentry.b().h(profileChunk);
    }

    @Override // io.sentry.IScopes
    public final SentryId i(Feedback feedback) {
        return Sentry.b().t().b(feedback);
    }

    @Override // io.sentry.IScopes
    public final boolean isEnabled() {
        return Sentry.b().isEnabled();
    }

    @Override // io.sentry.IScopes
    public final SentryOptions j() {
        return Sentry.b().j();
    }

    @Override // io.sentry.IScopes
    public final ITransaction k() {
        return Sentry.b().k();
    }

    @Override // io.sentry.IScopes
    public final void l() {
        Sentry.b().l();
    }

    @Override // io.sentry.IScopes
    public final void m() {
        Sentry.b().m();
    }

    @Override // io.sentry.IScopes
    public final ITransaction n(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        return Sentry.b().n(transactionContext, transactionOptions);
    }

    @Override // io.sentry.IScopes
    public final void o(ScopeCallback scopeCallback) {
        Sentry.b().o(scopeCallback);
    }

    @Override // io.sentry.IScopes
    public final SentryId p(String str, SentryLevel sentryLevel, p pVar) {
        return Sentry.b().p(str, sentryLevel, pVar);
    }

    @Override // io.sentry.IScopes
    public final SentryId r(SentryReplayEvent sentryReplayEvent, Hint hint) {
        return Sentry.b().r(sentryReplayEvent, hint);
    }

    @Override // io.sentry.IScopes
    public final IScope s() {
        return Sentry.b().s();
    }

    @Override // io.sentry.IScopes
    public final IFeedbackApi t() {
        return Sentry.b().t();
    }

    @Override // io.sentry.IScopes
    public final SentryId u(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData) {
        return Sentry.b().u(sentryTransaction, traceContext, hint, profilingTraceData);
    }

    @Override // io.sentry.IScopes
    public final IScopes v(String str) {
        return Sentry.b().v("getCurrentScopes");
    }

    @Override // io.sentry.IScopes
    public final SentryId w(Feedback feedback) {
        return Sentry.b().t().c(feedback);
    }

    @Override // io.sentry.IScopes
    public final SentryId x(SentryEvent sentryEvent, Hint hint) {
        return Sentry.b().x(sentryEvent, hint);
    }
}
