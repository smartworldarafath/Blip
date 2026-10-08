package io.sentry.android.core;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import io.sentry.CompositePerformanceCollector;
import io.sentry.DeduplicateMultithreadedEventProcessor;
import io.sentry.DefaultCompositePerformanceCollector;
import io.sentry.DefaultVersionDetector;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ITransactionProfiler;
import io.sentry.Integration;
import io.sentry.NoOpCompositePerformanceCollector;
import io.sentry.NoOpConnectionStatusProvider;
import io.sentry.NoOpContinuousProfiler;
import io.sentry.NoOpReplayBreadcrumbConverter;
import io.sentry.NoOpSocketTagger;
import io.sentry.NoOpTransactionProfiler;
import io.sentry.NoopVersionDetector;
import io.sentry.SendFireAndForgetEnvelopeSender;
import io.sentry.SendFireAndForgetOutboxSender;
import io.sentry.SentryLevel;
import io.sentry.android.core.anr.AnrProfilingIntegration;
import io.sentry.android.core.cache.AndroidEnvelopeCache;
import io.sentry.android.core.internal.debugmeta.AssetsDebugMetaLoader;
import io.sentry.android.core.internal.gestures.AndroidViewGestureTargetLocator;
import io.sentry.android.core.internal.modules.AssetsModulesLoader;
import io.sentry.android.core.internal.util.AndroidConnectionStatusProvider;
import io.sentry.android.core.internal.util.AndroidThreadChecker;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.distribution.DistributionIntegration;
import io.sentry.android.fragment.FragmentLifecycleIntegration;
import io.sentry.android.replay.DefaultReplayBreadcrumbConverter;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.android.timber.SentryTimberIntegration;
import io.sentry.cache.PersistingOptionsObserver;
import io.sentry.cache.PersistingScopeObserver;
import io.sentry.compose.gestures.ComposeGestureTargetLocator;
import io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter;
import io.sentry.internal.debugmeta.NoOpDebugMetaLoader;
import io.sentry.internal.modules.NoOpModulesLoader;
import io.sentry.protocol.SentryId;
import io.sentry.transport.NoOpEnvelopeCache;
import io.sentry.transport.NoOpTransportGate;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.LoadClass;
import io.sentry.util.Objects;
import io.sentry.util.thread.NoOpThreadChecker;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidOptionsInitializer {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v21, types: [java.lang.Object, io.sentry.IPerformanceCollector] */
    public static void a(SentryAndroidOptions sentryAndroidOptions, Context context, BuildInfoProvider buildInfoProvider, LoadClass loadClass, ActivityFramesTracker activityFramesTracker, boolean z) {
        if (sentryAndroidOptions.getCacheDirPath() != null && (sentryAndroidOptions.getEnvelopeDiskCache() instanceof NoOpEnvelopeCache)) {
            sentryAndroidOptions.setEnvelopeDiskCache(new AndroidEnvelopeCache(sentryAndroidOptions));
        }
        if (sentryAndroidOptions.getConnectionStatusProvider() instanceof NoOpConnectionStatusProvider) {
            sentryAndroidOptions.setConnectionStatusProvider(new AndroidConnectionStatusProvider(context, buildInfoProvider, sentryAndroidOptions));
        }
        if (sentryAndroidOptions.getCacheDirPath() != null) {
            sentryAndroidOptions.addScopeObserver(new PersistingScopeObserver(sentryAndroidOptions));
            sentryAndroidOptions.addOptionsObserver(new PersistingOptionsObserver(sentryAndroidOptions));
        }
        sentryAndroidOptions.addEventProcessor(new DeduplicateMultithreadedEventProcessor(sentryAndroidOptions));
        sentryAndroidOptions.addEventProcessor(new DefaultAndroidEventProcessor(context, buildInfoProvider, sentryAndroidOptions));
        sentryAndroidOptions.addEventProcessor(new PerformanceAndroidEventProcessor(sentryAndroidOptions, activityFramesTracker));
        sentryAndroidOptions.addEventProcessor(new ScreenshotEventProcessor(sentryAndroidOptions, buildInfoProvider, z));
        sentryAndroidOptions.addEventProcessor(new ViewHierarchyEventProcessor(sentryAndroidOptions));
        sentryAndroidOptions.addEventProcessor(new ApplicationExitInfoEventProcessor(context, buildInfoProvider, sentryAndroidOptions));
        if (sentryAndroidOptions.getTransportGate() instanceof NoOpTransportGate) {
            sentryAndroidOptions.setTransportGate(new AndroidTransportGate(sentryAndroidOptions));
        }
        AppStartMetrics c = AppStartMetrics.c();
        if (sentryAndroidOptions.getModulesLoader() instanceof NoOpModulesLoader) {
            sentryAndroidOptions.setModulesLoader(new AssetsModulesLoader(context, sentryAndroidOptions));
        }
        if (sentryAndroidOptions.getDebugMetaLoader() instanceof NoOpDebugMetaLoader) {
            sentryAndroidOptions.setDebugMetaLoader(new AssetsDebugMetaLoader(context, sentryAndroidOptions.getLogger()));
        }
        if (sentryAndroidOptions.getVersionDetector() instanceof NoopVersionDetector) {
            sentryAndroidOptions.setVersionDetector(new DefaultVersionDetector(sentryAndroidOptions));
        }
        LazyEvaluator lazyEvaluator = new LazyEvaluator(new io.sentry.kotlin.multiplatform.extensions.a(loadClass, sentryAndroidOptions, 1));
        boolean a = LoadClass.a(sentryAndroidOptions, "androidx.compose.ui.node.Owner");
        if (sentryAndroidOptions.getGestureTargetLocators().isEmpty()) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(new AndroidViewGestureTargetLocator(lazyEvaluator));
            if (a && LoadClass.a(sentryAndroidOptions, "io.sentry.compose.gestures.ComposeGestureTargetLocator")) {
                arrayList.add(new ComposeGestureTargetLocator(sentryAndroidOptions.getLogger()));
            }
            sentryAndroidOptions.setGestureTargetLocators(arrayList);
        }
        if (sentryAndroidOptions.getViewHierarchyExporters().isEmpty() && a && LoadClass.a(sentryAndroidOptions, "io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter")) {
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(new ComposeViewHierarchyExporter(sentryAndroidOptions.getLogger()));
            sentryAndroidOptions.setViewHierarchyExporters(arrayList2);
        }
        if (sentryAndroidOptions.getThreadChecker() instanceof NoOpThreadChecker) {
            sentryAndroidOptions.setThreadChecker(AndroidThreadChecker.a);
        }
        if (sentryAndroidOptions.getSocketTagger() instanceof NoOpSocketTagger) {
            sentryAndroidOptions.setSocketTagger(AndroidSocketTagger.a);
        }
        if (sentryAndroidOptions.getPerformanceCollectors().isEmpty()) {
            sentryAndroidOptions.addPerformanceCollector(new Object());
            sentryAndroidOptions.addPerformanceCollector(new AndroidCpuCollector(sentryAndroidOptions.getLogger()));
            if (sentryAndroidOptions.isEnablePerformanceV2()) {
                SentryFrameMetricsCollector frameMetricsCollector = sentryAndroidOptions.getFrameMetricsCollector();
                Objects.b(frameMetricsCollector, "options.getFrameMetricsCollector is required");
                sentryAndroidOptions.addPerformanceCollector(new SpanFrameMetricsCollector(sentryAndroidOptions, frameMetricsCollector));
            }
        }
        if (sentryAndroidOptions.getCompositePerformanceCollector() instanceof NoOpCompositePerformanceCollector) {
            sentryAndroidOptions.setCompositePerformanceCollector(new DefaultCompositePerformanceCollector(sentryAndroidOptions));
        }
        if (z && (sentryAndroidOptions.getReplayController().P() instanceof NoOpReplayBreadcrumbConverter)) {
            sentryAndroidOptions.getReplayController().w(new DefaultReplayBreadcrumbConverter(sentryAndroidOptions));
        }
        ISentryLifecycleToken a2 = AppStartMetrics.A.a();
        try {
            ITransactionProfiler iTransactionProfiler = c.r;
            AndroidContinuousProfiler androidContinuousProfiler = c.s;
            c.r = null;
            c.s = null;
            a2.close();
            CompositePerformanceCollector compositePerformanceCollector = sentryAndroidOptions.getCompositePerformanceCollector();
            if (!sentryAndroidOptions.isProfilingEnabled() && sentryAndroidOptions.getProfilesSampleRate() == null) {
                sentryAndroidOptions.setTransactionProfiler(NoOpTransactionProfiler.a);
                if (iTransactionProfiler != null) {
                    ((AndroidTransactionProfiler) iTransactionProfiler).close();
                }
                if (androidContinuousProfiler != null) {
                    sentryAndroidOptions.setContinuousProfiler(androidContinuousProfiler);
                    SentryId sentryId = androidContinuousProfiler.x;
                    if (androidContinuousProfiler.r && !sentryId.equals(SentryId.k)) {
                        compositePerformanceCollector.a(sentryId.toString());
                        return;
                    }
                    return;
                }
                SentryFrameMetricsCollector frameMetricsCollector2 = sentryAndroidOptions.getFrameMetricsCollector();
                Objects.b(frameMetricsCollector2, "options.getFrameMetricsCollector is required");
                sentryAndroidOptions.setContinuousProfiler(new AndroidContinuousProfiler(buildInfoProvider, frameMetricsCollector2, sentryAndroidOptions.getLogger(), sentryAndroidOptions.getProfilingTracesDirPath(), sentryAndroidOptions.getProfilingTracesHz(), new h(sentryAndroidOptions, 0)));
                return;
            }
            sentryAndroidOptions.setContinuousProfiler(NoOpContinuousProfiler.j);
            if (androidContinuousProfiler != null) {
                androidContinuousProfiler.b(true);
            }
            if (iTransactionProfiler != null) {
                sentryAndroidOptions.setTransactionProfiler(iTransactionProfiler);
                return;
            }
            SentryFrameMetricsCollector frameMetricsCollector3 = sentryAndroidOptions.getFrameMetricsCollector();
            Objects.b(frameMetricsCollector3, "options.getFrameMetricsCollector is required");
            sentryAndroidOptions.setTransactionProfiler(new AndroidTransactionProfiler(context, buildInfoProvider, frameMetricsCollector3, sentryAndroidOptions.getLogger(), sentryAndroidOptions.getProfilingTracesDirPath(), sentryAndroidOptions.isProfilingEnabled(), sentryAndroidOptions.getProfilingTracesHz(), new h(sentryAndroidOptions, 3)));
        } finally {
        }
    }

    public static void b(Context context, SentryAndroidOptions sentryAndroidOptions, BuildInfoProvider buildInfoProvider, LoadClass loadClass, ActivityFramesTracker activityFramesTracker, boolean z, boolean z2, boolean z3, boolean z4) {
        Integration anrIntegration;
        LazyEvaluator lazyEvaluator = new LazyEvaluator(new h(sentryAndroidOptions, 1));
        int i = 2;
        sentryAndroidOptions.addIntegration(new SendCachedEnvelopeIntegration(new SendFireAndForgetEnvelopeSender(new h(sentryAndroidOptions, i)), lazyEvaluator));
        sentryAndroidOptions.addIntegration(new NdkIntegration(LoadClass.c("io.sentry.android.ndk.SentryNdk", sentryAndroidOptions.getLogger())));
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            sentryAndroidOptions.addIntegration(new TombstoneIntegration(context));
        }
        sentryAndroidOptions.addIntegration(new EnvelopeFileObserverIntegration());
        sentryAndroidOptions.addIntegration(new SendCachedEnvelopeIntegration(new SendFireAndForgetOutboxSender(new h(sentryAndroidOptions, i)), lazyEvaluator));
        sentryAndroidOptions.addIntegration(new AppLifecycleIntegration());
        if (i2 >= 30) {
            anrIntegration = new AnrV2Integration(context);
        } else {
            anrIntegration = new AnrIntegration(context);
        }
        sentryAndroidOptions.addIntegration(anrIntegration);
        sentryAndroidOptions.addIntegration(new AnrProfilingIntegration());
        if (context instanceof Application) {
            Application application = (Application) context;
            sentryAndroidOptions.addIntegration(new ActivityLifecycleIntegration(application, buildInfoProvider, activityFramesTracker));
            sentryAndroidOptions.addIntegration(new ActivityBreadcrumbsIntegration(application));
            sentryAndroidOptions.addIntegration(new UserInteractionIntegration(application));
            sentryAndroidOptions.addIntegration(new FeedbackShakeIntegration(application));
            if (z) {
                sentryAndroidOptions.addIntegration(new FragmentLifecycleIntegration(application, true, true));
            }
        } else {
            sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed.", new Object[0]);
        }
        if (z2) {
            sentryAndroidOptions.addIntegration(new SentryTimberIntegration());
        }
        sentryAndroidOptions.addIntegration(new AppComponentsBreadcrumbsIntegration(context));
        sentryAndroidOptions.addIntegration(new SystemEventsBreadcrumbsIntegration(context));
        sentryAndroidOptions.addIntegration(new NetworkBreadcrumbsIntegration(context, buildInfoProvider));
        if (z3) {
            ReplayIntegration replayIntegration = new ReplayIntegration(context);
            sentryAndroidOptions.addIntegration(replayIntegration);
            sentryAndroidOptions.setReplayController(replayIntegration);
        }
        if (z4) {
            DistributionIntegration distributionIntegration = new DistributionIntegration(context);
            sentryAndroidOptions.setDistributionController(distributionIntegration);
            sentryAndroidOptions.addIntegration(distributionIntegration);
        }
        sentryAndroidOptions.getFeedbackOptions().getClass();
    }
}
