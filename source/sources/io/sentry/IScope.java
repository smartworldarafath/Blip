package io.sentry;

import io.sentry.Scope;
import io.sentry.featureflags.IFeatureFlagBuffer;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.FeatureFlags;
import io.sentry.protocol.Request;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IScope {
    void A(SentryEvent sentryEvent);

    Contexts B();

    PropagationContext C(Scope.IWithPropagationContext iWithPropagationContext);

    String D();

    void E(Scope.IWithTransaction iWithTransaction);

    void F(SentryId sentryId);

    void G(ITransaction iTransaction);

    List H();

    User I();

    List J();

    String K();

    void L(PropagationContext propagationContext);

    void a(Breadcrumb breadcrumb, Hint hint);

    ISpan b();

    FeatureFlags c();

    void clear();

    IScope clone();

    Request d();

    Map getExtras();

    SentryId h();

    void i(SentryId sentryId);

    SentryOptions j();

    ITransaction k();

    Session l();

    Scope.SessionPair m();

    void n(SentryLevel sentryLevel);

    void o();

    IFeatureFlagBuffer p();

    Session q();

    Queue r();

    SentryLevel s();

    PropagationContext t();

    Session u(Scope.IWithSession iWithSession);

    void v(String str);

    ISentryClient w();

    Map x();

    List y();

    List z();
}
