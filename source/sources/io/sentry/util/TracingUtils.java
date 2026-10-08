package io.sentry.util;

import io.sentry.Baggage;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TracingUtils {
    public static Baggage a(Baggage baggage, Boolean bool, Double d, Double d2) {
        if (baggage == null) {
            baggage = new Baggage();
        }
        if (baggage.d == null) {
            Double d3 = baggage.c;
            if (d3 != null) {
                d = d3;
            }
            Double b = SampleRateUtils.b(d2, d, bool);
            if (baggage.e) {
                baggage.d = b;
            }
        }
        return baggage;
    }
}
