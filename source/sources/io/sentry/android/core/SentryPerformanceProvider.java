package io.sentry.android.core;

import android.app.Application;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Process;
import android.os.SystemClock;
import defpackage.u2;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ITransactionProfiler;
import io.sentry.JsonSerializer;
import io.sentry.SentryAppStartProfilingOptions;
import io.sentry.SentryExecutorService;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.TracesSampler;
import io.sentry.TracesSamplingDecision;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.android.core.performance.AppStartMetrics;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryPerformanceProvider extends EmptySecureContentProvider {
    public static final long n = SystemClock.uptimeMillis();
    public static final /* synthetic */ int o = 0;
    public Application k;
    public final AndroidLogger l;
    public final BuildInfoProvider m;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, io.sentry.ILogger, io.sentry.android.core.AndroidLogger] */
    public SentryPerformanceProvider() {
        new ReentrantLock();
        ?? obj = new Object();
        this.l = obj;
        this.m = new BuildInfoProvider(obj);
    }

    public final void a(Context context, SentryAppStartProfilingOptions sentryAppStartProfilingOptions, AppStartMetrics appStartMetrics) {
        double d;
        boolean z = sentryAppStartProfilingOptions.r;
        AndroidLogger androidLogger = this.l;
        if (!z) {
            androidLogger.c(SentryLevel.DEBUG, "App start profiling was not sampled. It will not start.", new Object[0]);
            return;
        }
        SentryExecutorService sentryExecutorService = new SentryExecutorService();
        AndroidContinuousProfiler androidContinuousProfiler = new AndroidContinuousProfiler(this.m, new SentryFrameMetricsCollector(context.getApplicationContext(), androidLogger, this.m), androidLogger, sentryAppStartProfilingOptions.n, sentryAppStartProfilingOptions.q, new l(5, sentryExecutorService));
        appStartMetrics.r = null;
        appStartMetrics.s = androidContinuousProfiler;
        androidLogger.c(SentryLevel.DEBUG, "App start continuous profiling started.", new Object[0]);
        SentryOptions empty = SentryOptions.empty();
        if (sentryAppStartProfilingOptions.r) {
            d = 1.0d;
        } else {
            d = 0.0d;
        }
        empty.setProfileSessionSampleRate(Double.valueOf(d));
        androidContinuousProfiler.d(sentryAppStartProfilingOptions.u, new TracesSampler(empty));
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        if (!SentryPerformanceProvider.class.getName().equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
        } else {
            u2.l("An applicationId is required to fulfill the manifest placeholder.");
        }
    }

    public final void b(Context context, SentryAppStartProfilingOptions sentryAppStartProfilingOptions, AppStartMetrics appStartMetrics) {
        boolean z = sentryAppStartProfilingOptions.l;
        TracesSamplingDecision tracesSamplingDecision = new TracesSamplingDecision(Boolean.valueOf(z), sentryAppStartProfilingOptions.m, null, Boolean.valueOf(sentryAppStartProfilingOptions.j), sentryAppStartProfilingOptions.k);
        appStartMetrics.t = tracesSamplingDecision;
        boolean booleanValue = tracesSamplingDecision.d.booleanValue();
        AndroidLogger androidLogger = this.l;
        if (booleanValue && z) {
            SentryExecutorService sentryExecutorService = new SentryExecutorService();
            BuildInfoProvider buildInfoProvider = this.m;
            AndroidTransactionProfiler androidTransactionProfiler = new AndroidTransactionProfiler(context, buildInfoProvider, new SentryFrameMetricsCollector(context, androidLogger, buildInfoProvider), androidLogger, sentryAppStartProfilingOptions.n, sentryAppStartProfilingOptions.o, sentryAppStartProfilingOptions.q, new l(5, sentryExecutorService));
            appStartMetrics.s = null;
            appStartMetrics.r = androidTransactionProfiler;
            androidLogger.c(SentryLevel.DEBUG, "App start profiling started.", new Object[0]);
            androidTransactionProfiler.start();
            return;
        }
        androidLogger.c(SentryLevel.DEBUG, "App start profiling was not sampled. It will not start.", new Object[0]);
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        AppStartMetrics c = AppStartMetrics.c();
        Context context = getContext();
        c.n.c(n);
        this.m.getClass();
        c.m.c(Process.getStartUptimeMillis());
        if (context instanceof Application) {
            this.k = (Application) context;
        }
        Application application = this.k;
        if (application != null) {
            c.e(application);
        }
        Context context2 = getContext();
        AndroidLogger androidLogger = this.l;
        if (context2 == null) {
            androidLogger.c(SentryLevel.FATAL, "App. Context from ContentProvider is null", new Object[0]);
            return true;
        }
        File file = new File(new File(context2.getCacheDir(), "sentry"), "app_start_profiling_config");
        if (file.exists() && file.canRead()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                try {
                    SentryAppStartProfilingOptions sentryAppStartProfilingOptions = (SentryAppStartProfilingOptions) new JsonSerializer(SentryOptions.empty()).d(bufferedReader, SentryAppStartProfilingOptions.class);
                    if (sentryAppStartProfilingOptions == null) {
                        androidLogger.c(SentryLevel.WARNING, "Unable to deserialize the SentryAppStartProfilingOptions. App start profiling will not start.", new Object[0]);
                    } else if (sentryAppStartProfilingOptions.p && sentryAppStartProfilingOptions.t) {
                        a(context2, sentryAppStartProfilingOptions, c);
                    } else if (!sentryAppStartProfilingOptions.o) {
                        androidLogger.c(SentryLevel.INFO, "Profiling is not enabled. App start profiling will not start.", new Object[0]);
                    } else if (sentryAppStartProfilingOptions.s) {
                        b(context2, sentryAppStartProfilingOptions, c);
                    }
                    bufferedReader.close();
                    return true;
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (FileNotFoundException e) {
                androidLogger.b(SentryLevel.ERROR, "App start profiling config file not found. ", e);
                return true;
            } catch (Throwable th3) {
                androidLogger.b(SentryLevel.ERROR, "Error reading app start profiling config file. ", th3);
                return true;
            }
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public final void shutdown() {
        ISentryLifecycleToken a = AppStartMetrics.A.a();
        try {
            ITransactionProfiler iTransactionProfiler = AppStartMetrics.c().r;
            if (iTransactionProfiler != null) {
                ((AndroidTransactionProfiler) iTransactionProfiler).close();
            }
            AndroidContinuousProfiler androidContinuousProfiler = AppStartMetrics.c().s;
            if (androidContinuousProfiler != null) {
                androidContinuousProfiler.b(true);
            }
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
