package androidx.media3.exoplayer;

import android.content.Context;
import android.media.MediaFormat;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Trace;
import android.util.Pair;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.audio.AudioFocusManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.StuckPlayerException;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.DefaultMediaClock;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.image.ImageMetadataListener;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.ForwardingTimeline;
import androidx.media3.exoplayer.source.MaskingMediaPeriod;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.b7;
import defpackage.fe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender, AudioFocusManager.PlayerControl, VideoFrameMetadataListener {
    public static final long p0 = Util.N(10000);
    public static final /* synthetic */ int q0 = 0;
    public final MediaSourceList A;
    public final LivePlaybackSpeedControl B;
    public final long C;
    public final PlayerId D;
    public final boolean E;
    public final AnalyticsCollector F;
    public final HandlerWrapper G;
    public final boolean H;
    public final AudioFocusManager I;
    public boolean J;
    public SeekParameters K;
    public ScrubbingModeParameters L;
    public boolean M;
    public boolean N;
    public SeekPosition O;
    public int P;
    public PlaybackInfo Q;
    public PlaybackInfoUpdate R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public long W;
    public boolean X;
    public int Y;
    public boolean Z;
    public boolean a0;
    public boolean b0;
    public boolean c0;
    public int d0;
    public SeekPosition e0;
    public long f0;
    public long g0;
    public int h0;
    public boolean i0;
    public final RendererHolder[] j;
    public ExoPlaybackException j0;
    public final RendererCapabilities[] k;
    public long k0;
    public final boolean[] l;
    public ExoPlayer.PreloadConfiguration l0;
    public final TrackSelector m;
    public long m0;
    public final TrackSelectorResult n;
    public boolean n0;
    public final LoadControl o;
    public float o0;
    public final HandlerWrapper p;
    public final PlaybackLooperProvider q;
    public final Looper r;
    public final Timeline.Window s;
    public final Timeline.Period t;
    public final long u;
    public final DefaultMediaClock v;
    public final ArrayList w;
    public final Clock x;
    public final g y;
    public final MediaPeriodQueue z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaSourceListUpdateMessage {
        public final ArrayList a;
        public final ShuffleOrder b;
        public final int c;
        public final long d;

        public MediaSourceListUpdateMessage(ArrayList arrayList, ShuffleOrder.DefaultShuffleOrder defaultShuffleOrder, int i, long j) {
            this.a = arrayList;
            this.b = defaultShuffleOrder;
            this.c = i;
            this.d = j;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PlaybackInfoUpdate {
        public boolean a;
        public PlaybackInfo b;
        public int c;
        public boolean d;
        public int e;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo) {
            this.b = playbackInfo;
        }

        public final void a(int i) {
            boolean z;
            boolean z2 = this.a;
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            this.a = z2 | z;
            this.c += i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PositionUpdateForPlaylistChange {
        public final MediaSource.MediaPeriodId a;
        public final long b;
        public final long c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        public final boolean g;
        public final boolean h;
        public final int i;

        public PositionUpdateForPlaylistChange(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i) {
            this.a = mediaPeriodId;
            this.b = j;
            this.c = j2;
            this.d = z;
            this.e = z2;
            this.f = z3;
            this.g = z4;
            this.h = z5;
            this.i = i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SeekPosition {
        public final Timeline a;
        public final int b;
        public final long c;

        public SeekPosition(Timeline timeline, int i, long j) {
            this.a = timeline;
            this.b = i;
            this.c = j;
        }
    }

    public ExoPlayerImplInternal(Context context, Renderer[] rendererArr, Renderer[] rendererArr2, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, int i, boolean z, AnalyticsCollector analyticsCollector, SeekParameters seekParameters, DefaultLivePlaybackSpeedControl defaultLivePlaybackSpeedControl, long j, boolean z2, boolean z3, Looper looper, SystemClock systemClock, g gVar, PlayerId playerId, final VideoFrameMetadataListener videoFrameMetadataListener, boolean z4) {
        Looper looper2;
        ExoPlayer.PreloadConfiguration preloadConfiguration = ExoPlayer.PreloadConfiguration.a;
        this.m0 = -9223372036854775807L;
        this.y = gVar;
        this.m = trackSelector;
        this.n = trackSelectorResult;
        this.o = loadControl;
        this.Y = i;
        this.Z = z;
        this.K = seekParameters;
        this.B = defaultLivePlaybackSpeedControl;
        this.C = j;
        this.T = z2;
        this.E = z3;
        this.x = systemClock;
        this.D = playerId;
        this.l0 = preloadConfiguration;
        this.F = analyticsCollector;
        this.o0 = 1.0f;
        this.L = ScrubbingModeParameters.g;
        this.J = z4;
        this.k0 = -9223372036854775807L;
        this.W = -9223372036854775807L;
        this.u = ((DefaultLoadControl) loadControl).n;
        Timeline timeline = Timeline.a;
        PlaybackInfo k = PlaybackInfo.k(trackSelectorResult);
        this.Q = k;
        this.R = new PlaybackInfoUpdate(k);
        this.k = new RendererCapabilities[rendererArr.length];
        this.l = new boolean[rendererArr.length];
        DefaultTrackSelector defaultTrackSelector = (DefaultTrackSelector) trackSelector;
        defaultTrackSelector.getClass();
        this.j = new RendererHolder[rendererArr.length];
        boolean z5 = false;
        boolean z6 = false;
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            Renderer renderer = rendererArr[i2];
            BaseRenderer baseRenderer = (BaseRenderer) renderer;
            baseRenderer.n = i2;
            baseRenderer.o = playerId;
            baseRenderer.p = systemClock;
            RendererCapabilities[] rendererCapabilitiesArr = this.k;
            BaseRenderer baseRenderer2 = (BaseRenderer) renderer;
            baseRenderer2.getClass();
            rendererCapabilitiesArr[i2] = baseRenderer2;
            BaseRenderer baseRenderer3 = (BaseRenderer) this.k[i2];
            synchronized (baseRenderer3.j) {
                baseRenderer3.B = defaultTrackSelector;
            }
            Renderer renderer2 = rendererArr2[i2];
            if (renderer2 != null) {
                BaseRenderer baseRenderer4 = (BaseRenderer) renderer2;
                baseRenderer4.n = i2;
                baseRenderer4.o = playerId;
                baseRenderer4.p = systemClock;
                z6 = true;
            }
            this.j[i2] = new RendererHolder(rendererArr[i2], renderer2, i2);
        }
        this.H = z6;
        this.v = new DefaultMediaClock(this, systemClock);
        this.w = new ArrayList();
        this.s = new Timeline.Window();
        this.t = new Timeline.Period();
        DefaultTrackSelector defaultTrackSelector2 = (DefaultTrackSelector) trackSelector;
        Preconditions.n(defaultTrackSelector2.a == null);
        defaultTrackSelector2.a = this;
        defaultTrackSelector2.b = bandwidthMeter;
        defaultTrackSelector2.f = defaultTrackSelector2.e;
        this.i0 = true;
        HandlerWrapper a = systemClock.a(looper, null);
        this.G = a;
        this.z = new MediaPeriodQueue(analyticsCollector, a, new b(3, this), rendererArr.length);
        this.A = new MediaSourceList(this, analyticsCollector, a, playerId, bandwidthMeter);
        PlaybackLooperProvider playbackLooperProvider = new PlaybackLooperProvider();
        this.q = playbackLooperProvider;
        synchronized (playbackLooperProvider.a) {
            try {
                if (playbackLooperProvider.b == null) {
                    if (playbackLooperProvider.d == 0 && playbackLooperProvider.c == null) {
                        z5 = true;
                    }
                    Preconditions.n(z5);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    playbackLooperProvider.c = handlerThread;
                    handlerThread.start();
                    playbackLooperProvider.b = playbackLooperProvider.c.getLooper();
                }
                playbackLooperProvider.d++;
                looper2 = playbackLooperProvider.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.r = looper2;
        HandlerWrapper a2 = systemClock.a(looper2, this);
        this.p = a2;
        this.I = new AudioFocusManager(context, looper2, this);
        a2.k(35, new VideoFrameMetadataListener() { // from class: androidx.media3.exoplayer.o
            @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
            public final void f(long j2, long j3, Format format, MediaFormat mediaFormat) {
                int i3 = ExoPlayerImplInternal.q0;
                videoFrameMetadataListener.f(j2, j3, format, mediaFormat);
                ExoPlayerImplInternal.this.f(j2, j3, format, mediaFormat);
            }
        }).a();
        a2.k(39, new p(this)).a();
    }

    public static boolean C(MediaPeriodHolder mediaPeriodHolder) {
        long e;
        if (mediaPeriodHolder != null) {
            try {
                MaskingMediaPeriod maskingMediaPeriod = mediaPeriodHolder.a;
                if (!mediaPeriodHolder.e) {
                    maskingMediaPeriod.g();
                } else {
                    for (SampleStream sampleStream : mediaPeriodHolder.c) {
                        if (sampleStream != null) {
                            sampleStream.c();
                        }
                    }
                }
                if (!mediaPeriodHolder.e) {
                    e = 0;
                } else {
                    e = maskingMediaPeriod.e();
                }
                if (e != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public static Pair W(Timeline timeline, SeekPosition seekPosition, boolean z, int i, boolean z2, Timeline.Window window, Timeline.Period period) {
        Timeline timeline2;
        int X;
        Timeline timeline3 = seekPosition.a;
        if (!timeline.p()) {
            if (timeline3.p()) {
                timeline2 = timeline;
            } else {
                timeline2 = timeline3;
            }
            try {
                Pair i2 = timeline2.i(window, period, seekPosition.b, seekPosition.c);
                if (!timeline.equals(timeline2)) {
                    if (timeline.b(i2.first) != -1) {
                        if (timeline2.g(i2.first, period).f && timeline2.m(period.c, window, 0L).l == timeline2.b(i2.first)) {
                            return timeline.i(window, period, timeline.g(i2.first, period).c, seekPosition.c);
                        }
                    } else {
                        if (z && (X = X(window, period, i, z2, i2.first, timeline2, timeline)) != -1) {
                            return timeline.i(window, period, X, -9223372036854775807L);
                        }
                        return null;
                    }
                }
                return i2;
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return null;
    }

    public static int X(Timeline.Window window, Timeline.Period period, int i, boolean z, Object obj, Timeline timeline, Timeline timeline2) {
        Timeline.Window window2 = window;
        Timeline timeline3 = timeline;
        Object obj2 = timeline3.m(timeline3.g(obj, period).c, window, 0L).a;
        for (int i2 = 0; i2 < timeline2.o(); i2++) {
            if (timeline2.m(i2, window, 0L).a.equals(obj2)) {
                return i2;
            }
        }
        int b = timeline3.b(obj);
        int h = timeline3.h();
        int i3 = -1;
        int i4 = 0;
        while (i4 < h && i3 == -1) {
            Timeline timeline4 = timeline3;
            int d = timeline4.d(b, period, window2, i, z);
            if (d == -1) {
                break;
            }
            i3 = timeline2.b(timeline4.l(d));
            i4++;
            timeline3 = timeline4;
            b = d;
            window2 = window;
        }
        if (i3 == -1) {
            return -1;
        }
        return timeline2.f(i3, period, false).c;
    }

    public final void A(PlaybackParameters playbackParameters, float f, boolean z, boolean z2) {
        int i;
        if (z) {
            if (z2) {
                this.R.a(1);
            }
            this.Q = this.Q.g(playbackParameters);
        }
        float f2 = playbackParameters.a;
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        while (true) {
            i = 0;
            if (mediaPeriodHolder == null) {
                break;
            }
            ExoTrackSelection[] exoTrackSelectionArr = mediaPeriodHolder.o.c;
            int length = exoTrackSelectionArr.length;
            while (i < length) {
                ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
                i++;
            }
            mediaPeriodHolder = mediaPeriodHolder.m;
        }
        RendererHolder[] rendererHolderArr = this.j;
        int length2 = rendererHolderArr.length;
        while (i < length2) {
            RendererHolder rendererHolder = rendererHolderArr[i];
            float f3 = playbackParameters.a;
            rendererHolder.a.l(f, f3);
            Renderer renderer = rendererHolder.c;
            if (renderer != null) {
                renderer.l(f, f3);
            }
            i++;
        }
    }

    public final void A0() {
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        if (mediaPeriodHolder != null) {
            TrackSelectorResult trackSelectorResult = mediaPeriodHolder.o;
            int i = 0;
            while (true) {
                RendererHolder[] rendererHolderArr = this.j;
                if (i < rendererHolderArr.length) {
                    if (trackSelectorResult.b(i)) {
                        rendererHolderArr[i].r();
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final PlaybackInfo B(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, boolean z, int i) {
        boolean z2;
        boolean z3;
        ImmutableList r;
        MediaPeriodHolder mediaPeriodHolder;
        boolean z4;
        boolean z5;
        if (!this.i0 && j == this.Q.s && mediaPeriodId.equals(this.Q.b)) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.i0 = z2;
        T();
        PlaybackInfo playbackInfo = this.Q;
        TrackGroupArray trackGroupArray = playbackInfo.h;
        TrackSelectorResult trackSelectorResult = playbackInfo.i;
        List list = playbackInfo.j;
        if (this.A.l) {
            MediaPeriodHolder mediaPeriodHolder2 = this.z.i;
            if (mediaPeriodHolder2 == null) {
                trackGroupArray = TrackGroupArray.d;
            } else {
                trackGroupArray = mediaPeriodHolder2.n;
            }
            if (mediaPeriodHolder2 == null) {
                trackSelectorResult = this.n;
            } else {
                trackSelectorResult = mediaPeriodHolder2.o;
            }
            ExoTrackSelection[] exoTrackSelectionArr = trackSelectorResult.c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            boolean z6 = false;
            for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
                if (exoTrackSelection != null) {
                    Metadata metadata = ((BaseTrackSelection) exoTrackSelection).d[0].m;
                    if (metadata == null) {
                        builder.d(new Metadata(new Metadata.Entry[0]));
                    } else {
                        builder.d(metadata);
                        z6 = true;
                    }
                }
            }
            if (z6) {
                r = builder.i();
            } else {
                r = ImmutableList.r();
            }
            list = r;
            if (mediaPeriodHolder2 != null) {
                MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder2.g;
                if (mediaPeriodInfo.d != j2) {
                    mediaPeriodHolder2.g = mediaPeriodInfo.a(j2);
                }
            }
            RendererHolder[] rendererHolderArr = this.j;
            if (!D() && (mediaPeriodHolder = this.z.i) != null) {
                TrackSelectorResult trackSelectorResult2 = mediaPeriodHolder.o;
                int i2 = 0;
                boolean z7 = false;
                while (true) {
                    if (i2 < rendererHolderArr.length) {
                        if (trackSelectorResult2.b(i2)) {
                            if (rendererHolderArr[i2].f() != 1) {
                                z4 = false;
                                break;
                            }
                            if (trackSelectorResult2.b[i2].a != 0) {
                                z7 = true;
                            }
                        }
                        i2++;
                    } else {
                        z4 = true;
                        break;
                    }
                }
                if (z7 && z4) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (z5 != this.c0) {
                    this.c0 = z5;
                    if (!z5 && this.Q.p) {
                        this.p.i(2);
                    }
                }
            }
        } else if (!mediaPeriodId.equals(playbackInfo.b)) {
            trackGroupArray = TrackGroupArray.d;
            trackSelectorResult = this.n;
            list = ImmutableList.r();
        }
        TrackSelectorResult trackSelectorResult3 = trackSelectorResult;
        List list2 = list;
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        if (z) {
            PlaybackInfoUpdate playbackInfoUpdate = this.R;
            if (playbackInfoUpdate.d && playbackInfoUpdate.e != 5) {
                if (i == 5) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Preconditions.e(z3);
            } else {
                playbackInfoUpdate.a = true;
                playbackInfoUpdate.d = true;
                playbackInfoUpdate.e = i;
            }
        }
        PlaybackInfo playbackInfo2 = this.Q;
        return playbackInfo2.d(mediaPeriodId, j, j2, j3, s(playbackInfo2.q), trackGroupArray2, trackSelectorResult3, list2);
    }

    public final void B0(boolean z, boolean z2) {
        boolean z3;
        if (!z && this.a0) {
            z3 = false;
        } else {
            z3 = true;
        }
        S(z3, false, true, false);
        this.R.a(z2 ? 1 : 0);
        DefaultLoadControl defaultLoadControl = (DefaultLoadControl) this.o;
        ConcurrentHashMap concurrentHashMap = defaultLoadControl.p;
        PlayerId playerId = this.D;
        DefaultLoadControl.PlayerLoadingState playerLoadingState = (DefaultLoadControl.PlayerLoadingState) concurrentHashMap.get(playerId);
        if (playerLoadingState != null) {
            int i = playerLoadingState.a - 1;
            playerLoadingState.a = i;
            if (i == 0) {
                concurrentHashMap.remove(playerId);
                defaultLoadControl.d();
            }
        }
        this.I.c(1, this.Q.l);
        u0(1);
    }

    public final void C0() {
        DefaultMediaClock defaultMediaClock = this.v;
        defaultMediaClock.o = false;
        StandaloneMediaClock standaloneMediaClock = defaultMediaClock.j;
        if (standaloneMediaClock.k) {
            standaloneMediaClock.a(standaloneMediaClock.k());
            standaloneMediaClock.k = false;
        }
        for (RendererHolder rendererHolder : this.j) {
            Renderer renderer = rendererHolder.c;
            Renderer renderer2 = rendererHolder.a;
            if (RendererHolder.m(renderer2)) {
                RendererHolder.b(renderer2);
            }
            if (renderer != null && RendererHolder.m(renderer)) {
                RendererHolder.b(renderer);
            }
        }
    }

    public final boolean D() {
        for (int i = 0; i < this.j.length; i++) {
            MediaPeriodQueue mediaPeriodQueue = this.z;
            if (!Objects.equals(mediaPeriodQueue.i, mediaPeriodQueue.j[i])) {
                return true;
            }
        }
        return false;
    }

    public final void D0() {
        boolean z;
        MediaPeriodHolder mediaPeriodHolder = this.z.l;
        if (!this.X && (mediaPeriodHolder == null || !mediaPeriodHolder.a.m())) {
            z = false;
        } else {
            z = true;
        }
        PlaybackInfo playbackInfo = this.Q;
        if (z != playbackInfo.g) {
            this.Q = playbackInfo.b(z);
        }
    }

    public final boolean E(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodQueue mediaPeriodQueue = this.z;
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.k[i];
        if (mediaPeriodHolder != null && mediaPeriodHolder.g.a.equals(mediaPeriodId)) {
            return this.j[i].j(mediaPeriodQueue.k[i]);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x008d. Please report as an issue. */
    public final void E0(MediaSource.MediaPeriodId mediaPeriodId, TrackSelectorResult trackSelectorResult) {
        long j;
        int i;
        MediaPeriodHolder mediaPeriodHolder = this.z.l;
        mediaPeriodHolder.getClass();
        long s = s(mediaPeriodHolder.d());
        if (z0(this.Q.a, mediaPeriodHolder.g.a)) {
            j = ((DefaultLivePlaybackSpeedControl) this.B).i;
        } else {
            j = -9223372036854775807L;
        }
        long j2 = j;
        Timeline timeline = this.Q.a;
        float f = this.v.e().a;
        boolean z = this.Q.l;
        boolean z2 = this.V;
        PlayerId playerId = this.D;
        LoadControl.Parameters parameters = new LoadControl.Parameters(playerId, timeline, mediaPeriodId, s, f, z2, j2);
        ExoTrackSelection[] exoTrackSelectionArr = trackSelectorResult.c;
        DefaultLoadControl defaultLoadControl = (DefaultLoadControl) this.o;
        defaultLoadControl.getClass();
        Integer num = (Integer) defaultLoadControl.o.get(playerId.a);
        if (num != null && num.intValue() != -1) {
            i = num.intValue();
        } else {
            i = defaultLoadControl.l;
        }
        DefaultLoadControl.PlayerLoadingState playerLoadingState = (DefaultLoadControl.PlayerLoadingState) defaultLoadControl.p.get(playerId);
        playerLoadingState.getClass();
        if (i == -1) {
            boolean b = defaultLoadControl.b(parameters);
            int length = exoTrackSelectionArr.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = 13107200;
                if (i2 < length) {
                    ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
                    if (exoTrackSelection != null) {
                        switch (((BaseTrackSelection) exoTrackSelection).a.c) {
                            case -2:
                                i4 = 0;
                                i3 += i4;
                                break;
                            case -1:
                            case 1:
                                i3 += i4;
                                break;
                            case 0:
                                i4 = 144310272;
                                i3 += i4;
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                if (b) {
                                    i4 = 19660800;
                                } else {
                                    i4 = 131072000;
                                }
                                i3 += i4;
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                i4 = 131072;
                                i3 += i4;
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                i4 = 26214400;
                                i3 += i4;
                                break;
                            default:
                                fe.h();
                                return;
                        }
                    }
                    i2++;
                } else {
                    i = Util.g(i3, 13107200, 210239488);
                }
            }
        }
        playerLoadingState.c = i;
        defaultLoadControl.d();
    }

    public final boolean F() {
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        long j = mediaPeriodHolder.g.e;
        if (mediaPeriodHolder.e) {
            if (j == -9223372036854775807L || this.Q.s < j || !y0()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void F0(int i, int i2, List list) {
        boolean z;
        boolean z2 = true;
        this.R.a(1);
        MediaSourceList mediaSourceList = this.A;
        mediaSourceList.getClass();
        ArrayList arrayList = mediaSourceList.c;
        if (i >= 0 && i <= i2 && i2 <= arrayList.size()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        if (list.size() != i2 - i) {
            z2 = false;
        }
        Preconditions.e(z2);
        for (int i3 = i; i3 < i2; i3++) {
            ((MediaSourceList.MediaSourceHolder) arrayList.get(i3)).a.a((MediaItem) list.get(i3 - i));
        }
        y(mediaSourceList.b(), false);
    }

    public final void G() {
        long e;
        long j;
        boolean c;
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (!C(this.z.l)) {
            c = false;
        } else {
            MediaPeriodHolder mediaPeriodHolder = this.z.l;
            if (!mediaPeriodHolder.e) {
                e = 0;
            } else {
                e = mediaPeriodHolder.a.e();
            }
            long s = s(e);
            MediaPeriodHolder mediaPeriodHolder2 = this.z.i;
            if (z0(this.Q.a, mediaPeriodHolder.g.a)) {
                j = ((DefaultLivePlaybackSpeedControl) this.B).i;
            } else {
                j = -9223372036854775807L;
            }
            PlayerId playerId = this.D;
            Timeline timeline = this.Q.a;
            MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodHolder.g.a;
            float f = this.v.e().a;
            boolean z4 = this.Q.l;
            LoadControl.Parameters parameters = new LoadControl.Parameters(playerId, timeline, mediaPeriodId, s, f, this.V, j);
            c = ((DefaultLoadControl) this.o).c(parameters);
            MediaPeriodHolder mediaPeriodHolder3 = this.z.i;
            if (!c && mediaPeriodHolder3.e && s < 500000 && this.u > 0) {
                mediaPeriodHolder3.a.j(this.Q.s);
                c = ((DefaultLoadControl) this.o).c(parameters);
            }
        }
        this.X = c;
        if (c) {
            MediaPeriodHolder mediaPeriodHolder4 = this.z.l;
            mediaPeriodHolder4.getClass();
            LoadingInfo.Builder builder = new LoadingInfo.Builder();
            builder.a = this.f0 - mediaPeriodHolder4.p;
            float f2 = this.v.e().a;
            if (f2 <= 0.0f && f2 != -3.4028235E38f) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.e(z);
            builder.b = f2;
            long j2 = this.W;
            if (j2 < 0 && j2 != -9223372036854775807L) {
                z2 = false;
            } else {
                z2 = true;
            }
            Preconditions.e(z2);
            builder.c = j2;
            LoadingInfo loadingInfo = new LoadingInfo(builder);
            if (mediaPeriodHolder4.m == null) {
                z3 = true;
            }
            Preconditions.n(z3);
            mediaPeriodHolder4.a.b(loadingInfo);
        }
        D0();
    }

    public final void G0(int i, int i2, int i3, boolean z) {
        boolean z2;
        if (z && i != -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (i == -1) {
            i3 = 2;
        } else if (i3 == 2) {
            i3 = 1;
        }
        boolean z3 = this.M;
        if (i == 0) {
            i2 = 1;
        } else if (i2 == 1) {
            if (z3) {
                i2 = 4;
            } else {
                i2 = 0;
            }
        }
        PlaybackInfo playbackInfo = this.Q;
        if (playbackInfo.l != z2 || playbackInfo.n != i2 || playbackInfo.m != i3) {
            this.Q = playbackInfo.e(i3, i2, z2);
            J0(false, false);
            MediaPeriodQueue mediaPeriodQueue = this.z;
            for (MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.i; mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.m) {
                for (ExoTrackSelection exoTrackSelection : mediaPeriodHolder.o.c) {
                }
            }
            if (!y0()) {
                C0();
                H0();
                PlaybackInfo playbackInfo2 = this.Q;
                if (playbackInfo2.p) {
                    this.Q = playbackInfo2.i(false);
                }
                mediaPeriodQueue.s(this.f0);
                return;
            }
            int i4 = this.Q.e;
            HandlerWrapper handlerWrapper = this.p;
            if (i4 == 3) {
                DefaultMediaClock defaultMediaClock = this.v;
                defaultMediaClock.o = true;
                defaultMediaClock.j.b();
                A0();
                handlerWrapper.i(2);
                return;
            }
            if (i4 == 2) {
                handlerWrapper.i(2);
            }
        }
    }

    public final void H() {
        boolean z;
        boolean z2;
        MediaPeriodQueue mediaPeriodQueue = this.z;
        mediaPeriodQueue.q();
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.m;
        if (mediaPeriodHolder != null) {
            MaskingMediaPeriod maskingMediaPeriod = mediaPeriodHolder.a;
            if ((!mediaPeriodHolder.d || mediaPeriodHolder.e) && !maskingMediaPeriod.m()) {
                Timeline timeline = this.Q.a;
                if (mediaPeriodHolder.e) {
                    maskingMediaPeriod.t();
                }
                Iterator it = ((DefaultLoadControl) this.o).p.values().iterator();
                while (it.hasNext()) {
                    if (((DefaultLoadControl.PlayerLoadingState) it.next()).b) {
                        return;
                    }
                }
                boolean z3 = true;
                if (!mediaPeriodHolder.d) {
                    long j = mediaPeriodHolder.g.b;
                    mediaPeriodHolder.d = true;
                    maskingMediaPeriod.p(this, j);
                    return;
                }
                LoadingInfo.Builder builder = new LoadingInfo.Builder();
                builder.a = this.f0 - mediaPeriodHolder.p;
                float f = this.v.e().a;
                if (f <= 0.0f && f != -3.4028235E38f) {
                    z = false;
                } else {
                    z = true;
                }
                Preconditions.e(z);
                builder.b = f;
                long j2 = this.W;
                if (j2 < 0 && j2 != -9223372036854775807L) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                Preconditions.e(z2);
                builder.c = j2;
                LoadingInfo loadingInfo = new LoadingInfo(builder);
                if (mediaPeriodHolder.m != null) {
                    z3 = false;
                }
                Preconditions.n(z3);
                maskingMediaPeriod.b(loadingInfo);
            }
        }
    }

    public final void H0() {
        long j;
        int i;
        boolean z;
        float f;
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        if (mediaPeriodHolder != null) {
            if (mediaPeriodHolder.e) {
                j = mediaPeriodHolder.a.o();
            } else {
                j = -9223372036854775807L;
            }
            if (j != -9223372036854775807L) {
                if (!mediaPeriodHolder.g()) {
                    this.z.t(mediaPeriodHolder);
                    j();
                    x(false);
                    G();
                }
                U(j, true);
                if (j != this.Q.s) {
                    PlaybackInfo playbackInfo = this.Q;
                    this.Q = B(playbackInfo.b, j, playbackInfo.c, j, true, 5);
                }
            } else {
                DefaultMediaClock defaultMediaClock = this.v;
                boolean D = D();
                StandaloneMediaClock standaloneMediaClock = defaultMediaClock.j;
                Renderer renderer = defaultMediaClock.l;
                if (renderer != null && !renderer.b() && ((!D || ((BaseRenderer) defaultMediaClock.l).q == 2) && (defaultMediaClock.l.a() || (!D && !((BaseRenderer) defaultMediaClock.l).s())))) {
                    MediaClock mediaClock = defaultMediaClock.m;
                    mediaClock.getClass();
                    long k = mediaClock.k();
                    if (defaultMediaClock.n) {
                        if (k < standaloneMediaClock.k()) {
                            if (standaloneMediaClock.k) {
                                standaloneMediaClock.a(standaloneMediaClock.k());
                                standaloneMediaClock.k = false;
                            }
                        } else {
                            defaultMediaClock.n = false;
                            if (defaultMediaClock.o) {
                                standaloneMediaClock.b();
                            }
                        }
                    }
                    standaloneMediaClock.a(k);
                    PlaybackParameters e = mediaClock.e();
                    if (!e.equals(standaloneMediaClock.n)) {
                        standaloneMediaClock.c(e);
                        ((ExoPlayerImplInternal) defaultMediaClock.k).p.k(16, e).a();
                    }
                } else {
                    defaultMediaClock.n = true;
                    if (defaultMediaClock.o) {
                        standaloneMediaClock.b();
                    }
                }
                long k2 = defaultMediaClock.k();
                this.f0 = k2;
                long j2 = k2 - mediaPeriodHolder.p;
                long j3 = this.Q.s;
                if (!this.w.isEmpty() && !this.Q.b.c()) {
                    if (this.i0) {
                        this.i0 = false;
                    }
                    PlaybackInfo playbackInfo2 = this.Q;
                    playbackInfo2.a.b(playbackInfo2.b.a);
                    int min = Math.min(this.h0, this.w.size());
                    if (min > 0 && this.w.get(min - 1) != null) {
                        io.sentry.d.i();
                        return;
                    } else {
                        if (min < this.w.size() && this.w.get(min) != null) {
                            io.sentry.d.i();
                            return;
                        }
                        this.h0 = min;
                    }
                }
                if (this.v.m()) {
                    boolean z2 = !this.R.d;
                    PlaybackInfo playbackInfo3 = this.Q;
                    this.Q = B(playbackInfo3.b, j2, playbackInfo3.c, j2, z2, 6);
                } else {
                    PlaybackInfo playbackInfo4 = this.Q;
                    playbackInfo4.s = j2;
                    playbackInfo4.t = android.os.SystemClock.elapsedRealtime();
                }
            }
            this.Q.q = this.z.l.d();
            PlaybackInfo playbackInfo5 = this.Q;
            playbackInfo5.r = s(playbackInfo5.q);
            PlaybackInfo playbackInfo6 = this.Q;
            if (playbackInfo6.l && playbackInfo6.e == 3 && z0(playbackInfo6.a, playbackInfo6.b)) {
                PlaybackInfo playbackInfo7 = this.Q;
                float f2 = 1.0f;
                if (playbackInfo7.o.a == 1.0f) {
                    LivePlaybackSpeedControl livePlaybackSpeedControl = this.B;
                    long p = p(playbackInfo7.a, playbackInfo7.b.a, playbackInfo7.s);
                    long j4 = this.Q.r;
                    DefaultLivePlaybackSpeedControl defaultLivePlaybackSpeedControl = (DefaultLivePlaybackSpeedControl) livePlaybackSpeedControl;
                    if (defaultLivePlaybackSpeedControl.d == -9223372036854775807L) {
                        z = false;
                    } else {
                        float f3 = defaultLivePlaybackSpeedControl.c;
                        long j5 = p - j4;
                        long j6 = defaultLivePlaybackSpeedControl.n;
                        if (j6 == -9223372036854775807L) {
                            defaultLivePlaybackSpeedControl.n = j5;
                            defaultLivePlaybackSpeedControl.o = 0L;
                            i = 1;
                            z = false;
                        } else {
                            float f4 = (((float) j5) * (1.0f - f3)) + (((float) j6) * f3);
                            i = 1;
                            z = false;
                            defaultLivePlaybackSpeedControl.n = Math.max(j5, f4);
                            defaultLivePlaybackSpeedControl.o = (r10 * ((float) Math.abs(j5 - r14))) + (f3 * ((float) defaultLivePlaybackSpeedControl.o));
                        }
                        if (defaultLivePlaybackSpeedControl.m != -9223372036854775807L && android.os.SystemClock.elapsedRealtime() - defaultLivePlaybackSpeedControl.m < 1000) {
                            f2 = defaultLivePlaybackSpeedControl.l;
                        } else {
                            defaultLivePlaybackSpeedControl.m = android.os.SystemClock.elapsedRealtime();
                            long j7 = (defaultLivePlaybackSpeedControl.o * 3) + defaultLivePlaybackSpeedControl.n;
                            if (defaultLivePlaybackSpeedControl.i > j7) {
                                float D2 = (float) Util.D(1000L);
                                long j8 = defaultLivePlaybackSpeedControl.f;
                                f = 1.0E-7f;
                                long j9 = defaultLivePlaybackSpeedControl.i - (((defaultLivePlaybackSpeedControl.l - 1.0f) * D2) + ((defaultLivePlaybackSpeedControl.j - 1.0f) * D2));
                                long[] jArr = new long[3];
                                jArr[z ? 1 : 0] = j7;
                                jArr[i] = j8;
                                jArr[2] = j9;
                                long j10 = jArr[z ? 1 : 0];
                                for (int i2 = i; i2 < 3; i2++) {
                                    long j11 = jArr[i2];
                                    if (j11 > j10) {
                                        j10 = j11;
                                    }
                                }
                                defaultLivePlaybackSpeedControl.i = j10;
                            } else {
                                f = 1.0E-7f;
                                long h = Util.h(p - (Math.max(0.0f, defaultLivePlaybackSpeedControl.l - 1.0f) / 1.0E-7f), defaultLivePlaybackSpeedControl.i, j7);
                                defaultLivePlaybackSpeedControl.i = h;
                                long j12 = defaultLivePlaybackSpeedControl.h;
                                if (j12 != -9223372036854775807L && h > j12) {
                                    defaultLivePlaybackSpeedControl.i = j12;
                                }
                            }
                            long j13 = p - defaultLivePlaybackSpeedControl.i;
                            if (Math.abs(j13) < defaultLivePlaybackSpeedControl.a) {
                                defaultLivePlaybackSpeedControl.l = 1.0f;
                            } else {
                                defaultLivePlaybackSpeedControl.l = Util.f((f * ((float) j13)) + 1.0f, defaultLivePlaybackSpeedControl.k, defaultLivePlaybackSpeedControl.j);
                            }
                            f2 = defaultLivePlaybackSpeedControl.l;
                        }
                    }
                    if (this.v.e().a != f2) {
                        PlaybackParameters playbackParameters = new PlaybackParameters(f2, this.Q.o.b);
                        this.p.j(16);
                        this.v.c(playbackParameters);
                        boolean z3 = z;
                        A(this.Q.o, this.v.e().a, z3, z3);
                    }
                }
            }
        }
    }

    public final void I(int i) {
        boolean z;
        PlaybackInfoUpdate playbackInfoUpdate = this.R;
        PlaybackInfo playbackInfo = this.Q;
        boolean z2 = playbackInfoUpdate.a;
        boolean z3 = false;
        if (playbackInfoUpdate.b != playbackInfo) {
            z = true;
        } else {
            z = false;
        }
        boolean z4 = z2 | z;
        playbackInfoUpdate.a = z4;
        playbackInfoUpdate.b = playbackInfo;
        if (z4) {
            if (!playbackInfo.a.p()) {
                PlaybackInfo playbackInfo2 = this.Q;
                if (playbackInfo2.a.b(playbackInfo2.b.a) != -1) {
                    z3 = true;
                }
                Locale locale = Locale.US;
                PlaybackInfo playbackInfo3 = this.Q;
                Preconditions.m(String.format(locale, "periodUid %s not found in timeline %s with size %d triggered by msg %d", playbackInfo3.b.a, playbackInfo3.a.getClass().getName(), Integer.valueOf(this.Q.a.o()), Integer.valueOf(i)), z3);
            }
            PlaybackInfoUpdate playbackInfoUpdate2 = this.R;
            ExoPlayerImpl exoPlayerImpl = this.y.j;
            exoPlayerImpl.j.d(new i(exoPlayerImpl, playbackInfoUpdate2));
            this.R = new PlaybackInfoUpdate(this.Q);
        }
    }

    public final void I0(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline2, MediaSource.MediaPeriodId mediaPeriodId2, long j, boolean z) {
        Object obj;
        PlaybackParameters playbackParameters;
        long D = Util.D(-9223372036854775807L);
        boolean z0 = z0(timeline, mediaPeriodId);
        Object obj2 = mediaPeriodId.a;
        if (!z0) {
            if (mediaPeriodId.c()) {
                playbackParameters = PlaybackParameters.d;
            } else {
                playbackParameters = this.Q.o;
            }
            DefaultMediaClock defaultMediaClock = this.v;
            if (!defaultMediaClock.e().equals(playbackParameters)) {
                this.p.j(16);
                defaultMediaClock.c(playbackParameters);
                A(this.Q.o, playbackParameters.a, false, false);
                return;
            }
            return;
        }
        Timeline.Period period = this.t;
        int i = timeline.g(obj2, period).c;
        Timeline.Window window = this.s;
        timeline.n(i, window);
        MediaItem.LiveConfiguration liveConfiguration = window.h;
        DefaultLivePlaybackSpeedControl defaultLivePlaybackSpeedControl = (DefaultLivePlaybackSpeedControl) this.B;
        defaultLivePlaybackSpeedControl.getClass();
        liveConfiguration.getClass();
        defaultLivePlaybackSpeedControl.d = D;
        defaultLivePlaybackSpeedControl.g = D;
        defaultLivePlaybackSpeedControl.h = D;
        defaultLivePlaybackSpeedControl.k = 0.97f;
        defaultLivePlaybackSpeedControl.j = 1.03f;
        defaultLivePlaybackSpeedControl.a();
        if (j != -9223372036854775807L) {
            defaultLivePlaybackSpeedControl.e = p(timeline, obj2, j);
            defaultLivePlaybackSpeedControl.a();
            return;
        }
        Object obj3 = window.a;
        if (!timeline2.p()) {
            obj = timeline2.m(timeline2.g(mediaPeriodId2.a, period).c, window, 0L).a;
        } else {
            obj = null;
        }
        if (Objects.equals(obj, obj3) && !z) {
            return;
        }
        defaultLivePlaybackSpeedControl.e = -9223372036854775807L;
        defaultLivePlaybackSpeedControl.a();
    }

    public final void J(int i) {
        RendererHolder rendererHolder = this.j[i];
        try {
            MediaPeriodHolder mediaPeriodHolder = this.z.i;
            mediaPeriodHolder.getClass();
            Renderer e = rendererHolder.e(mediaPeriodHolder);
            e.getClass();
            SampleStream sampleStream = ((BaseRenderer) e).r;
            sampleStream.getClass();
            sampleStream.c();
        } catch (IOException | RuntimeException e2) {
            int f = rendererHolder.f();
            if (f != 3 && f != 5) {
                throw e2;
            }
            TrackSelectorResult trackSelectorResult = this.z.i.o;
            Log.d("ExoPlayerImplInternal", "Disabling track due to error: ".concat(Format.c(((BaseTrackSelection) trackSelectorResult.c[i]).d[0])), e2);
            TrackSelectorResult trackSelectorResult2 = new TrackSelectorResult((RendererConfiguration[]) trackSelectorResult.b.clone(), (ExoTrackSelection[]) trackSelectorResult.c.clone(), trackSelectorResult.d, trackSelectorResult.e);
            trackSelectorResult2.b[i] = null;
            trackSelectorResult2.c[i] = null;
            k(i);
            MediaPeriodHolder mediaPeriodHolder2 = this.z.i;
            mediaPeriodHolder2.a(trackSelectorResult2, this.Q.s, false, new boolean[mediaPeriodHolder2.j.length]);
        }
    }

    public final void J0(boolean z, boolean z2) {
        long j;
        this.V = z;
        if (z && !z2) {
            ((SystemClock) this.x).getClass();
            j = android.os.SystemClock.elapsedRealtime();
        } else {
            j = -9223372036854775807L;
        }
        this.W = j;
    }

    public final void K(final int i, final boolean z) {
        boolean[] zArr = this.l;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.G.d(new Runnable(i, z) { // from class: androidx.media3.exoplayer.n
                public final /* synthetic */ int k;

                @Override // java.lang.Runnable
                public final void run() {
                    ExoPlayerImplInternal exoPlayerImplInternal = ExoPlayerImplInternal.this;
                    AnalyticsCollector analyticsCollector = exoPlayerImplInternal.F;
                    exoPlayerImplInternal.j[this.k].f();
                    DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) analyticsCollector;
                    defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1033, new b7(1));
                }
            });
        }
    }

    public final void L() {
        y(this.A.b(), true);
    }

    public final void M() {
        this.R.a(1);
        throw null;
    }

    /* JADX WARN: Type inference failed for: r5v10, types: [androidx.media3.exoplayer.DefaultLoadControl$PlayerLoadingState, java.lang.Object] */
    public final void N() {
        boolean z;
        int i;
        int i2;
        this.R.a(1);
        S(false, false, false, true);
        DefaultLoadControl defaultLoadControl = (DefaultLoadControl) this.o;
        ConcurrentHashMap concurrentHashMap = defaultLoadControl.p;
        long id = Thread.currentThread().getId();
        long j = defaultLoadControl.q;
        if (j != -1 && j != id) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.m("Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).", z);
        defaultLoadControl.q = id;
        PlayerId playerId = this.D;
        DefaultLoadControl.PlayerLoadingState playerLoadingState = (DefaultLoadControl.PlayerLoadingState) concurrentHashMap.get(playerId);
        if (playerLoadingState == null) {
            ?? obj = new Object();
            obj.a = 1;
            concurrentHashMap.put(playerId, obj);
        } else {
            playerLoadingState.a++;
        }
        DefaultLoadControl.PlayerLoadingState playerLoadingState2 = (DefaultLoadControl.PlayerLoadingState) concurrentHashMap.get(playerId);
        playerLoadingState2.getClass();
        Integer num = (Integer) defaultLoadControl.o.get(playerId.a);
        if (num != null && num.intValue() != -1) {
            i = num.intValue();
        } else {
            i = defaultLoadControl.l;
        }
        if (i == -1) {
            i = 13107200;
        }
        playerLoadingState2.c = i;
        playerLoadingState2.b = false;
        if (this.Q.a.p()) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        u0(i2);
        PlaybackInfo playbackInfo = this.Q;
        boolean z2 = playbackInfo.l;
        G0(this.I.c(playbackInfo.e, z2), playbackInfo.n, playbackInfo.m, z2);
        MediaSourceList mediaSourceList = this.A;
        ArrayList arrayList = mediaSourceList.c;
        Preconditions.n(!mediaSourceList.l);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = (MediaSourceList.MediaSourceHolder) arrayList.get(i3);
            mediaSourceList.e(mediaSourceHolder);
            mediaSourceList.h.add(mediaSourceHolder);
        }
        mediaSourceList.l = true;
        this.p.i(2);
    }

    public final void O(ConditionVariable conditionVariable) {
        SpatializerWrapper spatializerWrapper;
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        try {
            S(true, false, true, false);
            P();
            LoadControl loadControl = this.o;
            PlayerId playerId = this.D;
            DefaultLoadControl defaultLoadControl = (DefaultLoadControl) loadControl;
            ConcurrentHashMap concurrentHashMap = defaultLoadControl.p;
            DefaultLoadControl.PlayerLoadingState playerLoadingState = (DefaultLoadControl.PlayerLoadingState) concurrentHashMap.get(playerId);
            if (playerLoadingState != null) {
                int i = playerLoadingState.a - 1;
                playerLoadingState.a = i;
                if (i == 0) {
                    concurrentHashMap.remove(playerId);
                    defaultLoadControl.d();
                }
            }
            if (defaultLoadControl.p.isEmpty()) {
                defaultLoadControl.q = -1L;
            }
            AudioFocusManager audioFocusManager = this.I;
            audioFocusManager.c = null;
            audioFocusManager.a();
            audioFocusManager.b(0);
            DefaultTrackSelector defaultTrackSelector = (DefaultTrackSelector) this.m;
            if (defaultTrackSelector.g != null) {
                Preconditions.m("DefaultTrackSelector is accessed on the wrong thread.", Thread.currentThread().equals(defaultTrackSelector.g));
            }
            if (Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = defaultTrackSelector.h) != null) {
                Handler handler = spatializerWrapper.c;
                Spatializer spatializer = spatializerWrapper.a;
                if (spatializer != null && (spatializer$OnSpatializerStateChangedListener = spatializerWrapper.d) != null && handler != null) {
                    spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
                    handler.removeCallbacksAndMessages(null);
                }
                defaultTrackSelector.h = null;
            }
            defaultTrackSelector.a = null;
            defaultTrackSelector.b = null;
            u0(1);
        } finally {
            this.p.f();
            this.q.a();
            conditionVariable.c();
        }
    }

    public final void P() {
        boolean z;
        for (int i = 0; i < this.j.length; i++) {
            BaseRenderer baseRenderer = (BaseRenderer) this.k[i];
            synchronized (baseRenderer.j) {
                baseRenderer.B = null;
            }
            RendererHolder rendererHolder = this.j[i];
            BaseRenderer baseRenderer2 = (BaseRenderer) rendererHolder.a;
            boolean z2 = true;
            if (baseRenderer2.q == 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            baseRenderer2.w();
            rendererHolder.e = false;
            Renderer renderer = rendererHolder.c;
            if (renderer != null) {
                BaseRenderer baseRenderer3 = (BaseRenderer) renderer;
                if (baseRenderer3.q != 0) {
                    z2 = false;
                }
                Preconditions.n(z2);
                baseRenderer3.w();
                rendererHolder.f = false;
            }
        }
    }

    public final void Q(int i, int i2, ShuffleOrder shuffleOrder) {
        boolean z = true;
        this.R.a(1);
        MediaSourceList mediaSourceList = this.A;
        mediaSourceList.getClass();
        if (i < 0 || i > i2 || i2 > mediaSourceList.c.size()) {
            z = false;
        }
        Preconditions.e(z);
        mediaSourceList.k = shuffleOrder;
        mediaSourceList.f(i, i2);
        y(mediaSourceList.b(), false);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R() {
        TrackSelectorResult trackSelectorResult;
        int i;
        boolean z;
        boolean z2;
        float f = this.v.e().a;
        MediaPeriodQueue mediaPeriodQueue = this.z;
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.i;
        MediaPeriodHolder f2 = mediaPeriodQueue.f();
        TrackSelectorResult trackSelectorResult2 = null;
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder;
        boolean z3 = true;
        while (mediaPeriodHolder2 != null && mediaPeriodHolder2.e) {
            TrackSelectorResult j = mediaPeriodHolder2.j(f, this.Q.a);
            if (mediaPeriodHolder2 == this.z.i) {
                trackSelectorResult = j;
            } else {
                trackSelectorResult = trackSelectorResult2;
            }
            TrackSelectorResult trackSelectorResult3 = mediaPeriodHolder2.o;
            ExoTrackSelection[] exoTrackSelectionArr = j.c;
            if (trackSelectorResult3 != null && trackSelectorResult3.c.length == exoTrackSelectionArr.length) {
                for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
                    if (j.a(trackSelectorResult3, i2)) {
                    }
                }
                if (mediaPeriodHolder2 == f2) {
                    z3 = false;
                }
                mediaPeriodHolder2 = mediaPeriodHolder2.m;
                trackSelectorResult2 = trackSelectorResult;
            }
            MediaPeriodQueue mediaPeriodQueue2 = this.z;
            if (z3) {
                MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodQueue2.i;
                if ((mediaPeriodQueue2.t(mediaPeriodHolder3) & 1) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                boolean[] zArr = new boolean[this.j.length];
                trackSelectorResult.getClass();
                long a = mediaPeriodHolder3.a(trackSelectorResult, this.Q.s, z, zArr);
                PlaybackInfo playbackInfo = this.Q;
                if (playbackInfo.e != 4 && a != playbackInfo.s) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                PlaybackInfo playbackInfo2 = this.Q;
                this.Q = B(playbackInfo2.b, a, playbackInfo2.c, playbackInfo2.d, z2, 5);
                if (z2) {
                    U(a, true);
                }
                j();
                boolean[] zArr2 = new boolean[this.j.length];
                int i3 = 0;
                while (true) {
                    RendererHolder[] rendererHolderArr = this.j;
                    if (i3 >= rendererHolderArr.length) {
                        break;
                    }
                    int c = rendererHolderArr[i3].c();
                    zArr2[i3] = this.j[i3].l();
                    RendererHolder rendererHolder = this.j[i3];
                    SampleStream sampleStream = mediaPeriodHolder3.c[i3];
                    DefaultMediaClock defaultMediaClock = this.v;
                    long j2 = this.f0;
                    boolean z4 = zArr[i3];
                    Renderer renderer = rendererHolder.a;
                    if (RendererHolder.m(renderer)) {
                        if (sampleStream != ((BaseRenderer) renderer).r) {
                            rendererHolder.a(renderer, defaultMediaClock);
                        } else if (z4) {
                            ((BaseRenderer) renderer).E(j2, false, true);
                        }
                    }
                    Renderer renderer2 = rendererHolder.c;
                    if (renderer2 != null && RendererHolder.m(renderer2)) {
                        BaseRenderer baseRenderer = (BaseRenderer) renderer2;
                        if (sampleStream != baseRenderer.r) {
                            rendererHolder.a(renderer2, defaultMediaClock);
                        } else if (z4) {
                            baseRenderer.E(j2, false, true);
                        }
                    }
                    if (c - this.j[i3].c() > 0) {
                        K(i3, false);
                    }
                    this.d0 -= c - this.j[i3].c();
                    i3++;
                }
                o(zArr2, this.f0);
                e0(mediaPeriodHolder3);
            } else {
                mediaPeriodQueue2.t(mediaPeriodHolder2);
                if (mediaPeriodHolder2.e) {
                    long max = Math.max(mediaPeriodHolder2.g.b, this.f0 - mediaPeriodHolder2.p);
                    if (this.H) {
                        int i4 = 0;
                        while (true) {
                            if (i4 >= this.j.length) {
                                break;
                            }
                            if (Objects.equals(this.z.k[i4], mediaPeriodHolder2) && this.j[i4].j(mediaPeriodHolder2)) {
                                j();
                                break;
                            }
                            i4++;
                        }
                    }
                    i = 4;
                    mediaPeriodHolder2.a(j, max, false, new boolean[mediaPeriodHolder2.j.length]);
                    x(true);
                    if (this.Q.e == i) {
                        G();
                        H0();
                        this.p.i(2);
                        return;
                    }
                    return;
                }
            }
            i = 4;
            x(true);
            if (this.Q.e == i) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void S(boolean z, boolean z2, boolean z3, boolean z4) {
        long j;
        long j2;
        long j3;
        Timeline timeline;
        Timeline timeline2;
        MediaSource.MediaPeriodId mediaPeriodId;
        ExoPlaybackException exoPlaybackException;
        TrackGroupArray trackGroupArray;
        TrackSelectorResult trackSelectorResult;
        List list;
        this.p.j(2);
        this.N = false;
        boolean z5 = true;
        if (this.O != null) {
            this.R.a(1);
            this.O = null;
        }
        this.j0 = null;
        J0(false, true);
        DefaultMediaClock defaultMediaClock = this.v;
        defaultMediaClock.o = false;
        StandaloneMediaClock standaloneMediaClock = defaultMediaClock.j;
        if (standaloneMediaClock.k) {
            standaloneMediaClock.a(standaloneMediaClock.k());
            standaloneMediaClock.k = false;
        }
        this.f0 = 1000000000000L;
        for (int i = 0; i < this.j.length; i++) {
            try {
                k(i);
            } catch (ExoPlaybackException e) {
                e = e;
                Log.d("ExoPlayerImplInternal", "Disable failed.", e);
                if (z) {
                }
                this.d0 = 0;
                PlaybackInfo playbackInfo = this.Q;
                MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.b;
                long j4 = playbackInfo.s;
                if (!this.Q.b.c()) {
                }
                j = this.Q.c;
                if (!z2) {
                }
                this.z.b();
                this.X = false;
                timeline = this.Q.a;
                if (!z3) {
                }
                timeline2 = timeline;
                mediaPeriodId = mediaPeriodId2;
                PlaybackInfo playbackInfo2 = this.Q;
                int i2 = playbackInfo2.e;
                if (z4) {
                }
                if (z5) {
                }
                TrackGroupArray trackGroupArray2 = trackGroupArray;
                if (z5) {
                }
                TrackSelectorResult trackSelectorResult2 = trackSelectorResult;
                if (z5) {
                }
                List list2 = list;
                PlaybackInfo playbackInfo3 = this.Q;
                this.Q = new PlaybackInfo(timeline2, mediaPeriodId, j3, j2, i2, exoPlaybackException, false, trackGroupArray2, trackSelectorResult2, list2, mediaPeriodId, playbackInfo3.l, playbackInfo3.m, playbackInfo3.n, playbackInfo3.o, j2, 0L, j2, 0L, false);
                if (z3) {
                }
            } catch (RuntimeException e2) {
                e = e2;
                Log.d("ExoPlayerImplInternal", "Disable failed.", e);
                if (z) {
                }
                this.d0 = 0;
                PlaybackInfo playbackInfo4 = this.Q;
                MediaSource.MediaPeriodId mediaPeriodId22 = playbackInfo4.b;
                long j42 = playbackInfo4.s;
                if (!this.Q.b.c()) {
                }
                j = this.Q.c;
                if (!z2) {
                }
                this.z.b();
                this.X = false;
                timeline = this.Q.a;
                if (!z3) {
                }
                timeline2 = timeline;
                mediaPeriodId = mediaPeriodId22;
                PlaybackInfo playbackInfo22 = this.Q;
                int i22 = playbackInfo22.e;
                if (z4) {
                }
                if (z5) {
                }
                TrackGroupArray trackGroupArray22 = trackGroupArray;
                if (z5) {
                }
                TrackSelectorResult trackSelectorResult22 = trackSelectorResult;
                if (z5) {
                }
                List list22 = list;
                PlaybackInfo playbackInfo32 = this.Q;
                this.Q = new PlaybackInfo(timeline2, mediaPeriodId, j3, j2, i22, exoPlaybackException, false, trackGroupArray22, trackSelectorResult22, list22, mediaPeriodId, playbackInfo32.l, playbackInfo32.m, playbackInfo32.n, playbackInfo32.o, j2, 0L, j2, 0L, false);
                if (z3) {
                }
            }
        }
        this.m0 = -9223372036854775807L;
        if (z) {
            for (RendererHolder rendererHolder : this.j) {
                try {
                    rendererHolder.p();
                } catch (RuntimeException e3) {
                    Log.d("ExoPlayerImplInternal", "Reset failed.", e3);
                }
            }
        }
        this.d0 = 0;
        PlaybackInfo playbackInfo42 = this.Q;
        MediaSource.MediaPeriodId mediaPeriodId222 = playbackInfo42.b;
        long j422 = playbackInfo42.s;
        if (!this.Q.b.c()) {
            PlaybackInfo playbackInfo5 = this.Q;
            Timeline.Period period = this.t;
            MediaSource.MediaPeriodId mediaPeriodId3 = playbackInfo5.b;
            Timeline timeline3 = playbackInfo5.a;
            if (!timeline3.p() && !timeline3.g(mediaPeriodId3.a, period).f) {
                j = this.Q.s;
                if (!z2) {
                    this.e0 = null;
                    Pair q = q(this.Q.a);
                    mediaPeriodId222 = (MediaSource.MediaPeriodId) q.first;
                    long longValue = ((Long) q.second).longValue();
                    if (mediaPeriodId222.equals(this.Q.b)) {
                        z5 = false;
                    }
                    j2 = longValue;
                    j3 = -9223372036854775807L;
                } else {
                    j2 = j422;
                    j3 = j;
                    z5 = false;
                }
                this.z.b();
                this.X = false;
                timeline = this.Q.a;
                if (!z3 && (timeline instanceof PlaylistTimeline)) {
                    PlaylistTimeline playlistTimeline = (PlaylistTimeline) timeline;
                    ShuffleOrder shuffleOrder = this.A.k;
                    Timeline[] timelineArr = playlistTimeline.i;
                    Timeline[] timelineArr2 = new Timeline[timelineArr.length];
                    for (int i3 = 0; i3 < timelineArr.length; i3++) {
                        final Timeline timeline4 = timelineArr[i3];
                        timelineArr2[i3] = new ForwardingTimeline(timeline4) { // from class: androidx.media3.exoplayer.PlaylistTimeline.1
                            public final Timeline.Window c = new Timeline.Window();

                            public AnonymousClass1(final Timeline timeline42) {
                                super(timeline42);
                                this.c = new Timeline.Window();
                            }

                            @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
                            public final Timeline.Period f(int i4, Timeline.Period period2, boolean z6) {
                                Timeline timeline5 = this.b;
                                Timeline.Period f = timeline5.f(i4, period2, z6);
                                if (timeline5.m(f.c, this.c, 0L).a()) {
                                    Object obj = period2.a;
                                    Object obj2 = period2.b;
                                    int i5 = period2.c;
                                    long j5 = period2.d;
                                    long j6 = period2.e;
                                    AdPlaybackState adPlaybackState = AdPlaybackState.c;
                                    f.a = obj;
                                    f.b = obj2;
                                    f.c = i5;
                                    f.d = j5;
                                    f.e = j6;
                                    f.g = adPlaybackState;
                                    f.f = true;
                                    return f;
                                }
                                f.f = true;
                                return f;
                            }
                        };
                    }
                    timeline2 = new PlaylistTimeline(timelineArr2, playlistTimeline.j, shuffleOrder);
                    if (mediaPeriodId222.b != -1) {
                        timeline2.g(mediaPeriodId222.a, this.t);
                        int i4 = this.t.c;
                        Timeline.Window window = this.s;
                        timeline2.m(i4, window, 0L);
                        if (window.a()) {
                            mediaPeriodId = new MediaSource.MediaPeriodId(mediaPeriodId222.d, mediaPeriodId222.a);
                            PlaybackInfo playbackInfo222 = this.Q;
                            int i222 = playbackInfo222.e;
                            if (z4) {
                                exoPlaybackException = null;
                            } else {
                                exoPlaybackException = playbackInfo222.f;
                            }
                            if (z5) {
                                trackGroupArray = TrackGroupArray.d;
                            } else {
                                trackGroupArray = playbackInfo222.h;
                            }
                            TrackGroupArray trackGroupArray222 = trackGroupArray;
                            if (z5) {
                                trackSelectorResult = this.n;
                            } else {
                                trackSelectorResult = playbackInfo222.i;
                            }
                            TrackSelectorResult trackSelectorResult222 = trackSelectorResult;
                            if (z5) {
                                list = ImmutableList.r();
                            } else {
                                list = playbackInfo222.j;
                            }
                            List list222 = list;
                            PlaybackInfo playbackInfo322 = this.Q;
                            this.Q = new PlaybackInfo(timeline2, mediaPeriodId, j3, j2, i222, exoPlaybackException, false, trackGroupArray222, trackSelectorResult222, list222, mediaPeriodId, playbackInfo322.l, playbackInfo322.m, playbackInfo322.n, playbackInfo322.o, j2, 0L, j2, 0L, false);
                            if (z3) {
                                MediaPeriodQueue mediaPeriodQueue = this.z;
                                if (!mediaPeriodQueue.q.isEmpty()) {
                                    ArrayList arrayList = new ArrayList();
                                    for (int i5 = 0; i5 < mediaPeriodQueue.q.size(); i5++) {
                                        ((MediaPeriodHolder) mediaPeriodQueue.q.get(i5)).i();
                                    }
                                    mediaPeriodQueue.q = arrayList;
                                    mediaPeriodQueue.m = null;
                                    mediaPeriodQueue.q();
                                }
                                MediaSourceList mediaSourceList = this.A;
                                HashMap hashMap = mediaSourceList.g;
                                for (MediaSourceList.MediaSourceAndListener mediaSourceAndListener : hashMap.values()) {
                                    try {
                                        ((BaseMediaSource) mediaSourceAndListener.a).p(mediaSourceAndListener.b);
                                    } catch (RuntimeException e4) {
                                        Log.d("MediaSourceList", "Failed to release child source.", e4);
                                    }
                                    MediaSource mediaSource = mediaSourceAndListener.a;
                                    MediaSourceList.ForwardingEventListener forwardingEventListener = mediaSourceAndListener.c;
                                    ((BaseMediaSource) mediaSource).r(forwardingEventListener);
                                    ((BaseMediaSource) mediaSourceAndListener.a).d.b(forwardingEventListener);
                                }
                                hashMap.clear();
                                mediaSourceList.h.clear();
                                mediaSourceList.l = false;
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    timeline2 = timeline;
                }
                mediaPeriodId = mediaPeriodId222;
                PlaybackInfo playbackInfo2222 = this.Q;
                int i2222 = playbackInfo2222.e;
                if (z4) {
                }
                if (z5) {
                }
                TrackGroupArray trackGroupArray2222 = trackGroupArray;
                if (z5) {
                }
                TrackSelectorResult trackSelectorResult2222 = trackSelectorResult;
                if (z5) {
                }
                List list2222 = list;
                PlaybackInfo playbackInfo3222 = this.Q;
                this.Q = new PlaybackInfo(timeline2, mediaPeriodId, j3, j2, i2222, exoPlaybackException, false, trackGroupArray2222, trackSelectorResult2222, list2222, mediaPeriodId, playbackInfo3222.l, playbackInfo3222.m, playbackInfo3222.n, playbackInfo3222.o, j2, 0L, j2, 0L, false);
                if (z3) {
                }
            }
        }
        j = this.Q.c;
        if (!z2) {
        }
        this.z.b();
        this.X = false;
        timeline = this.Q.a;
        if (!z3) {
        }
        timeline2 = timeline;
        mediaPeriodId = mediaPeriodId222;
        PlaybackInfo playbackInfo22222 = this.Q;
        int i22222 = playbackInfo22222.e;
        if (z4) {
        }
        if (z5) {
        }
        TrackGroupArray trackGroupArray22222 = trackGroupArray;
        if (z5) {
        }
        TrackSelectorResult trackSelectorResult22222 = trackSelectorResult;
        if (z5) {
        }
        List list22222 = list;
        PlaybackInfo playbackInfo32222 = this.Q;
        this.Q = new PlaybackInfo(timeline2, mediaPeriodId, j3, j2, i22222, exoPlaybackException, false, trackGroupArray22222, trackSelectorResult22222, list22222, mediaPeriodId, playbackInfo32222.l, playbackInfo32222.m, playbackInfo32222.n, playbackInfo32222.o, j2, 0L, j2, 0L, false);
        if (z3) {
        }
    }

    public final void T() {
        boolean z;
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        if (mediaPeriodHolder != null && mediaPeriodHolder.g.h && this.T) {
            z = true;
        } else {
            z = false;
        }
        this.U = z;
    }

    public final void U(long j, boolean z) {
        long j2;
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        if (mediaPeriodHolder == null) {
            j2 = 1000000000000L;
        } else {
            j2 = mediaPeriodHolder.p;
        }
        long j3 = j + j2;
        this.f0 = j3;
        this.v.j.a(j3);
        for (RendererHolder rendererHolder : this.j) {
            long j4 = this.f0;
            Renderer e = rendererHolder.e(mediaPeriodHolder);
            if (e != null) {
                ((BaseRenderer) e).E(j4, false, z);
            }
        }
        for (MediaPeriodHolder mediaPeriodHolder2 = r0.i; mediaPeriodHolder2 != null; mediaPeriodHolder2 = mediaPeriodHolder2.m) {
            for (ExoTrackSelection exoTrackSelection : mediaPeriodHolder2.o.c) {
            }
        }
    }

    public final void V(Timeline timeline, Timeline timeline2) {
        if (timeline.p() && timeline2.p()) {
            return;
        }
        ArrayList arrayList = this.w;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            defpackage.q.w(arrayList.get(size));
            throw null;
        }
    }

    public final void Y(long j) {
        boolean z;
        MediaPeriodHolder mediaPeriodHolder;
        long j2;
        if (!this.E && (!this.M || !this.L.d)) {
            z = false;
        } else {
            z = true;
        }
        PlaybackInfo playbackInfo = this.Q;
        long j3 = 1000;
        long j4 = p0;
        if (z) {
            if (playbackInfo.e != 3) {
                j3 = j4;
            }
            for (RendererHolder rendererHolder : this.j) {
                long j5 = this.f0;
                long j6 = this.g0;
                Renderer renderer = rendererHolder.c;
                Renderer renderer2 = rendererHolder.a;
                if (RendererHolder.m(renderer2)) {
                    j2 = renderer2.g(j5, j6);
                } else {
                    j2 = Long.MAX_VALUE;
                }
                if (renderer != null && RendererHolder.m(renderer)) {
                    j2 = Math.min(j2, renderer.g(j5, j6));
                }
                j3 = Math.min(j3, Util.N(j2));
            }
            if (this.Q.m()) {
                MediaPeriodHolder mediaPeriodHolder2 = this.z.i;
                if (mediaPeriodHolder2 != null) {
                    mediaPeriodHolder = mediaPeriodHolder2.m;
                } else {
                    mediaPeriodHolder = null;
                }
                if (mediaPeriodHolder != null) {
                    if ((((float) Util.D(j3)) * this.Q.o.a) + ((float) this.f0) >= ((float) mediaPeriodHolder.e())) {
                        j3 = Math.min(j3, j4);
                    }
                }
            }
        } else if (playbackInfo.e != 3 || y0()) {
            j3 = j4;
        }
        this.p.g(j + j3);
    }

    public final void Z(boolean z) {
        MediaSource.MediaPeriodId mediaPeriodId = this.z.i.g.a;
        long b0 = b0(mediaPeriodId, this.Q.s, true, false);
        if (b0 != this.Q.s) {
            PlaybackInfo playbackInfo = this.Q;
            this.Q = B(mediaPeriodId, b0, playbackInfo.c, playbackInfo.d, z, 5);
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public final void a(TrackSelectionParameters trackSelectionParameters) {
        this.p.k(10, trackSelectionParameters).a();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:27|(7:(9:69|70|(1:93)(3:76|(1:80)|81)|82|(1:92)|89|90|19|20)(1:29)|46|47|48|18|19|20)|30|31|(1:33)(1:66)|34|35|36|(1:38)(1:61)|39|40|41|42|43|44|45) */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0190, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0191, code lost:
    
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0192, code lost:
    
        r5 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0194, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0196, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0198, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a0(SeekPosition seekPosition) {
        long j;
        MediaSource.MediaPeriodId v;
        boolean z;
        long j2;
        long j3;
        boolean z2;
        MediaSource.MediaPeriodId mediaPeriodId;
        long j4;
        long j5;
        long j6;
        long j7;
        PlaybackInfo playbackInfo;
        int i;
        long j8;
        int i2;
        long j9;
        MediaSource.MediaPeriodId mediaPeriodId2;
        long j10;
        boolean z3;
        long b0;
        boolean z4;
        PlaybackInfo playbackInfo2;
        MediaSource.MediaPeriodId mediaPeriodId3;
        Timeline timeline;
        long j11;
        ExoPlayerImplInternal exoPlayerImplInternal = this;
        if (exoPlayerImplInternal.N) {
            if (exoPlayerImplInternal.O != null) {
                exoPlayerImplInternal.P++;
                exoPlayerImplInternal.R.a(1);
            }
            exoPlayerImplInternal.O = seekPosition;
            return;
        }
        exoPlayerImplInternal.R.a(1);
        Pair W = W(exoPlayerImplInternal.Q.a, seekPosition, true, exoPlayerImplInternal.Y, exoPlayerImplInternal.Z, exoPlayerImplInternal.s, exoPlayerImplInternal.t);
        if (W == null) {
            Pair q = exoPlayerImplInternal.q(exoPlayerImplInternal.Q.a);
            v = (MediaSource.MediaPeriodId) q.first;
            j3 = ((Long) q.second).longValue();
            z = !exoPlayerImplInternal.Q.a.p();
            j2 = -9223372036854775807L;
        } else {
            Object obj = W.first;
            long longValue = ((Long) W.second).longValue();
            if (seekPosition.c == -9223372036854775807L) {
                j = -9223372036854775807L;
            } else {
                j = longValue;
            }
            MediaPeriodQueue mediaPeriodQueue = exoPlayerImplInternal.z;
            PlaybackInfo playbackInfo3 = exoPlayerImplInternal.Q;
            v = mediaPeriodQueue.v(playbackInfo3, playbackInfo3.a, obj, longValue, true, false);
            if (v.c()) {
                exoPlayerImplInternal.Q.a.g(v.a, exoPlayerImplInternal.t);
                if (exoPlayerImplInternal.t.e(v.b) == v.c) {
                    exoPlayerImplInternal.t.g.getClass();
                }
                exoPlayerImplInternal.t.g.a(v.b).getClass();
                z = true;
                j2 = Math.max(j, 0L);
                j3 = 0;
            } else {
                if (seekPosition.c == -9223372036854775807L) {
                    z = true;
                } else {
                    z = false;
                }
                j2 = j;
                j3 = longValue;
            }
        }
        try {
            try {
                if (exoPlayerImplInternal.Q.a.p()) {
                    exoPlayerImplInternal.e0 = seekPosition;
                } else {
                    PlaybackInfo playbackInfo4 = exoPlayerImplInternal.Q;
                    if (W == null) {
                        if (playbackInfo4.e != 1) {
                            exoPlayerImplInternal.u0(4);
                        }
                        exoPlayerImplInternal.S(false, true, false, true);
                    } else {
                        try {
                            if (v.equals(playbackInfo4.b)) {
                                try {
                                    MediaPeriodHolder mediaPeriodHolder = exoPlayerImplInternal.z.i;
                                    if (mediaPeriodHolder != null && mediaPeriodHolder.e && j3 != 0) {
                                        MaskingMediaPeriod maskingMediaPeriod = mediaPeriodHolder.a;
                                        long j12 = exoPlayerImplInternal.s.k;
                                        if (exoPlayerImplInternal.M && j12 != -9223372036854775807L) {
                                            exoPlayerImplInternal.L.getClass();
                                        }
                                        j7 = maskingMediaPeriod.h(j3, exoPlayerImplInternal.K);
                                    } else {
                                        j7 = j3;
                                    }
                                    if (Util.N(j7) != Util.N(exoPlayerImplInternal.Q.s) || ((i = (playbackInfo = exoPlayerImplInternal.Q).e) != 2 && i != 3)) {
                                        z2 = z;
                                        mediaPeriodId = v;
                                        j6 = j2;
                                    }
                                    j8 = playbackInfo.s;
                                    i2 = 2;
                                    j9 = j8;
                                    z2 = z;
                                    mediaPeriodId2 = v;
                                    j10 = j2;
                                    exoPlayerImplInternal.Q = exoPlayerImplInternal.B(mediaPeriodId2, j8, j10, j9, z2, i2);
                                } catch (Throwable th) {
                                    th = th;
                                    z2 = z;
                                    mediaPeriodId = v;
                                    j6 = j2;
                                    j4 = j6;
                                    j5 = j3;
                                    exoPlayerImplInternal.Q = exoPlayerImplInternal.B(mediaPeriodId, j5, j4, j5, z2, 2);
                                    throw th;
                                }
                            }
                            z2 = z;
                            mediaPeriodId = v;
                            j6 = j2;
                            j7 = j3;
                            exoPlayerImplInternal.I0(timeline, mediaPeriodId3, timeline, playbackInfo2.b, j11, true);
                            mediaPeriodId2 = mediaPeriodId3;
                            j10 = j11;
                            j8 = b0;
                            i2 = 2;
                            j9 = j8;
                            exoPlayerImplInternal = this;
                            exoPlayerImplInternal.Q = exoPlayerImplInternal.B(mediaPeriodId2, j8, j10, j9, z2, i2);
                        } catch (Throwable th2) {
                            th = th2;
                            mediaPeriodId = mediaPeriodId3;
                            j4 = j11;
                            j5 = b0;
                            exoPlayerImplInternal.Q = exoPlayerImplInternal.B(mediaPeriodId, j5, j4, j5, z2, 2);
                            throw th;
                        }
                        if (exoPlayerImplInternal.Q.e == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        b0 = exoPlayerImplInternal.b0(mediaPeriodId, j7, exoPlayerImplInternal.D(), z3);
                        if (j3 != b0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        z2 |= z4;
                        playbackInfo2 = exoPlayerImplInternal.Q;
                        mediaPeriodId3 = mediaPeriodId;
                        timeline = playbackInfo2.a;
                        j11 = j6;
                    }
                }
                z2 = z;
                mediaPeriodId2 = v;
                j8 = j3;
                j10 = j2;
                i2 = 2;
                j9 = j8;
                exoPlayerImplInternal = this;
                exoPlayerImplInternal.Q = exoPlayerImplInternal.B(mediaPeriodId2, j8, j10, j9, z2, i2);
            } catch (Throwable th3) {
                th = th3;
                z2 = z;
                mediaPeriodId = v;
                j5 = j3;
                j4 = j2;
            }
        } catch (Throwable th4) {
            th = th4;
            z2 = z;
            mediaPeriodId = v;
            j4 = j2;
        }
    }

    @Override // androidx.media3.common.audio.AudioFocusManager.PlayerControl
    public final void b(int i) {
        this.p.a(33, i, 0).a();
    }

    public final long b0(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z, boolean z2) {
        MediaPeriodQueue mediaPeriodQueue;
        boolean z3;
        C0();
        boolean z4 = true;
        J0(false, true);
        if (z2 || this.Q.e == 3) {
            u0(2);
        }
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder;
        while (mediaPeriodHolder2 != null && !mediaPeriodId.equals(mediaPeriodHolder2.g.a)) {
            mediaPeriodHolder2 = mediaPeriodHolder2.m;
        }
        if (z || mediaPeriodHolder != mediaPeriodHolder2 || (mediaPeriodHolder2 != null && mediaPeriodHolder2.p + j < 0)) {
            for (int i = 0; i < this.j.length; i++) {
                k(i);
            }
            this.m0 = -9223372036854775807L;
            if (mediaPeriodHolder2 != null) {
                while (true) {
                    mediaPeriodQueue = this.z;
                    if (mediaPeriodQueue.i == mediaPeriodHolder2) {
                        break;
                    }
                    mediaPeriodQueue.a();
                }
                mediaPeriodQueue.t(mediaPeriodHolder2);
                mediaPeriodHolder2.p = 1000000000000L;
                Preconditions.n(!D());
                o(new boolean[this.j.length], this.z.d().e());
                e0(mediaPeriodHolder2);
            }
        }
        j();
        if (this.M) {
            for (RendererHolder rendererHolder : this.j) {
                if (rendererHolder.l() && (rendererHolder.f() == 2 || rendererHolder.f() == 4)) {
                    this.N = true;
                    break;
                }
            }
        }
        MediaPeriodQueue mediaPeriodQueue2 = this.z;
        if (mediaPeriodHolder2 != null) {
            mediaPeriodQueue2.t(mediaPeriodHolder2);
            if (!mediaPeriodHolder2.e) {
                mediaPeriodHolder2.g = mediaPeriodHolder2.g.b(j, -9223372036854775807L);
            } else if (mediaPeriodHolder2.f) {
                if (this.M && this.L.f && !this.Q.a.p() && mediaPeriodHolder2.g.a.equals(this.Q.b)) {
                    long j2 = mediaPeriodHolder2.p + j;
                    boolean z5 = true;
                    for (RendererHolder rendererHolder2 : this.j) {
                        if (rendererHolder2.l()) {
                            Renderer e = rendererHolder2.e(mediaPeriodHolder2);
                            if (e != null && e.p(j2)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            z5 &= z3;
                        }
                    }
                    if (z5) {
                        MaskingMediaPeriod maskingMediaPeriod = mediaPeriodHolder2.a;
                        long j3 = this.Q.s;
                        SeekParameters seekParameters = SeekParameters.d;
                        if (maskingMediaPeriod.h(j3, seekParameters) == mediaPeriodHolder2.a.h(j, seekParameters)) {
                            z4 = false;
                        }
                    }
                }
                j = mediaPeriodHolder2.a.i(j);
                mediaPeriodHolder2.a.j(j - this.u);
            }
            U(j, z4);
            G();
        } else {
            mediaPeriodQueue2.b();
            U(j, true);
        }
        x(false);
        this.p.i(2);
        return j;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public final void c(MediaPeriod mediaPeriod) {
        this.p.k(8, mediaPeriod).a();
    }

    public final void c0(PlayerMessage playerMessage) {
        playerMessage.getClass();
        HandlerWrapper handlerWrapper = this.p;
        if (playerMessage.e == this.r) {
            synchronized (playerMessage) {
            }
            try {
                playerMessage.a.o(playerMessage.c, playerMessage.d);
                playerMessage.a(true);
                int i = this.Q.e;
                if (i != 3 && i != 2) {
                    return;
                }
                handlerWrapper.i(2);
                return;
            } catch (Throwable th) {
                playerMessage.a(true);
                throw th;
            }
        }
        handlerWrapper.k(15, playerMessage).a();
    }

    @Override // androidx.media3.common.audio.AudioFocusManager.PlayerControl
    public final void d() {
        this.p.i(34);
    }

    public final void d0(PlayerMessage playerMessage) {
        Looper looper = playerMessage.e;
        if (!looper.getThread().isAlive()) {
            Log.f("TAG", "Trying to send message on a dead thread.");
            playerMessage.a(false);
        } else {
            ((SystemClock) this.x).a(looper, null).d(new h(this, playerMessage));
        }
    }

    public final void e(MediaSourceListUpdateMessage mediaSourceListUpdateMessage, int i) {
        this.R.a(1);
        MediaSourceList mediaSourceList = this.A;
        if (i == -1) {
            i = mediaSourceList.c.size();
        }
        y(mediaSourceList.a(i, mediaSourceListUpdateMessage.a, mediaSourceListUpdateMessage.b), false);
    }

    public final void e0(MediaPeriodHolder mediaPeriodHolder) {
        for (int i = 0; i < this.j.length; i++) {
            mediaPeriodHolder.h[i] = true;
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
    public final void f(long j, long j2, Format format, MediaFormat mediaFormat) {
        if (this.N) {
            this.p.e(37).a();
        }
    }

    public final void f0(AudioAttributes audioAttributes, boolean z) {
        int i;
        SpatializerWrapper spatializerWrapper;
        TrackSelector.InvalidationListener invalidationListener;
        DefaultTrackSelector defaultTrackSelector = (DefaultTrackSelector) this.m;
        if (!defaultTrackSelector.i.equals(audioAttributes)) {
            defaultTrackSelector.i = audioAttributes;
            if (defaultTrackSelector.f.B && Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = defaultTrackSelector.h) != null && spatializerWrapper.b && (invalidationListener = defaultTrackSelector.a) != null) {
                ((ExoPlayerImplInternal) invalidationListener).a(null);
            }
        }
        if (!z) {
            audioAttributes = null;
        }
        AudioFocusManager audioFocusManager = this.I;
        if (!Objects.equals(audioFocusManager.d, audioAttributes)) {
            audioFocusManager.d = audioAttributes;
            boolean z2 = false;
            if (audioAttributes == null) {
                i = 0;
            } else {
                i = 1;
            }
            audioFocusManager.f = i;
            if (i == 1 || i == 0) {
                z2 = true;
            }
            Preconditions.d("Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.", z2);
        }
        PlaybackInfo playbackInfo = this.Q;
        boolean z3 = playbackInfo.l;
        G0(audioFocusManager.c(playbackInfo.e, z3), playbackInfo.n, playbackInfo.m, z3);
    }

    public final void g() {
        ScrubbingModeParameters scrubbingModeParameters;
        for (RendererHolder rendererHolder : this.j) {
            if (this.M) {
                scrubbingModeParameters = this.L;
            } else {
                scrubbingModeParameters = null;
            }
            rendererHolder.a.o(18, scrubbingModeParameters);
            Renderer renderer = rendererHolder.c;
            if (renderer != null) {
                renderer.o(18, scrubbingModeParameters);
            }
        }
    }

    public final void g0(int i) {
        for (RendererHolder rendererHolder : this.j) {
            if (rendererHolder.f() == 1 || rendererHolder.f() == 2) {
                rendererHolder.a.o(10, Integer.valueOf(i));
                Renderer renderer = rendererHolder.c;
                if (renderer != null) {
                    renderer.o(10, Integer.valueOf(i));
                }
            }
        }
    }

    public final boolean h() {
        if (!this.H) {
            return false;
        }
        for (RendererHolder rendererHolder : this.j) {
            if (rendererHolder.i()) {
                return true;
            }
        }
        return false;
    }

    public final void h0(boolean z) {
        this.J = z;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HandlerWrapper handlerWrapper;
        int i;
        MediaSource.MediaPeriodId mediaPeriodId;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3 = 1000;
        try {
            switch (message.what) {
                case 1:
                    if (message.arg1 != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int i4 = message.arg2;
                    this.R.a(1);
                    G0(this.I.c(this.Q.e, z), i4 >> 4, i4 & 15, z);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    m();
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    a0((SeekPosition) message.obj);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    m0((PlaybackParameters) message.obj);
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    r0((SeekParameters) message.obj);
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    B0(false, true);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    O((ConditionVariable) message.obj);
                    return true;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    z((MediaPeriod) message.obj);
                    break;
                case KeyModifiers.a /* 9 */:
                    v((MediaPeriod) message.obj);
                    break;
                case KeyModifiers.b /* 10 */:
                    this.m.a((TrackSelectionParameters) message.obj);
                    R();
                    break;
                case 11:
                    o0(message.arg1);
                    break;
                case KeyModifiers.c /* 12 */:
                    if (message.arg1 != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    s0(z2);
                    break;
                case 13:
                    if (message.arg1 != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    i0(z3, (ConditionVariable) message.obj);
                    break;
                case 14:
                    c0((PlayerMessage) message.obj);
                    break;
                case 15:
                    d0((PlayerMessage) message.obj);
                    break;
                case 16:
                    PlaybackParameters playbackParameters = (PlaybackParameters) message.obj;
                    A(playbackParameters, playbackParameters.a, true, false);
                    break;
                case 17:
                    k0((MediaSourceListUpdateMessage) message.obj);
                    break;
                case 18:
                    e((MediaSourceListUpdateMessage) message.obj, message.arg1);
                    break;
                case 19:
                    defpackage.q.w(message.obj);
                    M();
                    throw null;
                case 20:
                    Q(message.arg1, message.arg2, (ShuffleOrder) message.obj);
                    break;
                case 21:
                    t0((ShuffleOrder) message.obj);
                    break;
                case 22:
                    L();
                    break;
                case 23:
                    if (message.arg1 != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    l0(z4);
                    break;
                case 24:
                    if (message.arg1 != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    h0(z5);
                    break;
                case 25:
                    i();
                    break;
                case 26:
                    R();
                    Z(true);
                    break;
                case 27:
                    F0(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    n0((ExoPlayer.PreloadConfiguration) message.obj);
                    break;
                case 29:
                    N();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    w0(pair.first, (ConditionVariable) pair.second);
                    break;
                case 31:
                    AudioAttributes audioAttributes = (AudioAttributes) message.obj;
                    if (message.arg1 != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    f0(audioAttributes, z6);
                    break;
                case 32:
                    x0(((Float) message.obj).floatValue());
                    break;
                case 33:
                    t(message.arg1);
                    break;
                case 34:
                    u();
                    break;
                case 35:
                    v0((VideoFrameMetadataListener) message.obj);
                    break;
                case 36:
                    p0(((Boolean) message.obj).booleanValue());
                    break;
                case 37:
                    this.N = false;
                    SeekPosition seekPosition = this.O;
                    if (seekPosition != null) {
                        a0(seekPosition);
                        this.O = null;
                        break;
                    }
                    break;
                case 38:
                    q0((ScrubbingModeParameters) message.obj);
                    break;
                case 39:
                    j0((ImageMetadataListener) message.obj);
                    break;
                case 40:
                    g0(message.arg1);
                    break;
                default:
                    return false;
            }
        } catch (ParserException e) {
            boolean z7 = e.j;
            int i5 = e.k;
            if (i5 == 1) {
                if (z7) {
                    i2 = 3001;
                } else {
                    i2 = 3003;
                }
            } else {
                if (i5 == 4) {
                    if (z7) {
                        i2 = 3002;
                    } else {
                        i2 = 3004;
                    }
                }
                w(e, i3);
            }
            i3 = i2;
            w(e, i3);
        } catch (DataSourceException e2) {
            w(e2, e2.j);
        } catch (ExoPlaybackException e3) {
            e = e3;
            int i6 = e.l;
            MediaPeriodQueue mediaPeriodQueue = this.z;
            if (i6 == 1 && e.q == null) {
                RendererHolder rendererHolder = this.j[e.n];
                MediaPeriodHolder k = mediaPeriodQueue.k();
                while (k != null && !rendererHolder.k(k)) {
                    k = k.m;
                }
                if (k == null) {
                    k = mediaPeriodQueue.d();
                }
                if (k != null) {
                    e = e.a(k.g.a);
                }
            }
            int i7 = e.n;
            int i8 = e.l;
            HandlerWrapper handlerWrapper2 = this.p;
            if (i8 == 1 && (mediaPeriodId = e.q) != null && E(i7, mediaPeriodId)) {
                this.n0 = true;
                j();
                MediaPeriodHolder l = mediaPeriodQueue.l(i7);
                MediaPeriodHolder k2 = mediaPeriodQueue.k();
                if (mediaPeriodQueue.k() != l) {
                    while (k2 != null) {
                        MediaPeriodHolder mediaPeriodHolder = k2.m;
                        if (mediaPeriodHolder == l) {
                            break;
                        }
                        k2 = mediaPeriodHolder;
                    }
                }
                mediaPeriodQueue.t(k2);
                if (this.Q.e != 4) {
                    G();
                    handlerWrapper2.i(2);
                }
            } else {
                ExoPlaybackException exoPlaybackException = this.j0;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.j0;
                }
                if (e.l == 1 && mediaPeriodQueue.k() != mediaPeriodQueue.f()) {
                    MediaPeriodHolder k3 = mediaPeriodQueue.k();
                    while (k3 != null && !Objects.equals(k3.g.a, e.q)) {
                        k3 = k3.m;
                    }
                    if (k3 == null) {
                        k3 = mediaPeriodQueue.d();
                    }
                    while (!Objects.equals(mediaPeriodQueue.k(), k3)) {
                        mediaPeriodQueue.a();
                    }
                    MediaPeriodHolder k4 = mediaPeriodQueue.k();
                    Preconditions.i(k4);
                    I(message.what);
                    MediaPeriodInfo mediaPeriodInfo = k4.g;
                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodInfo.a;
                    long j = mediaPeriodInfo.b;
                    handlerWrapper = handlerWrapper2;
                    this.Q = B(mediaPeriodId2, j, mediaPeriodInfo.d, j, true, 0);
                } else {
                    handlerWrapper = handlerWrapper2;
                }
                if (e.r && (this.j0 == null || (i = e.j) == 5004 || i == 5003)) {
                    Log.g("ExoPlayerImplInternal", "Recoverable renderer error", e);
                    if (this.j0 == null) {
                        this.j0 = e;
                    }
                    handlerWrapper.c(handlerWrapper.k(25, e));
                } else {
                    Log.d("ExoPlayerImplInternal", "Playback error", e);
                    B0(true, false);
                    this.Q = this.Q.f(e);
                }
            }
        } catch (DrmSession.DrmSessionException e4) {
            w(e4, e4.j);
        } catch (IOException e5) {
            w(e5, 2000);
        } catch (RuntimeException e6) {
            if ((e6 instanceof IllegalStateException) || (e6 instanceof IllegalArgumentException)) {
                i3 = 1004;
            }
            ExoPlaybackException exoPlaybackException2 = new ExoPlaybackException(2, e6, i3);
            Log.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
            B0(true, false);
            this.Q = this.Q.f(exoPlaybackException2);
        }
        I(message.what);
        return true;
    }

    public final void i() {
        R();
        Z(true);
    }

    public final void i0(boolean z, ConditionVariable conditionVariable) {
        if (this.a0 != z) {
            this.a0 = z;
            if (!z) {
                for (RendererHolder rendererHolder : this.j) {
                    rendererHolder.p();
                }
            }
        }
        if (conditionVariable != null) {
            conditionVariable.c();
        }
    }

    public final void j() {
        boolean z;
        Renderer renderer;
        if (this.H && h()) {
            for (RendererHolder rendererHolder : this.j) {
                int c = rendererHolder.c();
                DefaultMediaClock defaultMediaClock = this.v;
                if (rendererHolder.i()) {
                    int i = rendererHolder.d;
                    int i2 = 1;
                    if (i != 4 && i != 2) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (i != 4) {
                        i2 = 0;
                    }
                    if (z) {
                        try {
                            renderer = rendererHolder.a;
                        } catch (RuntimeException e) {
                            Log.d("RendererHolder", "Disable prewarming failed.", e);
                        }
                    } else {
                        renderer = rendererHolder.c;
                        renderer.getClass();
                    }
                    rendererHolder.a(renderer, defaultMediaClock);
                    try {
                        rendererHolder.n(z);
                    } catch (RuntimeException e2) {
                        Log.d("RendererHolder", "Reset prewarming failed.", e2);
                    }
                    rendererHolder.d = i2;
                }
                this.d0 -= c - rendererHolder.c();
            }
            this.m0 = -9223372036854775807L;
        }
    }

    public final void j0(ImageMetadataListener imageMetadataListener) {
        for (RendererHolder rendererHolder : this.j) {
            if (rendererHolder.f() == 4) {
                rendererHolder.a.o(23, imageMetadataListener);
                Renderer renderer = rendererHolder.c;
                if (renderer != null) {
                    renderer.o(23, imageMetadataListener);
                }
            }
        }
    }

    public final void k(int i) {
        boolean z;
        RendererHolder[] rendererHolderArr = this.j;
        int c = rendererHolderArr[i].c();
        RendererHolder rendererHolder = rendererHolderArr[i];
        Renderer renderer = rendererHolder.a;
        DefaultMediaClock defaultMediaClock = this.v;
        rendererHolder.a(renderer, defaultMediaClock);
        Renderer renderer2 = rendererHolder.c;
        if (renderer2 != null) {
            if (RendererHolder.m(renderer2) && rendererHolder.d != 3) {
                z = true;
            } else {
                z = false;
            }
            rendererHolder.a(renderer2, defaultMediaClock);
            rendererHolder.n(false);
            if (z) {
                Renderer renderer3 = rendererHolder.a;
                renderer2.getClass();
                renderer2.o(17, renderer3);
            }
        }
        rendererHolder.d = 0;
        K(i, false);
        this.d0 -= c;
    }

    public final void k0(MediaSourceListUpdateMessage mediaSourceListUpdateMessage) {
        this.R.a(1);
        int i = mediaSourceListUpdateMessage.c;
        ShuffleOrder shuffleOrder = mediaSourceListUpdateMessage.b;
        ArrayList arrayList = mediaSourceListUpdateMessage.a;
        if (i != -1) {
            this.e0 = new SeekPosition(new PlaylistTimeline(arrayList, shuffleOrder), mediaSourceListUpdateMessage.c, mediaSourceListUpdateMessage.d);
        }
        MediaSourceList mediaSourceList = this.A;
        ArrayList arrayList2 = mediaSourceList.c;
        mediaSourceList.f(0, arrayList2.size());
        y(mediaSourceList.a(arrayList2.size(), arrayList, shuffleOrder), false);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public final void l(SequenceableLoader sequenceableLoader) {
        this.p.k(9, (MediaPeriod) sequenceableLoader).a();
    }

    public final void l0(boolean z) {
        this.T = z;
        T();
        if (this.U && D()) {
            Z(true);
            x(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:424:0x08c1, code lost:
    
        if (r7 >= r4.c) goto L489;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x02fc, code lost:
    
        if ((((float) (r4.e() - r37.f0)) / r37.v.e().a) > 10000000) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0443, code lost:
    
        if (((androidx.media3.exoplayer.BaseRenderer) r7).w != false) goto L694;
     */
    /* JADX WARN: Code restructure failed: missing block: B:585:0x0449, code lost:
    
        if (r4.f() != r2) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x044b, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x044e, code lost:
    
        r10 = r8.b[r11];
        r2 = r4.b[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0456, code lost:
    
        if (r22 == false) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x045c, code lost:
    
        if (java.util.Objects.equals(r2, r10) == false) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x045e, code lost:
    
        if (r9 != false) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0464, code lost:
    
        if (r4.i() == false) goto L695;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x0466, code lost:
    
        androidx.media3.exoplayer.RendererHolder.q(r7, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x044d, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:131:0x04d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0561 A[EDGE_INSN: B:227:0x0561->B:228:0x0561 BREAK  A[LOOP:5: B:134:0x055b->B:225:0x0677], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x094a  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0982  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x09b1  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x09bf  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x09cd  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x09d7  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0985  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x07ca  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x058d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x04ca  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x04da  */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m() {
        long j;
        ?? r13;
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        PlaybackInfo playbackInfo;
        boolean z4;
        long j3;
        int i;
        boolean z5;
        boolean z6;
        PlaybackInfo playbackInfo2;
        int i2;
        long j4;
        MediaPeriodInfo e;
        MediaPeriodHolder mediaPeriodHolder;
        int i3;
        MediaPeriodHolder[] mediaPeriodHolderArr;
        int i4;
        int i5;
        MediaPeriodHolder d;
        MediaPeriodHolder mediaPeriodHolder2;
        MediaPeriodHolder mediaPeriodHolder3;
        int i6;
        boolean z7;
        boolean z8;
        int i7;
        int i8;
        int i9;
        boolean z9;
        boolean z10;
        MediaPeriodHolder c;
        MediaPeriodHolder mediaPeriodHolder4;
        boolean z11;
        TrackSelectorResult trackSelectorResult;
        int i10;
        int i11;
        ((SystemClock) this.x).getClass();
        long uptimeMillis = android.os.SystemClock.uptimeMillis();
        this.p.j(2);
        PlaybackInfo playbackInfo3 = this.Q;
        int i12 = playbackInfo3.e;
        if (i12 == 1 || i12 == 4) {
            return;
        }
        if (playbackInfo3.a.p() || !this.A.l) {
            j = uptimeMillis;
            r13 = 0;
        } else {
            this.z.s(this.f0);
            MediaPeriodQueue mediaPeriodQueue = this.z;
            MediaPeriodHolder mediaPeriodHolder5 = mediaPeriodQueue.l;
            if (mediaPeriodHolder5 == null || (!mediaPeriodHolder5.g.i && mediaPeriodHolder5.g() && mediaPeriodQueue.l.g.e != -9223372036854775807L && mediaPeriodQueue.n < 100)) {
                MediaPeriodQueue mediaPeriodQueue2 = this.z;
                long j5 = this.f0;
                PlaybackInfo playbackInfo4 = this.Q;
                MediaPeriodHolder mediaPeriodHolder6 = mediaPeriodQueue2.l;
                if (mediaPeriodHolder6 == null) {
                    j4 = -9223372036854775807L;
                    e = mediaPeriodQueue2.h(playbackInfo4.a, playbackInfo4.b, playbackInfo4.c, playbackInfo4.s, -9223372036854775807L);
                } else {
                    j4 = -9223372036854775807L;
                    e = mediaPeriodQueue2.e(playbackInfo4.a, mediaPeriodHolder6, j5);
                }
                if (e != null) {
                    MediaPeriodQueue mediaPeriodQueue3 = this.z;
                    MediaPeriodHolder mediaPeriodHolder7 = mediaPeriodQueue3.l;
                    long j6 = mediaPeriodHolder7 == null ? 1000000000000L : (mediaPeriodHolder7.p + mediaPeriodHolder7.g.e) - e.b;
                    int i13 = 0;
                    while (true) {
                        if (i13 >= mediaPeriodQueue3.q.size()) {
                            mediaPeriodHolder = null;
                            break;
                        }
                        MediaPeriodInfo mediaPeriodInfo = ((MediaPeriodHolder) mediaPeriodQueue3.q.get(i13)).g;
                        long j7 = mediaPeriodInfo.e;
                        long j8 = e.e;
                        if ((j7 == j4 || j7 == j8) && mediaPeriodInfo.b == e.b && mediaPeriodInfo.a.equals(e.a)) {
                            mediaPeriodHolder = (MediaPeriodHolder) mediaPeriodQueue3.q.remove(i13);
                            break;
                        }
                        i13++;
                    }
                    if (mediaPeriodHolder == null) {
                        ExoPlayerImplInternal exoPlayerImplInternal = (ExoPlayerImplInternal) mediaPeriodQueue3.e.k;
                        RendererCapabilities[] rendererCapabilitiesArr = exoPlayerImplInternal.k;
                        TrackSelector trackSelector = exoPlayerImplInternal.m;
                        LoadControl loadControl = exoPlayerImplInternal.o;
                        PlayerId playerId = exoPlayerImplInternal.D;
                        DefaultLoadControl defaultLoadControl = (DefaultLoadControl) loadControl;
                        defaultLoadControl.getClass();
                        DefaultLoadControl.PlayerIdFilteringAllocatorImpl playerIdFilteringAllocatorImpl = new DefaultLoadControl.PlayerIdFilteringAllocatorImpl(playerId);
                        MediaSourceList mediaSourceList = exoPlayerImplInternal.A;
                        TrackSelectorResult trackSelectorResult2 = exoPlayerImplInternal.n;
                        exoPlayerImplInternal.l0.getClass();
                        mediaPeriodHolder = new MediaPeriodHolder(rendererCapabilitiesArr, j6, trackSelector, playerIdFilteringAllocatorImpl, mediaSourceList, e, trackSelectorResult2);
                    } else {
                        mediaPeriodHolder.g = e;
                        mediaPeriodHolder.p = j6;
                    }
                    MediaPeriodHolder mediaPeriodHolder8 = mediaPeriodQueue3.l;
                    if (mediaPeriodHolder8 != null) {
                        if (mediaPeriodHolder != mediaPeriodHolder8.m) {
                            mediaPeriodHolder8.b();
                            mediaPeriodHolder8.m = mediaPeriodHolder;
                            mediaPeriodHolder8.c();
                        }
                    } else {
                        mediaPeriodQueue3.i = mediaPeriodHolder;
                        Arrays.fill(mediaPeriodQueue3.j, mediaPeriodHolder);
                        Arrays.fill(mediaPeriodQueue3.k, mediaPeriodHolder);
                    }
                    mediaPeriodQueue3.o = null;
                    mediaPeriodQueue3.l = mediaPeriodHolder;
                    mediaPeriodQueue3.n++;
                    mediaPeriodQueue3.r();
                    if (!mediaPeriodHolder.d) {
                        long j9 = e.b;
                        mediaPeriodHolder.d = true;
                        mediaPeriodHolder.a.p(this, j9);
                    } else if (mediaPeriodHolder.e) {
                        this.p.k(8, mediaPeriodHolder.a).a();
                    }
                    if (this.z.i == mediaPeriodHolder) {
                        U(e.b, true);
                    }
                    x(false);
                }
            } else {
                j4 = -9223372036854775807L;
            }
            if (this.X) {
                this.X = C(this.z.l);
                D0();
            } else {
                G();
            }
            MediaPeriodQueue mediaPeriodQueue4 = this.z;
            if (!this.U && this.H && !this.n0 && !h() && (c = mediaPeriodQueue4.c()) != null && c == mediaPeriodQueue4.d() && (mediaPeriodHolder4 = c.m) != null && (z11 = mediaPeriodHolder4.e)) {
                Preconditions.n(z11);
                if (((float) (mediaPeriodHolder4.e() - this.f0)) / this.v.e().a <= 10000000) {
                    int i14 = 0;
                    while (true) {
                        MediaPeriodHolder[] mediaPeriodHolderArr2 = mediaPeriodQueue4.k;
                        if (i14 >= mediaPeriodHolderArr2.length) {
                            break;
                        }
                        MediaPeriodHolder mediaPeriodHolder9 = mediaPeriodHolderArr2[i14];
                        mediaPeriodHolder9.getClass();
                        mediaPeriodHolderArr2[i14] = mediaPeriodHolder9.m;
                        mediaPeriodQueue4.r();
                        i14++;
                    }
                    RendererHolder[] rendererHolderArr = this.j;
                    MediaPeriodHolder c2 = mediaPeriodQueue4.c();
                    if (c2 != null) {
                        TrackSelectorResult trackSelectorResult3 = c2.o;
                        int i15 = 0;
                        while (i15 < rendererHolderArr.length) {
                            if (trackSelectorResult3.b(i15)) {
                                RendererHolder rendererHolder = rendererHolderArr[i15];
                                if (rendererHolder.c != null && !rendererHolder.i()) {
                                    RendererHolder rendererHolder2 = rendererHolderArr[i15];
                                    Preconditions.n(!rendererHolder2.i());
                                    if (RendererHolder.m(rendererHolder2.a)) {
                                        i11 = 3;
                                    } else {
                                        Renderer renderer = rendererHolder2.c;
                                        i11 = (renderer == null || !RendererHolder.m(renderer)) ? 2 : 4;
                                    }
                                    rendererHolder2.d = i11;
                                    TrackSelectorResult trackSelectorResult4 = trackSelectorResult3;
                                    i10 = i15;
                                    trackSelectorResult = trackSelectorResult4;
                                    n(c2, i10, false, c2.e());
                                    i15 = i10 + 1;
                                    trackSelectorResult3 = trackSelectorResult;
                                }
                            }
                            trackSelectorResult = trackSelectorResult3;
                            i10 = i15;
                            i15 = i10 + 1;
                            trackSelectorResult3 = trackSelectorResult;
                        }
                        if (h()) {
                            this.m0 = c2.a.o();
                            if (!c2.g()) {
                                mediaPeriodQueue4.t(c2);
                                x(false);
                                G();
                            }
                        }
                    }
                }
            }
            boolean z12 = this.H;
            RendererHolder[] rendererHolderArr2 = this.j;
            MediaPeriodQueue mediaPeriodQueue5 = this.z;
            MediaPeriodHolder d2 = mediaPeriodQueue5.d();
            if (d2 != null) {
                if (d2.m != null && !this.U) {
                    MediaPeriodHolder d3 = mediaPeriodQueue5.d();
                    if (d3.e) {
                        RendererHolder[] rendererHolderArr3 = this.j;
                        int length = rendererHolderArr3.length;
                        int i16 = 0;
                        while (true) {
                            if (i16 < length) {
                                RendererHolder rendererHolder3 = rendererHolderArr3[i16];
                                if (!rendererHolder3.g(d3, rendererHolder3.a) || !rendererHolder3.g(d3, rendererHolder3.c)) {
                                    break;
                                } else {
                                    i16++;
                                }
                            } else if (!h() || !Objects.equals(mediaPeriodQueue5.c(), mediaPeriodQueue5.d())) {
                                MediaPeriodHolder mediaPeriodHolder10 = d2.m;
                                if (mediaPeriodHolder10.e || this.f0 >= mediaPeriodHolder10.e()) {
                                    boolean z13 = d2.m.e;
                                    if (z13) {
                                        Preconditions.n(z13);
                                    }
                                    TrackSelectorResult trackSelectorResult5 = d2.o;
                                    int i17 = 0;
                                    while (true) {
                                        mediaPeriodHolderArr = mediaPeriodQueue5.j;
                                        if (i17 >= mediaPeriodHolderArr.length) {
                                            break;
                                        }
                                        MediaPeriodHolder[] mediaPeriodHolderArr3 = mediaPeriodQueue5.k;
                                        if (Objects.equals(mediaPeriodHolderArr3[i17], mediaPeriodHolderArr[i17])) {
                                            MediaPeriodHolder mediaPeriodHolder11 = mediaPeriodHolderArr[i17];
                                            mediaPeriodHolder11.getClass();
                                            mediaPeriodHolderArr3[i17] = mediaPeriodHolder11.m;
                                        }
                                        MediaPeriodHolder mediaPeriodHolder12 = mediaPeriodHolderArr[i17];
                                        mediaPeriodHolder12.getClass();
                                        mediaPeriodHolderArr[i17] = mediaPeriodHolder12.m;
                                        mediaPeriodQueue5.r();
                                        mediaPeriodHolderArr[i17].getClass();
                                        i17++;
                                    }
                                    MediaPeriodHolder mediaPeriodHolder13 = mediaPeriodHolderArr[0];
                                    mediaPeriodHolder13.getClass();
                                    TrackSelectorResult trackSelectorResult6 = mediaPeriodHolder13.o;
                                    Timeline timeline = this.Q.a;
                                    j = uptimeMillis;
                                    long j10 = j4;
                                    I0(timeline, mediaPeriodHolder13.g.a, timeline, d2.g.a, -9223372036854775807L, false);
                                    int i18 = -2;
                                    if (mediaPeriodHolder13.e && ((z12 && this.m0 != j10) || mediaPeriodHolder13.a.o() != j10)) {
                                        this.m0 = j10;
                                        boolean z14 = z12 && !this.n0;
                                        if (z14) {
                                            int i19 = 0;
                                            while (true) {
                                                if (i19 >= rendererHolderArr2.length) {
                                                    break;
                                                }
                                                boolean b = trackSelectorResult6.b(i19);
                                                ExoTrackSelection[] exoTrackSelectionArr = trackSelectorResult6.c;
                                                if (b && rendererHolderArr2[i19].f() != -2) {
                                                    ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i19];
                                                    if (!MimeTypes.a(((BaseTrackSelection) exoTrackSelection).d[0].p, ((BaseTrackSelection) exoTrackSelection).d[0].l) && !rendererHolderArr2[i19].i()) {
                                                        z14 = false;
                                                        break;
                                                    }
                                                }
                                                i19++;
                                            }
                                        }
                                        if (!z14) {
                                            long e2 = mediaPeriodHolder13.e();
                                            for (RendererHolder rendererHolder4 : rendererHolderArr2) {
                                                Renderer renderer2 = rendererHolder4.c;
                                                Renderer renderer3 = rendererHolder4.a;
                                                if (RendererHolder.m(renderer3) && (i5 = rendererHolder4.d) != 4 && i5 != 2) {
                                                    RendererHolder.q(renderer3, e2);
                                                }
                                                if (renderer2 != null && RendererHolder.m(renderer2) && rendererHolder4.d != 3) {
                                                    RendererHolder.q(renderer2, e2);
                                                }
                                            }
                                            if (!mediaPeriodHolder13.g()) {
                                                mediaPeriodQueue5.t(mediaPeriodHolder13);
                                                x(false);
                                                G();
                                            }
                                        }
                                    }
                                    int length2 = rendererHolderArr2.length;
                                    int i20 = 0;
                                    while (i20 < length2) {
                                        RendererHolder rendererHolder5 = rendererHolderArr2[i20];
                                        long e3 = mediaPeriodHolder13.e();
                                        Renderer renderer4 = rendererHolder5.a;
                                        int i21 = rendererHolder5.b;
                                        boolean b2 = trackSelectorResult5.b(i21);
                                        boolean b3 = trackSelectorResult6.b(i21);
                                        long j11 = j10;
                                        Renderer renderer5 = rendererHolder5.c;
                                        if (renderer5 != null && (i4 = rendererHolder5.d) != 3 && (i4 != 0 || !RendererHolder.m(renderer4))) {
                                            renderer4 = renderer5;
                                        }
                                        i20++;
                                        j10 = j11;
                                        i18 = -2;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    j = uptimeMillis;
                    i3 = 3;
                    if (d2.g.i || this.U) {
                        for (RendererHolder rendererHolder6 : rendererHolderArr2) {
                            if (rendererHolder6.k(d2)) {
                                Renderer e4 = rendererHolder6.e(d2);
                                e4.getClass();
                                if (((BaseRenderer) e4).s()) {
                                    long j12 = d2.g.e;
                                    long j13 = (j12 == j4 || j12 == Long.MIN_VALUE) ? j4 : d2.p + j12;
                                    Renderer e5 = rendererHolder6.e(d2);
                                    e5.getClass();
                                    RendererHolder.q(e5, j13);
                                }
                            }
                        }
                    }
                    MediaPeriodQueue mediaPeriodQueue6 = this.z;
                    d = mediaPeriodQueue6.d();
                    if (d != null && mediaPeriodQueue6.i != d) {
                        i9 = 0;
                        while (true) {
                            if (i9 < this.j.length) {
                                z9 = true;
                                break;
                            } else {
                                if (!d.h[i9]) {
                                    z9 = false;
                                    break;
                                }
                                i9++;
                            }
                        }
                        if (!z9) {
                            MediaPeriodHolder d4 = mediaPeriodQueue6.d();
                            TrackSelectorResult trackSelectorResult7 = d4.o;
                            RendererHolder[] rendererHolderArr4 = this.j;
                            boolean z15 = true;
                            for (RendererHolder rendererHolder7 : rendererHolderArr4) {
                                int c3 = rendererHolder7.c();
                                DefaultMediaClock defaultMediaClock = this.v;
                                int o = rendererHolder7.o(rendererHolder7.a, d4, trackSelectorResult7, defaultMediaClock);
                                int o2 = rendererHolder7.o(rendererHolder7.c, d4, trackSelectorResult7, defaultMediaClock);
                                if (o == 1) {
                                    o = o2;
                                }
                                if ((o & 2) != 0 && (z10 = this.c0) && z10) {
                                    this.c0 = false;
                                    if (this.Q.p) {
                                        this.p.i(2);
                                    }
                                }
                                this.d0 -= c3 - rendererHolder7.c();
                                z15 &= (o & 1) != 0;
                            }
                            if (z15) {
                                for (int i22 = 0; i22 < rendererHolderArr4.length; i22++) {
                                    if (trackSelectorResult7.b(i22) && !rendererHolderArr4[i22].k(d4)) {
                                        n(d4, i22, false, d4.e());
                                    }
                                }
                            }
                            if (z15) {
                                e0(mediaPeriodQueue6.d());
                            }
                        }
                    }
                    RendererHolder[] rendererHolderArr5 = this.j;
                    MediaPeriodQueue mediaPeriodQueue7 = this.z;
                    boolean z16 = false;
                    while (y0() && !this.U && (mediaPeriodHolder2 = mediaPeriodQueue7.i) != null && (mediaPeriodHolder3 = mediaPeriodHolder2.m) != null && this.f0 >= mediaPeriodHolder3.e()) {
                        i6 = 0;
                        while (true) {
                            if (i6 < this.j.length) {
                                z7 = true;
                                break;
                            } else {
                                if (!mediaPeriodHolder3.h[i6]) {
                                    z7 = false;
                                    break;
                                }
                                i6++;
                            }
                        }
                        if (z7) {
                            break;
                        }
                        if (z16) {
                            I(-1);
                        }
                        this.n0 = false;
                        MediaPeriodHolder a = mediaPeriodQueue7.a();
                        a.getClass();
                        if (this.Q.b.a.equals(a.g.a.a)) {
                            MediaSource.MediaPeriodId mediaPeriodId = this.Q.b;
                            if (mediaPeriodId.b == -1) {
                                MediaSource.MediaPeriodId mediaPeriodId2 = a.g.a;
                                if (mediaPeriodId2.b == -1 && mediaPeriodId.e != mediaPeriodId2.e) {
                                    z8 = true;
                                    MediaPeriodInfo mediaPeriodInfo2 = a.g;
                                    MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodInfo2.a;
                                    long j14 = mediaPeriodInfo2.b;
                                    this.Q = B(mediaPeriodId3, j14, mediaPeriodInfo2.d, j14, !z8, 0);
                                    T();
                                    H0();
                                    for (i7 = 0; i7 < rendererHolderArr5.length; i7++) {
                                        if (!this.H ? false : this.j[i7].i()) {
                                            if (a == mediaPeriodQueue7.k[i7]) {
                                                RendererHolder rendererHolder8 = rendererHolderArr5[i7];
                                                int i23 = rendererHolder8.d;
                                                if (i23 == i3 || i23 == 4) {
                                                    boolean z17 = i23 == 4;
                                                    Renderer renderer6 = rendererHolder8.a;
                                                    Renderer renderer7 = rendererHolder8.c;
                                                    if (z17) {
                                                        renderer7.getClass();
                                                        renderer7.o(17, renderer6);
                                                    } else {
                                                        renderer7.getClass();
                                                        renderer6.o(17, renderer7);
                                                    }
                                                    rendererHolder8.d = rendererHolder8.d == 4 ? 0 : 1;
                                                } else if (i23 == 2) {
                                                    rendererHolder8.d = 0;
                                                }
                                            }
                                        }
                                    }
                                    if (this.Q.e == i3) {
                                        A0();
                                    }
                                    TrackSelectorResult trackSelectorResult8 = mediaPeriodQueue7.i.o;
                                    for (i8 = 0; i8 < rendererHolderArr5.length; i8++) {
                                        if (trackSelectorResult8.b(i8)) {
                                            RendererHolder rendererHolder9 = rendererHolderArr5[i8];
                                            Renderer renderer8 = rendererHolder9.c;
                                            Renderer renderer9 = rendererHolder9.a;
                                            if (RendererHolder.m(renderer9)) {
                                                renderer9.i();
                                            } else if (renderer8 != null && RendererHolder.m(renderer8)) {
                                                renderer8.i();
                                            }
                                        }
                                    }
                                    z16 = true;
                                }
                            }
                        }
                        z8 = false;
                        MediaPeriodInfo mediaPeriodInfo22 = a.g;
                        MediaSource.MediaPeriodId mediaPeriodId32 = mediaPeriodInfo22.a;
                        long j142 = mediaPeriodInfo22.b;
                        this.Q = B(mediaPeriodId32, j142, mediaPeriodInfo22.d, j142, !z8, 0);
                        T();
                        H0();
                        while (i7 < rendererHolderArr5.length) {
                        }
                        if (this.Q.e == i3) {
                        }
                        TrackSelectorResult trackSelectorResult82 = mediaPeriodQueue7.i.o;
                        while (i8 < rendererHolderArr5.length) {
                        }
                        z16 = true;
                    }
                    r13 = 0;
                    this.l0.getClass();
                }
            }
            j = uptimeMillis;
            i3 = 3;
            MediaPeriodQueue mediaPeriodQueue62 = this.z;
            d = mediaPeriodQueue62.d();
            if (d != null) {
                i9 = 0;
                while (true) {
                    if (i9 < this.j.length) {
                    }
                    i9++;
                }
                if (!z9) {
                }
            }
            RendererHolder[] rendererHolderArr52 = this.j;
            MediaPeriodQueue mediaPeriodQueue72 = this.z;
            boolean z162 = false;
            while (y0()) {
                i6 = 0;
                while (true) {
                    if (i6 < this.j.length) {
                    }
                    i6++;
                }
                if (z7) {
                }
            }
            r13 = 0;
            this.l0.getClass();
        }
        MediaPeriodHolder mediaPeriodHolder14 = this.z.i;
        if (mediaPeriodHolder14 == null) {
            Y(j);
            return;
        }
        long j15 = j;
        Trace.beginSection("doSomeWork");
        H0();
        if (mediaPeriodHolder14.e) {
            ((SystemClock) this.x).getClass();
            this.g0 = Util.D(android.os.SystemClock.elapsedRealtime());
            mediaPeriodHolder14.a.j(this.Q.s - this.u);
            int i24 = r13;
            int i25 = i24;
            z = true;
            z2 = true;
            while (true) {
                RendererHolder[] rendererHolderArr6 = this.j;
                if (i25 >= rendererHolderArr6.length) {
                    break;
                }
                RendererHolder rendererHolder10 = rendererHolderArr6[i25];
                if (rendererHolder10.c() == 0) {
                    K(i25, r13);
                } else {
                    long j16 = this.f0;
                    long j17 = this.g0;
                    Renderer renderer10 = rendererHolder10.c;
                    Renderer renderer11 = rendererHolder10.a;
                    if (RendererHolder.m(renderer11)) {
                        renderer11.d(j16, j17);
                    }
                    if (renderer10 != null && RendererHolder.m(renderer10)) {
                        renderer10.d(j16, j17);
                    }
                    boolean z18 = (z2 && rendererHolder10.h()) ? true : r13;
                    int i26 = (this.N && rendererHolder10.l() && (rendererHolder10.f() == 2 || rendererHolder10.f() == 4) && !rendererHolder10.h()) ? 1 : i24;
                    Renderer e6 = rendererHolder10.e(mediaPeriodHolder14);
                    boolean z19 = (e6 == null || ((BaseRenderer) e6).s() || e6.a() || e6.b()) ? true : r13;
                    K(i25, z19);
                    z = (z && z19) ? true : r13;
                    if (!z19) {
                        J(i25);
                    }
                    i24 = i26;
                    z2 = z18;
                }
                i25++;
            }
            if (this.N && i24 == 0 && !this.p.h(37)) {
                this.p.e(37).a();
            }
        } else {
            mediaPeriodHolder14.a.g();
            z = true;
            z2 = true;
        }
        long j18 = mediaPeriodHolder14.g.e;
        if (z2 && mediaPeriodHolder14.e) {
            j2 = -9223372036854775807L;
            if (j18 == -9223372036854775807L || j18 <= this.Q.s) {
                z3 = true;
                if (z3 && this.U) {
                    this.U = r13;
                    int i27 = this.Q.n;
                    this.R.a(r13);
                    G0(this.I.c(this.Q.e, r13), i27, 5, r13);
                }
                if (!z3 && mediaPeriodHolder14.g.i) {
                    u0(4);
                    C0();
                } else {
                    playbackInfo = this.Q;
                    if (playbackInfo.e == 2) {
                        MediaPeriodQueue mediaPeriodQueue8 = this.z;
                        if (this.d0 == 0) {
                            z5 = F();
                        } else {
                            if (z) {
                                if (playbackInfo.g) {
                                    MediaPeriodHolder mediaPeriodHolder15 = mediaPeriodQueue8.i;
                                    long j19 = z0(playbackInfo.a, mediaPeriodHolder15.g.a) ? ((DefaultLivePlaybackSpeedControl) this.B).i : j2;
                                    MediaPeriodHolder mediaPeriodHolder16 = mediaPeriodQueue8.l;
                                    boolean z20 = (mediaPeriodHolder16.g() && mediaPeriodHolder16.g.i) ? true : r13;
                                    boolean z21 = (!mediaPeriodHolder16.g.a.c() || mediaPeriodHolder16.e) ? r13 : true;
                                    if (!z20 && !z21) {
                                        long s = s(mediaPeriodHolder16.d());
                                        LoadControl loadControl2 = this.o;
                                        PlayerId playerId2 = this.D;
                                        Timeline timeline2 = this.Q.a;
                                        MediaSource.MediaPeriodId mediaPeriodId4 = mediaPeriodHolder15.g.a;
                                        float f = this.v.e().a;
                                        boolean z22 = this.Q.l;
                                        boolean z23 = this.V;
                                        DefaultLoadControl defaultLoadControl2 = (DefaultLoadControl) loadControl2;
                                        boolean b4 = defaultLoadControl2.b(new LoadControl.Parameters(playerId2, timeline2, mediaPeriodId4, s, f, z23, j19));
                                        long round = f == 1.0f ? s : Math.round(s / f);
                                        if (!z23) {
                                            j3 = b4 ? defaultLoadControl2.i : defaultLoadControl2.h;
                                        } else if (b4) {
                                            j3 = defaultLoadControl2.k;
                                        } else {
                                            j3 = defaultLoadControl2.j;
                                        }
                                        if (j19 != j2) {
                                            j3 = Math.min(j19 / 2, j3);
                                        }
                                        if (j3 > 0 && round < j3) {
                                            if (!(b4 ? defaultLoadControl2.m : r13)) {
                                                DefaultLoadControl.PlayerLoadingState playerLoadingState = (DefaultLoadControl.PlayerLoadingState) defaultLoadControl2.p.get(playerId2);
                                                playerLoadingState.getClass();
                                                synchronized (playerLoadingState) {
                                                    i = playerLoadingState.d;
                                                }
                                                int i28 = i * defaultLoadControl2.c.b;
                                                DefaultLoadControl.PlayerLoadingState playerLoadingState2 = (DefaultLoadControl.PlayerLoadingState) defaultLoadControl2.p.get(playerId2);
                                                playerLoadingState2.getClass();
                                            }
                                        }
                                    }
                                }
                                z5 = true;
                            }
                            z5 = r13;
                        }
                        if (z5) {
                            u0(3);
                            this.j0 = null;
                            if (y0()) {
                                J0(r13, r13);
                                DefaultMediaClock defaultMediaClock2 = this.v;
                                z4 = true;
                                defaultMediaClock2.o = true;
                                defaultMediaClock2.j.b();
                                A0();
                                if (this.Q.e == 2) {
                                    int i29 = r13;
                                    while (true) {
                                        RendererHolder[] rendererHolderArr7 = this.j;
                                        if (i29 >= rendererHolderArr7.length) {
                                            break;
                                        }
                                        if (rendererHolderArr7[i29].k(mediaPeriodHolder14)) {
                                            J(i29);
                                        }
                                        i29++;
                                    }
                                    PlaybackInfo playbackInfo5 = this.Q;
                                    if (!playbackInfo5.g && playbackInfo5.r < 500000 && C(this.z.l) && y0()) {
                                        z6 = z4;
                                        if (!z6) {
                                            this.k0 = j2;
                                        } else {
                                            long j20 = this.k0;
                                            Clock clock = this.x;
                                            if (j20 == j2) {
                                                ((SystemClock) clock).getClass();
                                                this.k0 = android.os.SystemClock.elapsedRealtime();
                                            } else {
                                                ((SystemClock) clock).getClass();
                                                if (android.os.SystemClock.elapsedRealtime() - this.k0 >= 4000) {
                                                    throw new StuckPlayerException(r13, 4000);
                                                }
                                            }
                                        }
                                        boolean z24 = (y0() || this.Q.e != 3) ? r13 : z4;
                                        if (this.c0 || !this.b0 || !z24) {
                                            z4 = r13;
                                        }
                                        playbackInfo2 = this.Q;
                                        if (playbackInfo2.p != z4) {
                                            this.Q = playbackInfo2.i(z4);
                                        }
                                        this.b0 = r13;
                                        if (!z4 && (i2 = this.Q.e) != 4 && (z24 || i2 == 2 || (i2 == 3 && this.d0 != 0))) {
                                            Y(j15);
                                        }
                                        Trace.endSection();
                                    }
                                }
                                z6 = r13;
                                if (!z6) {
                                }
                                if (y0()) {
                                }
                                if (this.c0) {
                                }
                                z4 = r13;
                                playbackInfo2 = this.Q;
                                if (playbackInfo2.p != z4) {
                                }
                                this.b0 = r13;
                                if (!z4) {
                                    Y(j15);
                                }
                                Trace.endSection();
                            }
                        }
                    }
                    z4 = true;
                    if (this.Q.e == 3 && (this.d0 != 0 ? !z : !F())) {
                        J0(y0(), r13);
                        u0(2);
                        if (this.V) {
                            for (MediaPeriodHolder mediaPeriodHolder17 = this.z.i; mediaPeriodHolder17 != null; mediaPeriodHolder17 = mediaPeriodHolder17.m) {
                                ExoTrackSelection[] exoTrackSelectionArr2 = mediaPeriodHolder17.o.c;
                                int length3 = exoTrackSelectionArr2.length;
                                for (int i30 = r13; i30 < length3; i30++) {
                                    ExoTrackSelection exoTrackSelection2 = exoTrackSelectionArr2[i30];
                                }
                            }
                            DefaultLivePlaybackSpeedControl defaultLivePlaybackSpeedControl = (DefaultLivePlaybackSpeedControl) this.B;
                            long j21 = defaultLivePlaybackSpeedControl.i;
                            if (j21 != j2) {
                                long j22 = j21 + defaultLivePlaybackSpeedControl.b;
                                defaultLivePlaybackSpeedControl.i = j22;
                                long j23 = defaultLivePlaybackSpeedControl.h;
                                if (j23 != j2 && j22 > j23) {
                                    defaultLivePlaybackSpeedControl.i = j23;
                                }
                                defaultLivePlaybackSpeedControl.m = j2;
                            }
                        }
                        C0();
                    }
                    if (this.Q.e == 2) {
                    }
                    z6 = r13;
                    if (!z6) {
                    }
                    if (y0()) {
                    }
                    if (this.c0) {
                    }
                    z4 = r13;
                    playbackInfo2 = this.Q;
                    if (playbackInfo2.p != z4) {
                    }
                    this.b0 = r13;
                    if (!z4) {
                    }
                    Trace.endSection();
                }
                z4 = true;
                if (this.Q.e == 2) {
                }
                z6 = r13;
                if (!z6) {
                }
                if (y0()) {
                }
                if (this.c0) {
                }
                z4 = r13;
                playbackInfo2 = this.Q;
                if (playbackInfo2.p != z4) {
                }
                this.b0 = r13;
                if (!z4) {
                }
                Trace.endSection();
            }
        } else {
            j2 = -9223372036854775807L;
        }
        z3 = r13;
        if (z3) {
            this.U = r13;
            int i272 = this.Q.n;
            this.R.a(r13);
            G0(this.I.c(this.Q.e, r13), i272, 5, r13);
        }
        if (!z3) {
        }
        playbackInfo = this.Q;
        if (playbackInfo.e == 2) {
        }
        z4 = true;
        if (this.Q.e == 3) {
            J0(y0(), r13);
            u0(2);
            if (this.V) {
            }
            C0();
        }
        if (this.Q.e == 2) {
        }
        z6 = r13;
        if (!z6) {
        }
        if (y0()) {
        }
        if (this.c0) {
        }
        z4 = r13;
        playbackInfo2 = this.Q;
        if (playbackInfo2.p != z4) {
        }
        this.b0 = r13;
        if (!z4) {
        }
        Trace.endSection();
    }

    public final void m0(PlaybackParameters playbackParameters) {
        this.p.j(16);
        DefaultMediaClock defaultMediaClock = this.v;
        defaultMediaClock.c(playbackParameters);
        PlaybackParameters e = defaultMediaClock.e();
        A(e, e.a, true, true);
    }

    public final void n(MediaPeriodHolder mediaPeriodHolder, int i, boolean z, long j) {
        boolean z2;
        boolean z3;
        boolean z4;
        Format[] formatArr;
        boolean z5;
        boolean z6;
        boolean z7;
        RendererHolder rendererHolder = this.j[i];
        if (!rendererHolder.l()) {
            if (mediaPeriodHolder == this.z.i) {
                z2 = true;
            } else {
                z2 = false;
            }
            TrackSelectorResult trackSelectorResult = mediaPeriodHolder.o;
            RendererConfiguration rendererConfiguration = trackSelectorResult.b[i];
            ExoTrackSelection exoTrackSelection = trackSelectorResult.c[i];
            if (y0() && this.Q.e == 3) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z && z3) {
                z4 = true;
            } else {
                z4 = false;
            }
            this.d0++;
            SampleStream sampleStream = mediaPeriodHolder.c[i];
            long j2 = mediaPeriodHolder.p;
            MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodHolder.g.a;
            Renderer renderer = rendererHolder.a;
            Renderer renderer2 = rendererHolder.c;
            Format[] d = RendererHolder.d(exoTrackSelection);
            int i2 = rendererHolder.d;
            DefaultMediaClock defaultMediaClock = this.v;
            if (i2 != 0) {
                if (i2 == 2 || i2 == 4) {
                    formatArr = d;
                } else {
                    rendererHolder.f = true;
                    renderer2.getClass();
                    BaseRenderer baseRenderer = (BaseRenderer) renderer2;
                    if (baseRenderer.q == 0) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    Preconditions.n(z7);
                    baseRenderer.m = rendererConfiguration;
                    baseRenderer.z = mediaPeriodId;
                    baseRenderer.q = 1;
                    baseRenderer.u(z4, z2);
                    z5 = z3;
                    baseRenderer.D(d, sampleStream, j, j2, mediaPeriodId);
                    baseRenderer.E(j, z4, true);
                    defaultMediaClock.a(renderer2);
                    Renderer.WakeupListener wakeupListener = new Renderer.WakeupListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal.1
                        @Override // androidx.media3.exoplayer.Renderer.WakeupListener
                        public final void a() {
                            ExoPlayerImplInternal.this.b0 = true;
                        }

                        @Override // androidx.media3.exoplayer.Renderer.WakeupListener
                        public final void b() {
                            int i3 = ExoPlayerImplInternal.q0;
                            ExoPlayerImplInternal exoPlayerImplInternal = ExoPlayerImplInternal.this;
                            if (!exoPlayerImplInternal.E && ((!exoPlayerImplInternal.M || !exoPlayerImplInternal.L.d) && !exoPlayerImplInternal.c0)) {
                                return;
                            }
                            exoPlayerImplInternal.p.i(2);
                        }
                    };
                    Renderer e = rendererHolder.e(mediaPeriodHolder);
                    e.getClass();
                    e.o(11, wakeupListener);
                    if (!z5 && z2) {
                        rendererHolder.r();
                        return;
                    }
                }
            } else {
                formatArr = d;
            }
            z5 = z3;
            rendererHolder.e = true;
            BaseRenderer baseRenderer2 = (BaseRenderer) renderer;
            if (baseRenderer2.q == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            Preconditions.n(z6);
            baseRenderer2.m = rendererConfiguration;
            baseRenderer2.z = mediaPeriodId;
            baseRenderer2.q = 1;
            baseRenderer2.u(z4, z2);
            baseRenderer2.D(formatArr, sampleStream, j, j2, mediaPeriodId);
            baseRenderer2.E(j, z4, true);
            defaultMediaClock.a(renderer);
            Renderer.WakeupListener wakeupListener2 = new Renderer.WakeupListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal.1
                @Override // androidx.media3.exoplayer.Renderer.WakeupListener
                public final void a() {
                    ExoPlayerImplInternal.this.b0 = true;
                }

                @Override // androidx.media3.exoplayer.Renderer.WakeupListener
                public final void b() {
                    int i3 = ExoPlayerImplInternal.q0;
                    ExoPlayerImplInternal exoPlayerImplInternal = ExoPlayerImplInternal.this;
                    if (!exoPlayerImplInternal.E && ((!exoPlayerImplInternal.M || !exoPlayerImplInternal.L.d) && !exoPlayerImplInternal.c0)) {
                        return;
                    }
                    exoPlayerImplInternal.p.i(2);
                }
            };
            Renderer e2 = rendererHolder.e(mediaPeriodHolder);
            e2.getClass();
            e2.o(11, wakeupListener2);
            if (!z5) {
            }
        }
    }

    public final void n0(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.l0 = preloadConfiguration;
        Timeline timeline = this.Q.a;
        MediaPeriodQueue mediaPeriodQueue = this.z;
        mediaPeriodQueue.getClass();
        preloadConfiguration.getClass();
        if (!mediaPeriodQueue.q.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < mediaPeriodQueue.q.size(); i++) {
                ((MediaPeriodHolder) mediaPeriodQueue.q.get(i)).i();
            }
            mediaPeriodQueue.q = arrayList;
            mediaPeriodQueue.m = null;
            mediaPeriodQueue.q();
        }
    }

    public final void o(boolean[] zArr, long j) {
        RendererHolder[] rendererHolderArr;
        ExoPlayerImplInternal exoPlayerImplInternal;
        long j2;
        Preconditions.n(!D());
        MediaPeriodHolder d = this.z.d();
        TrackSelectorResult trackSelectorResult = d.o;
        int i = 0;
        while (true) {
            rendererHolderArr = this.j;
            if (i >= rendererHolderArr.length) {
                break;
            }
            if (!trackSelectorResult.b(i)) {
                rendererHolderArr[i].p();
            }
            i++;
        }
        int i2 = 0;
        while (i2 < rendererHolderArr.length) {
            if (trackSelectorResult.b(i2) && !rendererHolderArr[i2].k(d)) {
                exoPlayerImplInternal = this;
                j2 = j;
                exoPlayerImplInternal.n(d, i2, zArr[i2], j2);
            } else {
                exoPlayerImplInternal = this;
                j2 = j;
            }
            i2++;
            this = exoPlayerImplInternal;
            j = j2;
        }
    }

    public final void o0(int i) {
        this.Y = i;
        Timeline timeline = this.Q.a;
        MediaPeriodQueue mediaPeriodQueue = this.z;
        mediaPeriodQueue.g = i;
        int x = mediaPeriodQueue.x(timeline);
        if ((x & 1) != 0) {
            Z(true);
        } else if ((x & 2) != 0) {
            j();
        }
        x(false);
    }

    public final long p(Timeline timeline, Object obj, long j) {
        long elapsedRealtime;
        Timeline.Period period = this.t;
        int i = timeline.g(obj, period).c;
        Timeline.Window window = this.s;
        timeline.n(i, window);
        if (window.d == -9223372036854775807L || !window.a() || !window.g) {
            return -9223372036854775807L;
        }
        long j2 = window.e;
        if (j2 == -9223372036854775807L) {
            elapsedRealtime = System.currentTimeMillis();
        } else {
            elapsedRealtime = j2 + android.os.SystemClock.elapsedRealtime();
        }
        return Util.D(elapsedRealtime - window.d) - (j + period.e);
    }

    public final void p0(boolean z) {
        if (!z) {
            SeekPosition seekPosition = this.O;
            HandlerWrapper handlerWrapper = this.p;
            if (seekPosition != null && this.N && !handlerWrapper.h(37)) {
                this.P++;
            }
            int i = this.P;
            if (i > 0) {
                this.G.d(new h(this, i));
            }
            this.P = 0;
            this.N = false;
            handlerWrapper.j(37);
            SeekPosition seekPosition2 = this.O;
            if (seekPosition2 != null) {
                a0(seekPosition2);
                this.O = null;
                this.N = false;
            }
        }
        this.M = z;
        g();
    }

    public final Pair q(Timeline timeline) {
        long j = 0;
        if (timeline.p()) {
            return Pair.create(PlaybackInfo.u, 0L);
        }
        int a = timeline.a(this.Z);
        Pair i = timeline.i(this.s, this.t, a, -9223372036854775807L);
        MediaSource.MediaPeriodId v = this.z.v(this.Q, timeline, i.first, 0L, true, false);
        long longValue = ((Long) i.second).longValue();
        if (v.c()) {
            Object obj = v.a;
            Timeline.Period period = this.t;
            timeline.g(obj, period);
            if (v.c == period.e(v.b)) {
                period.g.getClass();
            }
        } else {
            j = longValue;
        }
        return Pair.create(v, Long.valueOf(j));
    }

    public final void q0(ScrubbingModeParameters scrubbingModeParameters) {
        this.L = scrubbingModeParameters;
        g();
    }

    public final long r(MediaPeriodHolder mediaPeriodHolder, int i) {
        if (mediaPeriodHolder == null) {
            return 0L;
        }
        if (mediaPeriodHolder.e) {
            RendererHolder[] rendererHolderArr = this.j;
            if (rendererHolderArr[i].k(mediaPeriodHolder)) {
                Renderer e = rendererHolderArr[i].e(mediaPeriodHolder);
                Objects.requireNonNull(e);
                return ((BaseRenderer) e).v;
            }
        }
        return mediaPeriodHolder.p;
    }

    public final void r0(SeekParameters seekParameters) {
        this.K = seekParameters;
    }

    public final long s(long j) {
        MediaPeriodHolder mediaPeriodHolder = this.z.l;
        if (mediaPeriodHolder == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.f0 - mediaPeriodHolder.p));
    }

    public final void s0(boolean z) {
        this.Z = z;
        Timeline timeline = this.Q.a;
        MediaPeriodQueue mediaPeriodQueue = this.z;
        mediaPeriodQueue.h = z;
        int x = mediaPeriodQueue.x(timeline);
        if ((x & 1) != 0) {
            Z(true);
        } else if ((x & 2) != 0) {
            j();
        }
        x(false);
    }

    public final void t(int i) {
        PlaybackInfo playbackInfo = this.Q;
        G0(i, playbackInfo.n, playbackInfo.m, playbackInfo.l);
    }

    public final void t0(ShuffleOrder shuffleOrder) {
        this.R.a(1);
        MediaSourceList mediaSourceList = this.A;
        int size = mediaSourceList.c.size();
        if (((ShuffleOrder.DefaultShuffleOrder) shuffleOrder).b.length != size) {
            shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(new Random(((ShuffleOrder.DefaultShuffleOrder) shuffleOrder).a.nextLong())).a(size);
        }
        mediaSourceList.k = shuffleOrder;
        y(mediaSourceList.b(), false);
    }

    public final void u() {
        x0(this.o0);
    }

    public final void u0(int i) {
        PlaybackInfo playbackInfo = this.Q;
        if (playbackInfo.e != i) {
            if (i != 2) {
                this.k0 = -9223372036854775807L;
            }
            if (i != 3 && playbackInfo.p) {
                this.Q = playbackInfo.i(false);
            }
            this.Q = this.Q.h(i);
        }
    }

    public final void v(MediaPeriod mediaPeriod) {
        MediaPeriodQueue mediaPeriodQueue = this.z;
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.l;
        if (mediaPeriodHolder != null && mediaPeriodHolder.a == mediaPeriod) {
            mediaPeriodQueue.s(this.f0);
            G();
            return;
        }
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.m;
        if (mediaPeriodHolder2 != null && mediaPeriodHolder2.a == mediaPeriod) {
            H();
        }
    }

    public final void v0(VideoFrameMetadataListener videoFrameMetadataListener) {
        for (RendererHolder rendererHolder : this.j) {
            if (rendererHolder.f() == 2 || rendererHolder.f() == 4) {
                rendererHolder.a.o(7, videoFrameMetadataListener);
                Renderer renderer = rendererHolder.c;
                if (renderer != null) {
                    renderer.o(7, videoFrameMetadataListener);
                }
            }
        }
    }

    public final void w(IOException iOException, int i) {
        ExoPlaybackException exoPlaybackException = new ExoPlaybackException(0, iOException, i);
        MediaPeriodHolder mediaPeriodHolder = this.z.i;
        if (mediaPeriodHolder != null) {
            exoPlaybackException = exoPlaybackException.a(mediaPeriodHolder.g.a);
        }
        Log.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException);
        B0(false, false);
        this.Q = this.Q.f(exoPlaybackException);
    }

    public final void w0(Object obj, ConditionVariable conditionVariable) {
        for (RendererHolder rendererHolder : this.j) {
            if (rendererHolder.f() == 2) {
                int i = rendererHolder.d;
                if (i != 4 && i != 1) {
                    rendererHolder.a.o(1, obj);
                } else {
                    Renderer renderer = rendererHolder.c;
                    renderer.getClass();
                    renderer.o(1, obj);
                }
            }
        }
        int i2 = this.Q.e;
        if (i2 == 3 || i2 == 2) {
            this.p.i(2);
        }
        if (conditionVariable != null) {
            conditionVariable.c();
        }
    }

    public final void x(boolean z) {
        MediaSource.MediaPeriodId mediaPeriodId;
        long d;
        MediaPeriodHolder mediaPeriodHolder = this.z.l;
        if (mediaPeriodHolder == null) {
            mediaPeriodId = this.Q.b;
        } else {
            mediaPeriodId = mediaPeriodHolder.g.a;
        }
        boolean equals = this.Q.k.equals(mediaPeriodId);
        if (!equals) {
            this.Q = this.Q.c(mediaPeriodId);
        }
        PlaybackInfo playbackInfo = this.Q;
        if (mediaPeriodHolder == null) {
            d = playbackInfo.s;
        } else {
            d = mediaPeriodHolder.d();
        }
        playbackInfo.q = d;
        PlaybackInfo playbackInfo2 = this.Q;
        playbackInfo2.r = s(playbackInfo2.q);
        if ((!equals || z) && mediaPeriodHolder != null && mediaPeriodHolder.e) {
            E0(mediaPeriodHolder.g.a, mediaPeriodHolder.o);
        }
    }

    public final void x0(float f) {
        this.o0 = f;
        float f2 = f * this.I.g;
        for (RendererHolder rendererHolder : this.j) {
            if (rendererHolder.f() == 1) {
                rendererHolder.a.o(2, Float.valueOf(f2));
                Renderer renderer = rendererHolder.c;
                if (renderer != null) {
                    renderer.o(2, Float.valueOf(f2));
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x030d, code lost:
    
        if (r6 != 2) goto L159;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04ac  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x04ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y(Timeline timeline, boolean z) {
        MediaPeriodQueue mediaPeriodQueue;
        boolean z2;
        long j;
        MediaSource.MediaPeriodId mediaPeriodId;
        long j2;
        Timeline timeline2;
        Timeline.Window window;
        long j3;
        int i;
        long j4;
        int i2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i3;
        boolean z6;
        PlaybackInfo playbackInfo;
        Timeline.Period period;
        boolean z7;
        MediaPeriodQueue mediaPeriodQueue2;
        long j5;
        Timeline timeline3;
        boolean z8;
        boolean z9;
        boolean z10;
        long j6;
        long j7;
        long j8;
        boolean z11;
        int i4;
        int i5;
        Timeline timeline4;
        boolean z12;
        PositionUpdateForPlaylistChange positionUpdateForPlaylistChange;
        int i6;
        long longValue;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        Timeline timeline5;
        MediaSource.MediaPeriodId mediaPeriodId2;
        long j9;
        boolean z18;
        long j10;
        RendererHolder[] rendererHolderArr;
        MediaPeriodQueue mediaPeriodQueue3;
        long j11;
        boolean z19;
        long j12;
        long j13;
        boolean z20;
        boolean z21;
        PlaybackInfo playbackInfo2 = this.Q;
        SeekPosition seekPosition = this.e0;
        MediaPeriodQueue mediaPeriodQueue4 = this.z;
        int i7 = this.Y;
        boolean z22 = this.Z;
        Timeline.Window window2 = this.s;
        Timeline.Period period2 = this.t;
        boolean z23 = this.J;
        if (timeline.p()) {
            MediaSource.MediaPeriodId mediaPeriodId3 = PlaybackInfo.u;
            if (mediaPeriodId3.equals(playbackInfo2.b) && playbackInfo2.s == 0) {
                z20 = false;
            } else {
                z20 = true;
            }
            if (z20 && z && !playbackInfo2.a.p() && !playbackInfo2.a.g(playbackInfo2.b.a, period2).f) {
                z21 = true;
            } else {
                z21 = false;
            }
            timeline3 = timeline;
            positionUpdateForPlaylistChange = new PositionUpdateForPlaylistChange(mediaPeriodId3, 0L, -9223372036854775807L, false, true, false, z20, z21, 4);
        } else {
            MediaSource.MediaPeriodId mediaPeriodId4 = playbackInfo2.b;
            Object obj = mediaPeriodId4.a;
            Timeline timeline6 = playbackInfo2.a;
            if (!timeline6.p() && !timeline6.g(mediaPeriodId4.a, period2).f) {
                mediaPeriodQueue = mediaPeriodQueue4;
                z2 = false;
            } else {
                mediaPeriodQueue = mediaPeriodQueue4;
                z2 = true;
            }
            if (!playbackInfo2.b.c() && !z2) {
                j = playbackInfo2.s;
            } else {
                j = playbackInfo2.c;
            }
            long j14 = j;
            if (seekPosition != null) {
                mediaPeriodId = mediaPeriodId4;
                j2 = 1;
                timeline2 = timeline;
                Pair W = W(timeline2, seekPosition, true, i7, z22, window2, period2);
                if (W == null) {
                    i = timeline2.a(z22);
                    longValue = j14;
                    z17 = true;
                    z16 = false;
                    z15 = false;
                } else {
                    long j15 = seekPosition.c;
                    Object obj2 = W.first;
                    if (j15 == -9223372036854775807L) {
                        i = timeline2.g(obj2, period2).c;
                        longValue = j14;
                        z13 = false;
                    } else {
                        longValue = ((Long) W.second).longValue();
                        obj = obj2;
                        i = -1;
                        z13 = true;
                    }
                    if (playbackInfo2.e == 4) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    z15 = z14;
                    z16 = z13;
                    z17 = false;
                }
                z4 = z17;
                z5 = z16;
                z3 = z15;
                i2 = -1;
                long j16 = longValue;
                window = window2;
                j3 = j16;
            } else {
                mediaPeriodId = mediaPeriodId4;
                j2 = 1;
                timeline2 = timeline;
                if (playbackInfo2.a.p()) {
                    i = timeline2.a(z22);
                    window = window2;
                } else if (timeline2.b(obj) == -1) {
                    int X = X(window2, period2, i7, z22, obj, playbackInfo2.a, timeline2);
                    window = window2;
                    timeline2 = timeline2;
                    period2 = period2;
                    if (X == -1) {
                        i3 = timeline2.a(z22);
                        z6 = true;
                    } else {
                        i3 = X;
                        z6 = false;
                    }
                    z4 = z6;
                    obj = obj;
                    i = i3;
                    j3 = j14;
                    i2 = -1;
                    z3 = false;
                    z5 = false;
                } else {
                    window = window2;
                    if (j14 == -9223372036854775807L) {
                        int i8 = timeline2.g(obj, period2).c;
                        obj = obj;
                        i = i8;
                    } else if (z2) {
                        playbackInfo2.a.g(mediaPeriodId.a, period2);
                        if (playbackInfo2.a.m(period2.c, window, 0L).l == playbackInfo2.a.b(mediaPeriodId.a)) {
                            Pair i9 = timeline2.i(window, period2, timeline2.g(obj, period2).c, j14 + period2.e);
                            obj = i9.first;
                            j4 = ((Long) i9.second).longValue();
                        } else if (timeline2.g(obj, period2).d != -9223372036854775807L) {
                            j4 = Util.h(j14, 0L, period2.d - 1);
                            obj = obj;
                        } else {
                            obj = obj;
                            j4 = j14;
                        }
                        j3 = j4;
                        i = -1;
                        i2 = -1;
                        z3 = false;
                        z4 = false;
                        z5 = true;
                    } else {
                        obj = obj;
                        j3 = j14;
                        i = -1;
                        i2 = -1;
                        z3 = false;
                        z4 = false;
                        z5 = false;
                    }
                }
                j3 = j14;
                i2 = -1;
                z3 = false;
                z4 = false;
                z5 = false;
            }
            if (i != i2) {
                Pair i10 = timeline2.i(window, period2, i, -9223372036854775807L);
                obj = i10.first;
                j3 = ((Long) i10.second).longValue();
                playbackInfo = playbackInfo2;
                period = period2;
                z7 = z23;
                mediaPeriodQueue2 = mediaPeriodQueue;
                j5 = -9223372036854775807L;
            } else {
                playbackInfo = playbackInfo2;
                period = period2;
                z7 = z23;
                mediaPeriodQueue2 = mediaPeriodQueue;
                j5 = j3;
            }
            Object obj3 = obj;
            MediaSource.MediaPeriodId v = mediaPeriodQueue2.v(playbackInfo, timeline, obj3, j3, z7, z2);
            PlaybackInfo playbackInfo3 = playbackInfo;
            timeline3 = timeline;
            int i11 = v.e;
            if (i11 != i2 && ((i6 = mediaPeriodId.e) == i2 || i11 < i6)) {
                z8 = false;
            } else {
                z8 = true;
            }
            boolean equals = mediaPeriodId.a.equals(obj3);
            if (equals && !mediaPeriodId.c() && !v.c() && z8) {
                z9 = true;
            } else {
                z9 = false;
            }
            Timeline.Period g = timeline3.g(obj3, period);
            if (!z2 && j14 == j5) {
                Object obj4 = mediaPeriodId.a;
                int i12 = mediaPeriodId.b;
                z10 = z9;
                if (obj4.equals(v.a)) {
                    if (mediaPeriodId.c()) {
                        g.g(i12);
                    }
                    if (v.c()) {
                        g.g(v.b);
                    }
                }
            } else {
                z10 = z9;
            }
            if (z10) {
                v = mediaPeriodId;
            }
            if (v.c()) {
                if (v.equals(mediaPeriodId)) {
                    j7 = j5;
                    j6 = playbackInfo3.s;
                } else {
                    timeline3.g(v.a, period);
                    if (v.c == period.e(v.b)) {
                        period.g.getClass();
                    }
                    j7 = j5;
                    j6 = 0;
                }
            } else {
                if (equals && mediaPeriodId.c()) {
                    AdPlaybackState.AdGroup a = timeline3.g(obj3, period).g.a(mediaPeriodId.b);
                    a.getClass();
                    long j17 = playbackInfo3.c;
                    if (j17 == -9223372036854775807L || 0 > j17) {
                        int i13 = a.a;
                        int i14 = mediaPeriodId.c;
                        if (i13 > i14 && a.e[i14] == 2) {
                            long j18 = timeline3.g(obj3, period).d;
                            if (j18 != -9223372036854775807L) {
                                j8 = Math.min(j18 - j2, j3);
                            } else {
                                j8 = j3;
                            }
                            j6 = j8;
                            j7 = j6;
                        }
                    }
                }
                j6 = j3;
                j7 = j5;
            }
            if (v.equals(playbackInfo3.b) && j6 == playbackInfo3.s) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (timeline3.b(playbackInfo3.b.a) == -1) {
                i4 = 4;
            } else {
                i4 = 3;
            }
            Object obj5 = v.a;
            Object obj6 = playbackInfo3.b.a;
            boolean equals2 = obj5.equals(obj6);
            Timeline timeline7 = obj6;
            if (equals2) {
                timeline7 = obj6;
                if (v.b != -1) {
                    AdPlaybackState.AdGroup a2 = timeline3.g(v.a, period).g.a(v.b);
                    int i15 = v.c;
                    int[] iArr = a2.e;
                    if (i15 < iArr.length) {
                        int i16 = iArr[i15];
                        timeline7 = i15;
                    }
                    i5 = 0;
                    timeline4 = i15;
                    if (!z11 && z && !playbackInfo3.a.p() && !playbackInfo3.a.g(playbackInfo3.b.a, period).f) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    positionUpdateForPlaylistChange = new PositionUpdateForPlaylistChange(v, j6, j7, z3, z4, z5, z11, z12, i5);
                }
            }
            i5 = i4;
            timeline4 = timeline7;
            if (!z11) {
            }
            z12 = false;
            positionUpdateForPlaylistChange = new PositionUpdateForPlaylistChange(v, j6, j7, z3, z4, z5, z11, z12, i5);
        }
        MediaSource.MediaPeriodId mediaPeriodId5 = positionUpdateForPlaylistChange.a;
        long j19 = positionUpdateForPlaylistChange.b;
        try {
            if (positionUpdateForPlaylistChange.e) {
                if (this.Q.e != 1) {
                    u0(4);
                }
                S(false, false, false, true);
            }
            RendererHolder[] rendererHolderArr2 = this.j;
            int length = rendererHolderArr2.length;
            int i17 = 0;
            Timeline timeline8 = timeline4;
            while (i17 < length) {
                RendererHolder rendererHolder = rendererHolderArr2[i17];
                BaseRenderer baseRenderer = (BaseRenderer) rendererHolder.a;
                boolean equals3 = Objects.equals(baseRenderer.y, timeline3);
                if (equals3 == 0) {
                    baseRenderer.y = timeline3;
                    baseRenderer.F();
                    baseRenderer.B();
                }
                Renderer renderer = rendererHolder.c;
                if (renderer != null) {
                    BaseRenderer baseRenderer2 = (BaseRenderer) renderer;
                    if (!Objects.equals(baseRenderer2.y, timeline3)) {
                        baseRenderer2.y = timeline3;
                        baseRenderer2.F();
                        baseRenderer2.B();
                    }
                }
                i17++;
                timeline8 = equals3;
            }
            try {
                if (!positionUpdateForPlaylistChange.g) {
                    try {
                        long[] jArr = new long[this.j.length];
                        int i18 = 0;
                        while (true) {
                            rendererHolderArr = this.j;
                            if (i18 >= rendererHolderArr.length) {
                                break;
                            }
                            jArr[i18] = r(this.z.j[i18], i18);
                            i18++;
                        }
                        long[] jArr2 = new long[rendererHolderArr.length];
                        int i19 = 0;
                        while (true) {
                            int length2 = this.j.length;
                            mediaPeriodQueue3 = this.z;
                            if (i19 >= length2) {
                                break;
                            }
                            jArr2[i19] = r(mediaPeriodQueue3.k[i19], i19);
                            i19++;
                        }
                        int y = mediaPeriodQueue3.y(timeline3, this.f0, jArr, jArr2);
                        if ((y & 1) != 0) {
                            Z(false);
                        } else if ((y & 2) != 0) {
                            j();
                        }
                    } catch (Throwable th) {
                        th = th;
                        timeline8 = timeline3;
                        timeline5 = timeline8;
                        mediaPeriodId2 = mediaPeriodId5;
                        PlaybackInfo playbackInfo4 = this.Q;
                        Timeline timeline9 = playbackInfo4.a;
                        MediaSource.MediaPeriodId mediaPeriodId6 = playbackInfo4.b;
                        if (!positionUpdateForPlaylistChange.f) {
                            j9 = j19;
                        } else {
                            j9 = -9223372036854775807L;
                        }
                        MediaSource.MediaPeriodId mediaPeriodId7 = mediaPeriodId2;
                        I0(timeline5, mediaPeriodId7, timeline9, mediaPeriodId6, j9, false);
                        if (!positionUpdateForPlaylistChange.g || positionUpdateForPlaylistChange.c != this.Q.c) {
                            long j20 = positionUpdateForPlaylistChange.c;
                            z18 = positionUpdateForPlaylistChange.h;
                            if (!z18) {
                                j10 = j19;
                            } else {
                                j10 = this.Q.d;
                            }
                            this.Q = B(mediaPeriodId7, j19, j20, j10, z18, positionUpdateForPlaylistChange.i);
                        }
                        T();
                        V(timeline5, this.Q.a);
                        this.Q = this.Q.j(timeline5);
                        if (!timeline5.p()) {
                            this.e0 = null;
                        }
                        x(false);
                        this.p.i(2);
                        throw th;
                    }
                } else {
                    Timeline timeline10 = timeline3;
                    if (!timeline10.p()) {
                        try {
                            for (MediaPeriodHolder mediaPeriodHolder = this.z.i; mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.m) {
                                if (mediaPeriodHolder.g.a.equals(mediaPeriodId5)) {
                                    mediaPeriodHolder.g = this.z.m(timeline10, mediaPeriodHolder.g);
                                }
                            }
                            mediaPeriodId2 = mediaPeriodId5;
                            try {
                                j19 = b0(mediaPeriodId2, j19, D(), positionUpdateForPlaylistChange.d);
                                PlaybackInfo playbackInfo5 = this.Q;
                                Timeline timeline11 = playbackInfo5.a;
                                MediaSource.MediaPeriodId mediaPeriodId8 = playbackInfo5.b;
                                if (!positionUpdateForPlaylistChange.f) {
                                    j11 = j19;
                                } else {
                                    j11 = -9223372036854775807L;
                                }
                                MediaSource.MediaPeriodId mediaPeriodId9 = mediaPeriodId2;
                                I0(timeline, mediaPeriodId9, timeline11, mediaPeriodId8, j11, false);
                                if (!positionUpdateForPlaylistChange.g || positionUpdateForPlaylistChange.c != this.Q.c) {
                                    long j21 = positionUpdateForPlaylistChange.c;
                                    z19 = positionUpdateForPlaylistChange.h;
                                    if (!z19) {
                                        j13 = j19;
                                        j12 = j13;
                                    } else {
                                        j12 = this.Q.d;
                                        j13 = j19;
                                    }
                                    this.Q = B(mediaPeriodId9, j13, j21, j12, z19, positionUpdateForPlaylistChange.i);
                                }
                                T();
                                V(timeline, this.Q.a);
                                this.Q = this.Q.j(timeline);
                                if (!timeline.p()) {
                                    this.e0 = null;
                                }
                                x(false);
                                this.p.i(2);
                            } catch (Throwable th2) {
                                th = th2;
                                j19 = j19;
                                timeline5 = timeline10;
                                PlaybackInfo playbackInfo42 = this.Q;
                                Timeline timeline92 = playbackInfo42.a;
                                MediaSource.MediaPeriodId mediaPeriodId62 = playbackInfo42.b;
                                if (!positionUpdateForPlaylistChange.f) {
                                }
                                MediaSource.MediaPeriodId mediaPeriodId72 = mediaPeriodId2;
                                I0(timeline5, mediaPeriodId72, timeline92, mediaPeriodId62, j9, false);
                                if (!positionUpdateForPlaylistChange.g) {
                                }
                                long j202 = positionUpdateForPlaylistChange.c;
                                z18 = positionUpdateForPlaylistChange.h;
                                if (!z18) {
                                }
                                this.Q = B(mediaPeriodId72, j19, j202, j10, z18, positionUpdateForPlaylistChange.i);
                                T();
                                V(timeline5, this.Q.a);
                                this.Q = this.Q.j(timeline5);
                                if (!timeline5.p()) {
                                }
                                x(false);
                                this.p.i(2);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            mediaPeriodId2 = mediaPeriodId5;
                        }
                    }
                }
                mediaPeriodId2 = mediaPeriodId5;
                PlaybackInfo playbackInfo52 = this.Q;
                Timeline timeline112 = playbackInfo52.a;
                MediaSource.MediaPeriodId mediaPeriodId82 = playbackInfo52.b;
                if (!positionUpdateForPlaylistChange.f) {
                }
                MediaSource.MediaPeriodId mediaPeriodId92 = mediaPeriodId2;
                I0(timeline, mediaPeriodId92, timeline112, mediaPeriodId82, j11, false);
                if (!positionUpdateForPlaylistChange.g) {
                }
                long j212 = positionUpdateForPlaylistChange.c;
                z19 = positionUpdateForPlaylistChange.h;
                if (!z19) {
                }
                this.Q = B(mediaPeriodId92, j13, j212, j12, z19, positionUpdateForPlaylistChange.i);
                T();
                V(timeline, this.Q.a);
                this.Q = this.Q.j(timeline);
                if (!timeline.p()) {
                }
                x(false);
                this.p.i(2);
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            timeline5 = timeline3;
        }
    }

    public final boolean y0() {
        PlaybackInfo playbackInfo = this.Q;
        if (playbackInfo.l && playbackInfo.n == 0) {
            return true;
        }
        return false;
    }

    public final void z(MediaPeriod mediaPeriod) {
        MediaPeriodHolder mediaPeriodHolder;
        ExoPlayerImplInternal exoPlayerImplInternal;
        MediaPeriodQueue mediaPeriodQueue = this.z;
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.l;
        DefaultMediaClock defaultMediaClock = this.v;
        if (mediaPeriodHolder2 != null && mediaPeriodHolder2.a == mediaPeriod) {
            mediaPeriodHolder2.getClass();
            if (!mediaPeriodHolder2.e) {
                mediaPeriodHolder2.f(defaultMediaClock.e().a, this.Q.a);
            }
            E0(mediaPeriodHolder2.g.a, mediaPeriodHolder2.o);
            if (mediaPeriodHolder2 == mediaPeriodQueue.i) {
                U(mediaPeriodHolder2.g.b, true);
                Preconditions.n(!D());
                o(new boolean[this.j.length], mediaPeriodQueue.d().e());
                e0(mediaPeriodHolder2);
                PlaybackInfo playbackInfo = this.Q;
                MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.b;
                long j = mediaPeriodHolder2.g.b;
                exoPlayerImplInternal = this;
                exoPlayerImplInternal.Q = B(mediaPeriodId, j, playbackInfo.c, j, false, 5);
            } else {
                exoPlayerImplInternal = this;
            }
            exoPlayerImplInternal.G();
            return;
        }
        int i = 0;
        while (true) {
            if (i < mediaPeriodQueue.q.size()) {
                mediaPeriodHolder = (MediaPeriodHolder) mediaPeriodQueue.q.get(i);
                if (mediaPeriodHolder.a == mediaPeriod) {
                    break;
                } else {
                    i++;
                }
            } else {
                mediaPeriodHolder = null;
                break;
            }
        }
        if (mediaPeriodHolder != null) {
            Preconditions.n(!mediaPeriodHolder.e);
            mediaPeriodHolder.f(defaultMediaClock.e().a, this.Q.a);
            MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodQueue.m;
            if (mediaPeriodHolder3 != null && mediaPeriodHolder3.a == mediaPeriod) {
                H();
            }
        }
    }

    public final boolean z0(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (!mediaPeriodId.c() && !timeline.p()) {
            int i = timeline.g(mediaPeriodId.a, this.t).c;
            Timeline.Window window = this.s;
            timeline.n(i, window);
            if (window.a() && window.g && window.d != -9223372036854775807L) {
                return true;
            }
            return false;
        }
        return false;
    }
}
