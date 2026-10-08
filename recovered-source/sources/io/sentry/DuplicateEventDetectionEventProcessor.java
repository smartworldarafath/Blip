package io.sentry;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DuplicateEventDetectionEventProcessor implements EventProcessor {
    public final Map j = Collections.synchronizedMap(new WeakHashMap());
    public final SentryOptions k;

    public DuplicateEventDetectionEventProcessor(SentryOptions sentryOptions) {
        this.k = sentryOptions;
    }

    @Override // io.sentry.EventProcessor
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        SentryOptions sentryOptions = this.k;
        if (sentryOptions.isEnableDeduplication()) {
            Throwable a = sentryEvent.a();
            if (a != null) {
                Map map = this.j;
                if (!map.containsKey(a)) {
                    ArrayList arrayList = new ArrayList();
                    for (Throwable th = a; th.getCause() != null; th = th.getCause()) {
                        arrayList.add(th.getCause());
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (map.containsKey(it.next())) {
                        }
                    }
                    map.put(a, null);
                    return sentryEvent;
                }
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Duplicate Exception detected. Event %s will be discarded.", sentryEvent.j);
                return null;
            }
            return sentryEvent;
        }
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Event deduplication is disabled.", new Object[0]);
        return sentryEvent;
    }
}
