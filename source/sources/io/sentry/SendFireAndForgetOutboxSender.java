package io.sentry;

import io.sentry.util.Objects;
import java.io.File;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SendFireAndForgetOutboxSender implements SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory {
    public final io.sentry.android.core.h a;

    public SendFireAndForgetOutboxSender(io.sentry.android.core.h hVar) {
        this.a = hVar;
    }

    @Override // io.sentry.SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory
    public final e a(IScopes iScopes, SentryOptions sentryOptions) {
        Objects.b(iScopes, "Scopes are required");
        Objects.b(sentryOptions, "SentryOptions is required");
        String outboxPath = this.a.k.getOutboxPath();
        if (outboxPath != null && SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory.b(outboxPath, sentryOptions.getLogger())) {
            return new e(sentryOptions.getLogger(), outboxPath, new OutboxSender(iScopes, sentryOptions.getEnvelopeReader(), sentryOptions.getSerializer(), sentryOptions.getLogger(), sentryOptions.getFlushTimeoutMillis(), sentryOptions.getMaxQueueSize()), new File(outboxPath));
        }
        sentryOptions.getLogger().c(SentryLevel.ERROR, "No outbox dir path is defined in options.", new Object[0]);
        return null;
    }
}
