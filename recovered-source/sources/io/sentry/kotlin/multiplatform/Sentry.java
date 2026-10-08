package io.sentry.kotlin.multiplatform;

import defpackage.le;
import defpackage.lh;
import defpackage.p;
import io.sentry.IScopes;
import io.sentry.kotlin.multiplatform.log.DefaultSentryLogBuilderKt;
import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Sentry {
    public static final SentryBridge a;

    /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.kotlin.multiplatform.SentryBridge, java.lang.Object] */
    static {
        ?? obj = new Object();
        int i = SentryBridge$logger$1.r;
        DefaultSentryLogBuilderKt.a.getClass();
        a = obj;
    }

    public static void a(String str, le leVar) {
        a.getClass();
        p pVar = new p(28, new lh(5, leVar));
        IScopes b = io.sentry.Sentry.b();
        b.getClass();
        SentryId p = b.p(str, io.sentry.SentryLevel.INFO, pVar);
        p.getClass();
        String sentryId = p.toString();
        sentryId.getClass();
        new io.sentry.kotlin.multiplatform.protocol.SentryId(sentryId);
    }
}
