package io.sentry.android.replay.capture;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.MotionEvent;
import android.view.Surface;
import defpackage.p;
import io.sentry.Breadcrumb;
import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.IScopes;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ReplayRecording;
import io.sentry.ScreenshotStrategyType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayEvent;
import io.sentry.SentryReplayOptions;
import io.sentry.android.replay.GeneratedVideo;
import io.sentry.android.replay.ReplayCache;
import io.sentry.android.replay.ReplayFrame;
import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.android.replay.video.MuxerConfig;
import io.sentry.android.replay.video.SimpleMp4FrameMuxer;
import io.sentry.android.replay.video.SimpleVideoEncoder;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.rrweb.RRWebBreadcrumbEvent;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.rrweb.RRWebEventType;
import io.sentry.rrweb.RRWebMetaEvent;
import io.sentry.rrweb.RRWebVideoEvent;
import io.sentry.util.AutoClosableReentrantLock;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.LongProgression;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface CaptureStrategy {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:123:0x01a5  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x01d5 A[LOOP:1: B:110:0x0124->B:129:0x01d5, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:130:0x01e1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:165:0x01cc  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0353  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x035a  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0366  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x038a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x035d  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0357  */
        /* JADX WARN: Type inference failed for: r1v10, types: [io.sentry.rrweb.RRWebOptionsEvent, java.lang.Object, io.sentry.rrweb.RRWebEvent] */
        /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, io.sentry.ReplayRecording] */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, java.util.Comparator] */
        /* JADX WARN: Type inference failed for: r6v40, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static ReplaySegment a(IScopes iScopes, SentryOptions sentryOptions, long j, Date date, SentryId sentryId, int i, int i2, int i3, SentryReplayEvent.ReplayType replayType, ReplayCache replayCache, int i4, int i5, String str, List list, Deque deque) {
            ArrayList Y;
            int i6;
            int i7;
            boolean z;
            Object obj;
            SentryOptions sentryOptions2;
            LongRange longRange;
            int i8;
            Breadcrumb breadcrumb;
            GeneratedVideo generatedVideo;
            Object obj2;
            long j2;
            Object obj3;
            long j3;
            Bitmap decodeFile;
            ISentryLifecycleToken a;
            ArrayList arrayList;
            ArrayList arrayList2;
            List<Breadcrumb> list2;
            String str2;
            boolean z2;
            RRWebEvent a2;
            RRWebBreadcrumbEvent rRWebBreadcrumbEvent;
            Object obj4;
            Object obj5;
            sentryOptions.getClass();
            sentryId.getClass();
            if (replayCache != null) {
                SentryOptions sentryOptions3 = replayCache.j;
                long min = Math.min(j, 300000L);
                long time = date.getTime();
                File file = new File(replayCache.n(), i + ".mp4");
                AutoClosableReentrantLock autoClosableReentrantLock = replayCache.o;
                AutoClosableReentrantLock autoClosableReentrantLock2 = replayCache.m;
                ArrayList arrayList3 = replayCache.r;
                long j4 = 0;
                if (file.exists() && file.length() > 0) {
                    file.delete();
                }
                ISentryLifecycleToken a3 = autoClosableReentrantLock.a();
                try {
                    if (arrayList3.isEmpty()) {
                        Y = new ArrayList();
                    } else {
                        Y = CollectionsKt.Y(arrayList3);
                    }
                    ArrayList arrayList4 = Y;
                    AutoCloseableKt.a(a3, null);
                    if (arrayList4.isEmpty()) {
                        sentryOptions3.getLogger().c(SentryLevel.DEBUG, "No captured frames, skipping generating a video segment", new Object[0]);
                        i6 = i2;
                        i7 = i3;
                        z = true;
                        generatedVideo = null;
                        breadcrumb = null;
                    } else {
                        ISentryLifecycleToken a4 = autoClosableReentrantLock2.a();
                        try {
                            ArrayList arrayList5 = arrayList3;
                            i6 = i2;
                            i7 = i3;
                            SimpleVideoEncoder simpleVideoEncoder = new SimpleVideoEncoder(sentryOptions3, new MuxerConfig(file, i7, i6, i4, i5));
                            MediaCodec mediaCodec = simpleVideoEncoder.c;
                            mediaCodec.configure((MediaFormat) simpleVideoEncoder.d.getValue(), (Surface) null, (MediaCrypto) null, 1);
                            simpleVideoEncoder.g = mediaCodec.createInputSurface();
                            mediaCodec.start();
                            simpleVideoEncoder.a(false);
                            AutoCloseableKt.a(a4, null);
                            replayCache.p = simpleVideoEncoder;
                            long j5 = 1000 / i4;
                            Object t = CollectionsKt.t(arrayList4);
                            z = true;
                            long j6 = time + min;
                            if (j6 <= Long.MIN_VALUE) {
                                longRange = LongRange.m;
                                obj = t;
                                sentryOptions2 = sentryOptions3;
                            } else {
                                obj = t;
                                sentryOptions2 = sentryOptions3;
                                longRange = new LongRange(time, j6 - 1);
                            }
                            LongProgression i9 = RangesKt.i(longRange, j5);
                            long j7 = i9.j;
                            long j8 = i9.k;
                            long j9 = j7;
                            long j10 = i9.l;
                            if ((j10 > 0 && j9 <= j8) || (j10 < 0 && j8 <= j9)) {
                                Object obj6 = obj;
                                int i10 = 0;
                                while (true) {
                                    Iterator it = arrayList4.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            obj2 = obj6;
                                            ReplayFrame replayFrame = (ReplayFrame) it.next();
                                            long j11 = j9 + j5;
                                            j2 = j10;
                                            long j12 = replayFrame.b;
                                            if (j9 <= j12 && j12 <= j11) {
                                                obj3 = replayFrame;
                                                break;
                                            }
                                            if (j12 > j11) {
                                                break;
                                            }
                                            obj6 = obj2;
                                            j10 = j2;
                                        } else {
                                            obj2 = obj6;
                                            j2 = j10;
                                            break;
                                        }
                                    }
                                    obj3 = obj2;
                                    ReplayFrame replayFrame2 = (ReplayFrame) obj3;
                                    if (replayFrame2 == null) {
                                        j3 = j8;
                                    } else {
                                        try {
                                            decodeFile = BitmapFactory.decodeFile(replayFrame2.a.getAbsolutePath());
                                            a = autoClosableReentrantLock2.a();
                                            j3 = j8;
                                        } catch (Throwable th) {
                                            th = th;
                                            j3 = j8;
                                        }
                                        try {
                                            SimpleVideoEncoder simpleVideoEncoder2 = replayCache.p;
                                            if (simpleVideoEncoder2 != null) {
                                                decodeFile.getClass();
                                                simpleVideoEncoder2.b(decodeFile);
                                            }
                                            try {
                                                AutoCloseableKt.a(a, null);
                                                decodeFile.recycle();
                                                i10++;
                                                arrayList = arrayList4;
                                                obj6 = obj3;
                                                arrayList2 = arrayList5;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                sentryOptions2.getLogger().b(SentryLevel.WARNING, "Unable to decode bitmap and encode it into a video, skipping frame", th);
                                                if (obj3 == null) {
                                                }
                                                if (j9 != j3) {
                                                }
                                            }
                                            if (j9 != j3) {
                                                j9 += j2;
                                                arrayList5 = arrayList2;
                                                arrayList4 = arrayList;
                                                j8 = j3;
                                                j10 = j2;
                                            } else {
                                                i8 = i10;
                                                break;
                                            }
                                        } catch (Throwable th3) {
                                            try {
                                                throw th3;
                                                break;
                                            } catch (Throwable th4) {
                                                throw th4;
                                                break;
                                            }
                                        }
                                    }
                                    if (obj3 == null) {
                                        replayCache.h(((ReplayFrame) obj3).a);
                                        ISentryLifecycleToken a5 = autoClosableReentrantLock.a();
                                        try {
                                            TypeIntrinsics.a(arrayList5);
                                            arrayList2 = arrayList5;
                                            arrayList2.remove(obj3);
                                            AutoCloseableKt.a(a5, null);
                                            arrayList = arrayList4;
                                            arrayList.remove(obj3);
                                            obj6 = null;
                                        } finally {
                                        }
                                    } else {
                                        arrayList = arrayList4;
                                        arrayList2 = arrayList5;
                                        obj6 = obj3;
                                    }
                                    if (j9 != j3) {
                                    }
                                }
                            } else {
                                i8 = 0;
                            }
                            if (i8 == 0) {
                                sentryOptions2.getLogger().c(SentryLevel.DEBUG, "Generated a video with no frames, not capturing a replay segment", new Object[0]);
                                replayCache.h(file);
                                generatedVideo = null;
                                breadcrumb = null;
                            } else {
                                ISentryLifecycleToken a6 = autoClosableReentrantLock2.a();
                                try {
                                    SimpleVideoEncoder simpleVideoEncoder3 = replayCache.p;
                                    if (simpleVideoEncoder3 != null) {
                                        simpleVideoEncoder3.c();
                                    }
                                    SimpleVideoEncoder simpleVideoEncoder4 = replayCache.p;
                                    if (simpleVideoEncoder4 != null) {
                                        SimpleMp4FrameMuxer simpleMp4FrameMuxer = simpleVideoEncoder4.f;
                                        if (simpleMp4FrameMuxer.e != 0) {
                                            j4 = (simpleMp4FrameMuxer.f + simpleMp4FrameMuxer.a) / 1000;
                                        }
                                    }
                                    long j13 = j4;
                                    breadcrumb = null;
                                    replayCache.p = null;
                                    AutoCloseableKt.a(a6, null);
                                    replayCache.v(j6);
                                    generatedVideo = new GeneratedVideo(file, i8, j13);
                                } finally {
                                }
                            }
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                    if (generatedVideo != null) {
                        File file2 = generatedVideo.a;
                        int i11 = generatedVideo.b;
                        long j14 = generatedVideo.c;
                        if (list == null) {
                            ?? obj7 = new Object();
                            obj7.j = EmptyList.j;
                            if (iScopes != null) {
                                iScopes.o(new p(26, obj7));
                            }
                            list2 = (List) obj7.j;
                        } else {
                            list2 = list;
                        }
                        Date c = DateUtils.c(date.getTime() + j14);
                        c.getClass();
                        SentryReplayEvent sentryReplayEvent = new SentryReplayEvent();
                        sentryReplayEvent.j = sentryId;
                        sentryReplayEvent.B = sentryId;
                        sentryReplayEvent.C = i;
                        sentryReplayEvent.D = c;
                        sentryReplayEvent.E = date;
                        sentryReplayEvent.A = replayType;
                        sentryReplayEvent.y = file2;
                        ArrayList arrayList6 = new ArrayList();
                        RRWebMetaEvent rRWebMetaEvent = new RRWebMetaEvent();
                        rRWebMetaEvent.k = date.getTime();
                        rRWebMetaEvent.m = i6;
                        rRWebMetaEvent.n = i7;
                        arrayList6.add(rRWebMetaEvent);
                        RRWebVideoEvent rRWebVideoEvent = new RRWebVideoEvent();
                        rRWebVideoEvent.k = date.getTime();
                        rRWebVideoEvent.m = i;
                        rRWebVideoEvent.o = j14;
                        rRWebVideoEvent.t = i11;
                        rRWebVideoEvent.n = file2.length();
                        rRWebVideoEvent.v = i4;
                        rRWebVideoEvent.r = i6;
                        rRWebVideoEvent.s = i7;
                        rRWebVideoEvent.w = 0;
                        rRWebVideoEvent.x = 0;
                        arrayList6.add(rRWebVideoEvent);
                        LinkedList linkedList = new LinkedList();
                        Breadcrumb breadcrumb2 = breadcrumb;
                        for (Breadcrumb breadcrumb3 : list2) {
                            if (breadcrumb2 != null && Intrinsics.a(breadcrumb2.p, "network.event")) {
                                ConcurrentHashMap concurrentHashMap = breadcrumb2.o;
                                concurrentHashMap.getClass();
                                Object obj8 = concurrentHashMap.get("action");
                                if (obj8 == null) {
                                    obj8 = breadcrumb;
                                }
                                if (Intrinsics.a(obj8, "NETWORK_AVAILABLE") && Intrinsics.a(breadcrumb3.p, "network.event") && breadcrumb3.o.containsKey("network_type") && breadcrumb3.b().getTime() + 5000 >= date.getTime()) {
                                    z2 = z;
                                    if ((breadcrumb3.b().getTime() < date.getTime() || z2) && breadcrumb3.b().getTime() < c.getTime() && (a2 = sentryOptions.getReplayController().P().a(breadcrumb3)) != null) {
                                        arrayList6.add(a2);
                                        if (!(a2 instanceof RRWebBreadcrumbEvent)) {
                                            rRWebBreadcrumbEvent = (RRWebBreadcrumbEvent) a2;
                                        } else {
                                            rRWebBreadcrumbEvent = breadcrumb;
                                        }
                                        if (rRWebBreadcrumbEvent == 0) {
                                            obj4 = rRWebBreadcrumbEvent.o;
                                        } else {
                                            obj4 = breadcrumb;
                                        }
                                        if (Intrinsics.a(obj4, "navigation")) {
                                            RRWebBreadcrumbEvent rRWebBreadcrumbEvent2 = (RRWebBreadcrumbEvent) a2;
                                            ConcurrentHashMap concurrentHashMap2 = rRWebBreadcrumbEvent2.r;
                                            if (concurrentHashMap2 == null || (obj5 = concurrentHashMap2.get("to")) == null) {
                                                obj5 = breadcrumb;
                                            }
                                            if (obj5 instanceof String) {
                                                ConcurrentHashMap concurrentHashMap3 = rRWebBreadcrumbEvent2.r;
                                                concurrentHashMap3.getClass();
                                                Object obj9 = concurrentHashMap3.get("to");
                                                obj9.getClass();
                                                linkedList.add((String) obj9);
                                            }
                                        }
                                    }
                                    breadcrumb2 = breadcrumb3;
                                }
                            }
                            z2 = false;
                            if (breadcrumb3.b().getTime() < date.getTime()) {
                            }
                            arrayList6.add(a2);
                            if (!(a2 instanceof RRWebBreadcrumbEvent)) {
                            }
                            if (rRWebBreadcrumbEvent == 0) {
                            }
                            if (Intrinsics.a(obj4, "navigation")) {
                            }
                            breadcrumb2 = breadcrumb3;
                        }
                        if (str != null && !Intrinsics.a(CollectionsKt.t(linkedList), str)) {
                            linkedList.addFirst(str);
                        }
                        b(deque, c.getTime(), new CaptureStrategy$Companion$buildReplay$4(date, arrayList6));
                        if (i == 0) {
                            ?? rRWebEvent = new RRWebEvent(RRWebEventType.Custom);
                            HashMap hashMap = new HashMap();
                            rRWebEvent.m = hashMap;
                            rRWebEvent.l = "options";
                            SdkVersion sdkVersion = sentryOptions.getSdkVersion();
                            if (sdkVersion != null) {
                                hashMap.put("nativeSdkName", sdkVersion.j);
                                hashMap.put("nativeSdkVersion", sdkVersion.k);
                            }
                            SentryReplayOptions sessionReplay = sentryOptions.getSessionReplay();
                            Double d = sessionReplay.e;
                            CopyOnWriteArraySet copyOnWriteArraySet = sessionReplay.a;
                            hashMap.put("errorSampleRate", d);
                            hashMap.put("sessionSampleRate", sessionReplay.d);
                            hashMap.put("maskAllImages", Boolean.valueOf(copyOnWriteArraySet.contains("android.widget.ImageView")));
                            hashMap.put("maskAllText", Boolean.valueOf(copyOnWriteArraySet.contains("android.widget.TextView")));
                            hashMap.put("quality", sessionReplay.f.serializedName());
                            hashMap.put("maskedViewClasses", copyOnWriteArraySet);
                            hashMap.put("unmaskedViewClasses", sessionReplay.b);
                            if (sessionReplay.n == ScreenshotStrategyType.PIXEL_COPY) {
                                str2 = "pixelCopy";
                            } else {
                                str2 = "canvas";
                            }
                            hashMap.put("screenshotStrategy", str2);
                            hashMap.put("networkDetailHasUrls", Boolean.valueOf(!sessionReplay.p.isEmpty()));
                            if (!sessionReplay.p.isEmpty()) {
                                hashMap.put("networkDetailAllowUrls", sessionReplay.p);
                                hashMap.put("networkRequestHeaders", sessionReplay.s);
                                hashMap.put("networkResponseHeaders", sessionReplay.t);
                                hashMap.put("networkCaptureBodies", Boolean.valueOf(sessionReplay.r));
                                if (!sessionReplay.q.isEmpty()) {
                                    hashMap.put("networkDetailDenyUrls", sessionReplay.q);
                                }
                            }
                            arrayList6.add(rRWebEvent);
                        }
                        ?? obj10 = new Object();
                        obj10.j = Integer.valueOf(i);
                        obj10.k = CollectionsKt.R(arrayList6, new Object());
                        sentryReplayEvent.F = linkedList;
                        return new ReplaySegment.Created(sentryReplayEvent, obj10);
                    }
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return ReplaySegment.Failed.a;
        }

        public static void b(Deque deque, long j, Function1 function1) {
            deque.getClass();
            Iterator it = deque.iterator();
            it.getClass();
            while (it.hasNext()) {
                RRWebEvent rRWebEvent = (RRWebEvent) it.next();
                if (rRWebEvent.k < j) {
                    if (function1 != null) {
                        ((CaptureStrategy$Companion$buildReplay$4) function1).b(rRWebEvent);
                    }
                    it.remove();
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ReplaySegment {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Created extends ReplaySegment {
            public final SentryReplayEvent a;
            public final ReplayRecording b;

            public Created(SentryReplayEvent sentryReplayEvent, ReplayRecording replayRecording) {
                this.a = sentryReplayEvent;
                this.b = replayRecording;
            }

            public static void a(Created created, IScopes iScopes) {
                Hint hint = new Hint();
                if (iScopes != null) {
                    SentryReplayEvent sentryReplayEvent = created.a;
                    hint.g = created.b;
                    iScopes.r(sentryReplayEvent, hint);
                    return;
                }
                created.getClass();
            }

            public final boolean equals(Object obj) {
                if (this != obj) {
                    if (obj instanceof Created) {
                        Created created = (Created) obj;
                        if (!this.a.equals(created.a) || !this.b.equals(created.b)) {
                            return false;
                        }
                        return true;
                    }
                    return false;
                }
                return true;
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return "Created(replay=" + this.a + ", recording=" + this.b + ')';
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Failed extends ReplaySegment {
            public static final Failed a = new Object();
        }
    }

    void a();

    void b(MotionEvent motionEvent);

    void c(ScreenshotRecorderConfig screenshotRecorderConfig);

    CaptureStrategy d();

    void e(int i, SentryId sentryId, SentryReplayEvent.ReplayType replayType);

    void f(Function1 function1, boolean z);

    void g(Function2 function2);

    void stop();
}
