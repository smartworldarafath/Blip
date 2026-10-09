package io.sentry;

import defpackage.p;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.RateLimiter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class NoOpHub implements IHub {
    public static final NoOpHub b = new NoOpHub();
    public final SentryOptions a = SentryOptions.empty();

    @Override // io.sentry.IScopes
    /* renamed from: clone */
    public final IHub m14clone() {
        return b;
    }

    @Override // io.sentry.IScopes
    public final RateLimiter d() {
        return null;
    }

    @Override // io.sentry.IScopes
    public final boolean f() {
        return true;
    }

    @Override // io.sentry.IScopes
    public final SentryId g(SentryEnvelope sentryEnvelope, Hint hint) {
        return SentryId.k;
    }

    @Override // io.sentry.IScopes
    public final SentryId h(ProfileChunk profileChunk) {
        return SentryId.k;
    }

    @Override // io.sentry.IScopes
    public final boolean isEnabled() {
        return false;
    }

    @Override // io.sentry.IScopes
    public final SentryOptions j() {
        return this.a;
    }

    @Override // io.sentry.IScopes
    public final ITransaction k() {
        return null;
    }

    @Override // io.sentry.IScopes
    public final ITransaction n(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        return NoOpTransaction.a;
    }

    @Override // io.sentry.IScopes
    public final SentryId p(String str, SentryLevel sentryLevel, p pVar) {
        return SentryId.k;
    }

    @Override // io.sentry.IScopes
    public final boolean q() {
        return true;
    }

    @Override // io.sentry.IScopes
    public final SentryId r(SentryReplayEvent sentryReplayEvent, Hint hint) {
        return SentryId.k;
    }

    @Override // io.sentry.IScopes
    public final IScope s() {
        return NoOpScope.b;
    }

    @Override // io.sentry.IScopes
    public final IFeedbackApi t() {
        return NoOpFeedbackApi.a;
    }

    @Override // io.sentry.IScopes
    public final SentryId u(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData) {
        return SentryId.k;
    }

    @Override // io.sentry.IScopes
    public final IScopes v(String str) {
        return NoOpScopes.b;
    }

    @Override // io.sentry.IScopes
    public final SentryId w(Feedback feedback) {
        return SentryId.k;
    }

    @Override // io.sentry.IScopes
    public final SentryId x(SentryEvent sentryEvent, Hint hint) {
        return SentryId.k;
    }

    /* renamed from: clone, reason: collision with other method in class */
    public final Object m10clone() {
        return b;
    }

    @Override // io.sentry.IScopes
    public final void l() {
    }

    @Override // io.sentry.IScopes
    public final void m() {
    }

    @Override // io.sentry.IScopes
    public final void b(boolean z) {
    }

    @Override // io.sentry.IScopes
    public final void c(long j) {
    }

    @Override // io.sentry.IScopes
    public final void o(ScopeCallback scopeCallback) {
    }

    @Override // io.sentry.IScopes
    public final void a(Breadcrumb breadcrumb, Hint hint) {
    }
}
