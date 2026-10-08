package io.sentry;

import io.sentry.android.replay.DefaultReplayBreadcrumbConverter;
import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpReplayController implements ReplayController {
    public static final NoOpReplayController j = new Object();

    @Override // io.sentry.ReplayController
    public final ReplayBreadcrumbConverter P() {
        return NoOpReplayBreadcrumbConverter.a;
    }

    @Override // io.sentry.ReplayController
    public final SentryId h() {
        return SentryId.k;
    }

    @Override // io.sentry.ReplayController
    public final void O() {
    }

    @Override // io.sentry.ReplayController
    public final void a() {
    }

    @Override // io.sentry.ReplayController
    public final void stop() {
    }

    @Override // io.sentry.ReplayController
    public final void v() {
    }

    @Override // io.sentry.ReplayController
    public final void n(Boolean bool) {
    }

    @Override // io.sentry.ReplayController
    public final void w(DefaultReplayBreadcrumbConverter defaultReplayBreadcrumbConverter) {
    }
}
