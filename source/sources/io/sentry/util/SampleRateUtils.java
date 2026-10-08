package io.sentry.util;

import io.sentry.TracesSamplingDecision;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SampleRateUtils {
    public static TracesSamplingDecision a(TracesSamplingDecision tracesSamplingDecision) {
        if (tracesSamplingDecision.c != null) {
            return tracesSamplingDecision;
        }
        return new TracesSamplingDecision(tracesSamplingDecision.a, tracesSamplingDecision.b, b(null, tracesSamplingDecision.b, tracesSamplingDecision.a), tracesSamplingDecision.d, tracesSamplingDecision.e);
    }

    public static Double b(Double d, Double d2, Boolean bool) {
        if (d != null) {
            return d;
        }
        double c = SentryRandom.a().c();
        if (d2 != null && bool != null) {
            if (bool.booleanValue()) {
                return Double.valueOf(d2.doubleValue() * c);
            }
            return Double.valueOf(((1.0d - d2.doubleValue()) * c) + d2.doubleValue());
        }
        return Double.valueOf(c);
    }

    public static boolean c(Double d, boolean z) {
        if (d == null) {
            return z;
        }
        if (!d.isNaN() && d.doubleValue() >= 0.0d && d.doubleValue() <= 1.0d) {
            return true;
        }
        return false;
    }
}
