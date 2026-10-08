package io.sentry.android.replay.capture;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.view.MotionEvent;
import io.sentry.DateUtils;
import io.sentry.IScopes;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayEvent;
import io.sentry.android.replay.ReplayCache;
import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;
import io.sentry.android.replay.capture.CaptureStrategy;
import io.sentry.android.replay.gestures.ReplayGestureConverter;
import io.sentry.android.replay.util.ReplayExecutorService;
import io.sentry.android.replay.util.ReplayRunnable;
import io.sentry.protocol.SentryId;
import io.sentry.rrweb.RRWebInteractionEvent;
import io.sentry.rrweb.RRWebInteractionMoveEvent;
import io.sentry.transport.ICurrentDateProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseRequiresApi"})
@TargetApi(26)
/* loaded from: classes.dex */
public abstract class BaseCaptureStrategy implements CaptureStrategy {
    public static final /* synthetic */ KProperty[] q;
    public final SentryOptions a;
    public final IScopes b;
    public final ICurrentDateProvider c;
    public final ScheduledExecutorService d;
    public final Lazy e;
    public final ReplayGestureConverter f;
    public final AtomicBoolean g;
    public ReplayCache h;
    public final BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1 i;
    public final BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2 j;
    public final AtomicLong k;
    public final BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 l;
    public final BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1 m;
    public final BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2 n;
    public final BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3 o;
    public final ConcurrentLinkedDeque p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReplayPersistingExecutorServiceThreadFactory implements ThreadFactory {
        public int a;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            runnable.getClass();
            StringBuilder sb = new StringBuilder("SentryReplayPersister-");
            int i = this.a;
            this.a = i + 1;
            sb.append(i);
            Thread thread = new Thread(runnable, sb.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(BaseCaptureStrategy.class, "recorderConfig", "getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;", 0);
        Reflection.a.getClass();
        q = new KProperty[]{mutablePropertyReference1Impl, new MutablePropertyReference1Impl(BaseCaptureStrategy.class, "segmentTimestamp", "getSegmentTimestamp()Ljava/util/Date;", 0), new MutablePropertyReference1Impl(BaseCaptureStrategy.class, "screenAtStart", "getScreenAtStart()Ljava/lang/String;", 0), new MutablePropertyReference1Impl(BaseCaptureStrategy.class, "currentReplayId", "getCurrentReplayId()Lio/sentry/protocol/SentryId;", 0), new MutablePropertyReference1Impl(BaseCaptureStrategy.class, "currentSegment", "getCurrentSegment()I", 0), new MutablePropertyReference1Impl(BaseCaptureStrategy.class, "replayType", "getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;", 0)};
    }

    public BaseCaptureStrategy(SentryOptions sentryOptions, IScopes iScopes, ICurrentDateProvider iCurrentDateProvider, ScheduledExecutorService scheduledExecutorService) {
        sentryOptions.getClass();
        iCurrentDateProvider.getClass();
        scheduledExecutorService.getClass();
        this.a = sentryOptions;
        this.b = iScopes;
        this.c = iCurrentDateProvider;
        this.d = scheduledExecutorService;
        this.e = LazyKt.b(new Function0<ReplayExecutorService>() { // from class: io.sentry.android.replay.capture.BaseCaptureStrategy$persistingExecutor$2
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new Object());
                newSingleThreadScheduledExecutor.getClass();
                return new ReplayExecutorService(newSingleThreadScheduledExecutor, BaseCaptureStrategy.this.a);
            }
        });
        this.f = new ReplayGestureConverter(iCurrentDateProvider);
        this.g = new AtomicBoolean(false);
        this.i = new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1(this, this);
        this.j = new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2(this, this);
        this.k = new AtomicLong();
        this.l = new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3(this, this);
        this.m = new BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1(SentryId.k, this, this);
        this.n = new BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2(this, this);
        this.o = new BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3(this, this);
        this.p = new ConcurrentLinkedDeque();
    }

    public static CaptureStrategy.ReplaySegment h(BaseCaptureStrategy baseCaptureStrategy, long j, Date date, SentryId sentryId, int i, int i2, int i3, int i4, int i5) {
        BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3 baseCaptureStrategy$special$$inlined$persistableAtomic$default$3 = baseCaptureStrategy.o;
        KProperty[] kPropertyArr = q;
        KProperty kProperty = kPropertyArr[5];
        baseCaptureStrategy$special$$inlined$persistableAtomic$default$3.getClass();
        kProperty.getClass();
        SentryReplayEvent.ReplayType replayType = (SentryReplayEvent.ReplayType) baseCaptureStrategy$special$$inlined$persistableAtomic$default$3.a.get();
        ReplayCache replayCache = baseCaptureStrategy.h;
        BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 = baseCaptureStrategy.l;
        KProperty kProperty2 = kPropertyArr[2];
        baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.getClass();
        kProperty2.getClass();
        String str = (String) baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.a.get();
        ConcurrentLinkedDeque concurrentLinkedDeque = baseCaptureStrategy.p;
        sentryId.getClass();
        replayType.getClass();
        concurrentLinkedDeque.getClass();
        return CaptureStrategy.Companion.a(baseCaptureStrategy.b, baseCaptureStrategy.a, j, date, sentryId, i, i2, i3, replayType, replayCache, i4, i5, str, null, concurrentLinkedDeque);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r7 != 6) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.Object, io.sentry.rrweb.RRWebInteractionMoveEvent$Position] */
    @Override // io.sentry.android.replay.capture.CaptureStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(MotionEvent motionEvent) {
        List list;
        long j;
        ScreenshotRecorderConfig k = k();
        if (k != null) {
            ReplayGestureConverter replayGestureConverter = this.f;
            ICurrentDateProvider iCurrentDateProvider = replayGestureConverter.a;
            LinkedHashMap linkedHashMap = replayGestureConverter.b;
            float f = k.d;
            float f2 = k.c;
            int actionMasked = motionEvent.getActionMasked();
            int i = 10;
            int i2 = -1;
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        if (actionMasked != 3) {
                            if (actionMasked != 5) {
                            }
                        } else {
                            linkedHashMap.clear();
                            RRWebInteractionEvent rRWebInteractionEvent = new RRWebInteractionEvent();
                            rRWebInteractionEvent.k = iCurrentDateProvider.b();
                            rRWebInteractionEvent.o = motionEvent.getX() * f2;
                            rRWebInteractionEvent.p = motionEvent.getY() * f;
                            rRWebInteractionEvent.n = 0;
                            rRWebInteractionEvent.r = 0;
                            rRWebInteractionEvent.m = RRWebInteractionEvent.InteractionType.TouchCancel;
                            list = CollectionsKt.B(rRWebInteractionEvent);
                            if (list != null) {
                                CollectionsKt.g(this.p, list);
                                return;
                            }
                            return;
                        }
                    } else {
                        long b = iCurrentDateProvider.b();
                        long j2 = replayGestureConverter.d;
                        long j3 = 0;
                        if (j2 == 0 || j2 + 50 <= b) {
                            replayGestureConverter.d = b;
                            Set<Integer> keySet = linkedHashMap.keySet();
                            keySet.getClass();
                            for (Integer num : keySet) {
                                num.getClass();
                                int findPointerIndex = motionEvent.findPointerIndex(num.intValue());
                                if (findPointerIndex == i2) {
                                    j = j3;
                                } else {
                                    j = j3;
                                    if (replayGestureConverter.c == j) {
                                        replayGestureConverter.c = b;
                                    }
                                    Object obj = linkedHashMap.get(num);
                                    obj.getClass();
                                    ?? obj2 = new Object();
                                    obj2.k = motionEvent.getX(findPointerIndex) * f2;
                                    obj2.l = motionEvent.getY(findPointerIndex) * f;
                                    obj2.j = 0;
                                    obj2.m = b - replayGestureConverter.c;
                                    ((Collection) obj).add(obj2);
                                }
                                j3 = j;
                                i2 = -1;
                            }
                            long j4 = j3;
                            long j5 = b - replayGestureConverter.c;
                            if (j5 > 500) {
                                ArrayList arrayList = new ArrayList(linkedHashMap.size());
                                for (Map.Entry entry : linkedHashMap.entrySet()) {
                                    int intValue = ((Number) entry.getKey()).intValue();
                                    ArrayList<RRWebInteractionMoveEvent.Position> arrayList2 = (ArrayList) entry.getValue();
                                    if (!arrayList2.isEmpty()) {
                                        RRWebInteractionMoveEvent rRWebInteractionMoveEvent = new RRWebInteractionMoveEvent();
                                        rRWebInteractionMoveEvent.k = b;
                                        ArrayList arrayList3 = new ArrayList(CollectionsKt.m(arrayList2, i));
                                        for (RRWebInteractionMoveEvent.Position position : arrayList2) {
                                            position.m -= j5;
                                            arrayList3.add(position);
                                            rRWebInteractionMoveEvent = rRWebInteractionMoveEvent;
                                        }
                                        RRWebInteractionMoveEvent rRWebInteractionMoveEvent2 = rRWebInteractionMoveEvent;
                                        rRWebInteractionMoveEvent2.n = arrayList3;
                                        rRWebInteractionMoveEvent2.m = intValue;
                                        arrayList.add(rRWebInteractionMoveEvent2);
                                        Object obj3 = linkedHashMap.get(Integer.valueOf(intValue));
                                        obj3.getClass();
                                        ((ArrayList) obj3).clear();
                                        i = 10;
                                    }
                                }
                                replayGestureConverter.c = j4;
                                list = arrayList;
                                if (list != null) {
                                }
                            }
                        }
                        list = null;
                        if (list != null) {
                        }
                    }
                }
                int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
                if (findPointerIndex2 != -1) {
                    linkedHashMap.remove(Integer.valueOf(pointerId));
                    RRWebInteractionEvent rRWebInteractionEvent2 = new RRWebInteractionEvent();
                    rRWebInteractionEvent2.k = iCurrentDateProvider.b();
                    rRWebInteractionEvent2.o = motionEvent.getX(findPointerIndex2) * f2;
                    rRWebInteractionEvent2.p = motionEvent.getY(findPointerIndex2) * f;
                    rRWebInteractionEvent2.n = 0;
                    rRWebInteractionEvent2.r = pointerId;
                    rRWebInteractionEvent2.m = RRWebInteractionEvent.InteractionType.TouchEnd;
                    list = CollectionsKt.B(rRWebInteractionEvent2);
                    if (list != null) {
                    }
                }
                list = null;
                if (list != null) {
                }
            }
            int pointerId2 = motionEvent.getPointerId(motionEvent.getActionIndex());
            int findPointerIndex3 = motionEvent.findPointerIndex(pointerId2);
            if (findPointerIndex3 != -1) {
                linkedHashMap.put(Integer.valueOf(pointerId2), new ArrayList(10));
                RRWebInteractionEvent rRWebInteractionEvent3 = new RRWebInteractionEvent();
                rRWebInteractionEvent3.k = iCurrentDateProvider.b();
                rRWebInteractionEvent3.o = motionEvent.getX(findPointerIndex3) * f2;
                rRWebInteractionEvent3.p = motionEvent.getY(findPointerIndex3) * f;
                rRWebInteractionEvent3.n = 0;
                rRWebInteractionEvent3.r = pointerId2;
                rRWebInteractionEvent3.m = RRWebInteractionEvent.InteractionType.TouchStart;
                list = CollectionsKt.B(rRWebInteractionEvent3);
                if (list != null) {
                }
            }
            list = null;
            if (list != null) {
            }
        }
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public void e(int i, SentryId sentryId, SentryReplayEvent.ReplayType replayType) {
        sentryId.getClass();
        this.h = new ReplayCache(this.a, sentryId);
        KProperty[] kPropertyArr = q;
        KProperty kProperty = kPropertyArr[3];
        BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1 baseCaptureStrategy$special$$inlined$persistableAtomic$default$1 = this.m;
        baseCaptureStrategy$special$$inlined$persistableAtomic$default$1.getClass();
        kProperty.getClass();
        Object andSet = baseCaptureStrategy$special$$inlined$persistableAtomic$default$1.a.getAndSet(sentryId);
        if (!Intrinsics.a(andSet, sentryId)) {
            BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1.AnonymousClass2 anonymousClass2 = new BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1.AnonymousClass2(andSet, sentryId, baseCaptureStrategy$special$$inlined$persistableAtomic$default$1.c);
            BaseCaptureStrategy baseCaptureStrategy = baseCaptureStrategy$special$$inlined$persistableAtomic$default$1.b;
            SentryOptions sentryOptions = baseCaptureStrategy.a;
            if (sentryOptions.getThreadChecker().c()) {
                ((ScheduledExecutorService) baseCaptureStrategy.e.getValue()).submit(new ReplayRunnable(new BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1.AnonymousClass1(anonymousClass2), "CaptureStrategy.runInBackground"));
            } else {
                try {
                    anonymousClass2.a();
                } catch (Throwable th) {
                    sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
                }
            }
        }
        l(i);
        if (replayType == null) {
            if (this instanceof SessionCaptureStrategy) {
                replayType = SentryReplayEvent.ReplayType.SESSION;
            } else {
                replayType = SentryReplayEvent.ReplayType.BUFFER;
            }
        }
        replayType.getClass();
        KProperty kProperty2 = kPropertyArr[5];
        BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3 baseCaptureStrategy$special$$inlined$persistableAtomic$default$3 = this.o;
        baseCaptureStrategy$special$$inlined$persistableAtomic$default$3.getClass();
        kProperty2.getClass();
        Object andSet2 = baseCaptureStrategy$special$$inlined$persistableAtomic$default$3.a.getAndSet(replayType);
        if (!Intrinsics.a(andSet2, replayType)) {
            final BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3.AnonymousClass2 anonymousClass22 = new BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3.AnonymousClass2(andSet2, replayType, baseCaptureStrategy$special$$inlined$persistableAtomic$default$3.c);
            BaseCaptureStrategy baseCaptureStrategy2 = baseCaptureStrategy$special$$inlined$persistableAtomic$default$3.b;
            SentryOptions sentryOptions2 = baseCaptureStrategy2.a;
            if (sentryOptions2.getThreadChecker().c()) {
                ((ScheduledExecutorService) baseCaptureStrategy2.e.getValue()).submit(new ReplayRunnable(new Runnable() { // from class: io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass2.this.a();
                    }
                }, "CaptureStrategy.runInBackground"));
            } else {
                try {
                    anonymousClass22.a();
                } catch (Throwable th2) {
                    sentryOptions2.getLogger().b(SentryLevel.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th2);
                }
            }
        }
        n(DateUtils.b());
        this.k.set(this.c.b());
    }

    public final SentryId i() {
        KProperty kProperty = q[3];
        BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1 baseCaptureStrategy$special$$inlined$persistableAtomic$default$1 = this.m;
        baseCaptureStrategy$special$$inlined$persistableAtomic$default$1.getClass();
        kProperty.getClass();
        return (SentryId) baseCaptureStrategy$special$$inlined$persistableAtomic$default$1.a.get();
    }

    public final int j() {
        KProperty kProperty = q[4];
        BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2 baseCaptureStrategy$special$$inlined$persistableAtomic$default$2 = this.n;
        baseCaptureStrategy$special$$inlined$persistableAtomic$default$2.getClass();
        kProperty.getClass();
        return ((Number) baseCaptureStrategy$special$$inlined$persistableAtomic$default$2.a.get()).intValue();
    }

    public final ScreenshotRecorderConfig k() {
        KProperty kProperty = q[0];
        BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1 baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1 = this.i;
        baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.getClass();
        kProperty.getClass();
        return (ScreenshotRecorderConfig) baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.a.get();
    }

    public final void l(int i) {
        KProperty kProperty = q[4];
        Integer valueOf = Integer.valueOf(i);
        BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2 baseCaptureStrategy$special$$inlined$persistableAtomic$default$2 = this.n;
        baseCaptureStrategy$special$$inlined$persistableAtomic$default$2.getClass();
        kProperty.getClass();
        Object andSet = baseCaptureStrategy$special$$inlined$persistableAtomic$default$2.a.getAndSet(valueOf);
        if (!Intrinsics.a(andSet, valueOf)) {
            final BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2.AnonymousClass2 anonymousClass2 = new BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2.AnonymousClass2(andSet, valueOf, baseCaptureStrategy$special$$inlined$persistableAtomic$default$2.c);
            BaseCaptureStrategy baseCaptureStrategy = baseCaptureStrategy$special$$inlined$persistableAtomic$default$2.b;
            SentryOptions sentryOptions = baseCaptureStrategy.a;
            if (sentryOptions.getThreadChecker().c()) {
                ((ScheduledExecutorService) baseCaptureStrategy.e.getValue()).submit(new ReplayRunnable(new Runnable
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0046: INVOKE 
                      (wrap:java.util.concurrent.ScheduledExecutorService:0x0038: CHECK_CAST (java.util.concurrent.ScheduledExecutorService) (wrap:java.lang.Object:0x0034: INVOKE 
                      (wrap:kotlin.Lazy:0x0032: IGET (r3v2 'baseCaptureStrategy' io.sentry.android.replay.capture.BaseCaptureStrategy) A[WRAPPED] (LINE:51) io.sentry.android.replay.capture.BaseCaptureStrategy.e kotlin.Lazy)
                     INTERFACE call: kotlin.Lazy.getValue():java.lang.Object A[MD:():java.lang.Object (m), WRAPPED] (LINE:53)))
                      (wrap:io.sentry.android.replay.util.ReplayRunnable:0x0043: CONSTRUCTOR 
                      (wrap:java.lang.Runnable:0x003e: CONSTRUCTOR 
                      (r1v2 'anonymousClass2' io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2 A[DONT_INLINE])
                     A[MD:(io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2):void (m), WRAPPED] (LINE:63) call: io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2.1.<init>(io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2):void type: CONSTRUCTOR)
                      ("CaptureStrategy.runInBackground")
                     A[MD:(java.lang.Runnable, java.lang.String):void (m), WRAPPED] (LINE:68) call: io.sentry.android.replay.util.ReplayRunnable.<init>(java.lang.Runnable, java.lang.String):void type: CONSTRUCTOR)
                     INTERFACE call: java.util.concurrent.ExecutorService.submit(java.lang.Runnable):java.util.concurrent.Future A[MD:(java.lang.Runnable):java.util.concurrent.Future<?> (c)] (LINE:71) in method: io.sentry.android.replay.capture.BaseCaptureStrategy.l(int):void, file: classes.dex
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2.1.<init>(io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2):void, class status: GENERATED_AND_UNLOADED
                    	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:289)
                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:803)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1117)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:777)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1117)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:884)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                    	... 31 more
                    */
                /*
                    this = this;
                    kotlin.reflect.KProperty[] r0 = io.sentry.android.replay.capture.BaseCaptureStrategy.q
                    r1 = 4
                    r0 = r0[r1]
                    java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                    io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2 r3 = r3.n
                    r3.getClass()
                    r0.getClass()
                    java.util.concurrent.atomic.AtomicReference r0 = r3.a
                    java.lang.Object r0 = r0.getAndSet(r4)
                    boolean r1 = kotlin.jvm.internal.Intrinsics.a(r0, r4)
                    if (r1 != 0) goto L5a
                    io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2 r1 = new io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2
                    io.sentry.android.replay.capture.BaseCaptureStrategy r2 = r3.c
                    r1.<init>(r0, r4, r2)
                    io.sentry.android.replay.capture.BaseCaptureStrategy r3 = r3.b
                    io.sentry.SentryOptions r4 = r3.a
                    io.sentry.util.thread.IThreadChecker r0 = r4.getThreadChecker()
                    boolean r0 = r0.c()
                    if (r0 == 0) goto L4a
                    kotlin.Lazy r3 = r3.e
                    java.lang.Object r3 = r3.getValue()
                    java.util.concurrent.ScheduledExecutorService r3 = (java.util.concurrent.ScheduledExecutorService) r3
                    io.sentry.android.replay.util.ReplayRunnable r4 = new io.sentry.android.replay.util.ReplayRunnable
                    io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$1 r0 = new io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$1
                    r0.<init>()
                    java.lang.String r1 = "CaptureStrategy.runInBackground"
                    r4.<init>(r0, r1)
                    r3.submit(r4)
                    return
                L4a:
                    r1.a()     // Catch: java.lang.Throwable -> L4e
                    return
                L4e:
                    r3 = move-exception
                    io.sentry.ILogger r4 = r4.getLogger()
                    io.sentry.SentryLevel r0 = io.sentry.SentryLevel.ERROR
                    java.lang.String r1 = "Failed to execute task CaptureStrategy.runInBackground"
                    r4.b(r0, r1, r3)
                L5a:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.replay.capture.BaseCaptureStrategy.l(int):void");
            }

            public final void m(ScreenshotRecorderConfig screenshotRecorderConfig) {
                KProperty kProperty = q[0];
                BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1 baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1 = this.i;
                baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.getClass();
                kProperty.getClass();
                Object andSet = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.a.getAndSet(screenshotRecorderConfig);
                if (!Intrinsics.a(andSet, screenshotRecorderConfig)) {
                    final BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.AnonymousClass2 anonymousClass2 = new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.AnonymousClass2(andSet, screenshotRecorderConfig, baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.c);
                    BaseCaptureStrategy baseCaptureStrategy = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.b;
                    SentryOptions sentryOptions = baseCaptureStrategy.a;
                    if (sentryOptions.getThreadChecker().c()) {
                        ((ScheduledExecutorService) baseCaptureStrategy.e.getValue()).submit(new ReplayRunnable(new Runnable() { // from class: io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass2.this.a();
                            }
                        }, "CaptureStrategy.runInBackground"));
                        return;
                    }
                    try {
                        anonymousClass2.a();
                    } catch (Throwable th) {
                        sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
                    }
                }
            }

            public final void n(Date date) {
                KProperty kProperty = q[1];
                BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2 baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2 = this.j;
                baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2.getClass();
                kProperty.getClass();
                Object andSet = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2.a.getAndSet(date);
                if (!Intrinsics.a(andSet, date)) {
                    final BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2.AnonymousClass2 anonymousClass2 = new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2.AnonymousClass2(andSet, date, baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2.c);
                    BaseCaptureStrategy baseCaptureStrategy = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2.b;
                    SentryOptions sentryOptions = baseCaptureStrategy.a;
                    if (sentryOptions.getThreadChecker().c()) {
                        ((ScheduledExecutorService) baseCaptureStrategy.e.getValue()).submit(new ReplayRunnable(new Runnable() { // from class: io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass2.this.a();
                            }
                        }, "CaptureStrategy.runInBackground"));
                        return;
                    }
                    try {
                        anonymousClass2.a();
                    } catch (Throwable th) {
                        sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
                    }
                }
            }
        }
