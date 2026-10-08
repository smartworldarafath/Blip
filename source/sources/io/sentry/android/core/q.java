package io.sentry.android.core;

import io.sentry.ISpan;
import io.sentry.SentryNanotimeDate;
import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        ISpan iSpan = (ISpan) obj;
        ISpan iSpan2 = (ISpan) obj2;
        SentryNanotimeDate sentryNanotimeDate = SpanFrameMetricsCollector.h;
        if (iSpan == iSpan2) {
            return 0;
        }
        int compareTo = iSpan.u().compareTo(iSpan2.u());
        if (compareTo != 0) {
            return compareTo;
        }
        return iSpan.r().k.toString().compareTo(iSpan2.r().k.toString());
    }
}
