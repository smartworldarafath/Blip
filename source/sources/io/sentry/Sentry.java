package io.sentry;

import defpackage.fe;
import defpackage.u2;
import io.sentry.SentryOptions;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.backpressure.BackpressureMonitor;
import io.sentry.backpressure.NoOpBackpressureMonitor;
import io.sentry.cache.EnvelopeCache;
import io.sentry.cache.IEnvelopeCache;
import io.sentry.config.PropertiesProvider;
import io.sentry.config.PropertiesProviderFactory;
import io.sentry.internal.debugmeta.NoOpDebugMetaLoader;
import io.sentry.internal.debugmeta.ResourcesDebugMetaLoader;
import io.sentry.internal.modules.CompositeModulesLoader;
import io.sentry.internal.modules.IModulesLoader;
import io.sentry.internal.modules.ManifestModulesLoader;
import io.sentry.internal.modules.NoOpModulesLoader;
import io.sentry.internal.modules.ResourcesModulesLoader;
import io.sentry.profiling.JavaContinuousProfilerProvider;
import io.sentry.profiling.JavaProfileConverterProvider;
import io.sentry.transport.NoOpEnvelopeCache;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.InitUtil;
import io.sentry.util.LoadClass;
import io.sentry.util.Platform;
import io.sentry.util.SpanUtils;
import io.sentry.util.thread.NoOpThreadChecker;
import io.sentry.util.thread.ThreadChecker;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Queue;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Sentry {
    public static volatile IScopesStorage a = NoOpScopesStorage.a;
    public static volatile IScopes b = NoOpScopes.b;
    public static final Scope c = new Scope(SentryOptions.empty());
    public static volatile boolean d = false;
    public static final Charset e = Charset.forName("UTF-8");
    public static final long f = System.currentTimeMillis();
    public static final AutoClosableReentrantLock g = new ReentrantLock();

    public static void a() {
        ISentryLifecycleToken a2 = g.a();
        try {
            IScopes b2 = b();
            b = NoOpScopes.b;
            a.close();
            b2.b(false);
            a2.close();
        } catch (Throwable th) {
            try {
                a2.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static IScopes b() {
        if (d) {
            return b;
        }
        IScopes iScopes = a.get();
        if (iScopes != null && !iScopes.q()) {
            return iScopes;
        }
        IScopes v = b.v("getCurrentScopes");
        a.a(v);
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.Object, io.sentry.ILogger] */
    /* JADX WARN: Type inference failed for: r9v31, types: [java.lang.Object, io.sentry.ILogger] */
    public static void c(OptionsContainer optionsContainer, io.sentry.android.core.f fVar) {
        boolean z;
        SentryOptions sentryOptions = (SentryOptions) SentryAndroidOptions.class.getDeclaredConstructor(null).newInstance(null);
        try {
            fVar.a(sentryOptions);
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Error in the 'OptionsConfiguration.configure' callback.", th);
        }
        ISentryLifecycleToken a2 = g.a();
        try {
            if (!sentryOptions.getClass().getName().equals("io.sentry.android.core.SentryAndroidOptions") && Platform.a) {
                throw new IllegalArgumentException("You are running Android. Please, use SentryAndroid.init. ".concat(sentryOptions.getClass().getName()));
            }
            if (f(sentryOptions)) {
                Boolean isGlobalHubMode = sentryOptions.isGlobalHubMode();
                int i = 1;
                if (isGlobalHubMode != null) {
                    z = isGlobalHubMode.booleanValue();
                } else {
                    z = true;
                }
                sentryOptions.getLogger().c(SentryLevel.INFO, "GlobalHubMode: '%s'", String.valueOf(z));
                d = z;
                if (sentryOptions.getFatalLogger() instanceof NoOpLogger) {
                    sentryOptions.setFatalLogger(new Object());
                }
                Scope scope = c;
                int i2 = 0;
                if (InitUtil.a(scope.m, sentryOptions, b().isEnabled())) {
                    if (b().isEnabled()) {
                        sentryOptions.getLogger().c(SentryLevel.WARNING, "Sentry has been already initialized. Previous configuration will be overwritten.", new Object[0]);
                    }
                    sentryOptions.activate();
                    b().b(true);
                    scope.m = sentryOptions;
                    Queue queue = scope.h;
                    scope.h = Scope.e(sentryOptions.getMaxBreadcrumbs());
                    Iterator it = queue.iterator();
                    while (it.hasNext()) {
                        scope.a((Breadcrumb) it.next(), null);
                    }
                    b = new Scopes(new Scope(sentryOptions), new Scope(sentryOptions), scope);
                    if (sentryOptions.isDebug() && (sentryOptions.getLogger() instanceof NoOpLogger)) {
                        sentryOptions.setLogger(new Object());
                    }
                    e(sentryOptions);
                    a.a(b);
                    d(sentryOptions);
                    scope.v = new SentryClient(sentryOptions);
                    if (sentryOptions.getExecutorService().isClosed()) {
                        sentryOptions.setExecutorService(new SentryExecutorService(sentryOptions));
                        sentryOptions.getExecutorService().b();
                    }
                    try {
                        sentryOptions.getExecutorService().submit(new f(sentryOptions, i2));
                    } catch (RejectedExecutionException e2) {
                        sentryOptions.getLogger().b(SentryLevel.DEBUG, "Failed to call the executor. Lazy fields will not be loaded. Did you call Sentry.close()?", e2);
                    }
                    try {
                        sentryOptions.getExecutorService().submit(new MovePreviousSession(sentryOptions));
                    } catch (Throwable th2) {
                        sentryOptions.getLogger().b(SentryLevel.DEBUG, "Failed to move previous session.", th2);
                    }
                    for (Integration integration : sentryOptions.getIntegrations()) {
                        try {
                            integration.E(sentryOptions);
                        } catch (Throwable th3) {
                            sentryOptions.getLogger().b(SentryLevel.WARNING, "Failed to register the integration " + integration.getClass().getName(), th3);
                        }
                    }
                    try {
                        sentryOptions.getExecutorService().submit(new f(sentryOptions, 2));
                    } catch (Throwable th4) {
                        sentryOptions.getLogger().b(SentryLevel.DEBUG, "Failed to notify options observers.", th4);
                    }
                    try {
                        sentryOptions.getExecutorService().submit(new PreviousSessionFinalizer(sentryOptions));
                    } catch (Throwable th5) {
                        sentryOptions.getLogger().b(SentryLevel.DEBUG, "Failed to finalize previous session.", th5);
                    }
                    try {
                        sentryOptions.getExecutorService().submit(new f(sentryOptions, i));
                    } catch (Throwable th6) {
                        sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to call the executor. App start profiling config will not be changed. Did you call Sentry.close()?", th6);
                    }
                    ILogger logger = sentryOptions.getLogger();
                    SentryLevel sentryLevel = SentryLevel.DEBUG;
                    logger.c(sentryLevel, "Using openTelemetryMode %s", sentryOptions.getOpenTelemetryMode());
                    sentryOptions.getLogger().c(sentryLevel, "Using span factory %s", sentryOptions.getSpanFactory().getClass().getName());
                    sentryOptions.getLogger().c(sentryLevel, "Using scopes storage %s", a.getClass().getName());
                } else {
                    sentryOptions.getLogger().c(SentryLevel.WARNING, "This init call has been ignored due to priority being too low.", new Object[0]);
                }
            }
            a2.close();
        } catch (Throwable th7) {
            try {
                a2.close();
            } catch (Throwable th8) {
                th7.addSuppressed(th8);
            }
            throw th7;
        }
    }

    public static void d(SentryOptions sentryOptions) {
        ILogger logger;
        Object obj;
        IEnvelopeCache envelopeCache;
        ILogger logger2 = sentryOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.INFO;
        logger2.c(sentryLevel, "Initializing SDK with DSN: '%s'", sentryOptions.getDsn());
        String outboxPath = sentryOptions.getOutboxPath();
        int i = 0;
        if (outboxPath != null) {
            new File(outboxPath).mkdirs();
        } else {
            logger2.c(sentryLevel, "No outbox dir path is defined in options.", new Object[0]);
        }
        String cacheDirPath = sentryOptions.getCacheDirPath();
        if (cacheDirPath != null) {
            new File(cacheDirPath).mkdirs();
            if (sentryOptions.getEnvelopeDiskCache() instanceof NoOpEnvelopeCache) {
                int i2 = EnvelopeCache.s;
                String cacheDirPath2 = sentryOptions.getCacheDirPath();
                int maxCacheItems = sentryOptions.getMaxCacheItems();
                if (cacheDirPath2 == null) {
                    sentryOptions.getLogger().c(SentryLevel.WARNING, "cacheDirPath is null, returning NoOpEnvelopeCache", new Object[0]);
                    envelopeCache = NoOpEnvelopeCache.j;
                } else {
                    envelopeCache = new EnvelopeCache(sentryOptions, cacheDirPath2, maxCacheItems);
                }
                sentryOptions.setEnvelopeDiskCache(envelopeCache);
            }
        }
        String profilingTracesDirPath = sentryOptions.getProfilingTracesDirPath();
        if ((sentryOptions.isProfilingEnabled() || sentryOptions.isContinuousProfilingEnabled()) && profilingTracesDirPath != null) {
            File file = new File(profilingTracesDirPath);
            file.mkdirs();
            try {
                sentryOptions.getExecutorService().submit(new g(i, file));
            } catch (RejectedExecutionException e2) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to call the executor. Old profiles will not be deleted. Did you call Sentry.close()?", e2);
            }
        }
        IModulesLoader modulesLoader = sentryOptions.getModulesLoader();
        if (!sentryOptions.isSendModules()) {
            sentryOptions.setModulesLoader(NoOpModulesLoader.a);
        } else if (modulesLoader instanceof NoOpModulesLoader) {
            sentryOptions.setModulesLoader(new CompositeModulesLoader(Arrays.asList(new ManifestModulesLoader(sentryOptions.getLogger()), new ResourcesModulesLoader(sentryOptions.getLogger())), sentryOptions.getLogger()));
        }
        if (sentryOptions.getDebugMetaLoader() instanceof NoOpDebugMetaLoader) {
            sentryOptions.setDebugMetaLoader(new ResourcesDebugMetaLoader(sentryOptions.getLogger()));
        }
        List<Properties> a2 = sentryOptions.getDebugMetaLoader().a();
        if (a2 != null) {
            if (sentryOptions.getBundleIds().isEmpty()) {
                Iterator it = a2.iterator();
                while (it.hasNext()) {
                    String property = ((Properties) it.next()).getProperty("io.sentry.bundle-ids");
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Bundle IDs found: %s", property);
                    if (property != null) {
                        for (String str : property.split(",", -1)) {
                            sentryOptions.addBundleId(str);
                        }
                    }
                }
            }
            if (sentryOptions.getProguardUuid() == null) {
                Iterator it2 = a2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    String property2 = ((Properties) it2.next()).getProperty("io.sentry.ProguardUuids");
                    if (property2 != null) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Proguard UUID found: %s", property2);
                        sentryOptions.setProguardUuid(property2);
                        break;
                    }
                }
            }
            Iterator it3 = a2.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Properties properties = (Properties) it3.next();
                String property3 = properties.getProperty("io.sentry.build-tool");
                if (property3 != null) {
                    String property4 = properties.getProperty("io.sentry.build-tool-version");
                    if (property4 == null) {
                        property4 = "unknown";
                    }
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Build tool found: %s, version %s", property3, property4);
                    SentryIntegrationPackageStorage.d().b(property3, property4);
                }
            }
            for (Properties properties2 : a2) {
                String property5 = properties2.getProperty("io.sentry.distribution.org-slug");
                String property6 = properties2.getProperty("io.sentry.distribution.project-slug");
                String property7 = properties2.getProperty("io.sentry.distribution.auth-token");
                String property8 = properties2.getProperty("io.sentry.distribution.build-configuration");
                String property9 = properties2.getProperty("io.sentry.distribution.install-groups-override");
                if (property5 != null || property6 != null || property7 != null || property8 != null || property9 != null) {
                    SentryOptions.DistributionOptions distribution = sentryOptions.getDistribution();
                    if (property5 != null && !property5.isEmpty() && distribution.b.isEmpty()) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Distribution org slug found: %s", property5);
                        distribution.b = property5;
                    }
                    if (property6 != null && !property6.isEmpty() && distribution.c.isEmpty()) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Distribution project slug found: %s", property6);
                        distribution.c = property6;
                    }
                    if (property7 != null && !property7.isEmpty() && distribution.a.isEmpty()) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Distribution org auth token found", new Object[0]);
                        distribution.a = property7;
                    }
                    if (property8 != null && !property8.isEmpty() && distribution.d == null) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Distribution build configuration found: %s", property8);
                        distribution.d = property8;
                    }
                    if (property9 != null && !property9.isEmpty() && distribution.e == null) {
                        String[] split = property9.split(",", -1);
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : split) {
                            String trim = str2.trim();
                            if (!trim.isEmpty()) {
                                arrayList.add(trim);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Distribution install groups override found: %s", arrayList);
                            distribution.e = arrayList;
                        }
                    }
                }
            }
        }
        if (sentryOptions.getThreadChecker() instanceof NoOpThreadChecker) {
            sentryOptions.setThreadChecker(ThreadChecker.b);
        }
        if (sentryOptions.getPerformanceCollectors().isEmpty()) {
            sentryOptions.addPerformanceCollector(new JavaMemoryCollector());
        }
        if (sentryOptions.isEnableBackpressureHandling() && !Platform.a) {
            if (sentryOptions.getBackpressureMonitor() instanceof NoOpBackpressureMonitor) {
                sentryOptions.setBackpressureMonitor(new BackpressureMonitor(sentryOptions));
            }
            sentryOptions.getBackpressureMonitor().start();
        }
        Object obj2 = null;
        if (!Platform.a && sentryOptions.isContinuousProfilingEnabled() && (sentryOptions.getContinuousProfiler() instanceof NoOpContinuousProfiler)) {
            try {
                if (sentryOptions.getProfilingTracesDirPath() == null) {
                    File file2 = new File(System.getProperty("java.io.tmpdir"), "sentry_profiling_traces");
                    if (!file2.mkdirs() && !file2.exists()) {
                        fe.w(file2.getAbsolutePath(), "Creating a fallback directory for profiling failed in ");
                    }
                    sentryOptions.setProfilingTracesDirPath(file2.getAbsolutePath());
                }
                logger = sentryOptions.getLogger();
                sentryOptions.getProfilingTracesHz();
                sentryOptions.getExecutorService();
                try {
                    Iterator it4 = ServiceLoader.load(JavaContinuousProfilerProvider.class).iterator();
                    if (it4.hasNext()) {
                        obj = it4.next();
                    } else {
                        obj = null;
                    }
                } catch (Throwable th) {
                    logger.b(SentryLevel.ERROR, "Failed to load continuous profiler provider, using NoOpContinuousProfiler", th);
                }
            } catch (Exception e3) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to create default profiling traces directory", e3);
            }
            if (obj == null) {
                logger.c(SentryLevel.DEBUG, "No continuous profiler provider found, using NoOpContinuousProfiler", new Object[0]);
                sentryOptions.getLogger().c(SentryLevel.WARNING, "Could not load profiler, profiling will be disabled. If you are using Spring or Spring Boot with the OTEL Agent profiler init will be retried.", new Object[0]);
                sentryOptions.getContinuousProfiler();
            } else {
                throw new ClassCastException();
            }
        } else {
            sentryOptions.getContinuousProfiler();
        }
        if (!Platform.a && sentryOptions.isContinuousProfilingEnabled() && (sentryOptions.getProfilerConverter() instanceof NoOpProfileConverter)) {
            ILogger logger3 = c.m.getLogger();
            try {
                Iterator it5 = ServiceLoader.load(JavaProfileConverterProvider.class).iterator();
                if (it5.hasNext()) {
                    obj2 = it5.next();
                }
            } catch (Throwable th2) {
                logger3.b(SentryLevel.ERROR, "Failed to load profile converter provider, using NoOpProfileConverter", th2);
            }
            if (obj2 == null) {
                logger3.c(SentryLevel.DEBUG, "No profile converter provider found, using NoOpProfileConverter", new Object[0]);
                sentryOptions.getLogger().c(SentryLevel.WARNING, "Could not load profile converter. If you are using Spring or Spring Boot with the OTEL Agent, profile converter init will be retried.", new Object[0]);
                sentryOptions.getProfilerConverter();
            } else {
                throw new ClassCastException();
            }
        } else {
            sentryOptions.getProfilerConverter();
        }
        sentryOptions.getLogger().c(SentryLevel.INFO, "Continuous profiler is enabled %s mode: %s", Boolean.valueOf(sentryOptions.isContinuousProfilingEnabled()), sentryOptions.getProfileLifecycle());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [io.sentry.IScopesStorage, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [io.sentry.IScopesStorage] */
    /* JADX WARN: Type inference failed for: r3v26, types: [io.sentry.ISpanFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [io.sentry.SentryOptions] */
    public static void e(SentryOptions sentryOptions) {
        ?? r0;
        Class c2;
        Object newInstance;
        List list;
        NoOpLogger noOpLogger = NoOpLogger.a;
        boolean z = Platform.a;
        if (!z) {
            if (SentryOpenTelemetryMode.AUTO.equals(sentryOptions.getOpenTelemetryMode())) {
                if (LoadClass.b("io.sentry.opentelemetry.agent.AgentMarker", noOpLogger)) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "openTelemetryMode has been inferred from AUTO to AGENT", new Object[0]);
                    sentryOptions.setOpenTelemetryMode(SentryOpenTelemetryMode.AGENT);
                } else if (LoadClass.b("io.sentry.opentelemetry.agent.AgentlessMarker", noOpLogger)) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "openTelemetryMode has been inferred from AUTO to AGENTLESS", new Object[0]);
                    sentryOptions.setOpenTelemetryMode(SentryOpenTelemetryMode.AGENTLESS);
                } else if (LoadClass.b("io.sentry.opentelemetry.agent.AgentlessSpringMarker", noOpLogger)) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "openTelemetryMode has been inferred from AUTO to AGENTLESS_SPRING", new Object[0]);
                    sentryOptions.setOpenTelemetryMode(SentryOpenTelemetryMode.AGENTLESS_SPRING);
                }
            }
        }
        SentryOpenTelemetryMode sentryOpenTelemetryMode = SentryOpenTelemetryMode.OFF;
        if (sentryOpenTelemetryMode == sentryOptions.getOpenTelemetryMode()) {
            sentryOptions.setSpanFactory(new Object());
        }
        a.close();
        sentryOptions.getScopesStorageFactory();
        if (sentryOpenTelemetryMode == sentryOptions.getOpenTelemetryMode()) {
            a = new Object();
        } else {
            if (!z && LoadClass.b("io.sentry.opentelemetry.OtelContextScopesStorage", noOpLogger) && (c2 = LoadClass.c("io.sentry.opentelemetry.OtelContextScopesStorage", noOpLogger)) != null) {
                try {
                    newInstance = c2.getDeclaredConstructor(null).newInstance(null);
                } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
                }
                if (newInstance != null && (newInstance instanceof IScopesStorage)) {
                    r0 = (IScopesStorage) newInstance;
                    a = r0;
                }
            }
            r0 = new Object();
            a = r0;
        }
        if (!Platform.a) {
            SentryOpenTelemetryMode openTelemetryMode = sentryOptions.getOpenTelemetryMode();
            if (SentryOpenTelemetryMode.OFF.equals(openTelemetryMode)) {
                list = Collections.EMPTY_LIST;
            } else {
                ConcurrentHashMap concurrentHashMap = SpanUtils.a;
                ArrayList arrayList = new ArrayList();
                SentryOpenTelemetryMode sentryOpenTelemetryMode2 = SentryOpenTelemetryMode.AGENT;
                if (sentryOpenTelemetryMode2 == openTelemetryMode || SentryOpenTelemetryMode.AGENTLESS_SPRING == openTelemetryMode) {
                    arrayList.add("auto.http.spring_jakarta.webmvc");
                    arrayList.add("auto.http.spring.webmvc");
                    arrayList.add("auto.http.spring7.webmvc");
                    arrayList.add("auto.spring_jakarta.webflux");
                    arrayList.add("auto.spring.webflux");
                    arrayList.add("auto.spring7.webflux");
                    arrayList.add("auto.db.jdbc");
                    arrayList.add("auto.http.spring_jakarta.webclient");
                    arrayList.add("auto.http.spring.webclient");
                    arrayList.add("auto.http.spring7.webclient");
                    arrayList.add("auto.http.spring_jakarta.restclient");
                    arrayList.add("auto.http.spring.restclient");
                    arrayList.add("auto.http.spring7.restclient");
                    arrayList.add("auto.http.spring_jakarta.resttemplate");
                    arrayList.add("auto.http.spring.resttemplate");
                    arrayList.add("auto.http.spring7.resttemplate");
                    arrayList.add("auto.http.openfeign");
                    arrayList.add("auto.http.ktor-client");
                    arrayList.add("auto.queue.spring_jakarta.kafka.producer");
                    arrayList.add("auto.queue.spring_jakarta.kafka.consumer");
                    arrayList.add("auto.queue.kafka.producer");
                    arrayList.add("auto.queue.kafka.consumer");
                }
                if (sentryOpenTelemetryMode2 == openTelemetryMode) {
                    arrayList.add("auto.graphql.graphql");
                    arrayList.add("auto.graphql.graphql22");
                }
                list = arrayList;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                sentryOptions.addIgnoredSpanOrigin((String) it.next());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x031e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c4 A[LOOP:0: B:16:0x00be->B:18:0x00c4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011a A[LOOP:1: B:26:0x0114->B:28:0x011a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0136 A[LOOP:2: B:31:0x0130->B:33:0x0136, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0197 A[LOOP:4: B:58:0x0191->B:60:0x0197, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bb A[LOOP:5: B:63:0x01b5->B:65:0x01bb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02dd A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r8v0, types: [io.sentry.SentryOptions$Cron, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v2, types: [io.sentry.SentryOptions$Proxy, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean f(SentryOptions sentryOptions) {
        Double valueOf;
        String property;
        Double valueOf2;
        String property2;
        Double valueOf3;
        String property3;
        String property4;
        String property5;
        Iterator it;
        Iterator it2;
        List<String> list;
        Iterator it3;
        Iterator it4;
        String property6;
        List list2;
        String property7;
        List list3;
        String property8;
        List list4;
        Long b2;
        Long b3;
        String property9;
        Long b4;
        Long b5;
        String property10;
        String property11;
        if (sentryOptions.isEnableExternalConfiguration()) {
            PropertiesProvider a2 = PropertiesProviderFactory.a();
            ILogger logger = sentryOptions.getLogger();
            ExternalOptions externalOptions = new ExternalOptions();
            externalOptions.a = a2.getProperty("dsn");
            externalOptions.b = a2.getProperty("environment");
            externalOptions.c = a2.getProperty("release");
            externalOptions.d = a2.getProperty("dist");
            externalOptions.e = a2.getProperty("servername");
            externalOptions.f = a2.a("uncaught.handler.enabled");
            externalOptions.y = a2.a("uncaught.handler.print-stacktrace");
            String property12 = a2.getProperty("sample-rate");
            Double d2 = null;
            if (property12 != null) {
                try {
                    valueOf = Double.valueOf(property12);
                } catch (NumberFormatException unused) {
                }
                externalOptions.i = valueOf;
                property = a2.getProperty("traces-sample-rate");
                if (property != null) {
                    try {
                        valueOf2 = Double.valueOf(property);
                    } catch (NumberFormatException unused2) {
                    }
                    externalOptions.j = valueOf2;
                    property2 = a2.getProperty("profiles-sample-rate");
                    if (property2 != null) {
                        try {
                            valueOf3 = Double.valueOf(property2);
                        } catch (NumberFormatException unused3) {
                        }
                        externalOptions.k = valueOf3;
                        externalOptions.g = a2.a("debug");
                        externalOptions.h = a2.a("enable-deduplication");
                        externalOptions.z = a2.a("send-client-reports");
                        externalOptions.Q = a2.a("force-init");
                        property3 = a2.getProperty("max-request-body-size");
                        if (property3 != null) {
                            externalOptions.l = SentryOptions.RequestSize.valueOf(property3.toUpperCase(Locale.ROOT));
                        }
                        for (Map.Entry entry : ((ConcurrentHashMap) a2.c()).entrySet()) {
                            externalOptions.m.put((String) entry.getKey(), (String) entry.getValue());
                        }
                        property4 = a2.getProperty("proxy.host");
                        String property13 = a2.getProperty("proxy.user");
                        String property14 = a2.getProperty("proxy.pass");
                        property5 = a2.getProperty("proxy.port");
                        if (property5 == null) {
                            property5 = "80";
                        }
                        if (property4 != null) {
                            ?? obj = new Object();
                            obj.a = property4;
                            obj.b = property5;
                            obj.c = property13;
                            obj.d = property14;
                            externalOptions.n = obj;
                        }
                        it = a2.d("in-app-includes").iterator();
                        while (it.hasNext()) {
                            externalOptions.p.add((String) it.next());
                        }
                        it2 = a2.d("in-app-excludes").iterator();
                        while (it2.hasNext()) {
                            externalOptions.o.add((String) it2.next());
                        }
                        if (a2.getProperty("trace-propagation-targets") == null) {
                            list = a2.d("trace-propagation-targets");
                        } else {
                            list = null;
                        }
                        if (list == null && a2.getProperty("tracing-origins") != null) {
                            list = a2.d("tracing-origins");
                        }
                        if (list != null) {
                            for (String str : list) {
                                if (externalOptions.q == null) {
                                    externalOptions.q = new CopyOnWriteArrayList();
                                }
                                if (!str.isEmpty()) {
                                    externalOptions.q.add(str);
                                }
                            }
                        }
                        it3 = a2.d("context-tags").iterator();
                        while (it3.hasNext()) {
                            externalOptions.r.add((String) it3.next());
                        }
                        externalOptions.s = a2.getProperty("proguard-uuid");
                        it4 = a2.d("bundle-ids").iterator();
                        while (it4.hasNext()) {
                            externalOptions.A.add((String) it4.next());
                        }
                        externalOptions.t = a2.b("idle-timeout");
                        externalOptions.u = a2.b("shutdown-timeout-millis");
                        externalOptions.v = a2.b("session-flush-timeout-millis");
                        property6 = a2.getProperty("ignored-errors");
                        if (property6 == null) {
                            list2 = Arrays.asList(property6.split(","));
                        } else {
                            list2 = null;
                        }
                        externalOptions.x = list2;
                        externalOptions.B = a2.a("enabled");
                        externalOptions.C = a2.a("enable-pretty-serialization-output");
                        externalOptions.J = a2.a("send-modules");
                        externalOptions.K = a2.a("send-default-pii");
                        property7 = a2.getProperty("ignored-checkins");
                        if (property7 == null) {
                            list3 = Arrays.asList(property7.split(","));
                        } else {
                            list3 = null;
                        }
                        externalOptions.H = list3;
                        property8 = a2.getProperty("ignored-transactions");
                        if (property8 == null) {
                            list4 = Arrays.asList(property8.split(","));
                        } else {
                            list4 = null;
                        }
                        externalOptions.I = list4;
                        externalOptions.L = a2.a("enable-backpressure-handling");
                        externalOptions.M = a2.a("enable-database-transaction-tracing");
                        externalOptions.N = a2.a("enable-cache-tracing");
                        externalOptions.O = a2.a("enable-queue-tracing");
                        externalOptions.P = a2.a("global-hub-mode");
                        externalOptions.R = a2.a("capture-open-telemetry-events");
                        externalOptions.E = a2.a("logs.enabled");
                        externalOptions.F = a2.a("metrics.enabled");
                        for (String str2 : a2.d("ignored-exceptions-for-type")) {
                            try {
                                Class<?> cls = Class.forName(str2);
                                if (Throwable.class.isAssignableFrom(cls)) {
                                    externalOptions.w.add(cls);
                                } else {
                                    logger.c(SentryLevel.WARNING, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable", str2, str2);
                                }
                            } catch (ClassNotFoundException unused4) {
                                logger.c(SentryLevel.WARNING, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found", str2, str2);
                            }
                        }
                        b2 = a2.b("cron.default-checkin-margin");
                        b3 = a2.b("cron.default-max-runtime");
                        property9 = a2.getProperty("cron.default-timezone");
                        b4 = a2.b("cron.default-failure-issue-threshold");
                        b5 = a2.b("cron.default-recovery-threshold");
                        if (b2 == null || b3 != null || property9 != null || b4 != null || b5 != null) {
                            ?? obj2 = new Object();
                            obj2.a = b2;
                            obj2.b = b3;
                            obj2.c = property9;
                            obj2.d = b4;
                            obj2.e = b5;
                            externalOptions.X = obj2;
                        }
                        externalOptions.V = a2.a("enable-strict-trace-continuation");
                        externalOptions.W = a2.getProperty("org-id");
                        externalOptions.D = a2.a("enable-spotlight");
                        externalOptions.G = a2.getProperty("spotlight-connection-url");
                        property10 = a2.getProperty("profile-session-sample-rate");
                        if (property10 != null) {
                            try {
                                d2 = Double.valueOf(property10);
                            } catch (NumberFormatException unused5) {
                            }
                        }
                        externalOptions.S = d2;
                        externalOptions.T = a2.getProperty("profiling-traces-dir-path");
                        property11 = a2.getProperty("profile-lifecycle");
                        if (property11 != null && !property11.isEmpty()) {
                            externalOptions.U = ProfileLifecycle.valueOf(property11.toUpperCase());
                        }
                        sentryOptions.merge(externalOptions);
                    }
                    valueOf3 = null;
                    externalOptions.k = valueOf3;
                    externalOptions.g = a2.a("debug");
                    externalOptions.h = a2.a("enable-deduplication");
                    externalOptions.z = a2.a("send-client-reports");
                    externalOptions.Q = a2.a("force-init");
                    property3 = a2.getProperty("max-request-body-size");
                    if (property3 != null) {
                    }
                    while (r3.hasNext()) {
                    }
                    property4 = a2.getProperty("proxy.host");
                    String property132 = a2.getProperty("proxy.user");
                    String property142 = a2.getProperty("proxy.pass");
                    property5 = a2.getProperty("proxy.port");
                    if (property5 == null) {
                    }
                    if (property4 != null) {
                    }
                    it = a2.d("in-app-includes").iterator();
                    while (it.hasNext()) {
                    }
                    it2 = a2.d("in-app-excludes").iterator();
                    while (it2.hasNext()) {
                    }
                    if (a2.getProperty("trace-propagation-targets") == null) {
                    }
                    if (list == null) {
                        list = a2.d("tracing-origins");
                    }
                    if (list != null) {
                    }
                    it3 = a2.d("context-tags").iterator();
                    while (it3.hasNext()) {
                    }
                    externalOptions.s = a2.getProperty("proguard-uuid");
                    it4 = a2.d("bundle-ids").iterator();
                    while (it4.hasNext()) {
                    }
                    externalOptions.t = a2.b("idle-timeout");
                    externalOptions.u = a2.b("shutdown-timeout-millis");
                    externalOptions.v = a2.b("session-flush-timeout-millis");
                    property6 = a2.getProperty("ignored-errors");
                    if (property6 == null) {
                    }
                    externalOptions.x = list2;
                    externalOptions.B = a2.a("enabled");
                    externalOptions.C = a2.a("enable-pretty-serialization-output");
                    externalOptions.J = a2.a("send-modules");
                    externalOptions.K = a2.a("send-default-pii");
                    property7 = a2.getProperty("ignored-checkins");
                    if (property7 == null) {
                    }
                    externalOptions.H = list3;
                    property8 = a2.getProperty("ignored-transactions");
                    if (property8 == null) {
                    }
                    externalOptions.I = list4;
                    externalOptions.L = a2.a("enable-backpressure-handling");
                    externalOptions.M = a2.a("enable-database-transaction-tracing");
                    externalOptions.N = a2.a("enable-cache-tracing");
                    externalOptions.O = a2.a("enable-queue-tracing");
                    externalOptions.P = a2.a("global-hub-mode");
                    externalOptions.R = a2.a("capture-open-telemetry-events");
                    externalOptions.E = a2.a("logs.enabled");
                    externalOptions.F = a2.a("metrics.enabled");
                    while (r3.hasNext()) {
                    }
                    b2 = a2.b("cron.default-checkin-margin");
                    b3 = a2.b("cron.default-max-runtime");
                    property9 = a2.getProperty("cron.default-timezone");
                    b4 = a2.b("cron.default-failure-issue-threshold");
                    b5 = a2.b("cron.default-recovery-threshold");
                    if (b2 == null) {
                    }
                    ?? obj22 = new Object();
                    obj22.a = b2;
                    obj22.b = b3;
                    obj22.c = property9;
                    obj22.d = b4;
                    obj22.e = b5;
                    externalOptions.X = obj22;
                    externalOptions.V = a2.a("enable-strict-trace-continuation");
                    externalOptions.W = a2.getProperty("org-id");
                    externalOptions.D = a2.a("enable-spotlight");
                    externalOptions.G = a2.getProperty("spotlight-connection-url");
                    property10 = a2.getProperty("profile-session-sample-rate");
                    if (property10 != null) {
                    }
                    externalOptions.S = d2;
                    externalOptions.T = a2.getProperty("profiling-traces-dir-path");
                    property11 = a2.getProperty("profile-lifecycle");
                    if (property11 != null) {
                        externalOptions.U = ProfileLifecycle.valueOf(property11.toUpperCase());
                    }
                    sentryOptions.merge(externalOptions);
                }
                valueOf2 = null;
                externalOptions.j = valueOf2;
                property2 = a2.getProperty("profiles-sample-rate");
                if (property2 != null) {
                }
                valueOf3 = null;
                externalOptions.k = valueOf3;
                externalOptions.g = a2.a("debug");
                externalOptions.h = a2.a("enable-deduplication");
                externalOptions.z = a2.a("send-client-reports");
                externalOptions.Q = a2.a("force-init");
                property3 = a2.getProperty("max-request-body-size");
                if (property3 != null) {
                }
                while (r3.hasNext()) {
                }
                property4 = a2.getProperty("proxy.host");
                String property1322 = a2.getProperty("proxy.user");
                String property1422 = a2.getProperty("proxy.pass");
                property5 = a2.getProperty("proxy.port");
                if (property5 == null) {
                }
                if (property4 != null) {
                }
                it = a2.d("in-app-includes").iterator();
                while (it.hasNext()) {
                }
                it2 = a2.d("in-app-excludes").iterator();
                while (it2.hasNext()) {
                }
                if (a2.getProperty("trace-propagation-targets") == null) {
                }
                if (list == null) {
                }
                if (list != null) {
                }
                it3 = a2.d("context-tags").iterator();
                while (it3.hasNext()) {
                }
                externalOptions.s = a2.getProperty("proguard-uuid");
                it4 = a2.d("bundle-ids").iterator();
                while (it4.hasNext()) {
                }
                externalOptions.t = a2.b("idle-timeout");
                externalOptions.u = a2.b("shutdown-timeout-millis");
                externalOptions.v = a2.b("session-flush-timeout-millis");
                property6 = a2.getProperty("ignored-errors");
                if (property6 == null) {
                }
                externalOptions.x = list2;
                externalOptions.B = a2.a("enabled");
                externalOptions.C = a2.a("enable-pretty-serialization-output");
                externalOptions.J = a2.a("send-modules");
                externalOptions.K = a2.a("send-default-pii");
                property7 = a2.getProperty("ignored-checkins");
                if (property7 == null) {
                }
                externalOptions.H = list3;
                property8 = a2.getProperty("ignored-transactions");
                if (property8 == null) {
                }
                externalOptions.I = list4;
                externalOptions.L = a2.a("enable-backpressure-handling");
                externalOptions.M = a2.a("enable-database-transaction-tracing");
                externalOptions.N = a2.a("enable-cache-tracing");
                externalOptions.O = a2.a("enable-queue-tracing");
                externalOptions.P = a2.a("global-hub-mode");
                externalOptions.R = a2.a("capture-open-telemetry-events");
                externalOptions.E = a2.a("logs.enabled");
                externalOptions.F = a2.a("metrics.enabled");
                while (r3.hasNext()) {
                }
                b2 = a2.b("cron.default-checkin-margin");
                b3 = a2.b("cron.default-max-runtime");
                property9 = a2.getProperty("cron.default-timezone");
                b4 = a2.b("cron.default-failure-issue-threshold");
                b5 = a2.b("cron.default-recovery-threshold");
                if (b2 == null) {
                }
                ?? obj222 = new Object();
                obj222.a = b2;
                obj222.b = b3;
                obj222.c = property9;
                obj222.d = b4;
                obj222.e = b5;
                externalOptions.X = obj222;
                externalOptions.V = a2.a("enable-strict-trace-continuation");
                externalOptions.W = a2.getProperty("org-id");
                externalOptions.D = a2.a("enable-spotlight");
                externalOptions.G = a2.getProperty("spotlight-connection-url");
                property10 = a2.getProperty("profile-session-sample-rate");
                if (property10 != null) {
                }
                externalOptions.S = d2;
                externalOptions.T = a2.getProperty("profiling-traces-dir-path");
                property11 = a2.getProperty("profile-lifecycle");
                if (property11 != null) {
                }
                sentryOptions.merge(externalOptions);
            }
            valueOf = null;
            externalOptions.i = valueOf;
            property = a2.getProperty("traces-sample-rate");
            if (property != null) {
            }
            valueOf2 = null;
            externalOptions.j = valueOf2;
            property2 = a2.getProperty("profiles-sample-rate");
            if (property2 != null) {
            }
            valueOf3 = null;
            externalOptions.k = valueOf3;
            externalOptions.g = a2.a("debug");
            externalOptions.h = a2.a("enable-deduplication");
            externalOptions.z = a2.a("send-client-reports");
            externalOptions.Q = a2.a("force-init");
            property3 = a2.getProperty("max-request-body-size");
            if (property3 != null) {
            }
            while (r3.hasNext()) {
            }
            property4 = a2.getProperty("proxy.host");
            String property13222 = a2.getProperty("proxy.user");
            String property14222 = a2.getProperty("proxy.pass");
            property5 = a2.getProperty("proxy.port");
            if (property5 == null) {
            }
            if (property4 != null) {
            }
            it = a2.d("in-app-includes").iterator();
            while (it.hasNext()) {
            }
            it2 = a2.d("in-app-excludes").iterator();
            while (it2.hasNext()) {
            }
            if (a2.getProperty("trace-propagation-targets") == null) {
            }
            if (list == null) {
            }
            if (list != null) {
            }
            it3 = a2.d("context-tags").iterator();
            while (it3.hasNext()) {
            }
            externalOptions.s = a2.getProperty("proguard-uuid");
            it4 = a2.d("bundle-ids").iterator();
            while (it4.hasNext()) {
            }
            externalOptions.t = a2.b("idle-timeout");
            externalOptions.u = a2.b("shutdown-timeout-millis");
            externalOptions.v = a2.b("session-flush-timeout-millis");
            property6 = a2.getProperty("ignored-errors");
            if (property6 == null) {
            }
            externalOptions.x = list2;
            externalOptions.B = a2.a("enabled");
            externalOptions.C = a2.a("enable-pretty-serialization-output");
            externalOptions.J = a2.a("send-modules");
            externalOptions.K = a2.a("send-default-pii");
            property7 = a2.getProperty("ignored-checkins");
            if (property7 == null) {
            }
            externalOptions.H = list3;
            property8 = a2.getProperty("ignored-transactions");
            if (property8 == null) {
            }
            externalOptions.I = list4;
            externalOptions.L = a2.a("enable-backpressure-handling");
            externalOptions.M = a2.a("enable-database-transaction-tracing");
            externalOptions.N = a2.a("enable-cache-tracing");
            externalOptions.O = a2.a("enable-queue-tracing");
            externalOptions.P = a2.a("global-hub-mode");
            externalOptions.R = a2.a("capture-open-telemetry-events");
            externalOptions.E = a2.a("logs.enabled");
            externalOptions.F = a2.a("metrics.enabled");
            while (r3.hasNext()) {
            }
            b2 = a2.b("cron.default-checkin-margin");
            b3 = a2.b("cron.default-max-runtime");
            property9 = a2.getProperty("cron.default-timezone");
            b4 = a2.b("cron.default-failure-issue-threshold");
            b5 = a2.b("cron.default-recovery-threshold");
            if (b2 == null) {
            }
            ?? obj2222 = new Object();
            obj2222.a = b2;
            obj2222.b = b3;
            obj2222.c = property9;
            obj2222.d = b4;
            obj2222.e = b5;
            externalOptions.X = obj2222;
            externalOptions.V = a2.a("enable-strict-trace-continuation");
            externalOptions.W = a2.getProperty("org-id");
            externalOptions.D = a2.a("enable-spotlight");
            externalOptions.G = a2.getProperty("spotlight-connection-url");
            property10 = a2.getProperty("profile-session-sample-rate");
            if (property10 != null) {
            }
            externalOptions.S = d2;
            externalOptions.T = a2.getProperty("profiling-traces-dir-path");
            property11 = a2.getProperty("profile-lifecycle");
            if (property11 != null) {
            }
            sentryOptions.merge(externalOptions);
        }
        String dsn = sentryOptions.getDsn();
        if (sentryOptions.isEnabled() && (dsn == null || !dsn.isEmpty())) {
            if (dsn != null) {
                sentryOptions.retrieveParsedDsn();
                return true;
            }
            u2.g("DSN is required. Use empty string or set enabled to false in SentryOptions to disable SDK.");
            return false;
        }
        a();
        return false;
    }
}
