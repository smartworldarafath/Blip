package io.sentry;

import io.sentry.Scope;
import io.sentry.Session;
import io.sentry.hints.AbnormalExit;
import io.sentry.protocol.Request;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Scope.IWithSession, SpanFinishedCallback {
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ h(Object obj, Object obj2, Object obj3) {
        this.j = obj;
        this.k = obj2;
        this.l = obj3;
    }

    @Override // io.sentry.Scope.IWithSession
    public void a(Session session) {
        Session.State state;
        String str;
        ConcurrentHashMap concurrentHashMap;
        SentryClient sentryClient = (SentryClient) this.j;
        SentryEvent sentryEvent = (SentryEvent) this.k;
        Hint hint = (Hint) this.l;
        boolean z = false;
        if (session != null) {
            String str2 = null;
            if (sentryEvent.f() != null) {
                state = Session.State.Crashed;
            } else {
                state = null;
            }
            if (Session.State.Crashed == state || sentryEvent.g()) {
                z = true;
            }
            Request request = sentryEvent.m;
            if (request != null && (concurrentHashMap = request.o) != null && concurrentHashMap.containsKey("user-agent")) {
                str = (String) sentryEvent.m.o.get("user-agent");
            } else {
                str = null;
            }
            Object b = hint.b("sentry:typeCheckHint");
            if (b instanceof AbnormalExit) {
                str2 = ((AbnormalExit) b).f();
                state = Session.State.Abnormal;
            }
            if (session.d(state, str, z, str2) && session.p != Session.State.Ok) {
                session.b(DateUtils.b());
                return;
            }
            return;
        }
        sentryClient.b.getLogger().c(SentryLevel.INFO, "Session is null on scope.withSession", new Object[0]);
    }

    @Override // io.sentry.SpanFinishedCallback
    public void b(Span span) {
        SentryTracer sentryTracer = (SentryTracer) this.j;
        SpanFinishedCallback spanFinishedCallback = (SpanFinishedCallback) this.k;
        AtomicReference atomicReference = (AtomicReference) this.l;
        if (spanFinishedCallback != null) {
            spanFinishedCallback.b(span);
        }
        io.sentry.android.core.f fVar = sentryTracer.r.i;
        if (fVar != null) {
            fVar.b(sentryTracer);
        }
        CompositePerformanceCollector compositePerformanceCollector = sentryTracer.q;
        if (compositePerformanceCollector != null) {
            atomicReference.set(compositePerformanceCollector.f(sentryTracer));
        }
    }
}
