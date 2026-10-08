package io.sentry;

import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.util.Objects;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryEnvelope {
    public final SentryEnvelopeHeader a;
    public final Iterable b;

    public SentryEnvelope(SentryId sentryId, SdkVersion sdkVersion, SentryEnvelopeItem sentryEnvelopeItem) {
        this.a = new SentryEnvelopeHeader(sentryId, sdkVersion, null);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(sentryEnvelopeItem);
        this.b = arrayList;
    }

    public SentryEnvelope(SentryEnvelopeHeader sentryEnvelopeHeader, List list) {
        Objects.b(sentryEnvelopeHeader, "SentryEnvelopeHeader is required.");
        this.a = sentryEnvelopeHeader;
        Objects.b(list, "SentryEnvelope items are required.");
        this.b = list;
    }
}
