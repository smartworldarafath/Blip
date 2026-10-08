package io.sentry;

import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.hints.EventDropReason;
import io.sentry.protocol.SentryException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeduplicateMultithreadedEventProcessor implements EventProcessor {
    public final Map j = Collections.synchronizedMap(new HashMap());
    public final SentryOptions k;

    public DeduplicateMultithreadedEventProcessor(SentryAndroidOptions sentryAndroidOptions) {
        this.k = sentryAndroidOptions;
    }

    @Override // io.sentry.EventProcessor
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        SentryException f;
        String str;
        Long l;
        if (!UncaughtExceptionHandlerIntegration.UncaughtExceptionHint.class.isInstance(hint.b("sentry:typeCheckHint")) || (f = sentryEvent.f()) == null || (str = f.j) == null || (l = f.m) == null) {
            return sentryEvent;
        }
        Map map = this.j;
        Long l2 = (Long) map.get(str);
        if (l2 != null && !l2.equals(l)) {
            this.k.getLogger().c(SentryLevel.INFO, "Event %s has been dropped due to multi-threaded deduplication", sentryEvent.j);
            hint.d(EventDropReason.MULTITHREADED_DEDUPLICATION, "sentry:eventDropReason");
            return null;
        }
        map.put(str, l);
        return sentryEvent;
    }
}
