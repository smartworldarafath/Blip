package io.sentry;

import io.sentry.SentryReplayOptions;
import io.sentry.backpressure.IBackpressureMonitor;
import io.sentry.backpressure.NoOpBackpressureMonitor;
import io.sentry.cache.IEnvelopeCache;
import io.sentry.cache.PersistingScopeObserver;
import io.sentry.clientreport.ClientReportRecorder;
import io.sentry.clientreport.IClientReportRecorder;
import io.sentry.internal.debugmeta.IDebugMetaLoader;
import io.sentry.internal.debugmeta.NoOpDebugMetaLoader;
import io.sentry.internal.gestures.GestureTargetLocator;
import io.sentry.internal.modules.IModulesLoader;
import io.sentry.internal.modules.NoOpModulesLoader;
import io.sentry.logger.ILoggerBatchProcessorFactory;
import io.sentry.metrics.IMetricsBatchProcessorFactory;
import io.sentry.protocol.SdkVersion;
import io.sentry.transport.ITransportGate;
import io.sentry.transport.NoOpEnvelopeCache;
import io.sentry.transport.NoOpTransportGate;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.LoadClass;
import io.sentry.util.Platform;
import io.sentry.util.SampleRateUtils;
import io.sentry.util.StringUtils;
import io.sentry.util.thread.IThreadChecker;
import io.sentry.util.thread.NoOpThreadChecker;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SentryOptions {
    static final SentryLevel DEFAULT_DIAGNOSTIC_LEVEL = SentryLevel.DEBUG;
    private static final String DEFAULT_ENVIRONMENT = "production";
    public static final String DEFAULT_PROPAGATION_TARGETS = ".*";
    public static final long MAX_EVENT_SIZE_BYTES = 1048576;
    private boolean attachServerName;
    private boolean attachStacktrace;
    private boolean attachThreads;
    private IBackpressureMonitor backpressureMonitor;
    private BeforeBreadcrumbCallback beforeBreadcrumb;
    private BeforeEnvelopeCallback beforeEnvelopeCallback;
    private BeforeSendCallback beforeSend;
    private BeforeSendCallback beforeSendFeedback;
    private BeforeSendReplayCallback beforeSendReplay;
    private BeforeSendTransactionCallback beforeSendTransaction;
    private String cacheDirPath;
    private boolean captureOpenTelemetryEvents;
    IClientReportRecorder clientReportRecorder;
    private CompositePerformanceCollector compositePerformanceCollector;
    private IConnectionStatusProvider connectionStatusProvider;
    private int connectionTimeoutMillis;
    private final List<String> contextTags;
    private IContinuousProfiler continuousProfiler;
    private Cron cron;
    private final LazyEvaluator<SentryDateProvider> dateProvider;
    private long deadlineTimeout;
    private boolean debug;
    private IDebugMetaLoader debugMetaLoader;
    private ScopeType defaultScopeType;
    private final List<String> defaultTracePropagationTargets;
    private SentryLevel diagnosticLevel;
    private String dist;
    private String distinctId;
    private DistributionOptions distribution;
    private IDistributionApi distributionController;
    private String dsn;
    private String dsnHash;
    private boolean enableAppStartProfiling;
    private boolean enableAutoSessionTracking;
    private boolean enableBackpressureHandling;
    private boolean enableCacheTracing;
    private boolean enableDatabaseTransactionTracing;
    private boolean enableDeduplication;
    private boolean enableEventSizeLimiting;
    private boolean enableExternalConfiguration;
    private boolean enablePrettySerializationOutput;
    private boolean enableQueueTracing;
    private boolean enableScopePersistence;
    private boolean enableScreenTracking;
    private boolean enableShutdownHook;
    private boolean enableSpotlight;
    private boolean enableTimeToFullDisplayTracing;
    private boolean enableUncaughtExceptionHandler;
    private boolean enableUserInteractionBreadcrumbs;
    private boolean enableUserInteractionTracing;
    private boolean enabled;
    private IEnvelopeCache envelopeDiskCache;
    private final LazyEvaluator<IEnvelopeReader> envelopeReader;
    private String environment;
    private ISentryExecutorService executorService;
    private final ExperimentalOptions experimental;
    private ILogger fatalLogger;
    private SentryFeedbackOptions feedbackOptions;
    private boolean forceInit;
    private FullyDisplayedReporter fullyDisplayedReporter;
    private final List<GestureTargetLocator> gestureTargetLocators;
    private Boolean globalHubMode;
    private Long idleTimeout;
    private List<FilterString> ignoredCheckIns;
    private List<FilterString> ignoredSpanOrigins;
    private List<FilterString> ignoredTransactions;
    private final List<String> inAppExcludes;
    private final List<String> inAppIncludes;
    private InitPriority initPriority;
    private Instrumenter instrumenter;
    private volatile TracesSampler internalTracesSampler;
    protected final AutoClosableReentrantLock lock;
    private ILogger logger;
    private Logs logs;
    private long maxAttachmentSize;
    private int maxBreadcrumbs;
    private int maxCacheItems;
    private int maxDepth;
    private int maxFeatureFlags;
    private int maxQueueSize;
    private RequestSize maxRequestBodySize;
    private int maxSpans;
    private long maxTraceFileSize;
    private Metrics metrics;
    private IModulesLoader modulesLoader;
    private final List<IScopeObserver> observers;
    private OnDiscardCallback onDiscard;
    private OnOversizedEventCallback onOversizedEvent;
    private SentryOpenTelemetryMode openTelemetryMode;
    private final List<IOptionsObserver> optionsObservers;
    private String orgId;
    private final LazyEvaluator<Dsn> parsedDsn;
    private final List<IPerformanceCollector> performanceCollectors;
    private boolean printUncaughtStackTrace;
    private ProfileLifecycle profileLifecycle;
    private Double profileSessionSampleRate;
    private IProfileConverter profilerConverter;
    private Double profilesSampleRate;
    private ProfilesSamplerCallback profilesSampler;
    private String profilingTracesDirPath;
    private int profilingTracesHz;
    private String proguardUuid;
    private boolean propagateTraceparent;
    private Proxy proxy;
    private int readTimeoutMillis;
    private String release;
    private ReplayController replayController;
    private Double sampleRate;
    private IScopesStorageFactory scopesStorageFactory;
    private SdkVersion sdkVersion;
    private boolean sendClientReports;
    private boolean sendDefaultPii;
    private boolean sendModules;
    private String sentryClientName;
    private final LazyEvaluator<ISerializer> serializer;
    private String serverName;
    private SentryReplayOptions sessionReplay;
    private long sessionTrackingIntervalMillis;
    private ISocketTagger socketTagger;
    private ISpanFactory spanFactory;
    private String spotlightConnectionUrl;
    private final AtomicBoolean spotlightIntegrationLoaded;
    private SSLSocketFactory sslSocketFactory;
    private boolean startProfilerOnAppStart;
    private boolean strictTraceContinuation;
    private final Map<String, String> tags;
    private IThreadChecker threadChecker;
    private boolean traceOptionsRequests;
    private List<String> tracePropagationTargets;
    private boolean traceSampling;
    private Double tracesSampleRate;
    private TracesSamplerCallback tracesSampler;
    private ITransactionProfiler transactionProfiler;
    private ITransportFactory transportFactory;
    private ITransportGate transportGate;
    private IVersionDetector versionDetector;
    private final List<Object> viewHierarchyExporters;
    private final List<EventProcessor> eventProcessors = new CopyOnWriteArrayList();
    private final Set<Class<? extends Throwable>> ignoredExceptionsForType = new CopyOnWriteArraySet();
    private List<FilterString> ignoredErrors = null;
    private final List<Integration> integrations = new CopyOnWriteArrayList();
    private final Set<String> bundleIds = new CopyOnWriteArraySet();
    private long shutdownTimeoutMillis = 2000;
    private long flushTimeoutMillis = 15000;
    private long sessionFlushTimeoutMillis = 15000;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BeforeBreadcrumbCallback {
        Breadcrumb b(Breadcrumb breadcrumb, Hint hint);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BeforeEnvelopeCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BeforeSendCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BeforeSendReplayCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BeforeSendTransactionCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Cron {
        public Long a;
        public Long b;
        public String c;
        public Long d;
        public Long e;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DistributionOptions {
        public String a = "";
        public String b = "";
        public String c = "";
        public String d = null;
        public ArrayList e = null;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Logs {
        public boolean a;
        public ILoggerBatchProcessorFactory b;

        public final boolean a() {
            return this.a;
        }

        public final void b(boolean z) {
            this.a = z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Metrics {
        public boolean a;
        public IMetricsBatchProcessorFactory b;

        public final boolean a() {
            return this.a;
        }

        public final void b(boolean z) {
            this.a = z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnDiscardCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnOversizedEventCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ProfilesSamplerCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Proxy {
        public String a;
        public String b;
        public String c;
        public String d;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum RequestSize {
        NONE,
        SMALL,
        MEDIUM,
        ALWAYS
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface TracesSamplerCallback {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x02ef  */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, io.sentry.UncaughtExceptionHandlerIntegration] */
    /* JADX WARN: Type inference failed for: r2v36, types: [io.sentry.IConnectionStatusProvider, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v44, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r2v48, types: [io.sentry.SentryOptions$Logs, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v49, types: [java.lang.Object, io.sentry.SentryOptions$Metrics] */
    /* JADX WARN: Type inference failed for: r4v4, types: [io.sentry.logger.ILoggerBatchProcessorFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v5, types: [io.sentry.metrics.IMetricsBatchProcessorFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v7, types: [io.sentry.ExperimentalOptions, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8, types: [io.sentry.SentryMaskingOptions, io.sentry.SentryReplayOptions] */
    /* JADX WARN: Type inference failed for: r4v9, types: [io.sentry.SentryFeedbackOptions, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SentryOptions(boolean z) {
        ISpanFactory iSpanFactory;
        Class c;
        Object newInstance;
        final int i = 0;
        this.parsedDsn = new LazyEvaluator<>(new LazyEvaluator.Evaluator(this) { // from class: io.sentry.n
            public final /* synthetic */ SentryOptions k;

            {
                this.k = this;
            }

            @Override // io.sentry.util.LazyEvaluator.Evaluator
            public final Object c() {
                int i2 = i;
                SentryOptions sentryOptions = this.k;
                switch (i2) {
                    case 0:
                        return SentryOptions.a(sentryOptions);
                    case 1:
                        String str = SentryOptions.DEFAULT_PROPAGATION_TARGETS;
                        return new JsonSerializer(sentryOptions);
                    default:
                        return SentryOptions.b(sentryOptions);
                }
            }
        });
        NoOpLogger noOpLogger = NoOpLogger.a;
        this.logger = noOpLogger;
        this.fatalLogger = noOpLogger;
        this.diagnosticLevel = DEFAULT_DIAGNOSTIC_LEVEL;
        final int i2 = 1;
        this.serializer = new LazyEvaluator<>(new LazyEvaluator.Evaluator(this) { // from class: io.sentry.n
            public final /* synthetic */ SentryOptions k;

            {
                this.k = this;
            }

            @Override // io.sentry.util.LazyEvaluator.Evaluator
            public final Object c() {
                int i22 = i2;
                SentryOptions sentryOptions = this.k;
                switch (i22) {
                    case 0:
                        return SentryOptions.a(sentryOptions);
                    case 1:
                        String str = SentryOptions.DEFAULT_PROPAGATION_TARGETS;
                        return new JsonSerializer(sentryOptions);
                    default:
                        return SentryOptions.b(sentryOptions);
                }
            }
        });
        final int i3 = 2;
        this.envelopeReader = new LazyEvaluator<>(new LazyEvaluator.Evaluator(this) { // from class: io.sentry.n
            public final /* synthetic */ SentryOptions k;

            {
                this.k = this;
            }

            @Override // io.sentry.util.LazyEvaluator.Evaluator
            public final Object c() {
                int i22 = i3;
                SentryOptions sentryOptions = this.k;
                switch (i22) {
                    case 0:
                        return SentryOptions.a(sentryOptions);
                    case 1:
                        String str = SentryOptions.DEFAULT_PROPAGATION_TARGETS;
                        return new JsonSerializer(sentryOptions);
                    default:
                        return SentryOptions.b(sentryOptions);
                }
            }
        });
        this.maxDepth = 100;
        this.maxCacheItems = 30;
        this.maxQueueSize = 30;
        this.maxBreadcrumbs = 100;
        this.maxFeatureFlags = 100;
        this.inAppExcludes = new CopyOnWriteArrayList();
        this.inAppIncludes = new CopyOnWriteArrayList();
        this.transportFactory = NoOpTransportFactory.a;
        this.transportGate = NoOpTransportGate.a;
        this.attachStacktrace = true;
        this.enableAutoSessionTracking = true;
        this.sessionTrackingIntervalMillis = 30000L;
        this.attachServerName = true;
        this.enableUncaughtExceptionHandler = true;
        this.printUncaughtStackTrace = false;
        this.executorService = NoOpSentryExecutorService.a;
        this.spotlightIntegrationLoaded = new AtomicBoolean(false);
        this.connectionTimeoutMillis = 30000;
        this.readTimeoutMillis = 30000;
        this.envelopeDiskCache = NoOpEnvelopeCache.j;
        this.sendDefaultPii = false;
        this.observers = new CopyOnWriteArrayList();
        this.optionsObservers = new CopyOnWriteArrayList();
        this.tags = new ConcurrentHashMap();
        this.maxAttachmentSize = 20971520L;
        this.enableDeduplication = true;
        this.enableEventSizeLimiting = false;
        this.maxSpans = 1000;
        this.enableShutdownHook = true;
        this.maxRequestBodySize = RequestSize.NONE;
        this.traceSampling = true;
        this.maxTraceFileSize = 5242880L;
        this.transactionProfiler = NoOpTransactionProfiler.a;
        this.continuousProfiler = NoOpContinuousProfiler.j;
        this.profilerConverter = NoOpProfileConverter.a;
        this.tracePropagationTargets = null;
        this.defaultTracePropagationTargets = Collections.singletonList(DEFAULT_PROPAGATION_TARGETS);
        this.propagateTraceparent = false;
        this.strictTraceContinuation = false;
        this.idleTimeout = 3000L;
        this.contextTags = new CopyOnWriteArrayList();
        this.sendClientReports = true;
        this.clientReportRecorder = new ClientReportRecorder(this);
        this.modulesLoader = NoOpModulesLoader.a;
        this.debugMetaLoader = NoOpDebugMetaLoader.a;
        this.enableUserInteractionTracing = false;
        this.enableUserInteractionBreadcrumbs = true;
        this.instrumenter = Instrumenter.SENTRY;
        this.gestureTargetLocators = new ArrayList();
        this.viewHierarchyExporters = new ArrayList();
        this.threadChecker = NoOpThreadChecker.a;
        this.traceOptionsRequests = true;
        this.enableDatabaseTransactionTracing = false;
        this.enableCacheTracing = false;
        this.enableQueueTracing = false;
        this.dateProvider = new LazyEvaluator<>(new d(10));
        this.performanceCollectors = new ArrayList();
        this.compositePerformanceCollector = NoOpCompositePerformanceCollector.a;
        this.enableTimeToFullDisplayTracing = false;
        this.fullyDisplayedReporter = FullyDisplayedReporter.b;
        this.connectionStatusProvider = new Object();
        this.enabled = true;
        this.enablePrettySerializationOutput = true;
        this.sendModules = true;
        this.enableSpotlight = false;
        this.enableScopePersistence = true;
        this.ignoredCheckIns = null;
        this.ignoredSpanOrigins = null;
        this.ignoredTransactions = null;
        this.backpressureMonitor = NoOpBackpressureMonitor.j;
        this.enableBackpressureHandling = true;
        this.enableAppStartProfiling = false;
        this.spanFactory = NoOpSpanFactory.a;
        this.profilingTracesHz = 101;
        this.cron = null;
        this.replayController = NoOpReplayController.j;
        this.distributionController = NoOpDistributionApi.a;
        this.enableScreenTracking = true;
        this.defaultScopeType = ScopeType.ISOLATION;
        this.initPriority = InitPriority.MEDIUM;
        this.forceInit = false;
        this.globalHubMode = null;
        this.lock = new ReentrantLock();
        this.openTelemetryMode = SentryOpenTelemetryMode.AUTO;
        this.captureOpenTelemetryEvents = false;
        this.versionDetector = NoopVersionDetector.a;
        this.profileLifecycle = ProfileLifecycle.MANUAL;
        this.startProfilerOnAppStart = false;
        this.deadlineTimeout = 30000L;
        ?? obj = new Object();
        obj.a = false;
        obj.b = new Object();
        this.logs = obj;
        ?? obj2 = new Object();
        obj2.a = true;
        obj2.b = new Object();
        this.metrics = obj2;
        this.socketTagger = NoOpSocketTagger.a;
        this.distribution = new DistributionOptions();
        SdkVersion sdkVersion = new SdkVersion("sentry.java", "8.41.0");
        sdkVersion.k = "8.41.0";
        this.experimental = new Object();
        ?? sentryMaskingOptions = new SentryMaskingOptions();
        sentryMaskingOptions.c = false;
        sentryMaskingOptions.f = SentryReplayOptions.SentryReplayQuality.MEDIUM;
        sentryMaskingOptions.g = 1;
        sentryMaskingOptions.h = 30000L;
        sentryMaskingOptions.i = 5000L;
        sentryMaskingOptions.j = 3600000L;
        sentryMaskingOptions.k = true;
        sentryMaskingOptions.m = false;
        sentryMaskingOptions.n = ScreenshotStrategyType.PIXEL_COPY;
        sentryMaskingOptions.o = false;
        List list = Collections.EMPTY_LIST;
        sentryMaskingOptions.p = list;
        sentryMaskingOptions.q = list;
        sentryMaskingOptions.r = true;
        List list2 = SentryReplayOptions.u;
        sentryMaskingOptions.s = list2;
        sentryMaskingOptions.t = list2;
        if (!z) {
            sentryMaskingOptions.a.add("android.widget.TextView");
            sentryMaskingOptions.a.add("android.widget.ImageView");
            sentryMaskingOptions.a.add("android.webkit.WebView");
            sentryMaskingOptions.a.add("android.widget.VideoView");
            sentryMaskingOptions.a.add("androidx.camera.view.PreviewView");
            sentryMaskingOptions.a.add("androidx.media3.ui.PlayerView");
            sentryMaskingOptions.a.add("com.google.android.exoplayer2.ui.PlayerView");
            sentryMaskingOptions.a.add("com.google.android.exoplayer2.ui.StyledPlayerView");
            sentryMaskingOptions.l = sdkVersion;
        }
        this.sessionReplay = sentryMaskingOptions;
        ?? obj3 = new Object();
        obj3.a = false;
        obj3.b = true;
        obj3.c = false;
        obj3.d = true;
        obj3.e = true;
        obj3.f = true;
        obj3.g = false;
        obj3.h = "Report a Bug";
        obj3.i = "Send Bug Report";
        obj3.j = "Cancel";
        obj3.k = "Name";
        obj3.l = "Your Name";
        obj3.m = "Email";
        obj3.n = "your.email@example.org";
        obj3.o = " (Required)";
        obj3.p = "Description";
        obj3.q = "What's the bug? What did you expect?";
        obj3.r = "Thank you for your report!";
        this.feedbackOptions = obj3;
        if (!z) {
            if (!Platform.a && LoadClass.b("io.sentry.opentelemetry.OtelSpanFactory", noOpLogger) && (c = LoadClass.c("io.sentry.opentelemetry.OtelSpanFactory", noOpLogger)) != null) {
                try {
                    newInstance = c.getDeclaredConstructor(null).newInstance(null);
                } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
                }
                if (newInstance != null && (newInstance instanceof ISpanFactory)) {
                    iSpanFactory = (ISpanFactory) newInstance;
                    setSpanFactory(iSpanFactory);
                    List<Integration> list3 = this.integrations;
                    ?? obj4 = new Object();
                    obj4.m = false;
                    list3.add(obj4);
                    this.integrations.add(new ShutdownHookIntegration());
                    this.eventProcessors.add(new MainEventProcessor(this));
                    this.eventProcessors.add(new DuplicateEventDetectionEventProcessor(this));
                    if (!Platform.a) {
                        this.eventProcessors.add(new SentryRuntimeEventProcessor());
                    }
                    setSentryClientName("sentry.java/8.41.0");
                    setSdkVersion(sdkVersion);
                    SentryIntegrationPackageStorage.d().b("maven:io.sentry:sentry", "8.41.0");
                }
            }
            iSpanFactory = new Object();
            setSpanFactory(iSpanFactory);
            List<Integration> list32 = this.integrations;
            ?? obj42 = new Object();
            obj42.m = false;
            list32.add(obj42);
            this.integrations.add(new ShutdownHookIntegration());
            this.eventProcessors.add(new MainEventProcessor(this));
            this.eventProcessors.add(new DuplicateEventDetectionEventProcessor(this));
            if (!Platform.a) {
            }
            setSentryClientName("sentry.java/8.41.0");
            setSdkVersion(sdkVersion);
            SentryIntegrationPackageStorage.d().b("maven:io.sentry:sentry", "8.41.0");
        }
    }

    public static /* synthetic */ Dsn a(SentryOptions sentryOptions) {
        return new Dsn(sentryOptions.dsn);
    }

    public static /* synthetic */ EnvelopeReader b(SentryOptions sentryOptions) {
        return new EnvelopeReader((ISerializer) sentryOptions.serializer.a());
    }

    public static SentryOptions empty() {
        return new SentryOptions(true);
    }

    public void activate() {
        if (this.executorService instanceof NoOpSentryExecutorService) {
            SentryExecutorService sentryExecutorService = new SentryExecutorService(this);
            this.executorService = sentryExecutorService;
            sentryExecutorService.b();
        }
        if (this.spotlightIntegrationLoaded.compareAndSet(false, true)) {
            try {
                this.integrations.add((Integration) Class.forName("io.sentry.spotlight.SpotlightIntegration").getConstructor(null).newInstance(null));
            } catch (Throwable unused) {
            }
        }
    }

    public void addBundleId(String str) {
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                this.bundleIds.add(trim);
            }
        }
    }

    public void addContextTag(String str) {
        this.contextTags.add(str);
    }

    public void addEventProcessor(EventProcessor eventProcessor) {
        this.eventProcessors.add(eventProcessor);
    }

    public void addIgnoredCheckIn(String str) {
        if (this.ignoredCheckIns == null) {
            this.ignoredCheckIns = new ArrayList();
        }
        this.ignoredCheckIns.add(new FilterString(str));
    }

    public void addIgnoredError(String str) {
        if (this.ignoredErrors == null) {
            this.ignoredErrors = new ArrayList();
        }
        this.ignoredErrors.add(new FilterString(str));
    }

    public void addIgnoredExceptionForType(Class<? extends Throwable> cls) {
        this.ignoredExceptionsForType.add(cls);
    }

    public void addIgnoredSpanOrigin(String str) {
        if (this.ignoredSpanOrigins == null) {
            this.ignoredSpanOrigins = new ArrayList();
        }
        this.ignoredSpanOrigins.add(new FilterString(str));
    }

    public void addIgnoredTransaction(String str) {
        if (this.ignoredTransactions == null) {
            this.ignoredTransactions = new ArrayList();
        }
        this.ignoredTransactions.add(new FilterString(str));
    }

    public void addInAppExclude(String str) {
        this.inAppExcludes.add(str);
    }

    public void addInAppInclude(String str) {
        this.inAppIncludes.add(str);
    }

    public void addIntegration(Integration integration) {
        this.integrations.add(integration);
    }

    public void addOptionsObserver(IOptionsObserver iOptionsObserver) {
        this.optionsObservers.add(iOptionsObserver);
    }

    public void addPerformanceCollector(IPerformanceCollector iPerformanceCollector) {
        this.performanceCollectors.add(iPerformanceCollector);
    }

    public void addScopeObserver(IScopeObserver iScopeObserver) {
        this.observers.add(iScopeObserver);
    }

    public boolean containsIgnoredExceptionForType(Throwable th) {
        return this.ignoredExceptionsForType.contains(th.getClass());
    }

    public PersistingScopeObserver findPersistingScopeObserver() {
        for (IScopeObserver iScopeObserver : this.observers) {
            if (iScopeObserver instanceof PersistingScopeObserver) {
                return (PersistingScopeObserver) iScopeObserver;
            }
        }
        return null;
    }

    public IBackpressureMonitor getBackpressureMonitor() {
        return this.backpressureMonitor;
    }

    public BeforeBreadcrumbCallback getBeforeBreadcrumb() {
        return this.beforeBreadcrumb;
    }

    public BeforeEnvelopeCallback getBeforeEnvelopeCallback() {
        return null;
    }

    public BeforeSendCallback getBeforeSend() {
        return this.beforeSend;
    }

    public BeforeSendCallback getBeforeSendFeedback() {
        return this.beforeSendFeedback;
    }

    public BeforeSendReplayCallback getBeforeSendReplay() {
        return null;
    }

    public BeforeSendTransactionCallback getBeforeSendTransaction() {
        return null;
    }

    public Set<String> getBundleIds() {
        return this.bundleIds;
    }

    public String getCacheDirPath() {
        String str = this.cacheDirPath;
        if (str != null && !str.isEmpty()) {
            if (this.dsnHash != null) {
                return new File(this.cacheDirPath, this.dsnHash).getAbsolutePath();
            }
            return this.cacheDirPath;
        }
        return null;
    }

    public String getCacheDirPathWithoutDsn() {
        String str = this.cacheDirPath;
        if (str != null && !str.isEmpty()) {
            return this.cacheDirPath;
        }
        return null;
    }

    public IClientReportRecorder getClientReportRecorder() {
        return this.clientReportRecorder;
    }

    public CompositePerformanceCollector getCompositePerformanceCollector() {
        return this.compositePerformanceCollector;
    }

    public IConnectionStatusProvider getConnectionStatusProvider() {
        return this.connectionStatusProvider;
    }

    public int getConnectionTimeoutMillis() {
        return this.connectionTimeoutMillis;
    }

    public List<String> getContextTags() {
        return this.contextTags;
    }

    public IContinuousProfiler getContinuousProfiler() {
        return this.continuousProfiler;
    }

    public Cron getCron() {
        return this.cron;
    }

    public SentryDateProvider getDateProvider() {
        return (SentryDateProvider) this.dateProvider.a();
    }

    public long getDeadlineTimeout() {
        return this.deadlineTimeout;
    }

    public IDebugMetaLoader getDebugMetaLoader() {
        return this.debugMetaLoader;
    }

    public ScopeType getDefaultScopeType() {
        return this.defaultScopeType;
    }

    public SentryLevel getDiagnosticLevel() {
        return this.diagnosticLevel;
    }

    public String getDist() {
        return this.dist;
    }

    public String getDistinctId() {
        return this.distinctId;
    }

    public DistributionOptions getDistribution() {
        return this.distribution;
    }

    public IDistributionApi getDistributionController() {
        return this.distributionController;
    }

    public String getDsn() {
        return this.dsn;
    }

    public String getEffectiveOrgId() {
        String str = this.orgId;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                return trim;
            }
        }
        try {
            return retrieveParsedDsn().d;
        } catch (Throwable unused) {
            return null;
        }
    }

    public IEnvelopeCache getEnvelopeDiskCache() {
        return this.envelopeDiskCache;
    }

    public IEnvelopeReader getEnvelopeReader() {
        return (IEnvelopeReader) this.envelopeReader.a();
    }

    public String getEnvironment() {
        String str = this.environment;
        if (str != null) {
            return str;
        }
        return DEFAULT_ENVIRONMENT;
    }

    public List<EventProcessor> getEventProcessors() {
        return this.eventProcessors;
    }

    public ISentryExecutorService getExecutorService() {
        return this.executorService;
    }

    public ExperimentalOptions getExperimental() {
        return this.experimental;
    }

    public ILogger getFatalLogger() {
        return this.fatalLogger;
    }

    public SentryFeedbackOptions getFeedbackOptions() {
        return this.feedbackOptions;
    }

    public long getFlushTimeoutMillis() {
        return this.flushTimeoutMillis;
    }

    public FullyDisplayedReporter getFullyDisplayedReporter() {
        return this.fullyDisplayedReporter;
    }

    public List<GestureTargetLocator> getGestureTargetLocators() {
        return this.gestureTargetLocators;
    }

    public Long getIdleTimeout() {
        return this.idleTimeout;
    }

    public List<FilterString> getIgnoredCheckIns() {
        return this.ignoredCheckIns;
    }

    public List<FilterString> getIgnoredErrors() {
        return this.ignoredErrors;
    }

    public Set<Class<? extends Throwable>> getIgnoredExceptionsForType() {
        return this.ignoredExceptionsForType;
    }

    public List<FilterString> getIgnoredSpanOrigins() {
        return this.ignoredSpanOrigins;
    }

    public List<FilterString> getIgnoredTransactions() {
        return this.ignoredTransactions;
    }

    public List<String> getInAppExcludes() {
        return this.inAppExcludes;
    }

    public List<String> getInAppIncludes() {
        return this.inAppIncludes;
    }

    public InitPriority getInitPriority() {
        return this.initPriority;
    }

    public Instrumenter getInstrumenter() {
        return this.instrumenter;
    }

    public List<Integration> getIntegrations() {
        return this.integrations;
    }

    public TracesSampler getInternalTracesSampler() {
        if (this.internalTracesSampler == null) {
            ISentryLifecycleToken a = this.lock.a();
            try {
                if (this.internalTracesSampler == null) {
                    this.internalTracesSampler = new TracesSampler(this);
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
        return this.internalTracesSampler;
    }

    public ILogger getLogger() {
        return this.logger;
    }

    public Logs getLogs() {
        return this.logs;
    }

    public long getMaxAttachmentSize() {
        return this.maxAttachmentSize;
    }

    public int getMaxBreadcrumbs() {
        return this.maxBreadcrumbs;
    }

    public int getMaxCacheItems() {
        return this.maxCacheItems;
    }

    public int getMaxDepth() {
        return this.maxDepth;
    }

    public int getMaxFeatureFlags() {
        return this.maxFeatureFlags;
    }

    public int getMaxQueueSize() {
        return this.maxQueueSize;
    }

    public RequestSize getMaxRequestBodySize() {
        return this.maxRequestBodySize;
    }

    public int getMaxSpans() {
        return this.maxSpans;
    }

    public long getMaxTraceFileSize() {
        return this.maxTraceFileSize;
    }

    public Metrics getMetrics() {
        return this.metrics;
    }

    public IModulesLoader getModulesLoader() {
        return this.modulesLoader;
    }

    public OnDiscardCallback getOnDiscard() {
        return null;
    }

    public OnOversizedEventCallback getOnOversizedEvent() {
        return null;
    }

    public SentryOpenTelemetryMode getOpenTelemetryMode() {
        return this.openTelemetryMode;
    }

    public List<IOptionsObserver> getOptionsObservers() {
        return this.optionsObservers;
    }

    public String getOrgId() {
        return this.orgId;
    }

    public String getOutboxPath() {
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "outbox").getAbsolutePath();
    }

    public List<IPerformanceCollector> getPerformanceCollectors() {
        return this.performanceCollectors;
    }

    public ProfileLifecycle getProfileLifecycle() {
        return this.profileLifecycle;
    }

    public Double getProfileSessionSampleRate() {
        return this.profileSessionSampleRate;
    }

    public IProfileConverter getProfilerConverter() {
        return this.profilerConverter;
    }

    public Double getProfilesSampleRate() {
        return this.profilesSampleRate;
    }

    public ProfilesSamplerCallback getProfilesSampler() {
        return null;
    }

    public String getProfilingTracesDirPath() {
        String str = this.profilingTracesDirPath;
        if (str != null && !str.isEmpty()) {
            if (this.dsnHash != null) {
                return new File(this.profilingTracesDirPath, this.dsnHash).getAbsolutePath();
            }
            return this.profilingTracesDirPath;
        }
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "profiling_traces").getAbsolutePath();
    }

    public int getProfilingTracesHz() {
        return this.profilingTracesHz;
    }

    public String getProguardUuid() {
        return this.proguardUuid;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public int getReadTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    public String getRelease() {
        return this.release;
    }

    public ReplayController getReplayController() {
        return this.replayController;
    }

    public Double getSampleRate() {
        return this.sampleRate;
    }

    public List<IScopeObserver> getScopeObservers() {
        return this.observers;
    }

    public IScopesStorageFactory getScopesStorageFactory() {
        return null;
    }

    public SdkVersion getSdkVersion() {
        return this.sdkVersion;
    }

    public String getSentryClientName() {
        return this.sentryClientName;
    }

    public ISerializer getSerializer() {
        return (ISerializer) this.serializer.a();
    }

    public String getServerName() {
        return this.serverName;
    }

    public long getSessionFlushTimeoutMillis() {
        return this.sessionFlushTimeoutMillis;
    }

    public SentryReplayOptions getSessionReplay() {
        return this.sessionReplay;
    }

    public long getSessionTrackingIntervalMillis() {
        return this.sessionTrackingIntervalMillis;
    }

    public long getShutdownTimeoutMillis() {
        return this.shutdownTimeoutMillis;
    }

    public ISocketTagger getSocketTagger() {
        return this.socketTagger;
    }

    public ISpanFactory getSpanFactory() {
        return this.spanFactory;
    }

    public String getSpotlightConnectionUrl() {
        return this.spotlightConnectionUrl;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    public Map<String, String> getTags() {
        return this.tags;
    }

    public IThreadChecker getThreadChecker() {
        return this.threadChecker;
    }

    public List<String> getTracePropagationTargets() {
        List<String> list = this.tracePropagationTargets;
        if (list == null) {
            return this.defaultTracePropagationTargets;
        }
        return list;
    }

    public Double getTracesSampleRate() {
        return this.tracesSampleRate;
    }

    public TracesSamplerCallback getTracesSampler() {
        return null;
    }

    public ITransactionProfiler getTransactionProfiler() {
        return this.transactionProfiler;
    }

    public ITransportFactory getTransportFactory() {
        return this.transportFactory;
    }

    public ITransportGate getTransportGate() {
        return this.transportGate;
    }

    public IVersionDetector getVersionDetector() {
        return this.versionDetector;
    }

    public final List<Object> getViewHierarchyExporters() {
        return this.viewHierarchyExporters;
    }

    public boolean isAttachServerName() {
        return this.attachServerName;
    }

    public boolean isAttachStacktrace() {
        return this.attachStacktrace;
    }

    public boolean isAttachThreads() {
        return this.attachThreads;
    }

    public boolean isCaptureOpenTelemetryEvents() {
        return this.captureOpenTelemetryEvents;
    }

    public boolean isContinuousProfilingEnabled() {
        Double d;
        if (this.profilesSampleRate == null && (d = this.profileSessionSampleRate) != null && d.doubleValue() > 0.0d) {
            return true;
        }
        return false;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isEnableAppStartProfiling() {
        if ((isProfilingEnabled() || isContinuousProfilingEnabled()) && this.enableAppStartProfiling) {
            return true;
        }
        return false;
    }

    public boolean isEnableAutoSessionTracking() {
        return this.enableAutoSessionTracking;
    }

    public boolean isEnableBackpressureHandling() {
        return this.enableBackpressureHandling;
    }

    public boolean isEnableCacheTracing() {
        return this.enableCacheTracing;
    }

    public boolean isEnableDatabaseTransactionTracing() {
        return this.enableDatabaseTransactionTracing;
    }

    public boolean isEnableDeduplication() {
        return this.enableDeduplication;
    }

    public boolean isEnableEventSizeLimiting() {
        return this.enableEventSizeLimiting;
    }

    public boolean isEnableExternalConfiguration() {
        return this.enableExternalConfiguration;
    }

    public boolean isEnablePrettySerializationOutput() {
        return this.enablePrettySerializationOutput;
    }

    public boolean isEnableQueueTracing() {
        return this.enableQueueTracing;
    }

    public boolean isEnableScopePersistence() {
        return this.enableScopePersistence;
    }

    public boolean isEnableScreenTracking() {
        return this.enableScreenTracking;
    }

    public boolean isEnableShutdownHook() {
        return this.enableShutdownHook;
    }

    public boolean isEnableSpotlight() {
        return this.enableSpotlight;
    }

    public boolean isEnableTimeToFullDisplayTracing() {
        return this.enableTimeToFullDisplayTracing;
    }

    public boolean isEnableUncaughtExceptionHandler() {
        return this.enableUncaughtExceptionHandler;
    }

    public boolean isEnableUserInteractionBreadcrumbs() {
        return this.enableUserInteractionBreadcrumbs;
    }

    public boolean isEnableUserInteractionTracing() {
        return this.enableUserInteractionTracing;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isForceInit() {
        return this.forceInit;
    }

    public Boolean isGlobalHubMode() {
        return this.globalHubMode;
    }

    public boolean isPrintUncaughtStackTrace() {
        return this.printUncaughtStackTrace;
    }

    public boolean isProfilingEnabled() {
        Double d = this.profilesSampleRate;
        if (d != null && d.doubleValue() > 0.0d) {
            return true;
        }
        return false;
    }

    public boolean isPropagateTraceparent() {
        return this.propagateTraceparent;
    }

    public boolean isSendClientReports() {
        return this.sendClientReports;
    }

    public boolean isSendDefaultPii() {
        return this.sendDefaultPii;
    }

    public boolean isSendModules() {
        return this.sendModules;
    }

    public boolean isStartProfilerOnAppStart() {
        return this.startProfilerOnAppStart;
    }

    public boolean isStrictTraceContinuation() {
        return this.strictTraceContinuation;
    }

    public boolean isTraceOptionsRequests() {
        return this.traceOptionsRequests;
    }

    public boolean isTraceSampling() {
        return this.traceSampling;
    }

    public boolean isTracingEnabled() {
        if (getTracesSampleRate() == null) {
            getTracesSampler();
            return false;
        }
        return true;
    }

    public void loadLazyFields() {
        getSerializer();
        retrieveParsedDsn();
        getEnvelopeReader();
        getDateProvider();
    }

    public void merge(ExternalOptions externalOptions) {
        String str = externalOptions.a;
        if (str != null) {
            setDsn(str);
        }
        String str2 = externalOptions.b;
        if (str2 != null) {
            setEnvironment(str2);
        }
        String str3 = externalOptions.c;
        if (str3 != null) {
            setRelease(str3);
        }
        String str4 = externalOptions.d;
        if (str4 != null) {
            setDist(str4);
        }
        String str5 = externalOptions.e;
        if (str5 != null) {
            setServerName(str5);
        }
        Proxy proxy = externalOptions.n;
        if (proxy != null) {
            setProxy(proxy);
        }
        Boolean bool = externalOptions.f;
        if (bool != null) {
            setEnableUncaughtExceptionHandler(bool.booleanValue());
        }
        Boolean bool2 = externalOptions.y;
        if (bool2 != null) {
            setPrintUncaughtStackTrace(bool2.booleanValue());
        }
        Double d = externalOptions.i;
        if (d != null) {
            setSampleRate(d);
        }
        Double d2 = externalOptions.j;
        if (d2 != null) {
            setTracesSampleRate(d2);
        }
        Double d3 = externalOptions.k;
        if (d3 != null) {
            setProfilesSampleRate(d3);
        }
        Boolean bool3 = externalOptions.g;
        if (bool3 != null) {
            setDebug(bool3.booleanValue());
        }
        Boolean bool4 = externalOptions.h;
        if (bool4 != null) {
            setEnableDeduplication(bool4.booleanValue());
        }
        Boolean bool5 = externalOptions.z;
        if (bool5 != null) {
            setSendClientReports(bool5.booleanValue());
        }
        Boolean bool6 = externalOptions.Q;
        if (bool6 != null) {
            setForceInit(bool6.booleanValue());
        }
        for (Map.Entry entry : new HashMap(externalOptions.m).entrySet()) {
            this.tags.put((String) entry.getKey(), (String) entry.getValue());
        }
        Iterator it = new ArrayList(externalOptions.p).iterator();
        while (it.hasNext()) {
            addInAppInclude((String) it.next());
        }
        Iterator it2 = new ArrayList(externalOptions.o).iterator();
        while (it2.hasNext()) {
            addInAppExclude((String) it2.next());
        }
        Iterator it3 = new HashSet(externalOptions.w).iterator();
        while (it3.hasNext()) {
            addIgnoredExceptionForType((Class) it3.next());
        }
        if (externalOptions.q != null) {
            setTracePropagationTargets(new ArrayList(externalOptions.q));
        }
        Iterator it4 = new ArrayList(externalOptions.r).iterator();
        while (it4.hasNext()) {
            addContextTag((String) it4.next());
        }
        String str6 = externalOptions.s;
        if (str6 != null) {
            setProguardUuid(str6);
        }
        Long l = externalOptions.t;
        if (l != null) {
            setIdleTimeout(l);
        }
        Long l2 = externalOptions.u;
        if (l2 != null) {
            setShutdownTimeoutMillis(l2.longValue());
        }
        Long l3 = externalOptions.v;
        if (l3 != null) {
            setSessionFlushTimeoutMillis(l3.longValue());
        }
        Iterator it5 = externalOptions.A.iterator();
        while (it5.hasNext()) {
            addBundleId((String) it5.next());
        }
        Boolean bool7 = externalOptions.B;
        if (bool7 != null) {
            setEnabled(bool7.booleanValue());
        }
        Boolean bool8 = externalOptions.C;
        if (bool8 != null) {
            setEnablePrettySerializationOutput(bool8.booleanValue());
        }
        Boolean bool9 = externalOptions.J;
        if (bool9 != null) {
            setSendModules(bool9.booleanValue());
        }
        if (externalOptions.H != null) {
            setIgnoredCheckIns(new ArrayList(externalOptions.H));
        }
        if (externalOptions.I != null) {
            setIgnoredTransactions(new ArrayList(externalOptions.I));
        }
        if (externalOptions.x != null) {
            setIgnoredErrors(new ArrayList(externalOptions.x));
        }
        Boolean bool10 = externalOptions.L;
        if (bool10 != null) {
            setEnableBackpressureHandling(bool10.booleanValue());
        }
        Boolean bool11 = externalOptions.M;
        if (bool11 != null) {
            setEnableDatabaseTransactionTracing(bool11.booleanValue());
        }
        Boolean bool12 = externalOptions.N;
        if (bool12 != null) {
            setEnableCacheTracing(bool12.booleanValue());
        }
        Boolean bool13 = externalOptions.O;
        if (bool13 != null) {
            setEnableQueueTracing(bool13.booleanValue());
        }
        RequestSize requestSize = externalOptions.l;
        if (requestSize != null) {
            setMaxRequestBodySize(requestSize);
        }
        Boolean bool14 = externalOptions.K;
        if (bool14 != null) {
            setSendDefaultPii(bool14.booleanValue());
        }
        Boolean bool15 = externalOptions.R;
        if (bool15 != null) {
            setCaptureOpenTelemetryEvents(bool15.booleanValue());
        }
        Boolean bool16 = externalOptions.D;
        if (bool16 != null) {
            setEnableSpotlight(bool16.booleanValue());
        }
        String str7 = externalOptions.G;
        if (str7 != null) {
            setSpotlightConnectionUrl(str7);
        }
        Boolean bool17 = externalOptions.P;
        if (bool17 != null) {
            setGlobalHubMode(bool17);
        }
        if (externalOptions.X != null) {
            Cron cron = getCron();
            Cron cron2 = externalOptions.X;
            if (cron == null) {
                setCron(cron2);
            } else {
                if (cron2.a != null) {
                    getCron().a = externalOptions.X.a;
                }
                if (externalOptions.X.b != null) {
                    getCron().b = externalOptions.X.b;
                }
                if (externalOptions.X.c != null) {
                    getCron().c = externalOptions.X.c;
                }
                if (externalOptions.X.d != null) {
                    getCron().d = externalOptions.X.d;
                }
                if (externalOptions.X.e != null) {
                    getCron().e = externalOptions.X.e;
                }
            }
        }
        if (externalOptions.E != null) {
            getLogs().a = externalOptions.E.booleanValue();
        }
        if (externalOptions.F != null) {
            getMetrics().a = externalOptions.F.booleanValue();
        }
        Double d4 = externalOptions.S;
        if (d4 != null) {
            setProfileSessionSampleRate(d4);
        }
        String str8 = externalOptions.T;
        if (str8 != null) {
            setProfilingTracesDirPath(str8);
        }
        ProfileLifecycle profileLifecycle = externalOptions.U;
        if (profileLifecycle != null) {
            setProfileLifecycle(profileLifecycle);
        }
        Boolean bool18 = externalOptions.V;
        if (bool18 != null) {
            setStrictTraceContinuation(bool18.booleanValue());
        }
        String str9 = externalOptions.W;
        if (str9 != null) {
            setOrgId(str9);
        }
    }

    public Dsn retrieveParsedDsn() throws IllegalArgumentException {
        return (Dsn) this.parsedDsn.a();
    }

    public void setAttachServerName(boolean z) {
        this.attachServerName = z;
    }

    public void setAttachStacktrace(boolean z) {
        this.attachStacktrace = z;
    }

    public void setAttachThreads(boolean z) {
        this.attachThreads = z;
    }

    public void setBackpressureMonitor(IBackpressureMonitor iBackpressureMonitor) {
        this.backpressureMonitor = iBackpressureMonitor;
    }

    public void setBeforeBreadcrumb(BeforeBreadcrumbCallback beforeBreadcrumbCallback) {
        this.beforeBreadcrumb = beforeBreadcrumbCallback;
    }

    public void setBeforeSend(BeforeSendCallback beforeSendCallback) {
        this.beforeSend = beforeSendCallback;
    }

    public void setBeforeSendFeedback(BeforeSendCallback beforeSendCallback) {
        this.beforeSendFeedback = beforeSendCallback;
    }

    public void setCacheDirPath(String str) {
        this.cacheDirPath = str;
    }

    public void setCaptureOpenTelemetryEvents(boolean z) {
        this.captureOpenTelemetryEvents = z;
    }

    public void setCompositePerformanceCollector(CompositePerformanceCollector compositePerformanceCollector) {
        this.compositePerformanceCollector = compositePerformanceCollector;
    }

    public void setConnectionStatusProvider(IConnectionStatusProvider iConnectionStatusProvider) {
        this.connectionStatusProvider = iConnectionStatusProvider;
    }

    public void setConnectionTimeoutMillis(int i) {
        this.connectionTimeoutMillis = i;
    }

    public void setContinuousProfiler(IContinuousProfiler iContinuousProfiler) {
        if (this.continuousProfiler == NoOpContinuousProfiler.j && iContinuousProfiler != null) {
            this.continuousProfiler = iContinuousProfiler;
        }
    }

    public void setCron(Cron cron) {
        this.cron = cron;
    }

    public void setDateProvider(SentryDateProvider sentryDateProvider) {
        this.dateProvider.c(sentryDateProvider);
    }

    public void setDeadlineTimeout(long j) {
        this.deadlineTimeout = j;
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }

    public void setDebugMetaLoader(IDebugMetaLoader iDebugMetaLoader) {
        if (iDebugMetaLoader == null) {
            iDebugMetaLoader = NoOpDebugMetaLoader.a;
        }
        this.debugMetaLoader = iDebugMetaLoader;
    }

    public void setDefaultScopeType(ScopeType scopeType) {
        this.defaultScopeType = scopeType;
    }

    public void setDiagnosticLevel(SentryLevel sentryLevel) {
        if (sentryLevel == null) {
            sentryLevel = DEFAULT_DIAGNOSTIC_LEVEL;
        }
        this.diagnosticLevel = sentryLevel;
    }

    public void setDist(String str) {
        this.dist = str;
    }

    public void setDistinctId(String str) {
        this.distinctId = str;
    }

    public void setDistribution(DistributionOptions distributionOptions) {
        if (distributionOptions == null) {
            distributionOptions = new DistributionOptions();
        }
        this.distribution = distributionOptions;
    }

    public void setDistributionController(IDistributionApi iDistributionApi) {
        if (iDistributionApi == null) {
            iDistributionApi = NoOpDistributionApi.a;
        }
        this.distributionController = iDistributionApi;
    }

    public void setDsn(String str) {
        String str2;
        String str3 = null;
        if (str != null) {
            str2 = str.trim();
        } else {
            str2 = null;
        }
        this.dsn = str2;
        this.parsedDsn.b();
        String str4 = this.dsn;
        ILogger iLogger = this.logger;
        Charset charset = StringUtils.a;
        if (str4 != null && !str4.isEmpty()) {
            try {
                str3 = new StringBuilder(new BigInteger(1, MessageDigest.getInstance("SHA-1").digest(str4.getBytes(StringUtils.a))).toString(16)).toString();
            } catch (NoSuchAlgorithmException e) {
                iLogger.b(SentryLevel.INFO, "SHA-1 isn't available to calculate the hash.", e);
            } catch (Throwable th) {
                iLogger.c(SentryLevel.INFO, "string: %s could not calculate its hash", th, str4);
            }
        }
        this.dsnHash = str3;
    }

    public void setEnableAppStartProfiling(boolean z) {
        this.enableAppStartProfiling = z;
    }

    public void setEnableAutoSessionTracking(boolean z) {
        this.enableAutoSessionTracking = z;
    }

    public void setEnableBackpressureHandling(boolean z) {
        this.enableBackpressureHandling = z;
    }

    public void setEnableCacheTracing(boolean z) {
        this.enableCacheTracing = z;
    }

    public void setEnableDatabaseTransactionTracing(boolean z) {
        this.enableDatabaseTransactionTracing = z;
    }

    public void setEnableDeduplication(boolean z) {
        this.enableDeduplication = z;
    }

    public void setEnableEventSizeLimiting(boolean z) {
        this.enableEventSizeLimiting = z;
    }

    public void setEnableExternalConfiguration(boolean z) {
        this.enableExternalConfiguration = z;
    }

    public void setEnablePrettySerializationOutput(boolean z) {
        this.enablePrettySerializationOutput = z;
    }

    public void setEnableQueueTracing(boolean z) {
        this.enableQueueTracing = z;
    }

    public void setEnableScopePersistence(boolean z) {
        this.enableScopePersistence = z;
    }

    public void setEnableScreenTracking(boolean z) {
        this.enableScreenTracking = z;
    }

    public void setEnableShutdownHook(boolean z) {
        this.enableShutdownHook = z;
    }

    public void setEnableSpotlight(boolean z) {
        this.enableSpotlight = z;
    }

    public void setEnableTimeToFullDisplayTracing(boolean z) {
        this.enableTimeToFullDisplayTracing = z;
    }

    public void setEnableUncaughtExceptionHandler(boolean z) {
        this.enableUncaughtExceptionHandler = z;
    }

    public void setEnableUserInteractionBreadcrumbs(boolean z) {
        this.enableUserInteractionBreadcrumbs = z;
    }

    public void setEnableUserInteractionTracing(boolean z) {
        this.enableUserInteractionTracing = z;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setEnvelopeDiskCache(IEnvelopeCache iEnvelopeCache) {
        if (iEnvelopeCache == null) {
            iEnvelopeCache = NoOpEnvelopeCache.j;
        }
        this.envelopeDiskCache = iEnvelopeCache;
    }

    public void setEnvelopeReader(IEnvelopeReader iEnvelopeReader) {
        LazyEvaluator<IEnvelopeReader> lazyEvaluator = this.envelopeReader;
        if (iEnvelopeReader == null) {
            iEnvelopeReader = NoOpEnvelopeReader.a;
        }
        lazyEvaluator.c(iEnvelopeReader);
    }

    public void setEnvironment(String str) {
        this.environment = str;
    }

    public void setExecutorService(ISentryExecutorService iSentryExecutorService) {
        if (iSentryExecutorService != null) {
            this.executorService = iSentryExecutorService;
        }
    }

    public void setFatalLogger(ILogger iLogger) {
        if (iLogger == null) {
            iLogger = NoOpLogger.a;
        }
        this.fatalLogger = iLogger;
    }

    public void setFeedbackOptions(SentryFeedbackOptions sentryFeedbackOptions) {
        this.feedbackOptions = sentryFeedbackOptions;
    }

    public void setFlushTimeoutMillis(long j) {
        this.flushTimeoutMillis = j;
    }

    public void setForceInit(boolean z) {
        this.forceInit = z;
    }

    public void setFullyDisplayedReporter(FullyDisplayedReporter fullyDisplayedReporter) {
        this.fullyDisplayedReporter = fullyDisplayedReporter;
    }

    public void setGestureTargetLocators(List<GestureTargetLocator> list) {
        this.gestureTargetLocators.clear();
        this.gestureTargetLocators.addAll(list);
    }

    public void setGlobalHubMode(Boolean bool) {
        this.globalHubMode = bool;
    }

    public void setIdleTimeout(Long l) {
        this.idleTimeout = l;
    }

    public void setIgnoredCheckIns(List<String> list) {
        if (list == null) {
            this.ignoredCheckIns = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.isEmpty()) {
                arrayList.add(new FilterString(str));
            }
        }
        this.ignoredCheckIns = arrayList;
    }

    public void setIgnoredErrors(List<String> list) {
        if (list == null) {
            this.ignoredErrors = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str != null && !str.isEmpty()) {
                arrayList.add(new FilterString(str));
            }
        }
        this.ignoredErrors = arrayList;
    }

    public void setIgnoredSpanOrigins(List<String> list) {
        if (list == null) {
            this.ignoredSpanOrigins = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str != null && !str.isEmpty()) {
                arrayList.add(new FilterString(str));
            }
        }
        this.ignoredSpanOrigins = arrayList;
    }

    public void setIgnoredTransactions(List<String> list) {
        if (list == null) {
            this.ignoredTransactions = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str != null && !str.isEmpty()) {
                arrayList.add(new FilterString(str));
            }
        }
        this.ignoredTransactions = arrayList;
    }

    public void setInitPriority(InitPriority initPriority) {
        this.initPriority = initPriority;
    }

    @Deprecated
    public void setInstrumenter(Instrumenter instrumenter) {
        this.instrumenter = instrumenter;
    }

    public void setLogger(ILogger iLogger) {
        ILogger diagnosticLogger;
        if (iLogger == null) {
            diagnosticLogger = NoOpLogger.a;
        } else {
            diagnosticLogger = new DiagnosticLogger(this, iLogger);
        }
        this.logger = diagnosticLogger;
    }

    public void setLogs(Logs logs) {
        this.logs = logs;
    }

    public void setMaxAttachmentSize(long j) {
        this.maxAttachmentSize = j;
    }

    public void setMaxBreadcrumbs(int i) {
        this.maxBreadcrumbs = i;
    }

    public void setMaxCacheItems(int i) {
        this.maxCacheItems = i;
    }

    public void setMaxDepth(int i) {
        this.maxDepth = i;
    }

    public void setMaxFeatureFlags(int i) {
        this.maxFeatureFlags = i;
    }

    public void setMaxQueueSize(int i) {
        if (i > 0) {
            this.maxQueueSize = i;
        }
    }

    public void setMaxRequestBodySize(RequestSize requestSize) {
        this.maxRequestBodySize = requestSize;
    }

    public void setMaxSpans(int i) {
        this.maxSpans = i;
    }

    public void setMaxTraceFileSize(long j) {
        this.maxTraceFileSize = j;
    }

    public void setMetrics(Metrics metrics) {
        this.metrics = metrics;
    }

    public void setModulesLoader(IModulesLoader iModulesLoader) {
        if (iModulesLoader == null) {
            iModulesLoader = NoOpModulesLoader.a;
        }
        this.modulesLoader = iModulesLoader;
    }

    public void setOpenTelemetryMode(SentryOpenTelemetryMode sentryOpenTelemetryMode) {
        this.openTelemetryMode = sentryOpenTelemetryMode;
    }

    public void setOrgId(String str) {
        this.orgId = str;
    }

    public void setPrintUncaughtStackTrace(boolean z) {
        this.printUncaughtStackTrace = z;
    }

    public void setProfileLifecycle(ProfileLifecycle profileLifecycle) {
        this.profileLifecycle = profileLifecycle;
        if (profileLifecycle == ProfileLifecycle.TRACE && !isTracingEnabled()) {
            this.logger.c(SentryLevel.WARNING, "Profiling lifecycle is set to TRACE but tracing is disabled. Profiling will not be started automatically.", new Object[0]);
        }
    }

    public void setProfileSessionSampleRate(Double d) {
        if (SampleRateUtils.c(d, true)) {
            this.profileSessionSampleRate = d;
        } else {
            d.g("The value ", d, " is not valid. Use values between 0.0 and 1.0.");
        }
    }

    public void setProfilerConverter(IProfileConverter iProfileConverter) {
        this.profilerConverter = iProfileConverter;
    }

    public void setProfilesSampleRate(Double d) {
        if (SampleRateUtils.c(d, true)) {
            this.profilesSampleRate = d;
        } else {
            d.g("The value ", d, " is not valid. Use null to disable or values between 0.0 and 1.0.");
        }
    }

    public void setProfilingTracesDirPath(String str) {
        this.profilingTracesDirPath = str;
    }

    public void setProfilingTracesHz(int i) {
        this.profilingTracesHz = i;
    }

    public void setProguardUuid(String str) {
        this.proguardUuid = str;
    }

    public void setPropagateTraceparent(boolean z) {
        this.propagateTraceparent = z;
    }

    public void setProxy(Proxy proxy) {
        this.proxy = proxy;
    }

    public void setReadTimeoutMillis(int i) {
        this.readTimeoutMillis = i;
    }

    public void setRelease(String str) {
        this.release = str;
    }

    public void setReplayController(ReplayController replayController) {
        if (replayController == null) {
            replayController = NoOpReplayController.j;
        }
        this.replayController = replayController;
    }

    public void setSampleRate(Double d) {
        if (SampleRateUtils.c(d, true)) {
            this.sampleRate = d;
        } else {
            d.g("The value ", d, " is not valid. Use null to disable or values >= 0.0 and <= 1.0.");
        }
    }

    public void setSdkVersion(SdkVersion sdkVersion) {
        SdkVersion sdkVersion2 = getSessionReplay().l;
        SdkVersion sdkVersion3 = this.sdkVersion;
        if (sdkVersion3 != null && sdkVersion2 != null && sdkVersion3.equals(sdkVersion2)) {
            getSessionReplay().l = sdkVersion;
        }
        this.sdkVersion = sdkVersion;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [io.sentry.clientreport.IClientReportRecorder, java.lang.Object] */
    public void setSendClientReports(boolean z) {
        this.sendClientReports = z;
        if (z) {
            this.clientReportRecorder = new ClientReportRecorder(this);
        } else {
            this.clientReportRecorder = new Object();
        }
    }

    public void setSendDefaultPii(boolean z) {
        this.sendDefaultPii = z;
    }

    public void setSendModules(boolean z) {
        this.sendModules = z;
    }

    public void setSentryClientName(String str) {
        this.sentryClientName = str;
    }

    public void setSerializer(ISerializer iSerializer) {
        LazyEvaluator<ISerializer> lazyEvaluator = this.serializer;
        if (iSerializer == null) {
            iSerializer = NoOpSerializer.a;
        }
        lazyEvaluator.c(iSerializer);
    }

    public void setServerName(String str) {
        this.serverName = str;
    }

    public void setSessionFlushTimeoutMillis(long j) {
        this.sessionFlushTimeoutMillis = j;
    }

    public void setSessionReplay(SentryReplayOptions sentryReplayOptions) {
        this.sessionReplay = sentryReplayOptions;
    }

    public void setSessionTrackingIntervalMillis(long j) {
        this.sessionTrackingIntervalMillis = j;
    }

    public void setShutdownTimeoutMillis(long j) {
        this.shutdownTimeoutMillis = j;
    }

    public void setSocketTagger(ISocketTagger iSocketTagger) {
        if (iSocketTagger == null) {
            iSocketTagger = NoOpSocketTagger.a;
        }
        this.socketTagger = iSocketTagger;
    }

    public void setSpanFactory(ISpanFactory iSpanFactory) {
        this.spanFactory = iSpanFactory;
    }

    public void setSpotlightConnectionUrl(String str) {
        this.spotlightConnectionUrl = str;
    }

    public void setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
    }

    public void setStartProfilerOnAppStart(boolean z) {
        this.startProfilerOnAppStart = z;
    }

    public void setStrictTraceContinuation(boolean z) {
        this.strictTraceContinuation = z;
    }

    public void setTag(String str, String str2) {
        if (str == null) {
            return;
        }
        Map<String, String> map = this.tags;
        if (str2 == null) {
            map.remove(str);
        } else {
            map.put(str, str2);
        }
    }

    public void setThreadChecker(IThreadChecker iThreadChecker) {
        this.threadChecker = iThreadChecker;
    }

    public void setTraceOptionsRequests(boolean z) {
        this.traceOptionsRequests = z;
    }

    public void setTracePropagationTargets(List<String> list) {
        if (list == null) {
            this.tracePropagationTargets = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        this.tracePropagationTargets = arrayList;
    }

    @Deprecated
    public void setTraceSampling(boolean z) {
        this.traceSampling = z;
    }

    public void setTracesSampleRate(Double d) {
        if (SampleRateUtils.c(d, true)) {
            this.tracesSampleRate = d;
        } else {
            d.g("The value ", d, " is not valid. Use null to disable or values between 0.0 and 1.0.");
        }
    }

    public void setTransactionProfiler(ITransactionProfiler iTransactionProfiler) {
        if (this.transactionProfiler == NoOpTransactionProfiler.a && iTransactionProfiler != null) {
            this.transactionProfiler = iTransactionProfiler;
        }
    }

    public void setTransportFactory(ITransportFactory iTransportFactory) {
        if (iTransportFactory == null) {
            iTransportFactory = NoOpTransportFactory.a;
        }
        this.transportFactory = iTransportFactory;
    }

    public void setTransportGate(ITransportGate iTransportGate) {
        if (iTransportGate == null) {
            iTransportGate = NoOpTransportGate.a;
        }
        this.transportGate = iTransportGate;
    }

    public void setVersionDetector(IVersionDetector iVersionDetector) {
        this.versionDetector = iVersionDetector;
    }

    public void setViewHierarchyExporters(List<Object> list) {
        this.viewHierarchyExporters.clear();
        this.viewHierarchyExporters.addAll(list);
    }

    public void setBeforeEnvelopeCallback(BeforeEnvelopeCallback beforeEnvelopeCallback) {
    }

    public void setBeforeSendReplay(BeforeSendReplayCallback beforeSendReplayCallback) {
    }

    public void setBeforeSendTransaction(BeforeSendTransactionCallback beforeSendTransactionCallback) {
    }

    public void setOnDiscard(OnDiscardCallback onDiscardCallback) {
    }

    public void setOnOversizedEvent(OnOversizedEventCallback onOversizedEventCallback) {
    }

    public void setProfilesSampler(ProfilesSamplerCallback profilesSamplerCallback) {
    }

    public void setScopesStorageFactory(IScopesStorageFactory iScopesStorageFactory) {
    }

    public void setTracesSampler(TracesSamplerCallback tracesSamplerCallback) {
    }
}
