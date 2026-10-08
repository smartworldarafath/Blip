package io.sentry;

import defpackage.p;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.RateLimiter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class HubScopesWrapper implements IHub {
    public final Scopes a;

    public HubScopesWrapper(Scopes scopes) {
        this.a = scopes;
    }

    @Override // io.sentry.IScopes
    public final void a(Breadcrumb breadcrumb, Hint hint) {
        this.a.a(breadcrumb, hint);
    }

    @Override // io.sentry.IScopes
    public final void b(boolean z) {
        this.a.b(z);
    }

    @Override // io.sentry.IScopes
    public final void c(long j) {
        this.a.c(j);
    }

    @Override // io.sentry.IScopes
    /* renamed from: clone */
    public final IHub m14clone() {
        return this.a.m14clone();
    }

    @Override // io.sentry.IScopes
    public final RateLimiter d() {
        return this.a.d();
    }

    @Override // io.sentry.IScopes
    public final boolean f() {
        return this.a.f();
    }

    @Override // io.sentry.IScopes
    public final SentryId g(SentryEnvelope sentryEnvelope, Hint hint) {
        return this.a.g(sentryEnvelope, hint);
    }

    @Override // io.sentry.IScopes
    public final SentryId h(ProfileChunk profileChunk) {
        return this.a.h(profileChunk);
    }

    @Override // io.sentry.IScopes
    public final boolean isEnabled() {
        return this.a.isEnabled();
    }

    @Override // io.sentry.IScopes
    public final SentryOptions j() {
        return this.a.j();
    }

    @Override // io.sentry.IScopes
    public final ITransaction k() {
        return this.a.k();
    }

    @Override // io.sentry.IScopes
    public final void l() {
        this.a.l();
    }

    @Override // io.sentry.IScopes
    public final void m() {
        this.a.m();
    }

    @Override // io.sentry.IScopes
    public final ITransaction n(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        return this.a.n(transactionContext, transactionOptions);
    }

    @Override // io.sentry.IScopes
    public final void o(ScopeCallback scopeCallback) {
        this.a.o(scopeCallback);
    }

    @Override // io.sentry.IScopes
    public final SentryId p(String str, SentryLevel sentryLevel, p pVar) {
        return this.a.p(str, sentryLevel, pVar);
    }

    @Override // io.sentry.IScopes
    public final SentryId r(SentryReplayEvent sentryReplayEvent, Hint hint) {
        return this.a.r(sentryReplayEvent, hint);
    }

    @Override // io.sentry.IScopes
    public final IScope s() {
        return this.a.a;
    }

    @Override // io.sentry.IScopes
    public final IFeedbackApi t() {
        return this.a.f;
    }

    @Override // io.sentry.IScopes
    public final SentryId u(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData) {
        return this.a.u(sentryTransaction, traceContext, hint, profilingTraceData);
    }

    @Override // io.sentry.IScopes
    public final IScopes v(String str) {
        return this.a.v("getCurrentScopes");
    }

    @Override // io.sentry.IScopes
    public final SentryId w(Feedback feedback) {
        return this.a.w(feedback);
    }

    @Override // io.sentry.IScopes
    public final SentryId x(SentryEvent sentryEvent, Hint hint) {
        return this.a.x(sentryEvent, hint);
    }

    /* renamed from: clone, reason: collision with other method in class */
    public final Object m9clone() {
        return this.a.m14clone();
    }
}
