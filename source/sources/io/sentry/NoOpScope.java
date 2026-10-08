package io.sentry;

import io.sentry.Scope;
import io.sentry.featureflags.IFeatureFlagBuffer;
import io.sentry.featureflags.NoOpFeatureFlagBuffer;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.FeatureFlags;
import io.sentry.protocol.Request;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import io.sentry.util.LazyEvaluator;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpScope implements IScope {
    public static final NoOpScope b = new NoOpScope();
    public final LazyEvaluator a = new LazyEvaluator(new d(6));

    @Override // io.sentry.IScope
    public final Contexts B() {
        return new Contexts();
    }

    @Override // io.sentry.IScope
    public final PropagationContext C(Scope.IWithPropagationContext iWithPropagationContext) {
        return new PropagationContext();
    }

    @Override // io.sentry.IScope
    public final String D() {
        return null;
    }

    @Override // io.sentry.IScope
    public final List H() {
        return new ArrayList();
    }

    @Override // io.sentry.IScope
    public final User I() {
        return null;
    }

    @Override // io.sentry.IScope
    public final List J() {
        return new ArrayList();
    }

    @Override // io.sentry.IScope
    public final String K() {
        return null;
    }

    @Override // io.sentry.IScope
    public final ISpan b() {
        return null;
    }

    @Override // io.sentry.IScope
    public final FeatureFlags c() {
        return null;
    }

    @Override // io.sentry.IScope
    /* renamed from: clone */
    public final IScope m8clone() {
        return b;
    }

    @Override // io.sentry.IScope
    public final Request d() {
        return null;
    }

    @Override // io.sentry.IScope
    public final Map getExtras() {
        return new HashMap();
    }

    @Override // io.sentry.IScope
    public final SentryId h() {
        return SentryId.k;
    }

    @Override // io.sentry.IScope
    public final SentryOptions j() {
        return (SentryOptions) this.a.a();
    }

    @Override // io.sentry.IScope
    public final ITransaction k() {
        return null;
    }

    @Override // io.sentry.IScope
    public final Session l() {
        return null;
    }

    @Override // io.sentry.IScope
    public final Scope.SessionPair m() {
        return null;
    }

    @Override // io.sentry.IScope
    public final IFeatureFlagBuffer p() {
        return NoOpFeatureFlagBuffer.a;
    }

    @Override // io.sentry.IScope
    public final Session q() {
        return null;
    }

    @Override // io.sentry.IScope
    public final Queue r() {
        return new ArrayDeque();
    }

    @Override // io.sentry.IScope
    public final SentryLevel s() {
        return null;
    }

    @Override // io.sentry.IScope
    public final PropagationContext t() {
        return new PropagationContext();
    }

    @Override // io.sentry.IScope
    public final Session u(Scope.IWithSession iWithSession) {
        return null;
    }

    @Override // io.sentry.IScope
    public final ISentryClient w() {
        return NoOpSentryClient.a;
    }

    @Override // io.sentry.IScope
    public final Map x() {
        return new HashMap();
    }

    @Override // io.sentry.IScope
    public final List y() {
        return new ArrayList();
    }

    @Override // io.sentry.IScope
    public final List z() {
        return new ArrayList();
    }

    /* renamed from: clone, reason: collision with other method in class */
    public final Object m11clone() {
        return b;
    }

    @Override // io.sentry.IScope
    public final void clear() {
    }

    @Override // io.sentry.IScope
    public final void o() {
    }

    @Override // io.sentry.IScope
    public final void A(SentryEvent sentryEvent) {
    }

    @Override // io.sentry.IScope
    public final void E(Scope.IWithTransaction iWithTransaction) {
    }

    @Override // io.sentry.IScope
    public final void F(SentryId sentryId) {
    }

    @Override // io.sentry.IScope
    public final void G(ITransaction iTransaction) {
    }

    @Override // io.sentry.IScope
    public final void L(PropagationContext propagationContext) {
    }

    @Override // io.sentry.IScope
    public final void i(SentryId sentryId) {
    }

    @Override // io.sentry.IScope
    public final void n(SentryLevel sentryLevel) {
    }

    @Override // io.sentry.IScope
    public final void v(String str) {
    }

    @Override // io.sentry.IScope
    public final void a(Breadcrumb breadcrumb, Hint hint) {
    }
}
