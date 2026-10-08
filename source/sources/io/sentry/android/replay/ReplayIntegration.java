package io.sentry.android.replay;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import io.sentry.DataCategory;
import io.sentry.DateUtils;
import io.sentry.IConnectionStatusProvider;
import io.sentry.IScope;
import io.sentry.ISentryExecutorService;
import io.sentry.ISentryLifecycleToken;
import io.sentry.Integration;
import io.sentry.NoOpReplayBreadcrumbConverter;
import io.sentry.ReplayBreadcrumbConverter;
import io.sentry.ReplayController;
import io.sentry.ScopeCallback;
import io.sentry.ScopesAdapter;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayOptions;
import io.sentry.android.replay.WindowRecorder;
import io.sentry.android.replay.capture.BaseCaptureStrategy;
import io.sentry.android.replay.capture.BufferCaptureStrategy;
import io.sentry.android.replay.capture.CaptureStrategy;
import io.sentry.android.replay.capture.SessionCaptureStrategy;
import io.sentry.android.replay.gestures.GestureRecorder;
import io.sentry.android.replay.util.MainLooperHandler;
import io.sentry.android.replay.util.ReplayExecutorService;
import io.sentry.hints.Backfillable;
import io.sentry.protocol.SentryId;
import io.sentry.transport.CurrentDateProvider;
import io.sentry.transport.RateLimiter;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.FileUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Random;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayIntegration implements Integration, Closeable, ReplayController, IConnectionStatusProvider.IConnectionStatusObserver, RateLimiter.IRateLimitObserver {
    public static final /* synthetic */ int A = 0;
    public final Context j;
    public final CurrentDateProvider k;
    public volatile IConnectionStatusProvider.ConnectionStatus l;
    public SentryOptions m;
    public ScopesAdapter n;
    public Recorder o;
    public GestureRecorder p;
    public final Lazy q;
    public final Lazy r;
    public final Lazy s;
    public final AtomicBoolean t;
    public final AtomicBoolean u;
    public CaptureStrategy v;
    public ReplayBreadcrumbConverter w;
    public final MainLooperHandler x;
    public final AutoClosableReentrantLock y;
    public final ReplayLifecycle z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PreviousReplayHint implements Backfillable {
        @Override // io.sentry.hints.Backfillable
        public final boolean a() {
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReplayExecutorServiceThreadFactory implements ThreadFactory {
        public int a;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            runnable.getClass();
            StringBuilder sb = new StringBuilder("SentryReplayIntegration-");
            int i = this.a;
            this.a = i + 1;
            sb.append(i);
            Thread thread = new Thread(runnable, sb.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    static {
        SentryIntegrationPackageStorage.d().b("maven:io.sentry:sentry-android-replay", "8.41.0");
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r3v14, types: [io.sentry.android.replay.ReplayLifecycle, java.lang.Object] */
    public ReplayIntegration(Context context) {
        CurrentDateProvider currentDateProvider = CurrentDateProvider.j;
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
        this.k = currentDateProvider;
        this.l = IConnectionStatusProvider.ConnectionStatus.UNKNOWN;
        this.q = LazyKt.b(ReplayIntegration$random$2.k);
        this.r = LazyKt.b(ReplayIntegration$rootViewsSpy$2.k);
        this.s = LazyKt.b(new Function0<ReplayExecutorService>() { // from class: io.sentry.android.replay.ReplayIntegration$replayExecutor$2
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new Object());
                newSingleThreadScheduledExecutor.getClass();
                SentryOptions sentryOptions = ReplayIntegration.this.m;
                if (sentryOptions != null) {
                    return new ReplayExecutorService(newSingleThreadScheduledExecutor, sentryOptions);
                }
                Intrinsics.e("options");
                throw null;
            }
        });
        this.t = new AtomicBoolean(false);
        this.u = new AtomicBoolean(false);
        this.w = NoOpReplayBreadcrumbConverter.a;
        this.x = new MainLooperHandler();
        this.y = new ReentrantLock();
        ?? obj = new Object();
        obj.a = ReplayState.INITIAL;
        this.z = obj;
    }

    @Override // io.sentry.transport.RateLimiter.IRateLimitObserver
    public final void A(RateLimiter rateLimiter) {
        if (!(this.v instanceof SessionCaptureStrategy)) {
            return;
        }
        if (!rateLimiter.h(DataCategory.All) && !rateLimiter.h(DataCategory.Replay)) {
            g0();
        } else {
            a0();
        }
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        Double d;
        this.m = sentryOptions;
        Double d2 = sentryOptions.getSessionReplay().d;
        if ((d2 != null && d2.doubleValue() > 0.0d) || ((d = sentryOptions.getSessionReplay().e) != null && d.doubleValue() > 0.0d)) {
            ScopesAdapter scopesAdapter = ScopesAdapter.a;
            this.n = scopesAdapter;
            this.o = new WindowRecorder(sentryOptions, this, this, this.x, (ReplayExecutorService) this.s.getValue());
            this.p = new GestureRecorder(sentryOptions, this);
            this.t.set(true);
            sentryOptions.getConnectionStatusProvider().s0(this);
            RateLimiter d3 = scopesAdapter.d();
            if (d3 != null) {
                d3.m.add(this);
            }
            IntegrationUtils.a("Replay");
            SentryOptions sentryOptions2 = this.m;
            if (sentryOptions2 != null) {
                ISentryExecutorService executorService = sentryOptions2.getExecutorService();
                executorService.getClass();
                SentryOptions sentryOptions3 = this.m;
                if (sentryOptions3 != null) {
                    try {
                        executorService.submit(new io.sentry.android.core.anr.a(4, new b(this, 0), sentryOptions3));
                        return;
                    } catch (Throwable th) {
                        sentryOptions3.getLogger().b(SentryLevel.ERROR, "Failed to submit task ReplayIntegration.finalize_previous_replay to executor", th);
                        return;
                    }
                }
                Intrinsics.e("options");
                throw null;
            }
            Intrinsics.e("options");
            throw null;
        }
        sentryOptions.getLogger().c(SentryLevel.INFO, "Session replay is disabled, no sample rate specified", new Object[0]);
    }

    @Override // io.sentry.ReplayController
    public final void O() {
        boolean z;
        CaptureStrategy bufferCaptureStrategy;
        boolean z2;
        ReplayLifecycle replayLifecycle = this.z;
        ISentryLifecycleToken a = this.y.a();
        try {
            if (!this.t.get()) {
                AutoCloseableKt.a(a, null);
                return;
            }
            ReplayState replayState = ReplayState.STARTED;
            if (!replayLifecycle.a(replayState)) {
                SentryOptions sentryOptions = this.m;
                if (sentryOptions != null) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Session replay is already being recorded, not starting a new one", new Object[0]);
                    AutoCloseableKt.a(a, null);
                    return;
                } else {
                    Intrinsics.e("options");
                    throw null;
                }
            }
            Random random = (Random) this.q.getValue();
            SentryOptions sentryOptions2 = this.m;
            if (sentryOptions2 != null) {
                Double d = sentryOptions2.getSessionReplay().d;
                random.getClass();
                if (d != null && d.doubleValue() >= random.c()) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    SentryOptions sentryOptions3 = this.m;
                    if (sentryOptions3 != null) {
                        Double d2 = sentryOptions3.getSessionReplay().e;
                        if (d2 != null && d2.doubleValue() > 0.0d) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (!z2) {
                            SentryOptions sentryOptions4 = this.m;
                            if (sentryOptions4 != null) {
                                sentryOptions4.getLogger().c(SentryLevel.INFO, "Session replay is not started, full session was not sampled and onErrorSampleRate is not specified", new Object[0]);
                                AutoCloseableKt.a(a, null);
                                return;
                            } else {
                                Intrinsics.e("options");
                                throw null;
                            }
                        }
                    } else {
                        Intrinsics.e("options");
                        throw null;
                    }
                }
                replayLifecycle.a = replayState;
                if (z) {
                    SentryOptions sentryOptions5 = this.m;
                    if (sentryOptions5 != null) {
                        bufferCaptureStrategy = new SessionCaptureStrategy(sentryOptions5, this.n, this.k, (ReplayExecutorService) this.s.getValue());
                    } else {
                        Intrinsics.e("options");
                        throw null;
                    }
                } else {
                    SentryOptions sentryOptions6 = this.m;
                    if (sentryOptions6 != null) {
                        bufferCaptureStrategy = new BufferCaptureStrategy(sentryOptions6, this.n, this.k, (Random) this.q.getValue(), (ReplayExecutorService) this.s.getValue());
                    } else {
                        Intrinsics.e("options");
                        throw null;
                    }
                }
                this.v = bufferCaptureStrategy;
                Recorder recorder = this.o;
                if (recorder != null) {
                    ((WindowRecorder) recorder).o.getAndSet(true);
                }
                CaptureStrategy captureStrategy = this.v;
                if (captureStrategy != null) {
                    captureStrategy.e(0, new SentryId(), null);
                }
                if (this.o instanceof OnRootViewsChangedListener) {
                    RootViewsSpy$listeners$1 rootViewsSpy$listeners$1 = ((RootViewsSpy) this.r.getValue()).l;
                    Recorder recorder2 = this.o;
                    recorder2.getClass();
                    rootViewsSpy$listeners$1.add((OnRootViewsChangedListener) recorder2);
                }
                ((RootViewsSpy) this.r.getValue()).l.add(this.p);
                AutoCloseableKt.a(a, null);
                return;
            }
            Intrinsics.e("options");
            throw null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(a, th);
                throw th2;
            }
        }
    }

    @Override // io.sentry.ReplayController
    public final ReplayBreadcrumbConverter P() {
        return this.w;
    }

    public final void R(String str) {
        File[] listFiles;
        SentryOptions sentryOptions = this.m;
        if (sentryOptions != null) {
            String cacheDirPath = sentryOptions.getCacheDirPath();
            if (cacheDirPath != null && (listFiles = new File(cacheDirPath).listFiles()) != null) {
                for (File file : listFiles) {
                    String name = file.getName();
                    name.getClass();
                    if (StringsKt.J(name, "replay_", false)) {
                        String sentryId = h().toString();
                        sentryId.getClass();
                        if (!StringsKt.i(name, sentryId, false) && (StringsKt.t(str) || !StringsKt.i(name, str, false))) {
                            FileUtils.a(file);
                        }
                    }
                }
                return;
            }
            return;
        }
        Intrinsics.e("options");
        throw null;
    }

    public final boolean S() {
        if (this.z.a.compareTo(ReplayState.STARTED) >= 0 && this.z.a.compareTo(ReplayState.STOPPED) < 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final void X(final Bitmap bitmap) {
        ScopesAdapter scopesAdapter;
        ScopesAdapter scopesAdapter2;
        RateLimiter d;
        RateLimiter d2;
        bitmap.getClass();
        final ?? obj = new Object();
        ScopesAdapter scopesAdapter3 = this.n;
        if (scopesAdapter3 != null) {
            scopesAdapter3.o(new ScopeCallback() { // from class: io.sentry.android.replay.c
                @Override // io.sentry.ScopeCallback
                public final void i(IScope iScope) {
                    String str;
                    int i = ReplayIntegration.A;
                    iScope.getClass();
                    String D = iScope.D();
                    if (D != null) {
                        str = StringsKt.M(D, '.', D);
                    } else {
                        str = null;
                    }
                    Ref$ObjectRef.this.j = str;
                }
            });
        }
        CaptureStrategy captureStrategy = this.v;
        if (captureStrategy != null) {
            captureStrategy.g(new Function2<ReplayCache, Long, Unit>() { // from class: io.sentry.android.replay.ReplayIntegration$onScreenshotRecorded$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ReplayCache replayCache = (ReplayCache) obj2;
                    long longValue = ((Number) obj3).longValue();
                    replayCache.getClass();
                    Bitmap bitmap2 = bitmap;
                    String str = (String) obj.j;
                    bitmap2.getClass();
                    if (replayCache.n() != null && !bitmap2.isRecycled()) {
                        File n = replayCache.n();
                        if (n != null) {
                            n.mkdirs();
                        }
                        File file = new File(replayCache.n(), longValue + ".jpg");
                        file.createNewFile();
                        synchronized (bitmap2) {
                            if (!bitmap2.isRecycled()) {
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                try {
                                    bitmap2.compress(Bitmap.CompressFormat.JPEG, replayCache.j.getSessionReplay().f.screenshotQuality, fileOutputStream);
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                    replayCache.a(file, longValue, str);
                                } finally {
                                }
                            }
                        }
                    }
                    return Unit.a;
                }
            });
        }
        if (this.v instanceof SessionCaptureStrategy) {
            if (this.l == IConnectionStatusProvider.ConnectionStatus.DISCONNECTED || (((scopesAdapter = this.n) != null && (d2 = scopesAdapter.d()) != null && d2.h(DataCategory.All)) || ((scopesAdapter2 = this.n) != null && (d = scopesAdapter2.d()) != null && d.h(DataCategory.Replay)))) {
                a0();
            }
        }
    }

    public final void Z(int i, int i2) {
        int i3;
        int i4;
        Recorder recorder;
        boolean postDelayed;
        WindowRecorder.Capturer capturer;
        ScreenshotRecorder screenshotRecorder;
        if (this.t.get() && S()) {
            SentryOptions sentryOptions = this.m;
            View view = null;
            if (sentryOptions != null) {
                if (sentryOptions.getSessionReplay().k) {
                    Context context = this.j;
                    SentryOptions sentryOptions2 = this.m;
                    if (sentryOptions2 != null) {
                        SentryReplayOptions sessionReplay = sentryOptions2.getSessionReplay();
                        sessionReplay.getClass();
                        context.getClass();
                        float f = i2;
                        int b = MathKt.b((f / context.getResources().getDisplayMetrics().density) * sessionReplay.f.sizeScale);
                        int i5 = b % 16;
                        if (i5 <= 8) {
                            i3 = Math.max(16, b - i5);
                        } else {
                            i3 = b + (16 - i5);
                        }
                        int i6 = i3;
                        float f2 = i;
                        int b2 = MathKt.b((f2 / context.getResources().getDisplayMetrics().density) * sessionReplay.f.sizeScale);
                        int i7 = b2 % 16;
                        if (i7 <= 8) {
                            i4 = Math.max(16, b2 - i7);
                        } else {
                            i4 = b2 + (16 - i7);
                        }
                        int i8 = i4;
                        ScreenshotRecorderConfig screenshotRecorderConfig = new ScreenshotRecorderConfig(i8, i6, i8 / f2, i6 / f, sessionReplay.g, sessionReplay.f.bitRate);
                        if (this.t.get() && S()) {
                            CaptureStrategy captureStrategy = this.v;
                            if (captureStrategy != null) {
                                captureStrategy.c(screenshotRecorderConfig);
                            }
                            Recorder recorder2 = this.o;
                            if (recorder2 != null) {
                                WindowRecorder windowRecorder = (WindowRecorder) recorder2;
                                if (windowRecorder.o.get()) {
                                    if (windowRecorder.v == null) {
                                        ISentryLifecycleToken a = windowRecorder.t.a();
                                        try {
                                            if (windowRecorder.v == null) {
                                                windowRecorder.v = new WindowRecorder.Capturer(windowRecorder.j, windowRecorder.m);
                                            }
                                            AutoCloseableKt.a(a, null);
                                        } catch (Throwable th) {
                                            try {
                                                throw th;
                                            } catch (Throwable th2) {
                                                AutoCloseableKt.a(a, th);
                                                throw th2;
                                            }
                                        }
                                    }
                                    WindowRecorder.Capturer capturer2 = windowRecorder.v;
                                    if (capturer2 != null) {
                                        capturer2.m = screenshotRecorderConfig;
                                    }
                                    WindowRecorder.Capturer capturer3 = windowRecorder.v;
                                    if (capturer3 != null) {
                                        capturer3.l = new ScreenshotRecorder(windowRecorder.j, windowRecorder, windowRecorder.k, screenshotRecorderConfig);
                                    }
                                    WeakReference weakReference = (WeakReference) CollectionsKt.A(windowRecorder.p);
                                    if (weakReference != null) {
                                        view = (View) weakReference.get();
                                    }
                                    if (view != null && (capturer = windowRecorder.v) != null && (screenshotRecorder = capturer.l) != null) {
                                        screenshotRecorder.a(view);
                                    }
                                    MainLooperHandler mainLooperHandler = windowRecorder.m;
                                    WindowRecorder.Capturer capturer4 = windowRecorder.v;
                                    Handler handler = mainLooperHandler.a;
                                    if (capturer4 != null) {
                                        handler.removeCallbacks(capturer4);
                                    }
                                    MainLooperHandler mainLooperHandler2 = windowRecorder.m;
                                    WindowRecorder.Capturer capturer5 = windowRecorder.v;
                                    Handler handler2 = mainLooperHandler2.a;
                                    if (capturer5 == null) {
                                        postDelayed = false;
                                    } else {
                                        postDelayed = handler2.postDelayed(capturer5, 100L);
                                    }
                                    if (!postDelayed) {
                                        windowRecorder.j.getLogger().c(SentryLevel.WARNING, "Failed to post the capture runnable, main looper is shutting down.", new Object[0]);
                                    }
                                }
                            }
                            if (this.z.a == ReplayState.PAUSED && (recorder = this.o) != null) {
                                ((WindowRecorder) recorder).q();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    Intrinsics.e("options");
                    throw null;
                }
                return;
            }
            Intrinsics.e("options");
            throw null;
        }
    }

    @Override // io.sentry.ReplayController
    public final void a() {
        this.u.set(true);
        a0();
    }

    public final void a0() {
        ReplayLifecycle replayLifecycle = this.z;
        ISentryLifecycleToken a = this.y.a();
        try {
            if (this.t.get()) {
                ReplayState replayState = ReplayState.PAUSED;
                if (replayLifecycle.a(replayState)) {
                    Recorder recorder = this.o;
                    if (recorder != null) {
                        ((WindowRecorder) recorder).q();
                    }
                    CaptureStrategy captureStrategy = this.v;
                    if (captureStrategy != null) {
                        captureStrategy.a();
                    }
                    replayLifecycle.a = replayState;
                    AutoCloseableKt.a(a, null);
                    return;
                }
            }
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        RateLimiter d;
        ReplayLifecycle replayLifecycle = this.z;
        ISentryLifecycleToken a = this.y.a();
        try {
            if (this.t.get()) {
                ReplayState replayState = ReplayState.CLOSED;
                if (replayLifecycle.a(replayState)) {
                    SentryOptions sentryOptions = this.m;
                    if (sentryOptions != null) {
                        sentryOptions.getConnectionStatusProvider().L0(this);
                        ScopesAdapter scopesAdapter = this.n;
                        if (scopesAdapter != null && (d = scopesAdapter.d()) != null) {
                            d.m.remove(this);
                        }
                        stop();
                        Recorder recorder = this.o;
                        if (recorder != null) {
                            recorder.close();
                        }
                        this.o = null;
                        ((RootViewsSpy) this.r.getValue()).close();
                        ((ReplayExecutorService) this.s.getValue()).shutdown();
                        replayLifecycle.a = replayState;
                        AutoCloseableKt.a(a, null);
                        return;
                    }
                    Intrinsics.e("options");
                    throw null;
                }
            }
            AutoCloseableKt.a(a, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(a, th);
                throw th2;
            }
        }
    }

    public final void g0() {
        ScopesAdapter scopesAdapter;
        ScopesAdapter scopesAdapter2;
        RateLimiter d;
        RateLimiter d2;
        ISentryLifecycleToken a = this.y.a();
        try {
            if (this.t.get()) {
                ReplayLifecycle replayLifecycle = this.z;
                ReplayState replayState = ReplayState.RESUMED;
                if (replayLifecycle.a(replayState)) {
                    if (!this.u.get() && this.l != IConnectionStatusProvider.ConnectionStatus.DISCONNECTED && (((scopesAdapter = this.n) == null || (d2 = scopesAdapter.d()) == null || !d2.h(DataCategory.All)) && ((scopesAdapter2 = this.n) == null || (d = scopesAdapter2.d()) == null || !d.h(DataCategory.Replay)))) {
                        ReplayLifecycle replayLifecycle2 = this.z;
                        replayLifecycle2.getClass();
                        replayLifecycle2.a = replayState;
                        CaptureStrategy captureStrategy = this.v;
                        if (captureStrategy != null) {
                            ((BaseCaptureStrategy) captureStrategy).n(DateUtils.b());
                        }
                        Recorder recorder = this.o;
                        if (recorder != null) {
                            ((WindowRecorder) recorder).v();
                        }
                        AutoCloseableKt.a(a, null);
                        return;
                    }
                    AutoCloseableKt.a(a, null);
                    return;
                }
            }
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    @Override // io.sentry.ReplayController
    public final SentryId h() {
        SentryId i;
        CaptureStrategy captureStrategy = this.v;
        if (captureStrategy != null && (i = ((BaseCaptureStrategy) captureStrategy).i()) != null) {
            return i;
        }
        SentryId sentryId = SentryId.k;
        sentryId.getClass();
        return sentryId;
    }

    @Override // io.sentry.ReplayController
    public final void n(Boolean bool) {
        SentryId sentryId;
        if (this.t.get() && S()) {
            SentryId sentryId2 = SentryId.k;
            CaptureStrategy captureStrategy = this.v;
            CaptureStrategy captureStrategy2 = null;
            if (captureStrategy != null) {
                sentryId = ((BaseCaptureStrategy) captureStrategy).i();
            } else {
                sentryId = null;
            }
            if (sentryId2.equals(sentryId)) {
                SentryOptions sentryOptions = this.m;
                if (sentryOptions != null) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Replay id is not set, not capturing for event", new Object[0]);
                    return;
                } else {
                    Intrinsics.e("options");
                    throw null;
                }
            }
            CaptureStrategy captureStrategy3 = this.v;
            if (captureStrategy3 != null) {
                captureStrategy3.f(new Function1<Date, Unit>() { // from class: io.sentry.android.replay.ReplayIntegration$captureReplay$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        Date date = (Date) obj;
                        date.getClass();
                        ReplayIntegration replayIntegration = ReplayIntegration.this;
                        CaptureStrategy captureStrategy4 = replayIntegration.v;
                        if (captureStrategy4 != null) {
                            BaseCaptureStrategy baseCaptureStrategy = (BaseCaptureStrategy) captureStrategy4;
                            baseCaptureStrategy.l(baseCaptureStrategy.j() + 1);
                        }
                        CaptureStrategy captureStrategy5 = replayIntegration.v;
                        if (captureStrategy5 != null) {
                            ((BaseCaptureStrategy) captureStrategy5).n(date);
                        }
                        return Unit.a;
                    }
                }, bool.equals(Boolean.TRUE));
            }
            CaptureStrategy captureStrategy4 = this.v;
            if (captureStrategy4 != null) {
                captureStrategy2 = captureStrategy4.d();
            }
            this.v = captureStrategy2;
        }
    }

    @Override // io.sentry.IConnectionStatusProvider.IConnectionStatusObserver
    public final void q(IConnectionStatusProvider.ConnectionStatus connectionStatus) {
        connectionStatus.getClass();
        this.l = connectionStatus;
        if (!(this.v instanceof SessionCaptureStrategy)) {
            return;
        }
        if (connectionStatus == IConnectionStatusProvider.ConnectionStatus.DISCONNECTED) {
            a0();
        } else {
            g0();
        }
    }

    @Override // io.sentry.ReplayController
    public final void stop() {
        ReplayLifecycle replayLifecycle = this.z;
        ISentryLifecycleToken a = this.y.a();
        try {
            if (this.t.get()) {
                ReplayState replayState = ReplayState.STOPPED;
                if (replayLifecycle.a(replayState)) {
                    if (this.o instanceof OnRootViewsChangedListener) {
                        RootViewsSpy$listeners$1 rootViewsSpy$listeners$1 = ((RootViewsSpy) this.r.getValue()).l;
                        Recorder recorder = this.o;
                        recorder.getClass();
                        rootViewsSpy$listeners$1.remove((OnRootViewsChangedListener) recorder);
                    }
                    ((RootViewsSpy) this.r.getValue()).l.remove(this.p);
                    Recorder recorder2 = this.o;
                    if (recorder2 != null) {
                        ((WindowRecorder) recorder2).reset();
                    }
                    Recorder recorder3 = this.o;
                    if (recorder3 != null) {
                        ((WindowRecorder) recorder3).w();
                    }
                    GestureRecorder gestureRecorder = this.p;
                    if (gestureRecorder != null) {
                        gestureRecorder.c();
                    }
                    CaptureStrategy captureStrategy = this.v;
                    if (captureStrategy != null) {
                        captureStrategy.stop();
                    }
                    this.v = null;
                    replayLifecycle.a = replayState;
                    AutoCloseableKt.a(a, null);
                    return;
                }
            }
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    @Override // io.sentry.ReplayController
    public final void v() {
        this.u.set(false);
        g0();
    }

    @Override // io.sentry.ReplayController
    public final void w(DefaultReplayBreadcrumbConverter defaultReplayBreadcrumbConverter) {
        this.w = defaultReplayBreadcrumbConverter;
    }
}
