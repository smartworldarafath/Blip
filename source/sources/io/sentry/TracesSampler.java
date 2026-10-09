package io.sentry;

import io.sentry.util.SampleRateUtils;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TracesSampler {
    public final SentryOptions a;

    public TracesSampler(SentryOptions sentryOptions) {
        this.a = sentryOptions;
    }

    public final TracesSamplingDecision a(SamplingContext samplingContext) {
        boolean z;
        Double valueOf;
        Double d = samplingContext.b;
        TransactionContext transactionContext = samplingContext.a;
        TracesSamplingDecision tracesSamplingDecision = transactionContext.m;
        if (tracesSamplingDecision != null) {
            return SampleRateUtils.a(tracesSamplingDecision);
        }
        SentryOptions sentryOptions = this.a;
        sentryOptions.getProfilesSampler();
        Double profilesSampleRate = sentryOptions.getProfilesSampleRate();
        if (profilesSampleRate != null && profilesSampleRate.doubleValue() >= d.doubleValue()) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf2 = Boolean.valueOf(z);
        sentryOptions.getTracesSampler();
        TracesSamplingDecision tracesSamplingDecision2 = transactionContext.A;
        if (tracesSamplingDecision2 != null) {
            return SampleRateUtils.a(tracesSamplingDecision2);
        }
        Double tracesSampleRate = sentryOptions.getTracesSampleRate();
        double pow = Math.pow(2.0d, sentryOptions.getBackpressureMonitor().a());
        if (tracesSampleRate == null) {
            valueOf = null;
        } else {
            valueOf = Double.valueOf(tracesSampleRate.doubleValue() / pow);
        }
        Double d2 = valueOf;
        if (d2 != null) {
            boolean z2 = false;
            if (d2.doubleValue() >= d.doubleValue()) {
                z2 = true;
            }
            return new TracesSamplingDecision(Boolean.valueOf(z2), d2, d, valueOf2, profilesSampleRate);
        }
        Boolean bool = Boolean.FALSE;
        return new TracesSamplingDecision(bool, null, d, bool, null);
    }
}
