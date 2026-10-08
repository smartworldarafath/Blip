package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.cache.PersistingOptionsObserver;
import io.sentry.cache.PersistingScopeObserver;
import io.sentry.cache.tape.ObjectQueue;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.FileUtils;
import io.sentry.util.SentryRandom;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ SentryOptions k;

    public /* synthetic */ f(SentryOptions sentryOptions, int i) {
        this.j = i;
        this.k = sentryOptions;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TracesSamplingDecision tracesSamplingDecision;
        switch (this.j) {
            case 0:
                SentryOptions sentryOptions = this.k;
                IScopesStorage iScopesStorage = Sentry.a;
                sentryOptions.loadLazyFields();
                return;
            case 1:
                SentryOptions sentryOptions2 = this.k;
                IScopesStorage iScopesStorage2 = Sentry.a;
                String cacheDirPathWithoutDsn = sentryOptions2.getCacheDirPathWithoutDsn();
                if (cacheDirPathWithoutDsn != null) {
                    File file = new File(cacheDirPathWithoutDsn, "app_start_profiling_config");
                    try {
                        FileUtils.a(file);
                        if (sentryOptions2.isEnableAppStartProfiling() || sentryOptions2.isStartProfilerOnAppStart()) {
                            if (!sentryOptions2.isStartProfilerOnAppStart() && !sentryOptions2.isTracingEnabled()) {
                                sentryOptions2.getLogger().c(SentryLevel.INFO, "Tracing is disabled and app start profiling will not start.", new Object[0]);
                                return;
                            }
                            if (file.createNewFile()) {
                                if (sentryOptions2.isEnableAppStartProfiling()) {
                                    tracesSamplingDecision = sentryOptions2.getInternalTracesSampler().a(new SamplingContext(new TransactionContext("app.launch", TransactionNameSource.CUSTOM, "profile", null), Double.valueOf(SentryRandom.a().c())));
                                } else {
                                    tracesSamplingDecision = new TracesSamplingDecision(Boolean.FALSE, null);
                                }
                                SentryAppStartProfilingOptions sentryAppStartProfilingOptions = new SentryAppStartProfilingOptions(sentryOptions2, tracesSamplingDecision);
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                try {
                                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, Sentry.e));
                                    try {
                                        sentryOptions2.getSerializer().a(sentryAppStartProfilingOptions, bufferedWriter);
                                        bufferedWriter.close();
                                        fileOutputStream.close();
                                        return;
                                    } finally {
                                    }
                                } catch (Throwable th) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                            }
                            return;
                        }
                        return;
                    } catch (Throwable th3) {
                        sentryOptions2.getLogger().b(SentryLevel.ERROR, "Unable to create app start profiling config file. ", th3);
                        return;
                    }
                }
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                SentryOptions sentryOptions3 = this.k;
                IScopesStorage iScopesStorage3 = Sentry.a;
                for (IOptionsObserver iOptionsObserver : sentryOptions3.getOptionsObservers()) {
                    String release = sentryOptions3.getRelease();
                    PersistingOptionsObserver persistingOptionsObserver = (PersistingOptionsObserver) iOptionsObserver;
                    if (release == null) {
                        persistingOptionsObserver.a("release.json");
                    } else {
                        persistingOptionsObserver.c(release, "release.json");
                    }
                    String proguardUuid = sentryOptions3.getProguardUuid();
                    PersistingOptionsObserver persistingOptionsObserver2 = (PersistingOptionsObserver) iOptionsObserver;
                    if (proguardUuid == null) {
                        persistingOptionsObserver2.a("proguard-uuid.json");
                    } else {
                        persistingOptionsObserver2.c(proguardUuid, "proguard-uuid.json");
                    }
                    SdkVersion sdkVersion = sentryOptions3.getSdkVersion();
                    if (sdkVersion == null) {
                        persistingOptionsObserver2.a("sdk-version.json");
                    } else {
                        persistingOptionsObserver2.c(sdkVersion, "sdk-version.json");
                    }
                    String dist = sentryOptions3.getDist();
                    if (dist == null) {
                        persistingOptionsObserver2.a("dist.json");
                    } else {
                        persistingOptionsObserver2.c(dist, "dist.json");
                    }
                    String environment = sentryOptions3.getEnvironment();
                    if (environment == null) {
                        persistingOptionsObserver2.a("environment.json");
                    } else {
                        persistingOptionsObserver2.c(environment, "environment.json");
                    }
                    persistingOptionsObserver2.c(sentryOptions3.getTags(), "tags.json");
                    Double d = sentryOptions3.getSessionReplay().e;
                    if (d == null) {
                        persistingOptionsObserver2.a("replay-error-sample-rate.json");
                    } else {
                        persistingOptionsObserver2.c(d.toString(), "replay-error-sample-rate.json");
                    }
                }
                PersistingScopeObserver findPersistingScopeObserver = sentryOptions3.findPersistingScopeObserver();
                if (findPersistingScopeObserver != null) {
                    try {
                        ((ObjectQueue) findPersistingScopeObserver.b.a()).clear();
                    } catch (IOException e) {
                        findPersistingScopeObserver.a.getLogger().b(SentryLevel.ERROR, "Failed to clear breadcrumbs from file queue", e);
                    }
                    findPersistingScopeObserver.g("user.json");
                    findPersistingScopeObserver.g("level.json");
                    findPersistingScopeObserver.g("request.json");
                    findPersistingScopeObserver.g("fingerprint.json");
                    findPersistingScopeObserver.g("contexts.json");
                    findPersistingScopeObserver.g("extras.json");
                    findPersistingScopeObserver.g("tags.json");
                    findPersistingScopeObserver.g("trace.json");
                    findPersistingScopeObserver.g("transaction.json");
                    return;
                }
                return;
            default:
                ScopesAdapter.a.c(this.k.getFlushTimeoutMillis());
                return;
        }
    }
}
