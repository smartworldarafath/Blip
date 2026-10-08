package io.sentry.android.replay;

import android.util.Log;
import android.view.View;
import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ReplayRecording;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayEvent;
import io.sentry.android.replay.ReplayCache;
import io.sentry.android.replay.capture.CaptureStrategy;
import io.sentry.cache.PersistingScopeObserver;
import io.sentry.protocol.SentryId;
import io.sentry.util.FileUtils;
import io.sentry.util.HintUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Closeable k;

    public /* synthetic */ b(Closeable closeable, int i) {
        this.j = i;
        this.k = closeable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0250, code lost:
    
        if (r6 != null) goto L113;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r3v19, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Object, java.util.Comparator] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Throwable th;
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        Integer num5;
        Date date;
        SentryReplayEvent.ReplayType replayType;
        String str;
        LastSegmentData lastSegmentData;
        int i;
        Iterable iterable;
        List list;
        ?? r20;
        Field field;
        int i2 = this.j;
        Closeable closeable = this.k;
        switch (i2) {
            case 0:
                ReplayIntegration replayIntegration = (ReplayIntegration) closeable;
                SentryOptions sentryOptions = replayIntegration.m;
                if (sentryOptions != null) {
                    PersistingScopeObserver findPersistingScopeObserver = sentryOptions.findPersistingScopeObserver();
                    if (findPersistingScopeObserver != null) {
                        SentryOptions sentryOptions2 = replayIntegration.m;
                        if (sentryOptions2 != null) {
                            String str2 = (String) findPersistingScopeObserver.h(sentryOptions2, "replay.json", String.class);
                            if (str2 != null) {
                                SentryId sentryId = new SentryId(str2);
                                if (sentryId.equals(SentryId.k)) {
                                    replayIntegration.R("");
                                    return;
                                }
                                SentryOptions sentryOptions3 = replayIntegration.m;
                                if (sentryOptions3 != null) {
                                    File a = ReplayCache.Companion.a(sentryOptions3, sentryId);
                                    File file = new File(a, ".ongoing_segment");
                                    if (!file.exists()) {
                                        sentryOptions3.getLogger().c(SentryLevel.DEBUG, "No ongoing segment found for replay: %s", sentryId);
                                        FileUtils.a(a);
                                        str = "options";
                                        th = null;
                                        lastSegmentData = null;
                                    } else {
                                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Charsets.a), 8192);
                                        try {
                                            Iterator it = TextStreamsKt.a(bufferedReader).iterator();
                                            while (it.hasNext()) {
                                                List G = StringsKt.G((String) it.next(), new String[]{"="}, 2);
                                                linkedHashMap.put((String) G.get(0), (String) G.get(1));
                                            }
                                            th = null;
                                            bufferedReader.close();
                                            String str3 = (String) linkedHashMap.get("config.height");
                                            if (str3 != null) {
                                                num = StringsKt.S(str3);
                                            } else {
                                                num = null;
                                            }
                                            String str4 = (String) linkedHashMap.get("config.width");
                                            if (str4 != null) {
                                                num2 = StringsKt.S(str4);
                                            } else {
                                                num2 = null;
                                            }
                                            String str5 = (String) linkedHashMap.get("config.frame-rate");
                                            if (str5 != null) {
                                                num3 = StringsKt.S(str5);
                                            } else {
                                                num3 = null;
                                            }
                                            String str6 = (String) linkedHashMap.get("config.bit-rate");
                                            if (str6 != null) {
                                                num4 = StringsKt.S(str6);
                                            } else {
                                                num4 = null;
                                            }
                                            String str7 = (String) linkedHashMap.get("segment.id");
                                            if (str7 != null) {
                                                num5 = StringsKt.S(str7);
                                            } else {
                                                num5 = null;
                                            }
                                            try {
                                                String str8 = (String) linkedHashMap.get("segment.timestamp");
                                                if (str8 == null) {
                                                    str8 = "";
                                                }
                                                date = DateUtils.d(str8);
                                            } catch (Throwable unused) {
                                                date = null;
                                            }
                                            try {
                                                String str9 = (String) linkedHashMap.get("replay.type");
                                                if (str9 == null) {
                                                    str9 = "";
                                                }
                                                replayType = SentryReplayEvent.ReplayType.valueOf(str9);
                                            } catch (Throwable unused2) {
                                                replayType = null;
                                            }
                                            if (num == null || num2 == null || num3 == null || num4 == null || num5 == null) {
                                                str = "options";
                                            } else {
                                                str = "options";
                                                Integer num6 = num;
                                                if (num5.intValue() != -1 && date != null && replayType != null) {
                                                    ScreenshotRecorderConfig screenshotRecorderConfig = new ScreenshotRecorderConfig(num2.intValue(), num6.intValue(), 1.0f, 1.0f, num3.intValue(), num4.intValue());
                                                    final ReplayCache replayCache = new ReplayCache(sentryOptions3, sentryId);
                                                    File n = replayCache.n();
                                                    if (n != null) {
                                                        n.listFiles(new FilenameFilter() { // from class: io.sentry.android.replay.a
                                                            @Override // java.io.FilenameFilter
                                                            public final boolean accept(File file2, String str10) {
                                                                str10.getClass();
                                                                if (StringsKt.l(str10, ".jpg", false)) {
                                                                    File file3 = new File(file2, str10);
                                                                    String name = file3.getName();
                                                                    name.getClass();
                                                                    int w = StringsKt.w(name, 6, ".");
                                                                    if (w != -1) {
                                                                        name = name.substring(0, w);
                                                                    }
                                                                    Long T = StringsKt.T(name);
                                                                    if (T != null) {
                                                                        ReplayCache.this.a(file3, T.longValue(), null);
                                                                    }
                                                                }
                                                                return false;
                                                            }
                                                        });
                                                    }
                                                    ArrayList arrayList = replayCache.r;
                                                    if (arrayList.isEmpty()) {
                                                        sentryOptions3.getLogger().c(SentryLevel.DEBUG, "No frames found for replay: %s, deleting the replay", sentryId);
                                                        FileUtils.a(a);
                                                        lastSegmentData = null;
                                                    } else {
                                                        if (arrayList.size() > 1) {
                                                            CollectionsKt.P(arrayList, new Object());
                                                        }
                                                        SentryReplayEvent.ReplayType replayType2 = SentryReplayEvent.ReplayType.SESSION;
                                                        if (replayType == replayType2) {
                                                            i = num5.intValue();
                                                        } else {
                                                            i = 0;
                                                        }
                                                        if (replayType != replayType2) {
                                                            date = DateUtils.c(((ReplayFrame) CollectionsKt.s(arrayList)).b);
                                                            date.getClass();
                                                        }
                                                        Date date2 = date;
                                                        long time = (((ReplayFrame) CollectionsKt.z(arrayList)).b - date2.getTime()) + (1000 / num3.intValue());
                                                        String str10 = (String) linkedHashMap.get("replay.recording");
                                                        if (str10 != null) {
                                                            ReplayRecording replayRecording = (ReplayRecording) sentryOptions3.getSerializer().d(new StringReader(str10), ReplayRecording.class);
                                                            if (replayRecording != null) {
                                                                list = replayRecording.k;
                                                            } else {
                                                                list = null;
                                                            }
                                                            if (list != null) {
                                                                List list2 = replayRecording.k;
                                                                list2.getClass();
                                                                iterable = new LinkedList(list2);
                                                                break;
                                                            } else {
                                                                iterable = null;
                                                                break;
                                                            }
                                                        }
                                                        iterable = EmptyList.j;
                                                        lastSegmentData = new LastSegmentData(screenshotRecorderConfig, replayCache, date2, i, time, replayType, (String) linkedHashMap.get("replay.screen-at-start"), CollectionsKt.R(iterable, new Object()));
                                                    }
                                                }
                                            }
                                            sentryOptions3.getLogger().c(SentryLevel.DEBUG, "Incorrect segment values found for replay: %s, deleting the replay", sentryId);
                                            FileUtils.a(a);
                                            lastSegmentData = null;
                                        } catch (Throwable th2) {
                                            try {
                                                throw th2;
                                            } catch (Throwable th3) {
                                                CloseableKt.a(bufferedReader, th2);
                                                throw th3;
                                            }
                                        }
                                    }
                                    if (lastSegmentData == null) {
                                        replayIntegration.R("");
                                        return;
                                    }
                                    SentryOptions sentryOptions4 = replayIntegration.m;
                                    if (sentryOptions4 != null) {
                                        Object h = findPersistingScopeObserver.h(sentryOptions4, "breadcrumbs.json", List.class);
                                        if (h instanceof List) {
                                            r20 = (List) h;
                                        } else {
                                            r20 = th;
                                        }
                                        ScopesAdapter scopesAdapter = replayIntegration.n;
                                        SentryOptions sentryOptions5 = replayIntegration.m;
                                        if (sentryOptions5 != null) {
                                            long j = lastSegmentData.e;
                                            Date date3 = lastSegmentData.c;
                                            int i3 = lastSegmentData.d;
                                            ScreenshotRecorderConfig screenshotRecorderConfig2 = lastSegmentData.a;
                                            CaptureStrategy.ReplaySegment a2 = CaptureStrategy.Companion.a(scopesAdapter, sentryOptions5, j, date3, sentryId, i3, screenshotRecorderConfig2.b, screenshotRecorderConfig2.a, lastSegmentData.f, lastSegmentData.b, screenshotRecorderConfig2.e, screenshotRecorderConfig2.f, lastSegmentData.g, r20, new LinkedList(lastSegmentData.h));
                                            if (a2 instanceof CaptureStrategy.ReplaySegment.Created) {
                                                Hint a3 = HintUtils.a(new Object());
                                                CaptureStrategy.ReplaySegment.Created created = (CaptureStrategy.ReplaySegment.Created) a2;
                                                ScopesAdapter scopesAdapter2 = replayIntegration.n;
                                                if (scopesAdapter2 != null) {
                                                    SentryReplayEvent sentryReplayEvent = created.a;
                                                    a3.g = created.b;
                                                    scopesAdapter2.r(sentryReplayEvent, a3);
                                                }
                                            }
                                            replayIntegration.R(str2);
                                            return;
                                        }
                                        Intrinsics.e(str);
                                        throw th;
                                    }
                                    Intrinsics.e(str);
                                    throw th;
                                }
                                Intrinsics.e("options");
                                throw null;
                            }
                        } else {
                            Intrinsics.e("options");
                            throw null;
                        }
                    }
                    replayIntegration.R("");
                    return;
                }
                Intrinsics.e("options");
                throw null;
            default:
                final RootViewsSpy rootViewsSpy = (RootViewsSpy) closeable;
                if (!rootViewsSpy.j.get()) {
                    Function1<ArrayList<View>, ArrayList<View>> function1 = new Function1<ArrayList<View>, ArrayList<View>>() { // from class: io.sentry.android.replay.RootViewsSpy$Companion$install$1$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj) {
                            ArrayList arrayList2 = (ArrayList) obj;
                            arrayList2.getClass();
                            RootViewsSpy rootViewsSpy2 = RootViewsSpy.this;
                            ISentryLifecycleToken a4 = rootViewsSpy2.k.a();
                            try {
                                RootViewsSpy$delegatingViewList$1 rootViewsSpy$delegatingViewList$1 = rootViewsSpy2.m;
                                rootViewsSpy$delegatingViewList$1.addAll(arrayList2);
                                AutoCloseableKt.a(a4, null);
                                return rootViewsSpy$delegatingViewList$1;
                            } finally {
                            }
                        }
                    };
                    try {
                        Object value = WindowManagerSpy.b.getValue();
                        if (value != null && (field = (Field) WindowManagerSpy.c.getValue()) != null) {
                            Object obj = field.get(value);
                            obj.getClass();
                            field.set(value, function1.b((ArrayList) obj));
                            return;
                        }
                        return;
                    } catch (Throwable th4) {
                        Log.w("WindowManagerSpy", th4);
                        return;
                    }
                }
                return;
        }
    }
}
