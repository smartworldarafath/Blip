package io.sentry;

import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ITransaction extends ISpan {
    void e(SpanStatus spanStatus, boolean z, Hint hint);

    String getName();

    ISpan k();

    SentryId n();

    void p();
}
