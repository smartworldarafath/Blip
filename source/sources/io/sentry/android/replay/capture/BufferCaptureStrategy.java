package io.sentry.android.replay.capture;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.view.MotionEvent;
import defpackage.p;
import io.sentry.DateUtils;
import io.sentry.IScopes;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayEvent;
import io.sentry.android.replay.ReplayCache;
import io.sentry.android.replay.ReplayFrame;
import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;
import io.sentry.android.replay.capture.CaptureStrategy;
import io.sentry.android.replay.util.ReplayExecutorService;
import io.sentry.android.replay.util.ReplayRunnable;
import io.sentry.protocol.SentryId;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.rrweb.RRWebVideoEvent;
import io.sentry.transport.CurrentDateProvider;
import io.sentry.transport.ICurrentDateProvider;
import io.sentry.util.Random;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseRequiresApi"})
@TargetApi(26)
/* loaded from: classes.dex */
public final class BufferCaptureStrategy extends BaseCaptureStrategy {
    public static final /* synthetic */ int w = 0;
    public final SentryOptions r;
    public final IScopes s;
    public final ICurrentDateProvider t;
    public final Random u;
    public final ArrayList v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferCaptureStrategy(SentryOptions sentryOptions, ScopesAdapter scopesAdapter, CurrentDateProvider currentDateProvider, Random random, ReplayExecutorService replayExecutorService) {
        super(sentryOptions, scopesAdapter, currentDateProvider, replayExecutorService);
        sentryOptions.getClass();
        currentDateProvider.getClass();
        random.getClass();
        replayExecutorService.getClass();
        this.r = sentryOptions;
        this.s = scopesAdapter;
        this.t = currentDateProvider;
        this.u = random;
        this.v = new ArrayList();
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void a() {
        o("pause", new Function1<CaptureStrategy.ReplaySegment, Unit>() { // from class: io.sentry.android.replay.capture.BufferCaptureStrategy$pause$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                CaptureStrategy.ReplaySegment replaySegment = (CaptureStrategy.ReplaySegment) obj;
                replaySegment.getClass();
                if (replaySegment instanceof CaptureStrategy.ReplaySegment.Created) {
                    BufferCaptureStrategy bufferCaptureStrategy = BufferCaptureStrategy.this;
                    bufferCaptureStrategy.v.add(replaySegment);
                    bufferCaptureStrategy.l(bufferCaptureStrategy.j() + 1);
                }
                return Unit.a;
            }
        });
    }

