package io.sentry.android.replay.capture;

import defpackage.fe;
import defpackage.p;
import io.sentry.IScopes;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayEvent;
import io.sentry.android.replay.ReplayCache;
import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;
import io.sentry.android.replay.capture.CaptureStrategy;
import io.sentry.android.replay.util.ReplayRunnable;
import io.sentry.protocol.SentryId;
import io.sentry.transport.ICurrentDateProvider;
import io.sentry.util.FileUtils;
import java.io.File;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SessionCaptureStrategy extends BaseCaptureStrategy {
    public static final /* synthetic */ int u = 0;
    public final SentryOptions r;
    public final IScopes s;
    public final ICurrentDateProvider t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionCaptureStrategy(SentryOptions sentryOptions, IScopes iScopes, ICurrentDateProvider iCurrentDateProvider, ScheduledExecutorService scheduledExecutorService) {
        super(sentryOptions, iScopes, iCurrentDateProvider, scheduledExecutorService);
        sentryOptions.getClass();
        iCurrentDateProvider.getClass();
        scheduledExecutorService.getClass();
        this.r = sentryOptions;
        this.s = iScopes;
        this.t = iCurrentDateProvider;
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void a() {
        o("pause", new Function1<CaptureStrategy.ReplaySegment, Unit>() { // from class: io.sentry.android.replay.capture.SessionCaptureStrategy$pause$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                CaptureStrategy.ReplaySegment replaySegment = (CaptureStrategy.ReplaySegment) obj;
                replaySegment.getClass();
                if (replaySegment instanceof CaptureStrategy.ReplaySegment.Created) {
                    SessionCaptureStrategy sessionCaptureStrategy = SessionCaptureStrategy.this;
                    CaptureStrategy.ReplaySegment.Created.a((CaptureStrategy.ReplaySegment.Created) replaySegment, sessionCaptureStrategy.s);
                    sessionCaptureStrategy.l(sessionCaptureStrategy.j() + 1);
                }
                return Unit.a;
            }
        });
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void c(ScreenshotRecorderConfig screenshotRecorderConfig) {
        o("onConfigurationChanged", new Function1<CaptureStrategy.ReplaySegment, Unit>() { // from class: io.sentry.android.replay.capture.SessionCaptureStrategy$onConfigurationChanged$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                CaptureStrategy.ReplaySegment replaySegment = (CaptureStrategy.ReplaySegment) obj;
                replaySegment.getClass();
                if (replaySegment instanceof CaptureStrategy.ReplaySegment.Created) {
                    CaptureStrategy.ReplaySegment.Created created = (CaptureStrategy.ReplaySegment.Created) replaySegment;
                    SessionCaptureStrategy sessionCaptureStrategy = SessionCaptureStrategy.this;
                    CaptureStrategy.ReplaySegment.Created.a(created, sessionCaptureStrategy.s);
                    sessionCaptureStrategy.l(sessionCaptureStrategy.j() + 1);
                    sessionCaptureStrategy.n(created.a.D);
                }
                return Unit.a;
            }
        });
        m(screenshotRecorderConfig);
    }

    @Override // io.sentry.android.replay.capture.BaseCaptureStrategy, io.sentry.android.replay.capture.CaptureStrategy
    public final void e(int i, SentryId sentryId, SentryReplayEvent.ReplayType replayType) {
        sentryId.getClass();
        super.e(i, sentryId, replayType);
        IScopes iScopes = this.s;
        if (iScopes != null) {
            iScopes.o(new p(27, this));
        }
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void f(Function1 function1, boolean z) {
        SentryOptions sentryOptions = this.r;
        if (sentryOptions.getSessionReplay().m) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Replay is already running in 'session' mode, not capturing for event", new Object[0]);
        }
        this.g.set(z);
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void g(final Function2 function2) {
        final ScreenshotRecorderConfig k = k();
        final long b = this.t.b();
        this.d.submit(new ReplayRunnable(new Runnable() { // from class: io.sentry.android.replay.capture.c
            @Override // java.lang.Runnable
            public final void run() {
                int i = SessionCaptureStrategy.u;
                SessionCaptureStrategy sessionCaptureStrategy = SessionCaptureStrategy.this;
                ReplayCache replayCache = sessionCaptureStrategy.h;
                SentryOptions sentryOptions = sessionCaptureStrategy.r;
                if (replayCache != null) {
                    function2.n(replayCache, Long.valueOf(b));
                }
                Date date = (Date) sessionCaptureStrategy.j.a(sessionCaptureStrategy, BaseCaptureStrategy.q[1]);
                if (date == null) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Segment timestamp is not set, not recording frame", new Object[0]);
                    return;
                }
                if (sessionCaptureStrategy.g.get()) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Not capturing segment, because the app is terminating, will be captured on next launch", new Object[0]);
                    return;
                }
                ScreenshotRecorderConfig screenshotRecorderConfig = k;
                if (screenshotRecorderConfig == null) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Recorder config is not set, not capturing a segment", new Object[0]);
                    return;
                }
                long b2 = sessionCaptureStrategy.t.b();
                if (b2 - date.getTime() >= sentryOptions.getSessionReplay().i) {
                    CaptureStrategy.ReplaySegment h = BaseCaptureStrategy.h(sessionCaptureStrategy, sentryOptions.getSessionReplay().i, date, sessionCaptureStrategy.i(), sessionCaptureStrategy.j(), screenshotRecorderConfig.b, screenshotRecorderConfig.a, screenshotRecorderConfig.e, screenshotRecorderConfig.f);
                    if (h instanceof CaptureStrategy.ReplaySegment.Created) {
                        CaptureStrategy.ReplaySegment.Created created = (CaptureStrategy.ReplaySegment.Created) h;
                        CaptureStrategy.ReplaySegment.Created.a(created, sessionCaptureStrategy.s);
                        sessionCaptureStrategy.l(sessionCaptureStrategy.j() + 1);
                        sessionCaptureStrategy.n(created.a.D);
                    }
                }
                if (b2 - sessionCaptureStrategy.k.get() >= sentryOptions.getSessionReplay().j) {
                    sentryOptions.getReplayController().stop();
                    sentryOptions.getLogger().c(SentryLevel.INFO, "Session replay deadline exceeded (1h), stopping recording", new Object[0]);
                }
            }
        }, "SessionCaptureStrategy.add_frame"));
    }

    public final void o(String str, Function1 function1) {
        ScreenshotRecorderConfig k = k();
        if (k == null) {
            this.r.getLogger().c(SentryLevel.DEBUG, "Recorder config is not set, not creating segment for task: ".concat(str), new Object[0]);
            return;
        }
        long b = this.t.b();
        Date date = (Date) this.j.a(this, BaseCaptureStrategy.q[1]);
        if (date == null) {
            return;
        }
        long time = b - date.getTime();
        SentryId i = i();
        this.d.submit(new ReplayRunnable(new a(this, time, date, i, k, function1, 1), "SessionCaptureStrategy.".concat(str)));
    }

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final void stop() {
        final File file;
        ReplayCache replayCache = this.h;
        if (replayCache != null) {
            file = replayCache.n();
        } else {
            file = null;
        }
        o("stop", new Function1<CaptureStrategy.ReplaySegment, Unit>() { // from class: io.sentry.android.replay.capture.SessionCaptureStrategy$stop$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                CaptureStrategy.ReplaySegment replaySegment = (CaptureStrategy.ReplaySegment) obj;
                replaySegment.getClass();
                boolean z = replaySegment instanceof CaptureStrategy.ReplaySegment.Created;
                SessionCaptureStrategy sessionCaptureStrategy = SessionCaptureStrategy.this;
                if (z) {
                    CaptureStrategy.ReplaySegment.Created.a((CaptureStrategy.ReplaySegment.Created) replaySegment, sessionCaptureStrategy.s);
                }
                sessionCaptureStrategy.l(-1);
                FileUtils.a(file);
                return Unit.a;
            }
        });
        IScopes iScopes = this.s;
        if (iScopes != null) {
            iScopes.o(new fe(24));
        }
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

    @Override // io.sentry.android.replay.capture.CaptureStrategy
    public final CaptureStrategy d() {
        return this;
    }
}
