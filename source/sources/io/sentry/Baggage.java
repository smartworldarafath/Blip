package io.sentry;

import io.sentry.protocol.SentryId;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.SampleRateUtils;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Baggage {
    public static final DecimalFormatterThreadLocal f = new ThreadLocal();
    public final ConcurrentHashMap a;
    public final AutoClosableReentrantLock b;
    public Double c;
    public Double d;
    public boolean e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DSCKeys {
        public static final List a = Arrays.asList("sentry-trace_id", "sentry-public_key", "sentry-release", "sentry-user_id", "sentry-environment", "sentry-transaction", "sentry-sample_rate", "sentry-sample_rand", "sentry-sampled", "sentry-replay_id", "sentry-org_id");
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DecimalFormatterThreadLocal extends ThreadLocal<DecimalFormat> {
        @Override // java.lang.ThreadLocal
        public final DecimalFormat initialValue() {
            return new DecimalFormat("#.################", DecimalFormatSymbols.getInstance(Locale.ROOT));
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public Baggage() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.b = new ReentrantLock();
        this.a = concurrentHashMap;
        this.c = null;
        this.d = null;
        this.e = true;
    }

    public final String a(String str) {
        return (String) this.a.get(str);
    }

    public final void b(String str, String str2) {
        if (this.e) {
            ConcurrentHashMap concurrentHashMap = this.a;
            if (str2 == null) {
                concurrentHashMap.remove(str);
            } else {
                concurrentHashMap.put(str, str2);
            }
        }
    }

    public final void c(IScope iScope, SentryOptions sentryOptions) {
        PropagationContext t = iScope.t();
        SentryId h = iScope.h();
        b("sentry-trace_id", t.a.toString());
        b("sentry-public_key", sentryOptions.retrieveParsedDsn().b);
        b("sentry-release", sentryOptions.getRelease());
        b("sentry-environment", sentryOptions.getEnvironment());
        if (!SentryId.k.equals(h)) {
            b("sentry-replay_id", h.toString());
        }
        b("sentry-org_id", sentryOptions.getEffectiveOrgId());
        b("sentry-transaction", null);
        if (this.e) {
            this.c = null;
        }
        b("sentry-sampled", null);
    }

    public final void d(SentryId sentryId, SentryId sentryId2, SentryOptions sentryOptions, TracesSamplingDecision tracesSamplingDecision, String str, TransactionNameSource transactionNameSource) {
        Double d;
        Boolean bool;
        String obj;
        b("sentry-trace_id", sentryId.toString());
        b("sentry-public_key", sentryOptions.retrieveParsedDsn().b);
        b("sentry-release", sentryOptions.getRelease());
        b("sentry-environment", sentryOptions.getEnvironment());
        Double d2 = null;
        if (transactionNameSource == null || TransactionNameSource.URL.equals(transactionNameSource)) {
            str = null;
        }
        b("sentry-transaction", str);
        if (sentryId2 != null && !SentryId.k.equals(sentryId2)) {
            b("sentry-replay_id", sentryId2.toString());
        }
        b("sentry-org_id", sentryOptions.getEffectiveOrgId());
        if (tracesSamplingDecision == null) {
            d = null;
        } else {
            d = tracesSamplingDecision.b;
        }
        if (this.e) {
            this.c = d;
        }
        if (tracesSamplingDecision == null) {
            bool = null;
        } else {
            bool = tracesSamplingDecision.a;
        }
        if (bool == null) {
            obj = null;
        } else {
            obj = bool.toString();
        }
        b("sentry-sampled", obj);
        if (tracesSamplingDecision != null) {
            d2 = tracesSamplingDecision.c;
        }
        if (this.e) {
            this.d = d2;
        }
    }

    public final TraceContext e() {
        String format;
        SentryId sentryId;
        String a = a("sentry-trace_id");
        String a2 = a("sentry-replay_id");
        String a3 = a("sentry-public_key");
        String str = null;
        if (a == null || a3 == null) {
            return null;
        }
        SentryId sentryId2 = new SentryId(a);
        String a4 = a("sentry-release");
        String a5 = a("sentry-environment");
        String a6 = a("sentry-user_id");
        String a7 = a("sentry-transaction");
        Double d = this.c;
        boolean c = SampleRateUtils.c(d, false);
        DecimalFormatterThreadLocal decimalFormatterThreadLocal = f;
        if (!c) {
            format = null;
        } else {
            format = decimalFormatterThreadLocal.get().format(d);
        }
        String a8 = a("sentry-sampled");
        if (a2 == null) {
            sentryId = null;
        } else {
            sentryId = new SentryId(a2);
        }
        Double d2 = this.d;
        if (SampleRateUtils.c(d2, false)) {
            str = decimalFormatterThreadLocal.get().format(d2);
        }
        TraceContext traceContext = new TraceContext(sentryId2, a3, a4, a5, a6, a7, format, a8, sentryId, str);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ISentryLifecycleToken a9 = this.b.a();
        try {
            for (Map.Entry entry : this.a.entrySet()) {
                String str2 = (String) entry.getKey();
                String str3 = (String) entry.getValue();
                if (!DSCKeys.a.contains(str2) && str3 != null) {
                    concurrentHashMap.put(str2.replaceFirst("sentry-", ""), str3);
                }
            }
            a9.close();
            traceContext.t = concurrentHashMap;
            return traceContext;
        } finally {
        }
    }
}
