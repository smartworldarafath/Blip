package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.DisplayMetrics;
import defpackage.jb;
import io.sentry.BackfillingEventProcessor;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.ProfileChunk;
import io.sentry.ProfileContext;
import io.sentry.Sentry;
import io.sentry.SentryEvent;
import io.sentry.SentryExceptionFactory;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryStackTraceFactory;
import io.sentry.SpanContext;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.anr.AggregatedStackTrace;
import io.sentry.android.core.anr.AnrCulpritIdentifier;
import io.sentry.android.core.anr.AnrProfile;
import io.sentry.android.core.anr.AnrProfileManager;
import io.sentry.android.core.anr.AnrProfileRotationHelper;
import io.sentry.android.core.anr.AnrStackTrace;
import io.sentry.android.core.internal.util.CpuInfoUtils;
import io.sentry.cache.PersistingOptionsObserver;
import io.sentry.cache.PersistingScopeObserver;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.Backfillable;
import io.sentry.protocol.App;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.Device;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.Request;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.protocol.profiling.SentryProfile;
import io.sentry.util.SentryRandom;
import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ApplicationExitInfoEventProcessor implements BackfillingEventProcessor {
    public final Context j;
    public final SentryAndroidOptions k;
    public final BuildInfoProvider l;
    public final SentryExceptionFactory m;
    public final PersistingScopeObserver n;
    public final List o = Collections.singletonList(new AnrHintEnricher());

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AnrHintEnricher implements HintEnricher {
        public AnrHintEnricher() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface HintEnricher {
    }

    public ApplicationExitInfoEventProcessor(Context context, BuildInfoProvider buildInfoProvider, SentryAndroidOptions sentryAndroidOptions) {
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
        this.k = sentryAndroidOptions;
        this.l = buildInfoProvider;
        this.n = sentryAndroidOptions.findPersistingScopeObserver();
        this.m = new SentryExceptionFactory(new SentryStackTraceFactory(sentryAndroidOptions));
    }

    public final Object b(SentryOptions sentryOptions, String str, Class cls) {
        PersistingScopeObserver persistingScopeObserver = this.n;
        if (persistingScopeObserver == null) {
            return null;
        }
        return persistingScopeObserver.h(sentryOptions, str, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:282:0x071e  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x098e  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0a24  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0a30  */
    /* JADX WARN: Type inference failed for: r0v103, types: [java.lang.Object, io.sentry.protocol.profiling.SentrySample] */
    /* JADX WARN: Type inference failed for: r0v124, types: [java.lang.Object, io.sentry.protocol.User] */
    /* JADX WARN: Type inference failed for: r0v90, types: [java.lang.Object, io.sentry.protocol.profiling.SentryThreadMetadata] */
    /* JADX WARN: Type inference failed for: r13v24, types: [java.lang.Object, io.sentry.protocol.Mechanism] */
    /* JADX WARN: Type inference failed for: r15v21, types: [io.sentry.protocol.Device, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v28, types: [io.sentry.protocol.SentryThread, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v31, types: [io.sentry.protocol.SentryThread] */
    /* JADX WARN: Type inference failed for: r1v32, types: [io.sentry.protocol.App, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.Object, io.sentry.protocol.Mechanism] */
    /* JADX WARN: Type inference failed for: r8v14, types: [io.sentry.protocol.SentryStackFrame, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.lang.Object, io.sentry.protocol.SentryStackTrace] */
    @Override // io.sentry.EventProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        HintEnricher hintEnricher;
        Context context;
        String str;
        String str2;
        String str3;
        String str4;
        boolean z;
        boolean z2;
        SentryAndroidOptions sentryAndroidOptions;
        Contexts contexts;
        App d;
        App app;
        ArrayList d2;
        List<SentryStackFrame> list;
        String cacheDirPath;
        long time;
        AnrProfile anrProfile;
        int i;
        SentryId sentryId;
        Integer num;
        int i2;
        String str5;
        DisplayMetrics displayMetrics;
        String str6;
        String str7;
        boolean z3;
        String str8;
        SentryThread sentryThread;
        ArrayList arrayList;
        SentryEvent sentryEvent2 = sentryEvent;
        Object b = hint.b("sentry:typeCheckHint");
        boolean z4 = b instanceof Backfillable;
        SentryAndroidOptions sentryAndroidOptions2 = this.k;
        if (!z4) {
            sentryAndroidOptions2.getLogger().c(SentryLevel.WARNING, "The event is not Backfillable, but has been passed to BackfillingEventProcessor, skipping.", new Object[0]);
            return sentryEvent2;
        }
        Backfillable backfillable = (Backfillable) b;
        Iterator it = this.o.iterator();
        while (true) {
            if (it.hasNext()) {
                hintEnricher = (HintEnricher) it.next();
                ((AnrHintEnricher) hintEnricher).getClass();
                if (b instanceof AbnormalExit) {
                    break;
                }
            } else {
                hintEnricher = null;
                break;
            }
        }
        if (hintEnricher != null) {
            AnrHintEnricher anrHintEnricher = (AnrHintEnricher) hintEnricher;
            if (backfillable instanceof AbnormalExit) {
                z3 = "anr_background".equals(((AbnormalExit) backfillable).f());
            } else {
                z3 = false;
            }
            ApplicationExitInfoEventProcessor applicationExitInfoEventProcessor = ApplicationExitInfoEventProcessor.this;
            if (sentryEvent2.q == null) {
                sentryEvent2.q = "java";
            }
            if (sentryEvent2.d() == null) {
                ?? obj = new Object();
                if (!backfillable.a()) {
                    obj.j = "HistoricalAppExitInfo";
                } else {
                    obj.j = "AppExitInfo";
                }
                if (!z3) {
                    str8 = "ANR";
                } else {
                    str8 = "Background ANR";
                }
                ApplicationNotResponding applicationNotResponding = new ApplicationNotResponding(str8, Thread.currentThread());
                ArrayList e = sentryEvent2.e();
                if (e != null) {
                    Iterator it2 = e.iterator();
                    while (it2.hasNext()) {
                        sentryThread = (SentryThread) it2.next();
                        String str9 = sentryThread.l;
                        if (str9 != null && str9.equals("main")) {
                            break;
                        }
                    }
                }
                sentryThread = 0;
                if (sentryThread == 0) {
                    sentryThread = new Object();
                    sentryThread.r = new Object();
                }
                applicationExitInfoEventProcessor.m.getClass();
                SentryStackTrace sentryStackTrace = sentryThread.r;
                if (sentryStackTrace == null) {
                    arrayList = new ArrayList(0);
                } else {
                    ArrayList arrayList2 = new ArrayList(1);
                    arrayList2.add(SentryExceptionFactory.b(applicationNotResponding, obj, sentryThread.j, sentryStackTrace.j, true));
                    arrayList = arrayList2;
                }
                sentryEvent2.h(arrayList);
            }
        }
        Contexts contexts2 = sentryEvent2.k;
        OperatingSystem g = contexts2.g();
        Context context2 = this.j;
        contexts2.r(DeviceInfoUtil.c(context2, sentryAndroidOptions2).g);
        if (g != null) {
            String str10 = g.j;
            if (str10 != null && !str10.isEmpty()) {
                str7 = "os_" + str10.trim().toLowerCase(Locale.ROOT);
            } else {
                str7 = "os_1";
            }
            contexts2.k(g, str7);
        }
        Device e2 = contexts2.e();
        BuildInfoProvider buildInfoProvider = this.l;
        if (e2 == null) {
            ?? obj2 = new Object();
            obj2.k = Build.MANUFACTURER;
            obj2.l = Build.BRAND;
            obj2.m = ContextUtils.a(sentryAndroidOptions2.getLogger());
            obj2.n = Build.MODEL;
            obj2.o = Build.ID;
            obj2.p = Build.SUPPORTED_ABIS;
            ActivityManager.MemoryInfo b2 = ContextUtils.b(context2, sentryAndroidOptions2.getLogger());
            context = context2;
            if (b2 != null) {
                obj2.v = Long.valueOf(b2.totalMem);
            }
            obj2.u = buildInfoProvider.a();
            ILogger logger = sentryAndroidOptions2.getLogger();
            try {
                displayMetrics = context.getResources().getDisplayMetrics();
            } catch (Throwable th) {
                logger.b(SentryLevel.ERROR, "Error getting DisplayMetrics.", th);
                displayMetrics = null;
            }
            if (displayMetrics != null) {
                obj2.D = Integer.valueOf(displayMetrics.widthPixels);
                obj2.E = Integer.valueOf(displayMetrics.heightPixels);
                obj2.F = Float.valueOf(displayMetrics.density);
                obj2.G = Integer.valueOf(displayMetrics.densityDpi);
            }
            if (obj2.J == null) {
                try {
                    str6 = Installation.a(context);
                } catch (Throwable th2) {
                    sentryAndroidOptions2.getLogger().b(SentryLevel.ERROR, "Error getting installationId.", th2);
                    str6 = null;
                }
                obj2.J = str6;
            }
            ArrayList a = CpuInfoUtils.c.a();
            if (!a.isEmpty()) {
                obj2.O = Double.valueOf(((Integer) Collections.max(a)).doubleValue());
                obj2.N = Integer.valueOf(a.size());
            }
            contexts2.o(obj2);
        } else {
            context = context2;
        }
        if (!backfillable.a()) {
            sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "The event is Backfillable, but should not be enriched, skipping.", new Object[0]);
            return sentryEvent2;
        }
        if (sentryEvent2.m == null) {
            sentryEvent2.m = (Request) b(sentryAndroidOptions2, "request.json", Request.class);
        }
        if (sentryEvent2.r == null) {
            sentryEvent2.r = (User) b(sentryAndroidOptions2, "user.json", User.class);
        }
        Map map = (Map) b(sentryAndroidOptions2, "tags.json", Map.class);
        if (map != null) {
            if (sentryEvent2.n == null) {
                sentryEvent2.c(new HashMap(map));
            } else {
                Iterator it3 = map.entrySet().iterator();
                while (it3.hasNext()) {
                    Map.Entry entry = (Map.Entry) it3.next();
                    Iterator it4 = it3;
                    if (!sentryEvent2.n.containsKey(entry.getKey())) {
                        sentryEvent2.b((String) entry.getKey(), (String) entry.getValue());
                    }
                    it3 = it4;
                }
            }
        }
        List list2 = (List) b(sentryAndroidOptions2, "breadcrumbs.json", List.class);
        if (list2 != null) {
            List list3 = sentryEvent2.v;
            if (list3 == null) {
                sentryEvent2.v = new ArrayList(list2);
            } else {
                list3.addAll(list2);
            }
        }
        Map map2 = (Map) b(sentryAndroidOptions2, "extras.json", Map.class);
        if (map2 != null) {
            if (sentryEvent2.x == null) {
                sentryEvent2.x = new HashMap(new HashMap(map2));
            } else {
                Iterator it5 = map2.entrySet().iterator();
                while (it5.hasNext()) {
                    Map.Entry entry2 = (Map.Entry) it5.next();
                    Iterator it6 = it5;
                    HintEnricher hintEnricher2 = hintEnricher;
                    if (!sentryEvent2.x.containsKey(entry2.getKey())) {
                        sentryEvent2.x.put((String) entry2.getKey(), entry2.getValue());
                    }
                    it5 = it6;
                    hintEnricher = hintEnricher2;
                }
            }
        }
        HintEnricher hintEnricher3 = hintEnricher;
        Contexts contexts3 = (Contexts) b(sentryAndroidOptions2, "contexts.json", Contexts.class);
        if (contexts3 != null) {
            Iterator it7 = new Contexts(contexts3).j.entrySet().iterator();
            while (it7.hasNext()) {
                Map.Entry entry3 = (Map.Entry) it7.next();
                Object value = entry3.getValue();
                Iterator it8 = it7;
                if ((!"trace".equals(entry3.getKey()) || !(value instanceof SpanContext)) && !contexts2.a(entry3.getKey())) {
                    contexts2.k(value, (String) entry3.getKey());
                }
                it7 = it8;
            }
        }
        String str11 = (String) b(sentryAndroidOptions2, "transaction.json", String.class);
        if (sentryEvent2.E == null) {
            sentryEvent2.E = str11;
        }
        List list4 = (List) b(sentryAndroidOptions2, "fingerprint.json", List.class);
        if (sentryEvent2.F == null) {
            sentryEvent2.i(list4);
        }
        SentryLevel sentryLevel = (SentryLevel) b(sentryAndroidOptions2, "level.json", SentryLevel.class);
        if (sentryEvent2.D == null) {
            sentryEvent2.D = sentryLevel;
        }
        SpanContext spanContext = (SpanContext) b(sentryAndroidOptions2, "trace.json", SpanContext.class);
        if (contexts2.i() == null && spanContext != null) {
            contexts2.v(spanContext);
        }
        String str12 = (String) b(sentryAndroidOptions2, "replay.json", String.class);
        String cacheDirPath2 = sentryAndroidOptions2.getCacheDirPath();
        if (cacheDirPath2 == null) {
            str2 = "main";
            str = "ANR";
        } else {
            str = "ANR";
            str2 = "main";
            if (!new File(cacheDirPath2, jb.f("replay_", str12)).exists()) {
                String str13 = (String) PersistingOptionsObserver.b(sentryAndroidOptions2, "replay-error-sample-rate.json", String.class);
                if (str13 != null) {
                    try {
                        if (Double.parseDouble(str13) < SentryRandom.a().c()) {
                            sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "Not capturing replay for ANR %s due to not being sampled.", sentryEvent2.j);
                        } else {
                            File[] listFiles = new File(cacheDirPath2).listFiles();
                            if (listFiles != null) {
                                int length = listFiles.length;
                                long j = Long.MIN_VALUE;
                                String str14 = null;
                                int i3 = 0;
                                while (i3 < length) {
                                    File file = listFiles[i3];
                                    File[] fileArr = listFiles;
                                    if (file.isDirectory() && file.getName().startsWith("replay_") && file.lastModified() > j && file.lastModified() <= ((Date) sentryEvent2.y.clone()).getTime()) {
                                        j = file.lastModified();
                                        str14 = file.getName().substring(7);
                                    }
                                    i3++;
                                    listFiles = fileArr;
                                }
                                str12 = str14;
                            } else {
                                str12 = null;
                            }
                        }
                    } catch (Throwable th3) {
                        sentryAndroidOptions2.getLogger().b(SentryLevel.ERROR, "Error parsing replay sample rate.", th3);
                    }
                }
            }
            if (str12 != null) {
                PersistingScopeObserver.k(sentryAndroidOptions2, str12, "replay.json");
                contexts2.k(str12, "replay_id");
            }
        }
        if (sentryEvent2.o == null) {
            sentryEvent2.o = (String) PersistingOptionsObserver.b(sentryAndroidOptions2, "release.json", String.class);
        }
        if (sentryEvent2.p == null) {
            String str15 = (String) PersistingOptionsObserver.b(sentryAndroidOptions2, "environment.json", String.class);
            if (str15 == null) {
                str15 = sentryAndroidOptions2.getEnvironment();
            }
            sentryEvent2.p = str15;
        }
        if (sentryEvent2.u == null) {
            sentryEvent2.u = (String) PersistingOptionsObserver.b(sentryAndroidOptions2, "dist.json", String.class);
        }
        if (sentryEvent2.u == null && (str5 = (String) PersistingOptionsObserver.b(sentryAndroidOptions2, "release.json", String.class)) != null) {
            try {
                sentryEvent2.u = str5.substring(str5.indexOf(43) + 1);
            } catch (Throwable unused) {
                sentryAndroidOptions2.getLogger().c(SentryLevel.WARNING, "Failed to parse release from scope cache: %s", str5);
            }
        }
        DebugMeta debugMeta = sentryEvent2.w;
        DebugMeta debugMeta2 = debugMeta;
        if (debugMeta == null) {
            debugMeta2 = new Object();
        }
        if (debugMeta2.k == null) {
            debugMeta2.k = new ArrayList(new ArrayList());
        }
        List list5 = debugMeta2.k;
        if (list5 == null) {
            str3 = "anr_background";
        } else {
            String str16 = (String) PersistingOptionsObserver.b(sentryAndroidOptions2, "proguard-uuid.json", String.class);
            if (str16 == null) {
                str3 = "anr_background";
            } else {
                DebugImage debugImage = new DebugImage();
                str3 = "anr_background";
                debugImage.setType(DebugImage.PROGUARD);
                debugImage.setUuid(str16);
                list5.add(debugImage);
            }
            sentryEvent2.w = debugMeta2;
        }
        if (sentryEvent2.l == null) {
            sentryEvent2.l = (SdkVersion) PersistingOptionsObserver.b(sentryAndroidOptions2, "sdk-version.json", SdkVersion.class);
        }
        App d3 = contexts2.d();
        App app2 = d3;
        if (d3 == null) {
            app2 = new Object();
        }
        App app3 = app2;
        Context context3 = context;
        app3.n = (String) ContextUtils.c.a(context3);
        PackageInfo c = ContextUtils.c(context3, buildInfoProvider);
        if (c != null) {
            app3.j = c.packageName;
        }
        String str17 = sentryEvent2.o;
        if (str17 == null) {
            str17 = (String) PersistingOptionsObserver.b(sentryAndroidOptions2, "release.json", String.class);
        }
        if (str17 != null) {
            try {
                String substring = str17.substring(str17.indexOf(64) + 1, str17.indexOf(43));
                String substring2 = str17.substring(str17.indexOf(43) + 1);
                app3.o = substring;
                app3.p = substring2;
            } catch (Throwable unused2) {
                sentryAndroidOptions2.getLogger().c(SentryLevel.WARNING, "Failed to parse release from scope cache: %s", str17);
            }
        }
        try {
            ContextUtils.SplitApksInfo splitApksInfo = DeviceInfoUtil.c(context3, sentryAndroidOptions2).f;
            if (splitApksInfo != null) {
                app3.u = Boolean.valueOf(splitApksInfo.a);
                String[] strArr = splitApksInfo.b;
                if (strArr != null) {
                    app3.v = Arrays.asList(strArr);
                }
            }
        } catch (Throwable th4) {
            sentryAndroidOptions2.getLogger().b(SentryLevel.ERROR, "Error getting split apks info.", th4);
        }
        contexts2.m(app3);
        Map map3 = (Map) PersistingOptionsObserver.b(sentryAndroidOptions2, "tags.json", Map.class);
        if (map3 != null) {
            if (sentryEvent2.n == null) {
                sentryEvent2.c(new HashMap(map3));
            } else {
                for (Map.Entry entry4 : map3.entrySet()) {
                    if (!sentryEvent2.n.containsKey(entry4.getKey())) {
                        sentryEvent2.b((String) entry4.getKey(), (String) entry4.getValue());
                    }
                }
            }
        }
        User user = sentryEvent2.r;
        User user2 = user;
        if (user == null) {
            ?? obj3 = new Object();
            sentryEvent2.r = obj3;
            user2 = obj3;
        }
        User user3 = user2;
        if (user3.k == null) {
            try {
                str4 = Installation.a(context3);
            } catch (Throwable th5) {
                sentryAndroidOptions2.getLogger().b(SentryLevel.ERROR, "Error getting installationId.", th5);
                str4 = null;
            }
            user3.k = str4;
        }
        if (user3.m == null && sentryAndroidOptions2.isSendDefaultPii()) {
            user3.m = "{{auto}}";
        }
        try {
            ContextUtils.SideLoadedInfo sideLoadedInfo = DeviceInfoUtil.c(context3, sentryAndroidOptions2).e;
            if (sideLoadedInfo != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("isSideLoaded", String.valueOf(sideLoadedInfo.a));
                String str18 = sideLoadedInfo.b;
                if (str18 != null) {
                    hashMap.put("installerStore", str18);
                }
                for (Map.Entry entry5 : hashMap.entrySet()) {
                    sentryEvent2.b((String) entry5.getKey(), (String) entry5.getValue());
                }
            }
        } catch (Throwable th6) {
            sentryAndroidOptions2.getLogger().b(SentryLevel.ERROR, "Error getting side loaded info.", th6);
        }
        if (hintEnricher3 != null) {
            AnrHintEnricher anrHintEnricher2 = (AnrHintEnricher) hintEnricher3;
            boolean z5 = backfillable instanceof AbnormalExit;
            if (z5) {
                z = str3.equals(((AbnormalExit) backfillable).f());
            } else {
                z = false;
            }
            ApplicationExitInfoEventProcessor applicationExitInfoEventProcessor2 = ApplicationExitInfoEventProcessor.this;
            SentryAndroidOptions sentryAndroidOptions3 = applicationExitInfoEventProcessor2.k;
            if (sentryAndroidOptions3.isAnrProfilingEnabled() && !z && (cacheDirPath = sentryAndroidOptions3.getCacheDirPath()) != null) {
                File file2 = new File(cacheDirPath);
                if (z5) {
                    Long b3 = ((AbnormalExit) backfillable).b();
                    if (b3 != null) {
                        time = b3.longValue();
                    } else if (((Date) sentryEvent2.y.clone()) != null) {
                        time = ((Date) sentryEvent2.y.clone()).getTime();
                    }
                    try {
                        AnrProfileRotationHelper.b(file2);
                        File file3 = new File(file2, "anr_profile_old");
                        if (file3.exists()) {
                            sentryAndroidOptions3.getLogger().c(SentryLevel.DEBUG, "Reading ANR profile", new Object[0]);
                            AnrProfileManager anrProfileManager = new AnrProfileManager(sentryAndroidOptions3, file3);
                            try {
                                anrProfile = new AnrProfile(anrProfileManager.j.E());
                                try {
                                    anrProfileManager.close();
                                    i2 = 0;
                                } catch (Throwable th7) {
                                    th = th7;
                                    try {
                                        ILogger logger2 = sentryAndroidOptions3.getLogger();
                                        SentryLevel sentryLevel2 = SentryLevel.INFO;
                                        logger2.b(sentryLevel2, "Could not retrieve ANR profile", th);
                                        if (!AnrProfileRotationHelper.a(file2)) {
                                            i = 0;
                                            sentryAndroidOptions3.getLogger().c(sentryLevel2, "Could not delete ANR profile file", new Object[0]);
                                            if (anrProfile != null) {
                                            }
                                            z2 = z;
                                            sentryAndroidOptions = sentryAndroidOptions3;
                                            contexts = contexts2;
                                            if (sentryEvent2.F == null) {
                                            }
                                            boolean z6 = !z2;
                                            d = contexts.d();
                                            app = d;
                                            if (d == null) {
                                            }
                                            if (app.t == null) {
                                            }
                                            return sentryEvent2;
                                        }
                                        i = 0;
                                        if (anrProfile != null) {
                                        }
                                        z2 = z;
                                        sentryAndroidOptions = sentryAndroidOptions3;
                                        contexts = contexts2;
                                        if (sentryEvent2.F == null) {
                                        }
                                        boolean z62 = !z2;
                                        d = contexts.d();
                                        app = d;
                                        if (d == null) {
                                        }
                                        if (app.t == null) {
                                        }
                                        return sentryEvent2;
                                    } catch (Throwable th8) {
                                        if (!AnrProfileRotationHelper.a(file2)) {
                                            sentryAndroidOptions3.getLogger().c(SentryLevel.INFO, "Could not delete ANR profile file", new Object[0]);
                                        }
                                        throw th8;
                                    }
                                }
                            } finally {
                            }
                        } else {
                            i2 = 0;
                            sentryAndroidOptions3.getLogger().c(SentryLevel.DEBUG, "No ANR profile file found", new Object[0]);
                            anrProfile = null;
                        }
                        if (!AnrProfileRotationHelper.a(file2)) {
                            sentryAndroidOptions3.getLogger().c(SentryLevel.INFO, "Could not delete ANR profile file", new Object[i2]);
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        anrProfile = null;
                    }
                    i = 0;
                    if (anrProfile != null) {
                        ArrayList arrayList3 = anrProfile.a;
                        sentryAndroidOptions3.getLogger().c(SentryLevel.INFO, "ANR profile found", new Object[i]);
                        if (time < anrProfile.b || time > anrProfile.c) {
                            z2 = z;
                            sentryAndroidOptions = sentryAndroidOptions3;
                            contexts = contexts2;
                            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "ANR profile found, but doesn't match", new Object[0]);
                        } else {
                            AggregatedStackTrace a2 = AnrCulpritIdentifier.a(arrayList3);
                            if (a2 != null) {
                                SentryProfile sentryProfile = new SentryProfile();
                                ArrayList arrayList4 = new ArrayList();
                                HashMap hashMap2 = new HashMap();
                                ArrayList arrayList5 = new ArrayList();
                                HashMap hashMap3 = new HashMap();
                                Iterator it9 = arrayList3.iterator();
                                Contexts contexts4 = contexts2;
                                while (it9.hasNext()) {
                                    Iterator it10 = it9;
                                    StackTraceElement[] stackTraceElementArr = ((AnrStackTrace) it9.next()).j;
                                    boolean z7 = z;
                                    ArrayList arrayList6 = new ArrayList();
                                    SentryAndroidOptions sentryAndroidOptions4 = sentryAndroidOptions3;
                                    int length2 = stackTraceElementArr.length;
                                    int i4 = 0;
                                    Contexts contexts5 = contexts4;
                                    while (i4 < length2) {
                                        StackTraceElement stackTraceElement = stackTraceElementArr[i4];
                                        int i5 = i4;
                                        StringBuilder sb = new StringBuilder();
                                        int i6 = length2;
                                        sb.append(stackTraceElement.getClassName());
                                        sb.append("#");
                                        Contexts contexts6 = contexts5;
                                        sb.append(stackTraceElement.getMethodName());
                                        sb.append("#");
                                        sb.append(stackTraceElement.getFileName());
                                        sb.append("#");
                                        sb.append(stackTraceElement.getLineNumber());
                                        String sb2 = sb.toString();
                                        Integer num2 = (Integer) hashMap2.get(sb2);
                                        if (num2 == null) {
                                            num2 = Integer.valueOf(arrayList4.size());
                                            ?? obj4 = new Object();
                                            obj4.m = stackTraceElement.getFileName();
                                            obj4.n = stackTraceElement.getMethodName();
                                            obj4.o = stackTraceElement.getClassName();
                                            if (stackTraceElement.getLineNumber() > 0) {
                                                num = Integer.valueOf(stackTraceElement.getLineNumber());
                                            } else {
                                                num = null;
                                            }
                                            obj4.p = num;
                                            if (stackTraceElement.isNativeMethod()) {
                                                obj4.v = Boolean.TRUE;
                                            }
                                            arrayList4.add(obj4);
                                            hashMap2.put(sb2, num2);
                                        }
                                        arrayList6.add(num2);
                                        i4 = i5 + 1;
                                        length2 = i6;
                                        contexts5 = contexts6;
                                    }
                                    Contexts contexts7 = contexts5;
                                    StringBuilder sb3 = new StringBuilder();
                                    Iterator it11 = arrayList6.iterator();
                                    while (it11.hasNext()) {
                                        Integer num3 = (Integer) it11.next();
                                        if (sb3.length() > 0) {
                                            sb3.append(",");
                                        }
                                        sb3.append(num3);
                                    }
                                    String sb4 = sb3.toString();
                                    Integer num4 = (Integer) hashMap3.get(sb4);
                                    if (num4 == null) {
                                        num4 = Integer.valueOf(arrayList5.size());
                                        arrayList5.add(new ArrayList(arrayList6));
                                        hashMap3.put(sb4, num4);
                                    }
                                    ?? obj5 = new Object();
                                    obj5.j = r14.k / 1000.0d;
                                    obj5.k = num4.intValue();
                                    obj5.l = "0";
                                    sentryProfile.j.add(obj5);
                                    it9 = it10;
                                    z = z7;
                                    sentryAndroidOptions3 = sentryAndroidOptions4;
                                    contexts4 = contexts7;
                                }
                                z2 = z;
                                sentryAndroidOptions = sentryAndroidOptions3;
                                Contexts contexts8 = contexts4;
                                sentryProfile.l = arrayList4;
                                sentryProfile.k = arrayList5;
                                ?? obj6 = new Object();
                                obj6.j = str2;
                                obj6.k = 5;
                                sentryProfile.m = Collections.singletonMap("0", obj6);
                                ProfileChunk profileChunk = new ProfileChunk(new SentryId(), new SentryId(), null, new HashMap(0), Double.valueOf(time / 1000.0d), "java", applicationExitInfoEventProcessor2.k);
                                profileChunk.v = sentryProfile;
                                if (SentryId.k.equals(Sentry.b().h(profileChunk))) {
                                    sentryId = null;
                                } else {
                                    sentryId = profileChunk.k;
                                }
                                StackTraceElement[] stackTraceElementArr2 = (StackTraceElement[]) Arrays.copyOfRange(a2.c, a2.d, a2.e + 1);
                                if (stackTraceElementArr2.length > 0) {
                                    StackTraceElement stackTraceElement2 = stackTraceElementArr2[0];
                                    ApplicationNotResponding applicationNotResponding2 = new ApplicationNotResponding(stackTraceElement2.getClassName() + "." + stackTraceElement2.getMethodName());
                                    applicationNotResponding2.setStackTrace(stackTraceElementArr2);
                                    ?? obj7 = new Object();
                                    obj7.j = str;
                                    ExceptionMechanismException exceptionMechanismException = new ExceptionMechanismException(obj7, applicationNotResponding2, null, false);
                                    SentryExceptionFactory sentryExceptionFactory = applicationExitInfoEventProcessor2.m;
                                    sentryExceptionFactory.getClass();
                                    AtomicInteger atomicInteger = new AtomicInteger(-1);
                                    HashSet hashSet = new HashSet();
                                    ArrayDeque arrayDeque = new ArrayDeque();
                                    sentryExceptionFactory.a(exceptionMechanismException, atomicInteger, hashSet, arrayDeque, null);
                                    sentryEvent2 = sentryEvent;
                                    sentryEvent2.h(new ArrayList(arrayDeque));
                                    if (sentryId != null) {
                                        Contexts contexts9 = contexts8;
                                        contexts9.k(new ProfileContext(sentryId), "profile");
                                        contexts = contexts9;
                                    }
                                } else {
                                    sentryEvent2 = sentryEvent;
                                }
                                contexts = contexts8;
                            }
                        }
                        if (sentryEvent2.F == null) {
                            String str19 = "foreground-anr";
                            if (sentryAndroidOptions.isEnableAnrFingerprinting() && (d2 = sentryEvent2.d()) != null && !d2.isEmpty()) {
                                Iterator it12 = d2.iterator();
                                while (it12.hasNext()) {
                                    SentryStackTrace sentryStackTrace2 = ((SentryException) it12.next()).n;
                                    if (sentryStackTrace2 != null && (list = sentryStackTrace2.j) != null && !list.isEmpty()) {
                                        for (SentryStackFrame sentryStackFrame : list) {
                                            Boolean bool = sentryStackFrame.t;
                                            if (bool == null || !bool.booleanValue()) {
                                                String str20 = sentryStackFrame.o;
                                                if (str20 != null) {
                                                    Iterator it13 = AnrCulpritIdentifier.a.iterator();
                                                    while (it13.hasNext()) {
                                                        if (str20.startsWith((String) it13.next())) {
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (z2) {
                                    str19 = "background-anr";
                                }
                                sentryEvent2.i(Arrays.asList("system-frames-only-anr", str19));
                            }
                            if (z2) {
                                str19 = "background-anr";
                            }
                            sentryEvent2.i(Arrays.asList("{{ default }}", str19));
                        }
                        boolean z622 = !z2;
                        d = contexts.d();
                        app = d;
                        if (d == null) {
                            ?? obj8 = new Object();
                            contexts.m(obj8);
                            app = obj8;
                        }
                        if (app.t == null) {
                            app.t = Boolean.valueOf(z622);
                        }
                    }
                }
            }
            z2 = z;
            sentryAndroidOptions = sentryAndroidOptions3;
            contexts = contexts2;
            if (sentryEvent2.F == null) {
            }
            boolean z6222 = !z2;
            d = contexts.d();
            app = d;
            if (d == null) {
            }
            if (app.t == null) {
            }
        }
        return sentryEvent2;
    }

    @Override // io.sentry.EventProcessor
    public final SentryTransaction n(SentryTransaction sentryTransaction, Hint hint) {
        return sentryTransaction;
    }
}