    @Override // io.sentry.android.replay.capture.BaseCaptureStrategy, io.sentry.android.replay.capture.CaptureStrategy
    public final void b(MotionEvent motionEvent) {
        super.b(motionEvent);
        CaptureStrategy.Companion.b(this.p, this.t.b() - this.r.getSessionReplay().h, null);
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void c(ScreenshotRecorderConfig screenshotRecorderConfig) {
        o("configuration_changed", new Function1<CaptureStrategy.ReplaySegment, Unit>() { // from class: io.sentry.android.replay.capture.BufferCaptureStrategy$onConfigurationChanged$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                CaptureStrategy.ReplaySegment replaySegment = (CaptureStrategy.ReplaySegment) obj;
                replaySegment.getClass();
                if (replaySegment instanceof CaptureStrategy.ReplaySegment.Created) {
                    BufferCaptureStrategy bufferCaptureStrategy = BufferCaptureStrategy.this;
                    bufferCaptureStrategy.v.add(replaySegment);
                    bufferCaptureStrategy.l(bufferCaptureStrategy.j() + 1);
                }
                return Unit.a;
            }
        });
        m(screenshotRecorderConfig);
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final CaptureStrategy d() {
        boolean z = this.g.get();
        SentryOptions sentryOptions = this.r;
        if (z) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Not converting to session mode, because the process is about to terminate", new Object[0]);
            return this;
        }
        SessionCaptureStrategy sessionCaptureStrategy = new SessionCaptureStrategy(sentryOptions, this.s, this.t, this.d);
        sessionCaptureStrategy.m(k());
        sessionCaptureStrategy.e(j(), i(), SentryReplayEvent.ReplayType.BUFFER);
        return sessionCaptureStrategy;
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void f(final Function1 function1, boolean z) {
        SentryOptions sentryOptions = this.r;
        Double d = sentryOptions.getSessionReplay().e;
        Random random = this.u;
        random.getClass();
        if (d != null && d.doubleValue() >= random.c()) {
            IScopes iScopes = this.s;
            if (iScopes != null) {
                iScopes.o(new p(25, this));
            }
            if (z) {
                this.g.set(true);
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Not capturing replay for crashed event, will be captured on next launch", new Object[0]);
                return;
            } else {
                o("capture_replay", new Function1<CaptureStrategy.ReplaySegment, Unit>() { // from class: io.sentry.android.replay.capture.BufferCaptureStrategy$captureReplay$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        Object remove;
                        Object remove2;
                        CaptureStrategy.ReplaySegment replaySegment = (CaptureStrategy.ReplaySegment) obj;
                        replaySegment.getClass();
                        BufferCaptureStrategy bufferCaptureStrategy = BufferCaptureStrategy.this;
                        ArrayList arrayList = bufferCaptureStrategy.v;
                        IScopes iScopes2 = bufferCaptureStrategy.s;
                        arrayList.getClass();
                        if (arrayList.isEmpty()) {
                            remove = null;
                        } else {
                            remove = arrayList.remove(0);
                        }
                        CaptureStrategy.ReplaySegment.Created created = (CaptureStrategy.ReplaySegment.Created) remove;
                        while (created != null) {
                            CaptureStrategy.ReplaySegment.Created.a(created, iScopes2);
                            if (arrayList.isEmpty()) {
                                remove2 = null;
                            } else {
                                remove2 = arrayList.remove(0);
                            }
                            created = (CaptureStrategy.ReplaySegment.Created) remove2;
                            Thread.sleep(100L);
                        }
                        if (replaySegment instanceof CaptureStrategy.ReplaySegment.Created) {
                            CaptureStrategy.ReplaySegment.Created created2 = (CaptureStrategy.ReplaySegment.Created) replaySegment;
                            CaptureStrategy.ReplaySegment.Created.a(created2, iScopes2);
                            Date date = created2.a.D;
                            date.getClass();
                            function1.b(date);
                        }
                        return Unit.a;
                    }
                });
                return;
            }
        }
        sentryOptions.getLogger().c(SentryLevel.INFO, "Replay wasn't sampled by onErrorSampleRate, not capturing for event", new Object[0]);
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void g(final Function2 function2) {
        final long b = this.t.b();
        this.d.submit(new ReplayRunnable(new Runnable() { // from class: io.sentry.android.replay.capture.b
            /* JADX WARN: Type inference failed for: r4v1, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                int i = BufferCaptureStrategy.w;
                final BufferCaptureStrategy bufferCaptureStrategy = BufferCaptureStrategy.this;
                ReplayCache replayCache = bufferCaptureStrategy.h;
                if (replayCache != null) {
                    function2.n(replayCache, Long.valueOf(b));
                }
                final long b2 = bufferCaptureStrategy.t.b() - bufferCaptureStrategy.r.getSessionReplay().h;
                ReplayCache replayCache2 = bufferCaptureStrategy.h;
                if (replayCache2 != null) {
                    str = replayCache2.v(b2);
                } else {
                    str = null;
                }
                BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 = bufferCaptureStrategy.l;
                KProperty kProperty = BaseCaptureStrategy.q[2];
                baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.getClass();
                kProperty.getClass();
                Object andSet = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.a.getAndSet(str);
                if (!Intrinsics.a(andSet, str)) {
                    BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.AnonymousClass2 anonymousClass2 = new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.AnonymousClass2(andSet, str, baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.c);
                    BaseCaptureStrategy baseCaptureStrategy = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.b;
                    SentryOptions sentryOptions = baseCaptureStrategy.a;
                    if (sentryOptions.getThreadChecker().c()) {
                        ((ScheduledExecutorService) baseCaptureStrategy.e.getValue()).submit(new ReplayRunnable(new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.AnonymousClass1(anonymousClass2), "CaptureStrategy.runInBackground"));
                    } else {
                        try {
                            anonymousClass2.a();
                        } catch (Throwable th) {
                            sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
                        }
                    }
                }
                ArrayList arrayList = bufferCaptureStrategy.v;
                final ?? obj = new Object();
                CollectionsKt.J(arrayList, new Function1<CaptureStrategy.ReplaySegment.Created, Boolean>() { // from class: io.sentry.android.replay.capture.BufferCaptureStrategy$rotate$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj2) {
                        CaptureStrategy.ReplaySegment.Created created = (CaptureStrategy.ReplaySegment.Created) obj2;
                        created.getClass();
                        SentryReplayEvent sentryReplayEvent = created.a;
                        if (sentryReplayEvent.D.getTime() < b2) {
                            BufferCaptureStrategy bufferCaptureStrategy2 = bufferCaptureStrategy;
                            bufferCaptureStrategy2.l(bufferCaptureStrategy2.j() - 1);
                            File file = sentryReplayEvent.y;
                            SentryOptions sentryOptions2 = bufferCaptureStrategy2.r;
                            if (file != null) {
                                try {
                                    if (!file.delete()) {
                                        sentryOptions2.getLogger().c(SentryLevel.ERROR, "Failed to delete replay segment: %s", file.getAbsolutePath());
                                    }
                                } catch (Throwable th2) {
                                    sentryOptions2.getLogger().a(SentryLevel.ERROR, th2, "Failed to delete replay segment: %s", file.getAbsolutePath());
                                }
                            }
                            obj.j = true;
                            return Boolean.TRUE;
                        }
                        return Boolean.FALSE;
                    }
                });
                if (obj.j) {
                    Iterator it = arrayList.iterator();
                    int i2 = 0;
                    while (it.hasNext()) {
                        Object next = it.next();
                        int i3 = i2 + 1;
                        if (i2 >= 0) {
                            CaptureStrategy.ReplaySegment.Created created = (CaptureStrategy.ReplaySegment.Created) next;
                            created.a.C = i2;
                            List<RRWebEvent> list = created.b.k;
                            if (list != null) {
                                for (RRWebEvent rRWebEvent : list) {
                                    if (rRWebEvent instanceof RRWebVideoEvent) {
                                        ((RRWebVideoEvent) rRWebEvent).m = i2;
                                    }
                                }
                            }
                            i2 = i3;
                        } else {
                            CollectionsKt.T();
                            throw null;
                        }
                    }
                }
            }
        }, "BufferCaptureStrategy.add_frame"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        if (r4 != null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o(String str, Function1 function1) {
        Date c;
        Long l;
        ScreenshotRecorderConfig k = k();
        SentryOptions sentryOptions = this.r;
        if (k == null) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Recorder config is not set, not creating segment for task: ".concat(str), new Object[0]);
            return;
        }
        long j = sentryOptions.getSessionReplay().h;
        long b = this.t.b();
        ReplayCache replayCache = this.h;
        if (replayCache != null) {
            ISentryLifecycleToken a = replayCache.o.a();
            try {
                ReplayFrame replayFrame = (ReplayFrame) CollectionsKt.t(replayCache.r);
                if (replayFrame != null) {
                    l = Long.valueOf(replayFrame.b);
                } else {
                    l = null;
                }
                AutoCloseableKt.a(a, null);
                if (l != null) {
                    c = DateUtils.c(l.longValue());
                }
            } finally {
            }
        }
        c = DateUtils.c(b - j);
        c.getClass();
        this.d.submit(new ReplayRunnable(new a(this, b - c.getTime(), c, i(), k, function1, 0), "BufferCaptureStrategy.".concat(str)));
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void stop() {
        File file;
        ReplayCache replayCache = this.h;
        if (replayCache != null) {
            file = replayCache.n();
        } else {
            file = null;
        }
        this.d.submit(new ReplayRunnable(new io.sentry.android.core.anr.a(3, file, this), "BufferCaptureStrategy.stop"));
        ReplayCache replayCache2 = this.h;
        if (replayCache2 != null) {
            replayCache2.close();
        }
        this.k.set(0L);
        n(null);
        SentryId sentryId = SentryId.k;
        sentryId.getClass();
        KProperty kProperty = BaseCaptureStrategy.q[3];
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
