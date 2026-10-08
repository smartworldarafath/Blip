package io.sentry;

import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FeedbackApi implements IFeedbackApi {
    public final Scopes a;

    public FeedbackApi(Scopes scopes) {
        this.a = scopes;
    }

    @Override // io.sentry.IFeedbackApi
    public final SentryId a(Feedback feedback) {
        return this.a.i(feedback);
    }

    @Override // io.sentry.IFeedbackApi
    public final SentryId b(Feedback feedback) {
        return this.a.w(feedback);
    }

    @Override // io.sentry.IFeedbackApi
    public final SentryId c(Feedback feedback) {
        return this.a.w(feedback);
    }
}
