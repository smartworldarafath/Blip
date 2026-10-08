.class public Lio/sentry/SentryOptions;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryOptions$BeforeSendCallback;,
        Lio/sentry/SentryOptions$BeforeSendTransactionCallback;,
        Lio/sentry/SentryOptions$BeforeSendReplayCallback;,
        Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;,
        Lio/sentry/SentryOptions$OnDiscardCallback;,
        Lio/sentry/SentryOptions$Proxy;,
        Lio/sentry/SentryOptions$TracesSamplerCallback;,
        Lio/sentry/SentryOptions$OnOversizedEventCallback;,
        Lio/sentry/SentryOptions$RequestSize;,
        Lio/sentry/SentryOptions$ProfilesSamplerCallback;,
        Lio/sentry/SentryOptions$BeforeEnvelopeCallback;,
        Lio/sentry/SentryOptions$Cron;,
        Lio/sentry/SentryOptions$Logs;,
        Lio/sentry/SentryOptions$Metrics;,
        Lio/sentry/SentryOptions$DistributionOptions;
    }
.end annotation


# static fields
.field static final DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final DEFAULT_PROPAGATION_TARGETS:Ljava/lang/String; = ".*"

.field public static final MAX_EVENT_SIZE_BYTES:J = 0x100000L


# instance fields
.field private attachServerName:Z

.field private attachStacktrace:Z

.field private attachThreads:Z

.field private backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

.field private beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

.field private beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

.field private beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

.field private beforeSendFeedback:Lio/sentry/SentryOptions$BeforeSendCallback;

.field private beforeSendReplay:Lio/sentry/SentryOptions$BeforeSendReplayCallback;

.field private beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

.field private final bundleIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDirPath:Ljava/lang/String;

.field private captureOpenTelemetryEvents:Z

.field clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

.field private compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

.field private connectionTimeoutMillis:I

.field private final contextTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private continuousProfiler:Lio/sentry/IContinuousProfiler;

.field private cron:Lio/sentry/SentryOptions$Cron;

.field private final dateProvider:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/SentryDateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private deadlineTimeout:J

.field private debug:Z

.field private debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

.field private defaultScopeType:Lio/sentry/ScopeType;

.field private final defaultTracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticLevel:Lio/sentry/SentryLevel;

.field private dist:Ljava/lang/String;

.field private distinctId:Ljava/lang/String;

.field private distribution:Lio/sentry/SentryOptions$DistributionOptions;

.field private distributionController:Lio/sentry/IDistributionApi;

.field private dsn:Ljava/lang/String;

.field private dsnHash:Ljava/lang/String;

.field private enableAppStartProfiling:Z

.field private enableAutoSessionTracking:Z

.field private enableBackpressureHandling:Z

.field private enableCacheTracing:Z

.field private enableDatabaseTransactionTracing:Z

.field private enableDeduplication:Z

.field private enableEventSizeLimiting:Z

.field private enableExternalConfiguration:Z

.field private enablePrettySerializationOutput:Z

.field private enableQueueTracing:Z

.field private enableScopePersistence:Z

.field private enableScreenTracking:Z

.field private enableShutdownHook:Z

.field private enableSpotlight:Z

.field private enableTimeToFullDisplayTracing:Z

.field private enableUncaughtExceptionHandler:Z

.field private enableUserInteractionBreadcrumbs:Z

.field private enableUserInteractionTracing:Z

.field private enabled:Z

.field private envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

.field private final envelopeReader:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/IEnvelopeReader;",
            ">;"
        }
    .end annotation
.end field

.field private environment:Ljava/lang/String;

.field private final eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Lio/sentry/ISentryExecutorService;

.field private final experimental:Lio/sentry/ExperimentalOptions;

.field private fatalLogger:Lio/sentry/ILogger;

.field private feedbackOptions:Lio/sentry/SentryFeedbackOptions;

.field private flushTimeoutMillis:J

.field private forceInit:Z

.field private fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private final gestureTargetLocators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation
.end field

.field private globalHubMode:Ljava/lang/Boolean;

.field private idleTimeout:Ljava/lang/Long;

.field private ignoredCheckIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private ignoredErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredExceptionsForType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private ignoredSpanOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private ignoredTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppExcludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppIncludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initPriority:Lio/sentry/InitPriority;

.field private instrumenter:Lio/sentry/Instrumenter;

.field private final integrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation
.end field

.field private volatile internalTracesSampler:Lio/sentry/TracesSampler;

.field protected final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private logger:Lio/sentry/ILogger;

.field private logs:Lio/sentry/SentryOptions$Logs;

.field private maxAttachmentSize:J

.field private maxBreadcrumbs:I

.field private maxCacheItems:I

.field private maxDepth:I

.field private maxFeatureFlags:I

.field private maxQueueSize:I

.field private maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

.field private maxSpans:I

.field private maxTraceFileSize:J

.field private metrics:Lio/sentry/SentryOptions$Metrics;

.field private modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private onDiscard:Lio/sentry/SentryOptions$OnDiscardCallback;

.field private onOversizedEvent:Lio/sentry/SentryOptions$OnOversizedEventCallback;

.field private openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

.field private final optionsObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private orgId:Ljava/lang/String;

.field private final parsedDsn:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/Dsn;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation
.end field

.field private printUncaughtStackTrace:Z

.field private profileLifecycle:Lio/sentry/ProfileLifecycle;

.field private profileSessionSampleRate:Ljava/lang/Double;

.field private profilerConverter:Lio/sentry/IProfileConverter;

.field private profilesSampleRate:Ljava/lang/Double;

.field private profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

.field private profilingTracesDirPath:Ljava/lang/String;

.field private profilingTracesHz:I

.field private proguardUuid:Ljava/lang/String;

.field private propagateTraceparent:Z

.field private proxy:Lio/sentry/SentryOptions$Proxy;

.field private readTimeoutMillis:I

.field private release:Ljava/lang/String;

.field private replayController:Lio/sentry/ReplayController;

.field private sampleRate:Ljava/lang/Double;

.field private scopesStorageFactory:Lio/sentry/IScopesStorageFactory;

.field private sdkVersion:Lio/sentry/protocol/SdkVersion;

.field private sendClientReports:Z

.field private sendDefaultPii:Z

.field private sendModules:Z

.field private sentryClientName:Ljava/lang/String;

.field private final serializer:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/ISerializer;",
            ">;"
        }
    .end annotation
.end field

.field private serverName:Ljava/lang/String;

.field private sessionFlushTimeoutMillis:J

.field private sessionReplay:Lio/sentry/SentryReplayOptions;

.field private sessionTrackingIntervalMillis:J

.field private shutdownTimeoutMillis:J

.field private socketTagger:Lio/sentry/ISocketTagger;

.field private spanFactory:Lio/sentry/ISpanFactory;

.field private spotlightConnectionUrl:Ljava/lang/String;

.field private final spotlightIntegrationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private startProfilerOnAppStart:Z

.field private strictTraceContinuation:Z

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadChecker:Lio/sentry/util/thread/IThreadChecker;

.field private traceOptionsRequests:Z

.field private tracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceSampling:Z

.field private tracesSampleRate:Ljava/lang/Double;

.field private tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

.field private transactionProfiler:Lio/sentry/ITransactionProfiler;

.field private transportFactory:Lio/sentry/ITransportFactory;

.field private transportGate:Lio/sentry/transport/ITransportGate;

.field private versionDetector:Lio/sentry/IVersionDetector;

