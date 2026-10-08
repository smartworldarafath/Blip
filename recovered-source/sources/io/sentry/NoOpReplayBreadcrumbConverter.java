package io.sentry;

import io.sentry.rrweb.RRWebEvent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpReplayBreadcrumbConverter implements ReplayBreadcrumbConverter {
    public static final NoOpReplayBreadcrumbConverter a = new Object();

    @Override // io.sentry.ReplayBreadcrumbConverter
    public final RRWebEvent a(Breadcrumb breadcrumb) {
        return null;
    }
}
