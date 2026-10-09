package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Process;
import defpackage.lh;
import io.sentry.IScope;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ITransaction;
import io.sentry.Scope;
import io.sentry.ScopeType;
import io.sentry.SentryLevel;
import io.sentry.SentryOpenTelemetryMode;
import io.sentry.SentryOptions;
import io.sentry.android.core.ActivityFramesTracker;
import io.sentry.android.core.anr.AnrProfileRotationHelper;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.SentryId;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LoadClass;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Scope.IWithTransaction {
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ f(Object obj, Object obj2, Object obj3) {
        this.j = obj;
        this.k = obj2;
        this.l = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, io.sentry.ILogger] */
    /* JADX WARN: Type inference failed for: r12v0, types: [io.sentry.logger.ILoggerBatchProcessorFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v1, types: [io.sentry.metrics.IMetricsBatchProcessorFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1, types: [io.sentry.util.LoadClass, java.lang.Object] */
    public void a(SentryOptions sentryOptions) {
        boolean z;
        boolean z2;
        AndroidLogger androidLogger = (AndroidLogger) this.j;
        Context context = (Context) this.k;
        defpackage.p pVar = (defpackage.p) this.l;
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        AutoClosableReentrantLock autoClosableReentrantLock = SentryAndroid.b;
        boolean a = LoadClass.a(sentryAndroidOptions, "timber.log.Timber");
        if (LoadClass.a(sentryAndroidOptions, "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks") && LoadClass.a(sentryAndroidOptions, "io.sentry.android.fragment.FragmentLifecycleIntegration")) {
            z = true;
        } else {
            z = false;
        }
        if (a && LoadClass.a(sentryAndroidOptions, "io.sentry.android.timber.SentryTimberIntegration")) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean a2 = LoadClass.a(sentryAndroidOptions, "io.sentry.android.replay.ReplayIntegration");
        boolean a3 = LoadClass.a(sentryAndroidOptions, "io.sentry.android.distribution.DistributionIntegration");
        BuildInfoProvider buildInfoProvider = new BuildInfoProvider(androidLogger);
        ?? obj = new Object();
        ActivityFramesTracker activityFramesTracker = new ActivityFramesTracker(obj, sentryAndroidOptions);
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        sentryAndroidOptions.setLogger(androidLogger);
        sentryAndroidOptions.setFatalLogger(new Object());
        sentryAndroidOptions.setDefaultScopeType(ScopeType.CURRENT);
        sentryAndroidOptions.setOpenTelemetryMode(SentryOpenTelemetryMode.OFF);
        sentryAndroidOptions.setDateProvider(new SentryAndroidDateProvider());
        sentryAndroidOptions.getLogs().b = new Object();
        sentryAndroidOptions.getMetrics().b = new Object();
        sentryAndroidOptions.setFlushTimeoutMillis(4000L);
        sentryAndroidOptions.setFrameMetricsCollector(new SentryFrameMetricsCollector(applicationContext, androidLogger, buildInfoProvider));
        ManifestMetadataReader.a(applicationContext, buildInfoProvider, sentryAndroidOptions);
        sentryAndroidOptions.setCacheDirPath(new File(applicationContext.getCacheDir(), "sentry").getAbsolutePath());
        AnrProfileRotationHelper.a.set(true);
        PackageInfo c = ContextUtils.c(applicationContext, buildInfoProvider);
        if (c != null) {
            if (sentryAndroidOptions.getRelease() == null) {
                sentryAndroidOptions.setRelease(c.packageName + "@" + c.versionName + "+" + Long.toString(c.getLongVersionCode()));
            }
            String str = c.packageName;
            if (str != null && !str.startsWith("android.")) {
                sentryAndroidOptions.addInAppInclude(str);
            }
        }
        if (sentryAndroidOptions.getDistinctId() == null) {
            try {
                sentryAndroidOptions.setDistinctId(Installation.a(applicationContext));
            } catch (RuntimeException e) {
                sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Could not generate distinct Id.", e);
            }
        }
        AppState appState = AppState.n;
        if (appState.k == null) {
            ISentryLifecycleToken a4 = appState.j.a();
            try {
                appState.n(sentryAndroidOptions.getLogger());
                a4.close();
            } finally {
            }
        }
        sentryAndroidOptions.activate();
        AndroidOptionsInitializer.b(context, sentryAndroidOptions, buildInfoProvider, obj, activityFramesTracker, z, z2, a2, a3);
        boolean z3 = z;
        try {
            lh lhVar = (lh) pVar.k;
            sentryAndroidOptions.getClass();
            lhVar.b(sentryAndroidOptions);
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error in the 'OptionsConfiguration.configure' callback.", th);
        }
        AppStartMetrics c2 = AppStartMetrics.c();
        if (sentryAndroidOptions.isEnablePerformanceV2()) {
            TimeSpan timeSpan = c2.m;
            if (timeSpan.l == 0) {
                timeSpan.c(Process.getStartUptimeMillis());
            }
        }
        if (context.getApplicationContext() instanceof Application) {
            c2.e((Application) context.getApplicationContext());
        }
        TimeSpan timeSpan2 = c2.n;
        if (timeSpan2.l == 0) {
            timeSpan2.c(SentryAndroid.a);
        }
        AndroidOptionsInitializer.a(sentryAndroidOptions, context, buildInfoProvider, obj, activityFramesTracker, a2);
        SentryAndroid.a(sentryAndroidOptions, z3, z2);
    }

    public void b(ITransaction iTransaction) {
        ActivityFramesTracker.FrameCounts b;
        ActivityLifecycleIntegration activityLifecycleIntegration = (ActivityLifecycleIntegration) this.j;
        WeakReference weakReference = (WeakReference) this.k;
        String str = (String) this.l;
        Activity activity = (Activity) weakReference.get();
        if (activity != null) {
            ActivityFramesTracker activityFramesTracker = activityLifecycleIntegration.z;
            SentryId n = iTransaction.n();
            ISentryLifecycleToken a = activityFramesTracker.f.a();
            try {
                if (!activityFramesTracker.c()) {
                    a.close();
                    return;
                }
                ActivityFramesTracker.FrameCounts frameCounts = null;
                activityFramesTracker.d(new c(activityFramesTracker, activity, 1), null);
                ActivityFramesTracker.FrameCounts frameCounts2 = (ActivityFramesTracker.FrameCounts) activityFramesTracker.d.remove(activity);
                if (frameCounts2 != null && (b = activityFramesTracker.b()) != null) {
                    frameCounts = new ActivityFramesTracker.FrameCounts(b.a - frameCounts2.a, b.b - frameCounts2.b, b.c - frameCounts2.c);
                }
                if (frameCounts != null) {
                    int i = frameCounts.c;
                    int i2 = frameCounts.b;
                    int i3 = frameCounts.a;
                    if (i3 != 0 || i2 != 0 || i != 0) {
                        MeasurementValue measurementValue = new MeasurementValue(Integer.valueOf(i3), "none");
                        MeasurementValue measurementValue2 = new MeasurementValue(Integer.valueOf(i2), "none");
                        MeasurementValue measurementValue3 = new MeasurementValue(Integer.valueOf(i), "none");
                        HashMap hashMap = new HashMap();
                        hashMap.put("frames_total", measurementValue);
                        hashMap.put("frames_slow", measurementValue2);
                        hashMap.put("frames_frozen", measurementValue3);
                        activityFramesTracker.c.put(n, hashMap);
                        a.close();
                        return;
                    }
                }
                a.close();
                return;
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        SentryAndroidOptions sentryAndroidOptions = activityLifecycleIntegration.m;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Unable to track activity frames as the Activity %s has been destroyed.", str);
        }
    }

    @Override // io.sentry.Scope.IWithTransaction
    public void c(ITransaction iTransaction) {
        ActivityLifecycleIntegration activityLifecycleIntegration = (ActivityLifecycleIntegration) this.j;
        IScope iScope = (IScope) this.k;
        ITransaction iTransaction2 = (ITransaction) this.l;
        if (iTransaction == null) {
            iScope.G(iTransaction2);
            return;
        }
        SentryAndroidOptions sentryAndroidOptions = activityLifecycleIntegration.m;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", iTransaction2.getName());
        }
    }
}