.field private final viewHierarchyExporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 2
    .line 3
    sput-object v0, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 27
    .line 28
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    .line 34
    .line 35
    new-instance v1, Lio/sentry/util/LazyEvaluator;

    .line 36
    .line 37
    new-instance v2, Lio/sentry/n;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, p0, v3}, Lio/sentry/n;-><init>(Lio/sentry/SentryOptions;I)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    .line 47
    .line 48
    const-wide/16 v1, 0x7d0

    .line 49
    .line 50
    iput-wide v1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    .line 51
    .line 52
    const-wide/16 v1, 0x3a98

    .line 53
    .line 54
    iput-wide v1, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    .line 55
    .line 56
    iput-wide v1, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    .line 57
    .line 58
    sget-object v1, Lio/sentry/NoOpLogger;->a:Lio/sentry/NoOpLogger;

    .line 59
    .line 60
    iput-object v1, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 61
    .line 62
    iput-object v1, p0, Lio/sentry/SentryOptions;->fatalLogger:Lio/sentry/ILogger;

    .line 63
    .line 64
    sget-object v2, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    .line 65
    .line 66
    iput-object v2, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    .line 67
    .line 68
    new-instance v2, Lio/sentry/util/LazyEvaluator;

    .line 69
    .line 70
    new-instance v4, Lio/sentry/n;

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    invoke-direct {v4, p0, v5}, Lio/sentry/n;-><init>(Lio/sentry/SentryOptions;I)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v4}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    .line 80
    .line 81
    new-instance v2, Lio/sentry/util/LazyEvaluator;

    .line 82
    .line 83
    new-instance v4, Lio/sentry/n;

    .line 84
    .line 85
    const/4 v6, 0x2

    .line 86
    invoke-direct {v4, p0, v6}, Lio/sentry/n;-><init>(Lio/sentry/SentryOptions;I)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v4}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    .line 93
    .line 94
    const/16 v2, 0x64

    .line 95
    .line 96
    iput v2, p0, Lio/sentry/SentryOptions;->maxDepth:I

    .line 97
    .line 98
    const/16 v4, 0x1e

    .line 99
    .line 100
    iput v4, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    .line 101
    .line 102
    iput v4, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    .line 103
    .line 104
    iput v2, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    .line 105
    .line 106
    iput v2, p0, Lio/sentry/SentryOptions;->maxFeatureFlags:I

    .line 107
    .line 108
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    .line 114
    .line 115
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    .line 121
    .line 122
    sget-object v2, Lio/sentry/NoOpTransportFactory;->a:Lio/sentry/NoOpTransportFactory;

    .line 123
    .line 124
    iput-object v2, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    .line 125
    .line 126
    sget-object v2, Lio/sentry/transport/NoOpTransportGate;->a:Lio/sentry/transport/NoOpTransportGate;

    .line 127
    .line 128
    iput-object v2, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    .line 129
    .line 130
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    .line 131
    .line 132
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    .line 133
    .line 134
    const-wide/16 v6, 0x7530

    .line 135
    .line 136
    iput-wide v6, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    .line 137
    .line 138
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    .line 139
    .line 140
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    .line 141
    .line 142
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    .line 143
    .line 144
    sget-object v2, Lio/sentry/NoOpSentryExecutorService;->a:Lio/sentry/NoOpSentryExecutorService;

    .line 145
    .line 146
    iput-object v2, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 147
    .line 148
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    .line 150
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 151
    .line 152
    .line 153
    iput-object v2, p0, Lio/sentry/SentryOptions;->spotlightIntegrationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    .line 155
    const/16 v2, 0x7530

    .line 156
    .line 157
    iput v2, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    .line 158
    .line 159
    iput v2, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    .line 160
    .line 161
    sget-object v2, Lio/sentry/transport/NoOpEnvelopeCache;->j:Lio/sentry/transport/NoOpEnvelopeCache;

    .line 162
    .line 163
    iput-object v2, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    .line 164
    .line 165
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    .line 166
    .line 167
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v2, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 173
    .line 174
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v2, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    .line 180
    .line 181
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    .line 183
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v2, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    .line 187
    .line 188
    const-wide/32 v8, 0x1400000

    .line 189
    .line 190
    .line 191
    iput-wide v8, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    .line 192
    .line 193
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    .line 194
    .line 195
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableEventSizeLimiting:Z

    .line 196
    .line 197
    const/16 v2, 0x3e8

    .line 198
    .line 199
    iput v2, p0, Lio/sentry/SentryOptions;->maxSpans:I

    .line 200
    .line 201
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    .line 202
    .line 203
    sget-object v2, Lio/sentry/SentryOptions$RequestSize;->NONE:Lio/sentry/SentryOptions$RequestSize;

    .line 204
    .line 205
    iput-object v2, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    .line 206
    .line 207
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    .line 208
    .line 209
    const-wide/32 v8, 0x500000

    .line 210
    .line 211
    .line 212
    iput-wide v8, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    .line 213
    .line 214
    sget-object v2, Lio/sentry/NoOpTransactionProfiler;->a:Lio/sentry/NoOpTransactionProfiler;

    .line 215
    .line 216
    iput-object v2, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    .line 217
    .line 218
    sget-object v2, Lio/sentry/NoOpContinuousProfiler;->j:Lio/sentry/NoOpContinuousProfiler;

    .line 219
    .line 220
    iput-object v2, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 221
    .line 222
    sget-object v2, Lio/sentry/NoOpProfileConverter;->a:Lio/sentry/NoOpProfileConverter;

    .line 223
    .line 224
    iput-object v2, p0, Lio/sentry/SentryOptions;->profilerConverter:Lio/sentry/IProfileConverter;

    .line 225
    .line 226
    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 227
    .line 228
    const-string v2, ".*"

    .line 229
    .line 230
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iput-object v2, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    .line 235
    .line 236
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->propagateTraceparent:Z

    .line 237
    .line 238
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->strictTraceContinuation:Z

    .line 239
    .line 240
    const-wide/16 v8, 0xbb8

    .line 241
    .line 242
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    iput-object v2, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    .line 247
    .line 248
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 249
    .line 250
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v2, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    .line 254
    .line 255
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    .line 256
    .line 257
    new-instance v2, Lio/sentry/clientreport/ClientReportRecorder;

    .line 258
    .line 259
    invoke-direct {v2, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    .line 260
    .line 261
    .line 262
    iput-object v2, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 263
    .line 264
    sget-object v2, Lio/sentry/internal/modules/NoOpModulesLoader;->a:Lio/sentry/internal/modules/NoOpModulesLoader;

    .line 265
    .line 266
    iput-object v2, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    .line 267
    .line 268
    sget-object v2, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->a:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    .line 269
    .line 270
    iput-object v2, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 271
    .line 272
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    .line 273
    .line 274
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    .line 275
    .line 276
    sget-object v2, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 277
    .line 278
    iput-object v2, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    .line 279
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    iput-object v2, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 286
    .line 287
    new-instance v2, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .line 291
    .line 292
    iput-object v2, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 293
    .line 294
    sget-object v2, Lio/sentry/util/thread/NoOpThreadChecker;->a:Lio/sentry/util/thread/NoOpThreadChecker;

    .line 295
    .line 296
    iput-object v2, p0, Lio/sentry/SentryOptions;->threadChecker:Lio/sentry/util/thread/IThreadChecker;

    .line 297
    .line 298
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    .line 299
    .line 300
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableDatabaseTransactionTracing:Z

    .line 301
    .line 302
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableCacheTracing:Z

    .line 303
    .line 304
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableQueueTracing:Z

    .line 305
    .line 306
    new-instance v2, Lio/sentry/util/LazyEvaluator;

    .line 307
    .line 308
    new-instance v4, Lio/sentry/d;

    .line 309
    .line 310
    const/16 v8, 0xa

    .line 311
    .line 312
    invoke-direct {v4, v8}, Lio/sentry/d;-><init>(I)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v2, v4}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 316
    .line 317
    .line 318
    iput-object v2, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    .line 319
    .line 320
    new-instance v2, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    iput-object v2, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    .line 326
    .line 327
    sget-object v2, Lio/sentry/NoOpCompositePerformanceCollector;->a:Lio/sentry/NoOpCompositePerformanceCollector;

    .line 328
    .line 329
    iput-object v2, p0, Lio/sentry/SentryOptions;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 330
    .line 331
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    .line 332
    .line 333
    sget-object v2, Lio/sentry/FullyDisplayedReporter;->b:Lio/sentry/FullyDisplayedReporter;

    .line 334
    .line 335
    iput-object v2, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 336
    .line 337
    new-instance v2, Lio/sentry/NoOpConnectionStatusProvider;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-object v2, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 343
    .line 344
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enabled:Z

    .line 345
    .line 346
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    .line 347
    .line 348
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->sendModules:Z

    .line 349
    .line 350
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    .line 351
    .line 352
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    .line 353
    .line 354
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 355
    .line 356
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 357
    .line 358
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 359
    .line 360
    sget-object v2, Lio/sentry/backpressure/NoOpBackpressureMonitor;->j:Lio/sentry/backpressure/NoOpBackpressureMonitor;

    .line 361
    .line 362
    iput-object v2, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    .line 363
    .line 364
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    .line 365
    .line 366
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    .line 367
    .line 368
    sget-object v2, Lio/sentry/NoOpSpanFactory;->a:Lio/sentry/NoOpSpanFactory;

    .line 369
    .line 370
    iput-object v2, p0, Lio/sentry/SentryOptions;->spanFactory:Lio/sentry/ISpanFactory;

    .line 371
    .line 372
    const/16 v2, 0x65

    .line 373
    .line 374
    iput v2, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    .line 375
    .line 376
    iput-object v0, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    .line 377
    .line 378
    sget-object v2, Lio/sentry/NoOpReplayController;->j:Lio/sentry/NoOpReplayController;

    .line 379
    .line 380
    iput-object v2, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    .line 381
    .line 382
    sget-object v2, Lio/sentry/NoOpDistributionApi;->a:Lio/sentry/NoOpDistributionApi;

    .line 383
    .line 384
    iput-object v2, p0, Lio/sentry/SentryOptions;->distributionController:Lio/sentry/IDistributionApi;

    .line 385
    .line 386
    iput-boolean v5, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    .line 387
    .line 388
    sget-object v2, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    .line 389
    .line 390
    iput-object v2, p0, Lio/sentry/SentryOptions;->defaultScopeType:Lio/sentry/ScopeType;

    .line 391
    .line 392
    sget-object v2, Lio/sentry/InitPriority;->MEDIUM:Lio/sentry/InitPriority;

    .line 393
    .line 394
    iput-object v2, p0, Lio/sentry/SentryOptions;->initPriority:Lio/sentry/InitPriority;

    .line 395
    .line 396
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->forceInit:Z

    .line 397
    .line 398
    iput-object v0, p0, Lio/sentry/SentryOptions;->globalHubMode:Ljava/lang/Boolean;

    .line 399
    .line 400
    new-instance v2, Lio/sentry/util/AutoClosableReentrantLock;

    .line 401
    .line 402
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 403
    .line 404
    .line 405
    iput-object v2, p0, Lio/sentry/SentryOptions;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 406
    .line 407
    sget-object v2, Lio/sentry/SentryOpenTelemetryMode;->AUTO:Lio/sentry/SentryOpenTelemetryMode;

    .line 408
    .line 409
    iput-object v2, p0, Lio/sentry/SentryOptions;->openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

    .line 410
    .line 411
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->captureOpenTelemetryEvents:Z

    .line 412
    .line 413
    sget-object v2, Lio/sentry/NoopVersionDetector;->a:Lio/sentry/NoopVersionDetector;

    .line 414
    .line 415
    iput-object v2, p0, Lio/sentry/SentryOptions;->versionDetector:Lio/sentry/IVersionDetector;

    .line 416
    .line 417
    sget-object v2, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    .line 418
    .line 419
    iput-object v2, p0, Lio/sentry/SentryOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 420
    .line 421
    iput-boolean v3, p0, Lio/sentry/SentryOptions;->startProfilerOnAppStart:Z

    .line 422
    .line 423
    iput-wide v6, p0, Lio/sentry/SentryOptions;->deadlineTimeout:J

    .line 424
    .line 425
    new-instance v2, Lio/sentry/SentryOptions$Logs;

    .line 426
    .line 427
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 428
    .line 429
    .line 430
    iput-boolean v3, v2, Lio/sentry/SentryOptions$Logs;->a:Z

    .line 431
    .line 432
    new-instance v4, Lio/sentry/logger/DefaultLoggerBatchProcessorFactory;

    .line 433
    .line 434
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 435
    .line 436
    .line 437
    iput-object v4, v2, Lio/sentry/SentryOptions$Logs;->b:Lio/sentry/logger/ILoggerBatchProcessorFactory;

    .line 438
    .line 439
    iput-object v2, p0, Lio/sentry/SentryOptions;->logs:Lio/sentry/SentryOptions$Logs;

    .line 440
    .line 441
    new-instance v2, Lio/sentry/SentryOptions$Metrics;

    .line 442
    .line 443
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 444
    .line 445
    .line 446
    iput-boolean v5, v2, Lio/sentry/SentryOptions$Metrics;->a:Z

    .line 447
    .line 448
    new-instance v4, Lio/sentry/metrics/DefaultMetricsBatchProcessorFactory;

    .line 449
    .line 450
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 451
    .line 452
    .line 453
    iput-object v4, v2, Lio/sentry/SentryOptions$Metrics;->b:Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    .line 454
    .line 455
    iput-object v2, p0, Lio/sentry/SentryOptions;->metrics:Lio/sentry/SentryOptions$Metrics;

    .line 456
    .line 457
    sget-object v2, Lio/sentry/NoOpSocketTagger;->a:Lio/sentry/NoOpSocketTagger;

    .line 458
    .line 459
    iput-object v2, p0, Lio/sentry/SentryOptions;->socketTagger:Lio/sentry/ISocketTagger;

    .line 460
    .line 461
    new-instance v2, Lio/sentry/SentryOptions$DistributionOptions;

    .line 462
    .line 463
    invoke-direct {v2}, Lio/sentry/SentryOptions$DistributionOptions;-><init>()V

    .line 464
    .line 465
    .line 466
    iput-object v2, p0, Lio/sentry/SentryOptions;->distribution:Lio/sentry/SentryOptions$DistributionOptions;

    .line 467
    .line 468
    new-instance v2, Lio/sentry/protocol/SdkVersion;

    .line 469
    .line 470
    const-string v4, "sentry.java"

    .line 471
    .line 472
    const-string v8, "8.41.0"

    .line 473
    .line 474
    invoke-direct {v2, v4, v8}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iput-object v8, v2, Lio/sentry/protocol/SdkVersion;->k:Ljava/lang/String;

    .line 478
    .line 479
    new-instance v4, Lio/sentry/ExperimentalOptions;

    .line 480
    .line 481
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 482
    .line 483
    .line 484
    iput-object v4, p0, Lio/sentry/SentryOptions;->experimental:Lio/sentry/ExperimentalOptions;

    .line 485
    .line 486
    new-instance v4, Lio/sentry/SentryReplayOptions;

    .line 487
    .line 488
    invoke-direct {v4}, Lio/sentry/SentryMaskingOptions;-><init>()V

    .line 489
    .line 490
    .line 491
    iput-boolean v3, v4, Lio/sentry/SentryReplayOptions;->c:Z

    .line 492
    .line 493
    sget-object v9, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->MEDIUM:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 494
    .line 495
    iput-object v9, v4, Lio/sentry/SentryReplayOptions;->f:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 496
    .line 497
    iput v5, v4, Lio/sentry/SentryReplayOptions;->g:I

    .line 498
    .line 499
    iput-wide v6, v4, Lio/sentry/SentryReplayOptions;->h:J

    .line 500
    .line 501
    const-wide/16 v6, 0x1388

    .line 502
    .line 503
    iput-wide v6, v4, Lio/sentry/SentryReplayOptions;->i:J

    .line 504
    .line 505
    const-wide/32 v6, 0x36ee80

    .line 506
    .line 507
    .line 508
    iput-wide v6, v4, Lio/sentry/SentryReplayOptions;->j:J

    .line 509
    .line 510
    iput-boolean v5, v4, Lio/sentry/SentryReplayOptions;->k:Z

    .line 511
    .line 512
    iput-boolean v3, v4, Lio/sentry/SentryReplayOptions;->m:Z

    .line 513
    .line 514
    sget-object v6, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    .line 515
    .line 516
    iput-object v6, v4, Lio/sentry/SentryReplayOptions;->n:Lio/sentry/ScreenshotStrategyType;

    .line 517
    .line 518
    iput-boolean v3, v4, Lio/sentry/SentryReplayOptions;->o:Z

    .line 519
    .line 520
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 521
    .line 522
    iput-object v6, v4, Lio/sentry/SentryReplayOptions;->p:Ljava/util/List;

    .line 523
    .line 524
    iput-object v6, v4, Lio/sentry/SentryReplayOptions;->q:Ljava/util/List;

    .line 525
    .line 526
    iput-boolean v5, v4, Lio/sentry/SentryReplayOptions;->r:Z

    .line 527
    .line 528
    sget-object v6, Lio/sentry/SentryReplayOptions;->u:Ljava/util/List;

    .line 529
    .line 530
    iput-object v6, v4, Lio/sentry/SentryReplayOptions;->s:Ljava/util/List;

    .line 531
    .line 532
    iput-object v6, v4, Lio/sentry/SentryReplayOptions;->t:Ljava/util/List;

    .line 533
    .line 534
    if-nez p1, :cond_0

    .line 535
    .line 536
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 537
    .line 538
    const-string v7, "android.widget.TextView"

    .line 539
    .line 540
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 544
    .line 545
    const-string v7, "android.widget.ImageView"

    .line 546
    .line 547
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 551
    .line 552
    const-string v7, "android.webkit.WebView"

    .line 553
    .line 554
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 558
    .line 559
    const-string v7, "android.widget.VideoView"

    .line 560
    .line 561
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 565
    .line 566
    const-string v7, "androidx.camera.view.PreviewView"

    .line 567
    .line 568
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 572
    .line 573
    const-string v7, "androidx.media3.ui.PlayerView"

    .line 574
    .line 575
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 579
    .line 580
    const-string v7, "com.google.android.exoplayer2.ui.PlayerView"

    .line 581
    .line 582
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    iget-object v6, v4, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 586
    .line 587
    const-string v7, "com.google.android.exoplayer2.ui.StyledPlayerView"

    .line 588
    .line 589
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    iput-object v2, v4, Lio/sentry/SentryReplayOptions;->l:Lio/sentry/protocol/SdkVersion;

    .line 593
    .line 594
    :cond_0
    iput-object v4, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    .line 595
    .line 596
    new-instance v4, Lio/sentry/SentryFeedbackOptions;

    .line 597
    .line 598
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 599
    .line 600
    .line 601
    iput-boolean v3, v4, Lio/sentry/SentryFeedbackOptions;->a:Z

    .line 602
    .line 603
    iput-boolean v5, v4, Lio/sentry/SentryFeedbackOptions;->b:Z

    .line 604
    .line 605
    iput-boolean v3, v4, Lio/sentry/SentryFeedbackOptions;->c:Z

    .line 606
    .line 607
    iput-boolean v5, v4, Lio/sentry/SentryFeedbackOptions;->d:Z

    .line 608
    .line 609
    iput-boolean v5, v4, Lio/sentry/SentryFeedbackOptions;->e:Z

    .line 610
    .line 611
    iput-boolean v5, v4, Lio/sentry/SentryFeedbackOptions;->f:Z

    .line 612
    .line 613
    iput-boolean v3, v4, Lio/sentry/SentryFeedbackOptions;->g:Z

    .line 614
    .line 615
    const-string v5, "Report a Bug"

    .line 616
    .line 617
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->h:Ljava/lang/CharSequence;

    .line 618
    .line 619
    const-string v5, "Send Bug Report"

    .line 620
    .line 621
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->i:Ljava/lang/CharSequence;

    .line 622
    .line 623
    const-string v5, "Cancel"

    .line 624
    .line 625
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->j:Ljava/lang/CharSequence;

    .line 626
    .line 627
    const-string v5, "Name"

    .line 628
    .line 629
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->k:Ljava/lang/CharSequence;

    .line 630
    .line 631
    const-string v5, "Your Name"

    .line 632
    .line 633
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->l:Ljava/lang/CharSequence;

    .line 634
    .line 635
    const-string v5, "Email"

    .line 636
    .line 637
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->m:Ljava/lang/CharSequence;

    .line 638
    .line 639
    const-string v5, "your.email@example.org"

    .line 640
    .line 641
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->n:Ljava/lang/CharSequence;

    .line 642
    .line 643
    const-string v5, " (Required)"

    .line 644
    .line 645
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->o:Ljava/lang/CharSequence;

    .line 646
    .line 647
    const-string v5, "Description"

    .line 648
    .line 649
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->p:Ljava/lang/CharSequence;

    .line 650
    .line 651
    const-string v5, "What\'s the bug? What did you expect?"

    .line 652
    .line 653
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->q:Ljava/lang/CharSequence;

    .line 654
    .line 655
    const-string v5, "Thank you for your report!"

    .line 656
    .line 657
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->r:Ljava/lang/CharSequence;

    .line 658
    .line 659
    iput-object v4, p0, Lio/sentry/SentryOptions;->feedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 660
    .line 661
    if-nez p1, :cond_3

    .line 662
    .line 663
    sget-boolean p1, Lio/sentry/util/Platform;->a:Z

    .line 664
    .line 665
    if-nez p1, :cond_1

    .line 666
    .line 667
    const-string p1, "io.sentry.opentelemetry.OtelSpanFactory"

    .line 668
    .line 669
    invoke-static {p1, v1}, Lio/sentry/util/LoadClass;->b(Ljava/lang/String;Lio/sentry/ILogger;)Z

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    if-eqz v4, :cond_1

    .line 674
    .line 675
    invoke-static {p1, v1}, Lio/sentry/util/LoadClass;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    move-result-object p1

    .line 679
    if-eqz p1, :cond_1

    .line 680
    .line 681
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    if-eqz p1, :cond_1

    .line 690
    .line 691
    instance-of v0, p1, Lio/sentry/ISpanFactory;

    .line 692
    .line 693
    if-eqz v0, :cond_1

    .line 694
    .line 695
    check-cast p1, Lio/sentry/ISpanFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .line 697
    goto :goto_0

    .line 698
    :catch_0
    :cond_1
    new-instance p1, Lio/sentry/DefaultSpanFactory;

    .line 699
    .line 700
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 701
    .line 702
    .line 703
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setSpanFactory(Lio/sentry/ISpanFactory;)V

    .line 704
    .line 705
    .line 706
    iget-object p1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 707
    .line 708
    new-instance v0, Lio/sentry/UncaughtExceptionHandlerIntegration;

    .line 709
    .line 710
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 711
    .line 712
    .line 713
    iput-boolean v3, v0, Lio/sentry/UncaughtExceptionHandlerIntegration;->m:Z

    .line 714
    .line 715
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    iget-object p1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 719
    .line 720
    new-instance v0, Lio/sentry/ShutdownHookIntegration;

    .line 721
    .line 722
    invoke-direct {v0}, Lio/sentry/ShutdownHookIntegration;-><init>()V

    .line 723
    .line 724
    .line 725
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    iget-object p1, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 729
    .line 730
    new-instance v0, Lio/sentry/MainEventProcessor;

    .line 731
    .line 732
    invoke-direct {v0, p0}, Lio/sentry/MainEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    .line 733
    .line 734
    .line 735
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    iget-object p1, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 739
    .line 740
    new-instance v0, Lio/sentry/DuplicateEventDetectionEventProcessor;

    .line 741
    .line 742
    invoke-direct {v0, p0}, Lio/sentry/DuplicateEventDetectionEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    .line 743
    .line 744
    .line 745
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    sget-boolean p1, Lio/sentry/util/Platform;->a:Z

    .line 749
    .line 750
    if-nez p1, :cond_2

    .line 751
    .line 752
    iget-object p1, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 753
    .line 754
    new-instance v0, Lio/sentry/SentryRuntimeEventProcessor;

    .line 755
    .line 756
    invoke-direct {v0}, Lio/sentry/SentryRuntimeEventProcessor;-><init>()V

    .line 757
    .line 758
    .line 759
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    :cond_2
    const-string p1, "sentry.java/8.41.0"

    .line 763
    .line 764
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 768
    .line 769
    .line 770
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 771
    .line 772
    .line 773
    move-result-object p0

    .line 774
    const-string p1, "maven:io.sentry:sentry"

    .line 775
    .line 776
    invoke-virtual {p0, p1, v8}, Lio/sentry/SentryIntegrationPackageStorage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    :cond_3
    return-void
.end method

.method public static synthetic a(Lio/sentry/SentryOptions;)Lio/sentry/Dsn;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/Dsn;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static synthetic b(Lio/sentry/SentryOptions;)Lio/sentry/EnvelopeReader;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/EnvelopeReader;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/sentry/ISerializer;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lio/sentry/EnvelopeReader;-><init>(Lio/sentry/ISerializer;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static empty()Lio/sentry/SentryOptions;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/SentryOptions;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lio/sentry/SentryOptions;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 2
    .line 3
    instance-of v0, v0, Lio/sentry/NoOpSentryExecutorService;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/sentry/SentryExecutorService;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 13
    .line 14
    invoke-interface {v0}, Lio/sentry/ISentryExecutorService;->b()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->spotlightIntegrationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :try_start_0
    const-string v0, "io.sentry.spotlight.SpotlightIntegration"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lio/sentry/Integration;

    .line 45
    .line 46
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :catchall_0
    :cond_1
    return-void
.end method

.method public addBundleId(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public addContextTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addIgnoredCheckIn(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Lio/sentry/FilterString;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public addIgnoredError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Lio/sentry/FilterString;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public addIgnoredExceptionForType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addIgnoredSpanOrigin(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Lio/sentry/FilterString;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public addIgnoredTransaction(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Lio/sentry/FilterString;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public addInAppExclude(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addInAppInclude(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addIntegration(Lio/sentry/Integration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addOptionsObserver(Lio/sentry/IOptionsObserver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addScopeObserver(Lio/sentry/IScopeObserver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lio/sentry/IScopeObserver;

    .line 18
    .line 19
    instance-of v1, v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getBeforeSend()Lio/sentry/SentryOptions$BeforeSendCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBeforeSendFeedback()Lio/sentry/SentryOptions$BeforeSendCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeSendFeedback:Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBeforeSendReplay()Lio/sentry/SentryOptions$BeforeSendReplayCallback;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getBeforeSendTransaction()Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getBundleIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object p0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public getCacheDirPathWithoutDsn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConnectionTimeoutMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public getContextTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContinuousProfiler()Lio/sentry/IContinuousProfiler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCron()Lio/sentry/SentryOptions$Cron;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDateProvider()Lio/sentry/SentryDateProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/SentryDateProvider;

    .line 8
    .line 9
    return-object p0
.end method

.method public getDeadlineTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/SentryOptions;->deadlineTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDefaultScopeType()Lio/sentry/ScopeType;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->defaultScopeType:Lio/sentry/ScopeType;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDiagnosticLevel()Lio/sentry/SentryLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDist()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDistribution()Lio/sentry/SentryOptions$DistributionOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->distribution:Lio/sentry/SentryOptions$DistributionOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDistributionController()Lio/sentry/IDistributionApi;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->distributionController:Lio/sentry/IDistributionApi;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEffectiveOrgId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->orgId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Lio/sentry/Dsn;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEnvelopeReader()Lio/sentry/IEnvelopeReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/IEnvelopeReader;

    .line 8
    .line 9
    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "production"

    .line 7
    .line 8
    return-object p0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExecutorService()Lio/sentry/ISentryExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExperimental()Lio/sentry/ExperimentalOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->experimental:Lio/sentry/ExperimentalOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFatalLogger()Lio/sentry/ILogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->fatalLogger:Lio/sentry/ILogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->feedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFlushTimeoutMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 2
    .line 3
    return-object p0
.end method

.method public getGestureTargetLocators()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIgnoredCheckIns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIgnoredErrors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIgnoredExceptionsForType()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIgnoredSpanOrigins()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIgnoredTransactions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/FilterString;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInAppExcludes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInAppIncludes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInitPriority()Lio/sentry/InitPriority;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->initPriority:Lio/sentry/InitPriority;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInstrumenter()Lio/sentry/Instrumenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIntegrations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInternalTracesSampler()Lio/sentry/TracesSampler;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/SentryOptions;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lio/sentry/TracesSampler;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_2
    throw p0

    .line 38
    :cond_1
    :goto_3
    iget-object p0, p0, Lio/sentry/SentryOptions;->internalTracesSampler:Lio/sentry/TracesSampler;

    .line 39
    .line 40
    return-object p0
.end method

.method public getLogger()Lio/sentry/ILogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLogs()Lio/sentry/SentryOptions$Logs;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->logs:Lio/sentry/SentryOptions$Logs;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxAttachmentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxCacheItems()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxDepth()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->maxDepth:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxFeatureFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->maxFeatureFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxQueueSize()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxSpans()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->maxSpans:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxTraceFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMetrics()Lio/sentry/SentryOptions$Metrics;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->metrics:Lio/sentry/SentryOptions$Metrics;

    .line 2
    .line 3
    return-object p0
.end method

.method public getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOnDiscard()Lio/sentry/SentryOptions$OnDiscardCallback;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getOnOversizedEvent()Lio/sentry/SentryOptions$OnOversizedEventCallback;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOptionsObservers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOrgId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->orgId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOutboxPath()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    const-string v1, "outbox"

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public getPerformanceCollectors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProfileLifecycle()Lio/sentry/ProfileLifecycle;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProfileSessionSampleRate()Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->profileSessionSampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProfilerConverter()Lio/sentry/IProfileConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->profilerConverter:Lio/sentry/IProfileConverter;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProfilesSampleRate()Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    iget-object v1, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 41
    .line 42
    const-string v1, "profiling_traces"

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public getProfilingTracesHz()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    .line 2
    .line 3
    return p0
.end method

.method public getProguardUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProxy()Lio/sentry/SentryOptions$Proxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public getReadTimeoutMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getReplayController()Lio/sentry/ReplayController;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public getScopeObservers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getScopesStorageFactory()Lio/sentry/IScopesStorageFactory;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSentryClientName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSerializer()Lio/sentry/ISerializer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/ISerializer;

    .line 8
    .line 9
    return-object p0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSessionFlushTimeoutMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSessionReplay()Lio/sentry/SentryReplayOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSessionTrackingIntervalMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSocketTagger()Lio/sentry/ISocketTagger;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->socketTagger:Lio/sentry/ISocketTagger;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSpanFactory()Lio/sentry/ISpanFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->spanFactory:Lio/sentry/ISpanFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTags()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThreadChecker()Lio/sentry/util/thread/IThreadChecker;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->threadChecker:Lio/sentry/util/thread/IThreadChecker;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTracePropagationTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object v0
.end method

.method public getTracesSampleRate()Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getTransactionProfiler()Lio/sentry/ITransactionProfiler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTransportFactory()Lio/sentry/ITransportFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTransportGate()Lio/sentry/transport/ITransportGate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVersionDetector()Lio/sentry/IVersionDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->versionDetector:Lio/sentry/IVersionDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getViewHierarchyExporters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public isAttachServerName()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    .line 2
    .line 3
    return p0
.end method

.method public isAttachStacktrace()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    .line 2
    .line 3
    return p0
.end method

.method public isAttachThreads()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    .line 2
    .line 3
    return p0
.end method

.method public isCaptureOpenTelemetryEvents()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->captureOpenTelemetryEvents:Z

    .line 2
    .line 3
    return p0
.end method

.method public isContinuousProfilingEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/SentryOptions;->profileSessionSampleRate:Ljava/lang/Double;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmpl-double p0, v0, v2

    .line 16
    .line 17
    if-lez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public isDebug()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->debug:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableAppStartProfiling()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public isEnableAutoSessionTracking()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableBackpressureHandling()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableCacheTracing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableCacheTracing:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableDatabaseTransactionTracing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableDatabaseTransactionTracing:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableDeduplication()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableEventSizeLimiting()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableEventSizeLimiting:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableExternalConfiguration()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnablePrettySerializationOutput()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableQueueTracing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableQueueTracing:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableScopePersistence()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableScreenTracking()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableShutdownHook()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableSpotlight()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableTimeToFullDisplayTracing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableUncaughtExceptionHandler()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableUserInteractionBreadcrumbs()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnableUserInteractionTracing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public isForceInit()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->forceInit:Z

    .line 2
    .line 3
    return p0
.end method

.method public isGlobalHubMode()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->globalHubMode:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public isPrintUncaughtStackTrace()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    .line 2
    .line 3
    return p0
.end method

.method public isProfilingEnabled()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmpl-double p0, v0, v2

    .line 12
    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public isPropagateTraceparent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->propagateTraceparent:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSendClientReports()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSendDefaultPii()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSendModules()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->sendModules:Z

    .line 2
    .line 3
    return p0
.end method

.method public isStartProfilerOnAppStart()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->startProfilerOnAppStart:Z

    .line 2
    .line 3
    return p0
.end method

.method public isStrictTraceContinuation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->strictTraceContinuation:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTraceOptionsRequests()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTraceSampling()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTracingEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public loadLazyFields()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public merge(Lio/sentry/ExternalOptions;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lio/sentry/ExternalOptions;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p1, Lio/sentry/ExternalOptions;->b:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p1, Lio/sentry/ExternalOptions;->c:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p1, Lio/sentry/ExternalOptions;->d:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDist(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p1, Lio/sentry/ExternalOptions;->e:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setServerName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v0, p1, Lio/sentry/ExternalOptions;->n:Lio/sentry/SentryOptions$Proxy;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProxy(Lio/sentry/SentryOptions$Proxy;)V

    .line 41
    .line 42
    .line 43
    :cond_5
    iget-object v0, p1, Lio/sentry/ExternalOptions;->f:Ljava/lang/Boolean;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 52
    .line 53
    .line 54
    :cond_6
    iget-object v0, p1, Lio/sentry/ExternalOptions;->y:Ljava/lang/Boolean;

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setPrintUncaughtStackTrace(Z)V

    .line 63
    .line 64
    .line 65
    :cond_7
    iget-object v0, p1, Lio/sentry/ExternalOptions;->i:Ljava/lang/Double;

    .line 66
    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 70
    .line 71
    .line 72
    :cond_8
    iget-object v0, p1, Lio/sentry/ExternalOptions;->j:Ljava/lang/Double;

    .line 73
    .line 74
    if-eqz v0, :cond_9

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 77
    .line 78
    .line 79
    :cond_9
    iget-object v0, p1, Lio/sentry/ExternalOptions;->k:Ljava/lang/Double;

    .line 80
    .line 81
    if-eqz v0, :cond_a

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 84
    .line 85
    .line 86
    :cond_a
    iget-object v0, p1, Lio/sentry/ExternalOptions;->g:Ljava/lang/Boolean;

    .line 87
    .line 88
    if-eqz v0, :cond_b

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDebug(Z)V

    .line 95
    .line 96
    .line 97
    :cond_b
    iget-object v0, p1, Lio/sentry/ExternalOptions;->h:Ljava/lang/Boolean;

    .line 98
    .line 99
    if-eqz v0, :cond_c

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableDeduplication(Z)V

    .line 106
    .line 107
    .line 108
    :cond_c
    iget-object v0, p1, Lio/sentry/ExternalOptions;->z:Ljava/lang/Boolean;

    .line 109
    .line 110
    if-eqz v0, :cond_d

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendClientReports(Z)V

    .line 117
    .line 118
    .line 119
    :cond_d
    iget-object v0, p1, Lio/sentry/ExternalOptions;->Q:Ljava/lang/Boolean;

    .line 120
    .line 121
    if-eqz v0, :cond_e

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setForceInit(Z)V

    .line 128
    .line 129
    .line 130
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    .line 131
    .line 132
    iget-object v1, p1, Lio/sentry/ExternalOptions;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_f

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    .line 157
    iget-object v2, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    .line 158
    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 176
    .line 177
    iget-object v1, p1, Lio/sentry/ExternalOptions;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_10

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    .line 203
    .line 204
    iget-object v1, p1, Lio/sentry/ExternalOptions;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_11

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addInAppExclude(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    .line 230
    .line 231
    iget-object v1, p1, Lio/sentry/ExternalOptions;->w:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_12

    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Ljava/lang/Class;

    .line 251
    .line 252
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_12
    iget-object v0, p1, Lio/sentry/ExternalOptions;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 257
    .line 258
    if-eqz v0, :cond_13

    .line 259
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    .line 261
    .line 262
    iget-object v1, p1, Lio/sentry/ExternalOptions;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 263
    .line 264
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 268
    .line 269
    .line 270
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    .line 271
    .line 272
    iget-object v1, p1, Lio/sentry/ExternalOptions;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 273
    .line 274
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_14

    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addContextTag(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_14
    iget-object v0, p1, Lio/sentry/ExternalOptions;->s:Ljava/lang/String;

    .line 298
    .line 299
    if-eqz v0, :cond_15

    .line 300
    .line 301
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :cond_15
    iget-object v0, p1, Lio/sentry/ExternalOptions;->t:Ljava/lang/Long;

    .line 305
    .line 306
    if-eqz v0, :cond_16

    .line 307
    .line 308
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 309
    .line 310
    .line 311
    :cond_16
    iget-object v0, p1, Lio/sentry/ExternalOptions;->u:Ljava/lang/Long;

    .line 312
    .line 313
    if-eqz v0, :cond_17

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 316
    .line 317
    .line 318
    move-result-wide v0

    .line 319
    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryOptions;->setShutdownTimeoutMillis(J)V

    .line 320
    .line 321
    .line 322
    :cond_17
    iget-object v0, p1, Lio/sentry/ExternalOptions;->v:Ljava/lang/Long;

    .line 323
    .line 324
    if-eqz v0, :cond_18

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 327
    .line 328
    .line 329
    move-result-wide v0

    .line 330
    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryOptions;->setSessionFlushTimeoutMillis(J)V

    .line 331
    .line 332
    .line 333
    :cond_18
    iget-object v0, p1, Lio/sentry/ExternalOptions;->A:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_19

    .line 344
    .line 345
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    check-cast v1, Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addBundleId(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_19
    iget-object v0, p1, Lio/sentry/ExternalOptions;->B:Ljava/lang/Boolean;

    .line 356
    .line 357
    if-eqz v0, :cond_1a

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnabled(Z)V

    .line 364
    .line 365
    .line 366
    :cond_1a
    iget-object v0, p1, Lio/sentry/ExternalOptions;->C:Ljava/lang/Boolean;

    .line 367
    .line 368
    if-eqz v0, :cond_1b

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnablePrettySerializationOutput(Z)V

    .line 375
    .line 376
    .line 377
    :cond_1b
    iget-object v0, p1, Lio/sentry/ExternalOptions;->J:Ljava/lang/Boolean;

    .line 378
    .line 379
    if-eqz v0, :cond_1c

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendModules(Z)V

    .line 386
    .line 387
    .line 388
    :cond_1c
    iget-object v0, p1, Lio/sentry/ExternalOptions;->H:Ljava/util/List;

    .line 389
    .line 390
    if-eqz v0, :cond_1d

    .line 391
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    .line 393
    .line 394
    iget-object v1, p1, Lio/sentry/ExternalOptions;->H:Ljava/util/List;

    .line 395
    .line 396
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIgnoredCheckIns(Ljava/util/List;)V

    .line 400
    .line 401
    .line 402
    :cond_1d
    iget-object v0, p1, Lio/sentry/ExternalOptions;->I:Ljava/util/List;

    .line 403
    .line 404
    if-eqz v0, :cond_1e

    .line 405
    .line 406
    new-instance v0, Ljava/util/ArrayList;

    .line 407
    .line 408
    iget-object v1, p1, Lio/sentry/ExternalOptions;->I:Ljava/util/List;

    .line 409
    .line 410
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIgnoredTransactions(Ljava/util/List;)V

    .line 414
    .line 415
    .line 416
    :cond_1e
    iget-object v0, p1, Lio/sentry/ExternalOptions;->x:Ljava/util/List;

    .line 417
    .line 418
    if-eqz v0, :cond_1f

    .line 419
    .line 420
    new-instance v0, Ljava/util/ArrayList;

    .line 421
    .line 422
    iget-object v1, p1, Lio/sentry/ExternalOptions;->x:Ljava/util/List;

    .line 423
    .line 424
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIgnoredErrors(Ljava/util/List;)V

    .line 428
    .line 429
    .line 430
    :cond_1f
    iget-object v0, p1, Lio/sentry/ExternalOptions;->L:Ljava/lang/Boolean;

    .line 431
    .line 432
    if-eqz v0, :cond_20

    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableBackpressureHandling(Z)V

    .line 439
    .line 440
    .line 441
    :cond_20
    iget-object v0, p1, Lio/sentry/ExternalOptions;->M:Ljava/lang/Boolean;

    .line 442
    .line 443
    if-eqz v0, :cond_21

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableDatabaseTransactionTracing(Z)V

    .line 450
    .line 451
    .line 452
    :cond_21
    iget-object v0, p1, Lio/sentry/ExternalOptions;->N:Ljava/lang/Boolean;

    .line 453
    .line 454
    if-eqz v0, :cond_22

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableCacheTracing(Z)V

    .line 461
    .line 462
    .line 463
    :cond_22
    iget-object v0, p1, Lio/sentry/ExternalOptions;->O:Ljava/lang/Boolean;

    .line 464
    .line 465
    if-eqz v0, :cond_23

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableQueueTracing(Z)V

    .line 472
    .line 473
    .line 474
    :cond_23
    iget-object v0, p1, Lio/sentry/ExternalOptions;->l:Lio/sentry/SentryOptions$RequestSize;

    .line 475
    .line 476
    if-eqz v0, :cond_24

    .line 477
    .line 478
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V

    .line 479
    .line 480
    .line 481
    :cond_24
    iget-object v0, p1, Lio/sentry/ExternalOptions;->K:Ljava/lang/Boolean;

    .line 482
    .line 483
    if-eqz v0, :cond_25

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendDefaultPii(Z)V

    .line 490
    .line 491
    .line 492
    :cond_25
    iget-object v0, p1, Lio/sentry/ExternalOptions;->R:Ljava/lang/Boolean;

    .line 493
    .line 494
    if-eqz v0, :cond_26

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setCaptureOpenTelemetryEvents(Z)V

    .line 501
    .line 502
    .line 503
    :cond_26
    iget-object v0, p1, Lio/sentry/ExternalOptions;->D:Ljava/lang/Boolean;

    .line 504
    .line 505
    if-eqz v0, :cond_27

    .line 506
    .line 507
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableSpotlight(Z)V

    .line 512
    .line 513
    .line 514
    :cond_27
    iget-object v0, p1, Lio/sentry/ExternalOptions;->G:Ljava/lang/String;

    .line 515
    .line 516
    if-eqz v0, :cond_28

    .line 517
    .line 518
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSpotlightConnectionUrl(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :cond_28
    iget-object v0, p1, Lio/sentry/ExternalOptions;->P:Ljava/lang/Boolean;

    .line 522
    .line 523
    if-eqz v0, :cond_29

    .line 524
    .line 525
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setGlobalHubMode(Ljava/lang/Boolean;)V

    .line 526
    .line 527
    .line 528
    :cond_29
    iget-object v0, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 529
    .line 530
    if-eqz v0, :cond_2f

    .line 531
    .line 532
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    iget-object v1, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 537
    .line 538
    if-nez v0, :cond_2a

    .line 539
    .line 540
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setCron(Lio/sentry/SentryOptions$Cron;)V

    .line 541
    .line 542
    .line 543
    goto :goto_6

    .line 544
    :cond_2a
    iget-object v0, v1, Lio/sentry/SentryOptions$Cron;->a:Ljava/lang/Long;

    .line 545
    .line 546
    if-eqz v0, :cond_2b

    .line 547
    .line 548
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    iget-object v1, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 553
    .line 554
    iget-object v1, v1, Lio/sentry/SentryOptions$Cron;->a:Ljava/lang/Long;

    .line 555
    .line 556
    iput-object v1, v0, Lio/sentry/SentryOptions$Cron;->a:Ljava/lang/Long;

    .line 557
    .line 558
    :cond_2b
    iget-object v0, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 559
    .line 560
    iget-object v0, v0, Lio/sentry/SentryOptions$Cron;->b:Ljava/lang/Long;

    .line 561
    .line 562
    if-eqz v0, :cond_2c

    .line 563
    .line 564
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    iget-object v1, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 569
    .line 570
    iget-object v1, v1, Lio/sentry/SentryOptions$Cron;->b:Ljava/lang/Long;

    .line 571
    .line 572
    iput-object v1, v0, Lio/sentry/SentryOptions$Cron;->b:Ljava/lang/Long;

    .line 573
    .line 574
    :cond_2c
    iget-object v0, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 575
    .line 576
    iget-object v0, v0, Lio/sentry/SentryOptions$Cron;->c:Ljava/lang/String;

    .line 577
    .line 578
    if-eqz v0, :cond_2d

    .line 579
    .line 580
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    iget-object v1, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 585
    .line 586
    iget-object v1, v1, Lio/sentry/SentryOptions$Cron;->c:Ljava/lang/String;

    .line 587
    .line 588
    iput-object v1, v0, Lio/sentry/SentryOptions$Cron;->c:Ljava/lang/String;

    .line 589
    .line 590
    :cond_2d
    iget-object v0, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 591
    .line 592
    iget-object v0, v0, Lio/sentry/SentryOptions$Cron;->d:Ljava/lang/Long;

    .line 593
    .line 594
    if-eqz v0, :cond_2e

    .line 595
    .line 596
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    iget-object v1, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 601
    .line 602
    iget-object v1, v1, Lio/sentry/SentryOptions$Cron;->d:Ljava/lang/Long;

    .line 603
    .line 604
    iput-object v1, v0, Lio/sentry/SentryOptions$Cron;->d:Ljava/lang/Long;

    .line 605
    .line 606
    :cond_2e
    iget-object v0, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 607
    .line 608
    iget-object v0, v0, Lio/sentry/SentryOptions$Cron;->e:Ljava/lang/Long;

    .line 609
    .line 610
    if-eqz v0, :cond_2f

    .line 611
    .line 612
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    iget-object v1, p1, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 617
    .line 618
    iget-object v1, v1, Lio/sentry/SentryOptions$Cron;->e:Ljava/lang/Long;

    .line 619
    .line 620
    iput-object v1, v0, Lio/sentry/SentryOptions$Cron;->e:Ljava/lang/Long;

    .line 621
    .line 622
    :cond_2f
    :goto_6
    iget-object v0, p1, Lio/sentry/ExternalOptions;->E:Ljava/lang/Boolean;

    .line 623
    .line 624
    if-eqz v0, :cond_30

    .line 625
    .line 626
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    iget-object v1, p1, Lio/sentry/ExternalOptions;->E:Ljava/lang/Boolean;

    .line 631
    .line 632
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    iput-boolean v1, v0, Lio/sentry/SentryOptions$Logs;->a:Z

    .line 637
    .line 638
    :cond_30
    iget-object v0, p1, Lio/sentry/ExternalOptions;->F:Ljava/lang/Boolean;

    .line 639
    .line 640
    if-eqz v0, :cond_31

    .line 641
    .line 642
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    iget-object v1, p1, Lio/sentry/ExternalOptions;->F:Ljava/lang/Boolean;

    .line 647
    .line 648
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    iput-boolean v1, v0, Lio/sentry/SentryOptions$Metrics;->a:Z

    .line 653
    .line 654
    :cond_31
    iget-object v0, p1, Lio/sentry/ExternalOptions;->S:Ljava/lang/Double;

    .line 655
    .line 656
    if-eqz v0, :cond_32

    .line 657
    .line 658
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfileSessionSampleRate(Ljava/lang/Double;)V

    .line 659
    .line 660
    .line 661
    :cond_32
    iget-object v0, p1, Lio/sentry/ExternalOptions;->T:Ljava/lang/String;

    .line 662
    .line 663
    if-eqz v0, :cond_33

    .line 664
    .line 665
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilingTracesDirPath(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    :cond_33
    iget-object v0, p1, Lio/sentry/ExternalOptions;->U:Lio/sentry/ProfileLifecycle;

    .line 669
    .line 670
    if-eqz v0, :cond_34

    .line 671
    .line 672
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V

    .line 673
    .line 674
    .line 675
    :cond_34
    iget-object v0, p1, Lio/sentry/ExternalOptions;->V:Ljava/lang/Boolean;

    .line 676
    .line 677
    if-eqz v0, :cond_35

    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setStrictTraceContinuation(Z)V

    .line 684
    .line 685
    .line 686
    :cond_35
    iget-object p1, p1, Lio/sentry/ExternalOptions;->W:Ljava/lang/String;

    .line 687
    .line 688
    if-eqz p1, :cond_36

    .line 689
    .line 690
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setOrgId(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    :cond_36
    return-void
.end method

.method public retrieveParsedDsn()Lio/sentry/Dsn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/Dsn;

    .line 8
    .line 9
    return-object p0
.end method

.method public setAttachServerName(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAttachStacktrace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAttachThreads(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBackpressureMonitor(Lio/sentry/backpressure/IBackpressureMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeSendFeedback(Lio/sentry/SentryOptions$BeforeSendCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSendFeedback:Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setBeforeSendReplay(Lio/sentry/SentryOptions$BeforeSendReplayCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBeforeSendTransaction(Lio/sentry/SentryOptions$BeforeSendTransactionCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setCacheDirPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCaptureOpenTelemetryEvents(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->captureOpenTelemetryEvents:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCompositePerformanceCollector(Lio/sentry/CompositePerformanceCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->compositePerformanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectionStatusProvider(Lio/sentry/IConnectionStatusProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectionTimeoutMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    .line 2
    .line 3
    return-void
.end method

.method public setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/NoOpContinuousProfiler;->j:Lio/sentry/NoOpContinuousProfiler;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/SentryOptions;->continuousProfiler:Lio/sentry/IContinuousProfiler;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setCron(Lio/sentry/SentryOptions$Cron;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    .line 2
    .line 3
    return-void
.end method

.method public setDateProvider(Lio/sentry/SentryDateProvider;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/util/LazyEvaluator;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDeadlineTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/SentryOptions;->deadlineTimeout:J

    .line 2
    .line 3
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->debug:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->a:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 7
    .line 8
    return-void
.end method

.method public setDefaultScopeType(Lio/sentry/ScopeType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->defaultScopeType:Lio/sentry/ScopeType;

    .line 2
    .line 3
    return-void
.end method

.method public setDiagnosticLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    .line 7
    .line 8
    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDistinctId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDistribution(Lio/sentry/SentryOptions$DistributionOptions;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lio/sentry/SentryOptions$DistributionOptions;

    .line 5
    .line 6
    invoke-direct {p1}, Lio/sentry/SentryOptions$DistributionOptions;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->distribution:Lio/sentry/SentryOptions$DistributionOptions;

    .line 10
    .line 11
    return-void
.end method

.method public setDistributionController(Lio/sentry/IDistributionApi;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/NoOpDistributionApi;->a:Lio/sentry/NoOpDistributionApi;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->distributionController:Lio/sentry/IDistributionApi;

    .line 7
    .line 8
    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lio/sentry/SentryOptions;->parsedDsn:Lio/sentry/util/LazyEvaluator;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/sentry/util/LazyEvaluator;->b()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 20
    .line 21
    sget-object v2, Lio/sentry/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    :try_start_0
    const-string v2, "SHA-1"

    .line 33
    .line 34
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lio/sentry/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Ljava/math/BigInteger;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const/16 v4, 0x10

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_3

    .line 70
    :catchall_0
    move-exception v2

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 75
    .line 76
    const-string v4, "string: %s could not calculate its hash"

    .line 77
    .line 78
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {v1, v3, v4, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 87
    .line 88
    const-string v3, "SHA-1 isn\'t available to calculate the hash."

    .line 89
    .line 90
    invoke-interface {v1, v2, v3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_3
    iput-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    .line 94
    .line 95
    return-void
.end method

.method public setEnableAppStartProfiling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableAutoSessionTracking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableBackpressureHandling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableCacheTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableCacheTracing:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableDatabaseTransactionTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDatabaseTransactionTracing:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableDeduplication(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableEventSizeLimiting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableEventSizeLimiting:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableExternalConfiguration(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnablePrettySerializationOutput(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableQueueTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableQueueTracing:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableScopePersistence(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableScreenTracking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableScreenTracking:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableShutdownHook(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableSpotlight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableTimeToFullDisplayTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableUncaughtExceptionHandler(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableUserInteractionBreadcrumbs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableUserInteractionTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/transport/NoOpEnvelopeCache;->j:Lio/sentry/transport/NoOpEnvelopeCache;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    .line 7
    .line 8
    return-void
.end method

.method public setEnvelopeReader(Lio/sentry/IEnvelopeReader;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lio/sentry/NoOpEnvelopeReader;->a:Lio/sentry/NoOpEnvelopeReader;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/util/LazyEvaluator;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExecutorService(Lio/sentry/ISentryExecutorService;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setFatalLogger(Lio/sentry/ILogger;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lio/sentry/NoOpLogger;->a:Lio/sentry/NoOpLogger;

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->fatalLogger:Lio/sentry/ILogger;

    .line 6
    .line 7
    return-void
.end method

.method public setFeedbackOptions(Lio/sentry/SentryFeedbackOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->feedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 2
    .line 3
    return-void
.end method

.method public setFlushTimeoutMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setForceInit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->forceInit:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFullyDisplayedReporter(Lio/sentry/FullyDisplayedReporter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 2
    .line 3
    return-void
.end method

.method public setGestureTargetLocators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setGlobalHubMode(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->globalHubMode:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setIgnoredCheckIns(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Lio/sentry/FilterString;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 44
    .line 45
    return-void
.end method

.method public setIgnoredErrors(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    new-instance v2, Lio/sentry/FilterString;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredErrors:Ljava/util/List;

    .line 46
    .line 47
    return-void
.end method

.method public setIgnoredSpanOrigins(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    new-instance v2, Lio/sentry/FilterString;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredSpanOrigins:Ljava/util/List;

    .line 46
    .line 47
    return-void
.end method

.method public setIgnoredTransactions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    new-instance v2, Lio/sentry/FilterString;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Lio/sentry/FilterString;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredTransactions:Ljava/util/List;

    .line 46
    .line 47
    return-void
.end method

.method public setInitPriority(Lio/sentry/InitPriority;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->initPriority:Lio/sentry/InitPriority;

    .line 2
    .line 3
    return-void
.end method

.method public setInstrumenter(Lio/sentry/Instrumenter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    .line 2
    .line 3
    return-void
.end method

.method public setLogger(Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lio/sentry/NoOpLogger;->a:Lio/sentry/NoOpLogger;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/sentry/DiagnosticLogger;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lio/sentry/DiagnosticLogger;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ILogger;)V

    .line 9
    .line 10
    .line 11
    move-object p1, v0

    .line 12
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 13
    .line 14
    return-void
.end method

.method public setLogs(Lio/sentry/SentryOptions$Logs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->logs:Lio/sentry/SentryOptions$Logs;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxAttachmentSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxDepth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->maxDepth:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxFeatureFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->maxFeatureFlags:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxSpans(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->maxSpans:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxTraceFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setMetrics(Lio/sentry/SentryOptions$Metrics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->metrics:Lio/sentry/SentryOptions$Metrics;

    .line 2
    .line 3
    return-void
.end method

.method public setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/internal/modules/NoOpModulesLoader;->a:Lio/sentry/internal/modules/NoOpModulesLoader;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    .line 7
    .line 8
    return-void
.end method

.method public setOnDiscard(Lio/sentry/SentryOptions$OnDiscardCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnOversizedEvent(Lio/sentry/SentryOptions$OnOversizedEventCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->openTelemetryMode:Lio/sentry/SentryOpenTelemetryMode;

    .line 2
    .line 3
    return-void
.end method

.method public setOrgId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->orgId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPrintUncaughtStackTrace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 2
    .line 3
    sget-object v0, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 14
    .line 15
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v1, "Profiling lifecycle is set to TRACE but tracing is disabled. Profiling will not be started automatically."

    .line 21
    .line 22
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setProfileSessionSampleRate(Ljava/lang/Double;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/SampleRateUtils;->c(Ljava/lang/Double;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lio/sentry/SentryOptions;->profileSessionSampleRate:Ljava/lang/Double;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "The value "

    .line 12
    .line 13
    const-string v0, " is not valid. Use values between 0.0 and 1.0."

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lio/sentry/d;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setProfilerConverter(Lio/sentry/IProfileConverter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilerConverter:Lio/sentry/IProfileConverter;

    .line 2
    .line 3
    return-void
.end method

.method public setProfilesSampleRate(Ljava/lang/Double;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/SampleRateUtils;->c(Ljava/lang/Double;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "The value "

    .line 12
    .line 13
    const-string v0, " is not valid. Use null to disable or values between 0.0 and 1.0."

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lio/sentry/d;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setProfilesSampler(Lio/sentry/SentryOptions$ProfilesSamplerCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setProfilingTracesDirPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    .line 2
    .line 3
    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPropagateTraceparent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->propagateTraceparent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProxy(Lio/sentry/SentryOptions$Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    .line 2
    .line 3
    return-void
.end method

.method public setReadTimeoutMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    .line 2
    .line 3
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReplayController(Lio/sentry/ReplayController;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/NoOpReplayController;->j:Lio/sentry/NoOpReplayController;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->replayController:Lio/sentry/ReplayController;

    .line 7
    .line 8
    return-void
.end method

.method public setSampleRate(Ljava/lang/Double;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/SampleRateUtils;->c(Ljava/lang/Double;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "The value "

    .line 12
    .line 13
    const-string v0, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lio/sentry/d;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setScopesStorageFactory(Lio/sentry/IScopesStorageFactory;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lio/sentry/SentryReplayOptions;->l:Lio/sentry/protocol/SdkVersion;

    .line 6
    .line 7
    iget-object v1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SdkVersion;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object p1, v0, Lio/sentry/SentryReplayOptions;->l:Lio/sentry/protocol/SdkVersion;

    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 26
    .line 27
    return-void
.end method

.method public setSendClientReports(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lio/sentry/clientreport/ClientReportRecorder;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Lio/sentry/clientreport/NoOpClientReportRecorder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 19
    .line 20
    return-void
.end method

.method public setSendDefaultPii(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSendModules(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendModules:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSentryClientName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSerializer(Lio/sentry/ISerializer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lio/sentry/NoOpSerializer;->a:Lio/sentry/NoOpSerializer;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/util/LazyEvaluator;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionFlushTimeoutMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setSessionReplay(Lio/sentry/SentryReplayOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->sessionReplay:Lio/sentry/SentryReplayOptions;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionTrackingIntervalMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setShutdownTimeoutMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    .line 2
    .line 3
    return-void
.end method

.method public setSocketTagger(Lio/sentry/ISocketTagger;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/NoOpSocketTagger;->a:Lio/sentry/NoOpSocketTagger;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->socketTagger:Lio/sentry/ISocketTagger;

    .line 7
    .line 8
    return-void
.end method

.method public setSpanFactory(Lio/sentry/ISpanFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->spanFactory:Lio/sentry/ISpanFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setSpotlightConnectionUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setStartProfilerOnAppStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->startProfilerOnAppStart:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStrictTraceContinuation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->strictTraceContinuation:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setThreadChecker(Lio/sentry/util/thread/IThreadChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->threadChecker:Lio/sentry/util/thread/IThreadChecker;

    .line 2
    .line 3
    return-void
.end method

.method public setTraceOptionsRequests(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTracePropagationTargets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 39
    .line 40
    return-void
.end method

.method public setTraceSampling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTracesSampleRate(Ljava/lang/Double;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/SampleRateUtils;->c(Ljava/lang/Double;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "The value "

    .line 12
    .line 13
    const-string v0, " is not valid. Use null to disable or values between 0.0 and 1.0."

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lio/sentry/d;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setTracesSampler(Lio/sentry/SentryOptions$TracesSamplerCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/NoOpTransactionProfiler;->a:Lio/sentry/NoOpTransactionProfiler;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setTransportFactory(Lio/sentry/ITransportFactory;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/NoOpTransportFactory;->a:Lio/sentry/NoOpTransportFactory;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    .line 7
    .line 8
    return-void
.end method

.method public setTransportGate(Lio/sentry/transport/ITransportGate;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/sentry/transport/NoOpTransportGate;->a:Lio/sentry/transport/NoOpTransportGate;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    .line 7
    .line 8
    return-void
.end method

.method public setVersionDetector(Lio/sentry/IVersionDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryOptions;->versionDetector:Lio/sentry/IVersionDetector;

    .line 2
    .line 3
    return-void
.end method

.method public setViewHierarchyExporters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
