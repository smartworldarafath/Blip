package androidx.media3.exoplayer;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackSession;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.audio.AudioBecomingNoisyManager;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.StuckPlayerDetector;
import androidx.media3.common.util.StuckPlayerException;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.WakeLockManager;
import androidx.media3.common.util.WifiLockManager;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.ExoPlayerImplInternal;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink$AudioTrackConfig;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoDecoderOutputBufferRenderer;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import defpackage.b7;
import defpackage.d7;
import defpackage.f7;
import defpackage.g7;
import defpackage.jb;
import defpackage.n5;
import defpackage.o6;
import defpackage.u2;
import defpackage.u3;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.function.IntConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExoPlayerImpl extends BasePlayer implements ExoPlayer {
    public static final /* synthetic */ int q0 = 0;
    public final long A;
    public final BackgroundThreadStateHandler B;
    public final StuckPlayerDetector C;
    public final VirtualDeviceIdChangeListener D;
    public final CodecParameterListenerManager E;
    public final CodecParameterListenerManager F;
    public int G;
    public boolean H;
    public int I;
    public int J;
    public boolean K;
    public boolean L;
    public ImmutableSet M;
    public final ScrubbingModeParameters N;
    public SeekParameters O;
    public ShuffleOrder.DefaultShuffleOrder P;
    public boolean Q;
    public Player.Commands R;
    public MediaMetadata S;
    public Object T;
    public Surface U;
    public SurfaceHolder V;
    public SphericalGLSurfaceView W;
    public boolean X;
    public TextureView Y;
    public int Z;
    public Size a0;
    public final TrackSelectorResult b;
    public final AudioAttributes b0;
    public final Player.Commands c;
    public boolean c0;
    public final ConditionVariable d;
    public CueGroup d0;
    public final Context e;
    public final boolean e0;
    public final Player f;
    public boolean f0;
    public final Renderer[] g;
    public final int g0;
    public final Renderer[] h;
    public boolean h0;
    public final TrackSelector i;
    public VideoSize i0;
    public final HandlerWrapper j;
    public final long j0;
    public final g k;
    public final long k0;
    public final ExoPlayerImplInternal l;
    public final long l0;
    public final ListenerSet m;
    public MediaMetadata m0;
    public final CopyOnWriteArraySet n;
    public PlaybackInfo n0;
    public final Timeline.Period o;
    public int o0;
    public final ArrayList p;
    public long p0;
    public final boolean q;
    public final AnalyticsCollector r;
    public final Looper s;
    public final BandwidthMeter t;
    public final SystemClock u;
    public final ComponentListener v;
    public final FrameMetadataListener w;
    public final AudioBecomingNoisyManager x;
    public final WakeLockManager y;
    public final WifiLockManager z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class CodecParameterListenerManager {
        public final HashMap a = new HashMap();
        public CodecParameters b = CodecParameters.b;

        public static void a(CodecParameterListenerManager codecParameterListenerManager, CodecParameters codecParameters) {
            codecParameterListenerManager.getClass();
            for (Map.Entry entry : new HashMap(codecParameterListenerManager.a).entrySet()) {
                if (entry.getKey() == null) {
                    List list = (List) entry.getValue();
                    if (!b(codecParameters, list).equals(b(codecParameterListenerManager.b, list))) {
                        throw null;
                    }
                } else {
                    io.sentry.d.i();
                    return;
                }
            }
            codecParameterListenerManager.b = codecParameters;
        }

        public static CodecParameters b(CodecParameters codecParameters, List list) {
            codecParameters.getClass();
            CodecParameters.Builder builder = new CodecParameters.Builder(codecParameters);
            HashSet hashSet = new HashSet(list);
            Iterator it = codecParameters.a.keySet().iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                HashMap hashMap = builder.a;
                if (hasNext) {
                    String str = (String) it.next();
                    if (!hashSet.contains(str)) {
                        hashMap.remove(str);
                    }
                } else {
                    return new CodecParameters(hashMap);
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FrameMetadataListener implements VideoFrameMetadataListener, CameraMotionListener, PlayerMessage.Target {
        public VideoFrameMetadataListener j;
        public CameraMotionListener k;
        public VideoFrameMetadataListener l;
        public CameraMotionListener m;

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public final void c(long j, float[] fArr) {
            CameraMotionListener cameraMotionListener = this.m;
            if (cameraMotionListener != null) {
                cameraMotionListener.c(j, fArr);
            }
            CameraMotionListener cameraMotionListener2 = this.k;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.c(j, fArr);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public final void e() {
            CameraMotionListener cameraMotionListener = this.m;
            if (cameraMotionListener != null) {
                cameraMotionListener.e();
            }
            CameraMotionListener cameraMotionListener2 = this.k;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.e();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
        public final void f(long j, long j2, Format format, MediaFormat mediaFormat) {
            VideoFrameMetadataListener videoFrameMetadataListener = this.l;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.f(j, j2, format, mediaFormat);
            }
            VideoFrameMetadataListener videoFrameMetadataListener2 = this.j;
            if (videoFrameMetadataListener2 != null) {
                videoFrameMetadataListener2.f(j, j2, format, mediaFormat);
            }
        }

        @Override // androidx.media3.exoplayer.PlayerMessage.Target
        public final void o(int i, Object obj) {
            if (i != 7) {
                if (i != 8) {
                    if (i != 10000) {
                        return;
                    }
                    SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
                    if (sphericalGLSurfaceView == null) {
                        this.l = null;
                        this.m = null;
                        return;
                    } else {
                        this.l = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                        this.m = sphericalGLSurfaceView.getCameraMotionListener();
                        return;
                    }
                }
                this.k = (CameraMotionListener) obj;
                return;
            }
            this.j = (VideoFrameMetadataListener) obj;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaSourceHolderSnapshot implements MediaSourceInfoHolder {
        public final Object a;
        public Timeline b;

        public MediaSourceHolderSnapshot(Object obj, MaskingMediaSource maskingMediaSource) {
            this.a = obj;
            this.b = maskingMediaSource.o;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Object a() {
            return this.a;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Timeline b() {
            return this.b;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class VirtualDeviceIdChangeListener {
        public final WeakReference a;
        public final m b;

        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.exoplayer.m] */
        public VirtualDeviceIdChangeListener(Context context) {
            this.a = new WeakReference(context);
            ?? r0 = new IntConsumer() { // from class: androidx.media3.exoplayer.m
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
                    if (exoPlayerImpl.h0) {
                        return;
                    }
                    exoPlayerImpl.o0(1, 19, Integer.valueOf(i));
                }
            };
            this.b = r0;
            context.registerDeviceIdChangeListener(new u3(2, ExoPlayerImpl.this.u.a(ExoPlayerImpl.this.s, null)), r0);
        }
    }

    static {
        MediaLibraryInfo.a("media3.exoplayer");
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.media3.exoplayer.ExoPlayerImpl$FrameMetadataListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.media3.common.util.ListenerSet$IterationFinishedEvent, java.lang.Object] */
    public ExoPlayerImpl(ExoPlayer.Builder builder) {
        boolean z;
        ExoPlayer.Builder builder2;
        VirtualDeviceIdChangeListener virtualDeviceIdChangeListener;
        VirtualDeviceIdChangeListener virtualDeviceIdChangeListener2;
        Looper looper = builder.g;
        this.d = new ConditionVariable();
        try {
            Log.e("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.11.0] [" + Util.a + "]");
            Context context = builder.a;
            SystemClock systemClock = builder.b;
            this.e = context.getApplicationContext();
            this.r = new DefaultAnalyticsCollector(systemClock);
            this.g0 = builder.h;
            this.b0 = builder.i;
            this.Z = builder.j;
            this.c0 = false;
            this.A = builder.s;
            ComponentListener componentListener = new ComponentListener();
            this.v = componentListener;
            this.w = new Object();
            Renderer[] a = ((DefaultRenderersFactory) ((RenderersFactory) builder.c.get())).a(new Handler(looper), componentListener, componentListener, componentListener, componentListener);
            this.g = a;
            if (a.length > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            this.h = new Renderer[a.length];
            int i = 0;
            while (true) {
                Renderer[] rendererArr = this.h;
                if (i >= rendererArr.length) {
                    break;
                }
                int i2 = ((BaseRenderer) this.g[i]).k;
                rendererArr[i] = null;
                i++;
            }
            TrackSelector trackSelector = (TrackSelector) builder.e.get();
            this.i = trackSelector;
            builder.d.get();
            BandwidthMeter bandwidthMeter = (BandwidthMeter) builder.f.get();
            this.t = bandwidthMeter;
            this.q = builder.k;
            this.O = builder.l;
            this.j0 = builder.n;
            this.k0 = builder.o;
            this.l0 = builder.p;
            this.N = builder.m;
            this.Q = false;
            this.s = looper;
            this.u = systemClock;
            this.f = this;
            this.m = new ListenerSet(new CopyOnWriteArraySet(), looper, looper.getThread(), systemClock, new Object(), true);
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.n = copyOnWriteArraySet;
            this.p = new ArrayList();
            this.P = new ShuffleOrder.DefaultShuffleOrder();
            Renderer[] rendererArr2 = this.g;
            TrackSelectorResult trackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArr2.length], new ExoTrackSelection[rendererArr2.length], Tracks.b, null);
            this.b = trackSelectorResult;
            this.o = new Timeline.Period();
            Player.Commands.Builder builder3 = new Player.Commands.Builder();
            FlagSet.Builder builder4 = builder3.a;
            int[] iArr = {1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32};
            builder4.getClass();
            int i3 = 0;
            for (int i4 = 20; i3 < i4; i4 = 20) {
                builder4.a(iArr[i3]);
                i3++;
            }
            builder3.a(29, true);
            builder3.a(23, false);
            builder3.a(25, false);
            builder3.a(33, false);
            builder3.a(26, false);
            builder3.a(34, false);
            FlagSet b = builder4.b();
            this.c = new Player.Commands(b);
            FlagSet.Builder builder5 = new Player.Commands.Builder().a;
            SparseBooleanArray sparseBooleanArray = b.a;
            builder5.getClass();
            for (int i5 = 0; i5 < sparseBooleanArray.size(); i5++) {
                Preconditions.h(i5, sparseBooleanArray.size());
                builder5.a(sparseBooleanArray.keyAt(i5));
            }
            builder5.a(4);
            builder5.a(10);
            this.R = new Player.Commands(builder5.b());
            this.j = systemClock.a(looper, null);
            g gVar = new g(this);
            this.k = gVar;
            this.n0 = PlaybackInfo.k(trackSelectorResult);
            ((DefaultAnalyticsCollector) this.r).O(this, looper);
            final PlayerId playerId = new PlayerId(builder.z);
            boolean z2 = false;
            ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(this.e, this.g, this.h, trackSelector, trackSelectorResult, new DefaultLoadControl(), bandwidthMeter, this.G, this.H, this.r, this.O, builder.q, builder.r, this.Q, builder.A, looper, systemClock, gVar, playerId, this.w, builder.B);
            HandlerWrapper handlerWrapper = exoPlayerImplInternal.p;
            this.l = exoPlayerImplInternal;
            Looper looper2 = exoPlayerImplInternal.r;
            this.G = 0;
            MediaMetadata mediaMetadata = MediaMetadata.C;
            this.S = mediaMetadata;
            this.m0 = mediaMetadata;
            this.o0 = -1;
            this.d0 = CueGroup.c;
            this.e0 = true;
            H(this.r);
            bandwidthMeter.b(new Handler(looper), this.r);
            copyOnWriteArraySet.add(this.v);
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 31) {
                final Context context2 = this.e;
                builder2 = builder;
                final boolean z3 = builder2.x;
                virtualDeviceIdChangeListener = null;
                systemClock.a(exoPlayerImplInternal.r, null).d(new Runnable() { // from class: androidx.media3.exoplayer.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlaybackSession createPlaybackSession;
                        MediaMetricsListener mediaMetricsListener;
                        LogSessionId sessionId;
                        Context context3 = context2;
                        MediaMetricsManager e = o6.e(context3.getSystemService("media_metrics"));
                        if (e != null) {
                            createPlaybackSession = e.createPlaybackSession();
                            mediaMetricsListener = new MediaMetricsListener(context3, createPlaybackSession);
                        } else {
                            mediaMetricsListener = null;
                        }
                        if (mediaMetricsListener == null) {
                            Log.f("ExoPlayerImpl", "MediaMetricsService unavailable.");
                            return;
                        }
                        if (z3) {
                            this.M(mediaMetricsListener);
                        }
                        sessionId = mediaMetricsListener.d.getSessionId();
                        playerId.b(sessionId);
                    }
                });
            } else {
                builder2 = builder;
                virtualDeviceIdChangeListener = null;
            }
            BackgroundThreadStateHandler backgroundThreadStateHandler = new BackgroundThreadStateHandler(0, looper2, looper, systemClock, new g(this));
            this.B = backgroundThreadStateHandler;
            backgroundThreadStateHandler.b(new h(this));
            VirtualDeviceIdChangeListener virtualDeviceIdChangeListener3 = virtualDeviceIdChangeListener;
            ExoPlayer.Builder builder6 = builder2;
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(builder2.a, looper2, builder2.g, this.v, systemClock);
            this.x = audioBecomingNoisyManager;
            audioBecomingNoisyManager.a();
            if (builder6.t != Integer.MAX_VALUE && builder6.u != Integer.MAX_VALUE && builder6.v != Integer.MAX_VALUE && builder6.w != Integer.MAX_VALUE) {
                z2 = true;
            }
            WakeLockManager wakeLockManager = new WakeLockManager(context, looper2, systemClock);
            this.y = wakeLockManager;
            if (wakeLockManager.d != z2) {
                wakeLockManager.d = z2;
                wakeLockManager.a(z2, wakeLockManager.e);
            }
            this.z = new WifiLockManager(context, looper2, systemClock);
            int i7 = DeviceInfo.c;
            this.i0 = VideoSize.d;
            this.a0 = Size.c;
            if (i6 >= 34) {
                virtualDeviceIdChangeListener2 = new VirtualDeviceIdChangeListener(context);
            } else {
                virtualDeviceIdChangeListener2 = virtualDeviceIdChangeListener3;
            }
            this.D = virtualDeviceIdChangeListener2;
            this.E = new CodecParameterListenerManager();
            this.F = new CodecParameterListenerManager();
            this.C = new StuckPlayerDetector(this, this.v, this.u, builder6.t, builder6.u, builder6.v, builder6.w);
            handlerWrapper.k(38, this.N).a();
            handlerWrapper.b(this.b0).a();
            o0(1, 3, this.b0);
            o0(2, 4, Integer.valueOf(this.Z));
            o0(2, 5, 0);
            o0(1, 9, Boolean.valueOf(this.c0));
            o0(6, 8, this.w);
            o0(-1, 16, Integer.valueOf(this.g0));
            this.d.c();
        } catch (Throwable th) {
            this.d.c();
            throw th;
        }
    }

    public static long i0(PlaybackInfo playbackInfo) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        playbackInfo.a.g(playbackInfo.b.a, period);
        long j = playbackInfo.c;
        if (j == -9223372036854775807L) {
            return playbackInfo.a.m(period.c, window, 0L).j;
        }
        return period.e + j;
    }

    public static PlaybackInfo j0(PlaybackInfo playbackInfo, int i) {
        PlaybackInfo h = playbackInfo.h(i);
        if (i != 1 && i != 4) {
            return h;
        }
        return h.b(false);
    }

    @Override // androidx.media3.common.Player
    public final CueGroup A() {
        w0();
        return this.d0;
    }

    @Override // androidx.media3.common.Player
    public final void B(Player.Listener listener) {
        w0();
        listener.getClass();
        this.m.e(listener);
    }

    @Override // androidx.media3.common.Player
    public final int C() {
        w0();
        if (f()) {
            return this.n0.b.b;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public final int D() {
        w0();
        int h0 = h0(this.n0);
        if (h0 == -1) {
            return 0;
        }
        return h0;
    }

    @Override // androidx.media3.common.Player
    public final void E(int i) {
        w0();
        if (this.G != i) {
            this.G = i;
            this.l.p.a(11, i, 0).a();
            f fVar = new f(i, 0);
            ListenerSet listenerSet = this.m;
            listenerSet.c(8, fVar);
            s0();
            listenerSet.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.common.Player
    public final void F(TrackSelectionParameters trackSelectionParameters) {
        TrackSelectionParameters trackSelectionParameters2;
        w0();
        TrackSelector trackSelector = this.i;
        trackSelector.getClass();
        TrackSelectionParameters O = O();
        int i = 1;
        if (this.L) {
            this.M = trackSelectionParameters.w;
            ImmutableSet immutableSet = this.N.a;
            TrackSelectionParameters.Builder a = trackSelectionParameters.a();
            UnmodifiableIterator it = immutableSet.iterator();
            while (it.hasNext()) {
                a.i(((Integer) it.next()).intValue(), true);
            }
            trackSelectionParameters2 = a.a();
        } else {
            trackSelectionParameters2 = trackSelectionParameters;
        }
        DefaultTrackSelector defaultTrackSelector = (DefaultTrackSelector) trackSelector;
        if (!trackSelectionParameters2.equals(defaultTrackSelector.e)) {
            if (trackSelectionParameters2 instanceof DefaultTrackSelector.Parameters) {
                defaultTrackSelector.l((DefaultTrackSelector.Parameters) trackSelectionParameters2);
            }
            DefaultTrackSelector.Parameters.Builder builder = new DefaultTrackSelector.Parameters.Builder(defaultTrackSelector.e);
            builder.c(trackSelectionParameters2);
            defaultTrackSelector.l(new DefaultTrackSelector.Parameters(builder));
        }
        if (!O.equals(trackSelectionParameters)) {
            this.m.f(19, new b(i, trackSelectionParameters));
        }
    }

    @Override // androidx.media3.common.Player
    public final void G(SurfaceView surfaceView) {
        SurfaceHolder holder;
        w0();
        if (surfaceView == null) {
            holder = null;
        } else {
            holder = surfaceView.getHolder();
        }
        w0();
        if (holder != null && holder == this.V) {
            d0();
        }
    }

    @Override // androidx.media3.common.Player
    public final void H(Player.Listener listener) {
        listener.getClass();
        this.m.a(listener);
    }

    @Override // androidx.media3.common.Player
    public final int I() {
        w0();
        return this.n0.n;
    }

    @Override // androidx.media3.common.Player
    public final int J() {
        w0();
        return this.G;
    }

    @Override // androidx.media3.common.Player
    public final Timeline K() {
        w0();
        return this.n0.a;
    }

    @Override // androidx.media3.common.Player
    public final Looper L() {
        return this.s;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void M(AnalyticsListener analyticsListener) {
        DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) this.r;
        defaultAnalyticsCollector.getClass();
        defaultAnalyticsCollector.o.a(analyticsListener);
    }

    @Override // androidx.media3.common.Player
    public final boolean N() {
        w0();
        return this.H;
    }

    @Override // androidx.media3.common.Player
    public final TrackSelectionParameters O() {
        w0();
        DefaultTrackSelector.Parameters parameters = ((DefaultTrackSelector) this.i).e;
        if (this.L) {
            parameters.getClass();
            DefaultTrackSelector.Parameters.Builder builder = new DefaultTrackSelector.Parameters.Builder(parameters);
            builder.j(this.M);
            return new DefaultTrackSelector.Parameters(builder);
        }
        return parameters;
    }

    @Override // androidx.media3.common.Player
    public final long P() {
        w0();
        if (this.n0.a.p()) {
            return this.p0;
        }
        PlaybackInfo playbackInfo = this.n0;
        long j = 0;
        if (playbackInfo.k.d != playbackInfo.b.d) {
            return Util.N(playbackInfo.a.m(D(), this.a, 0L).k);
        }
        long j2 = playbackInfo.q;
        if (this.n0.k.c()) {
            PlaybackInfo playbackInfo2 = this.n0;
            playbackInfo2.a.g(playbackInfo2.k.a, this.o).d(this.n0.k.b);
        } else {
            j = j2;
        }
        PlaybackInfo playbackInfo3 = this.n0;
        Timeline timeline = playbackInfo3.a;
        Object obj = playbackInfo3.k.a;
        Timeline.Period period = this.o;
        timeline.g(obj, period);
        return Util.N(j + period.e);
    }

    @Override // androidx.media3.common.Player
    public final void Q(TextureView textureView) {
        SurfaceTexture surfaceTexture;
        w0();
        if (textureView == null) {
            d0();
            return;
        }
        n0();
        this.Y = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.f("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.v);
        if (textureView.isAvailable()) {
            surfaceTexture = textureView.getSurfaceTexture();
        } else {
            surfaceTexture = null;
        }
        if (surfaceTexture == null) {
            q0(null);
            m0(0, 0);
        } else {
            Surface surface = new Surface(surfaceTexture);
            q0(surface);
            this.U = surface;
            m0(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata R() {
        w0();
        return this.S;
    }

    @Override // androidx.media3.common.Player
    public final long S() {
        w0();
        return Util.N(g0(this.n0));
    }

    @Override // androidx.media3.common.Player
    public final long T() {
        w0();
        return this.j0;
    }

    @Override // androidx.media3.common.BasePlayer
    public final void Y(int i, long j, boolean z) {
        boolean z2;
        w0();
        if (i != -1) {
            if (i >= 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.e(z2);
            Timeline timeline = this.n0.a;
            if (!timeline.p() && i >= timeline.o()) {
                return;
            }
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) this.r;
            if (!defaultAnalyticsCollector.r) {
                AnalyticsListener.EventTime G = defaultAnalyticsCollector.G();
                defaultAnalyticsCollector.r = true;
                defaultAnalyticsCollector.N(G, -1, new b7(5));
            }
            this.I++;
            if (f()) {
                Log.f("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.n0);
                playbackInfoUpdate.a(1);
                ExoPlayerImpl exoPlayerImpl = this.k.j;
                exoPlayerImpl.j.d(new i(exoPlayerImpl, playbackInfoUpdate));
                return;
            }
            PlaybackInfo playbackInfo = this.n0;
            int i2 = playbackInfo.e;
            if (i2 == 3 || (i2 == 4 && !timeline.p())) {
                playbackInfo = this.n0.h(2);
            }
            int D = D();
            PlaybackInfo k0 = k0(playbackInfo, timeline, l0(timeline, i, j));
            this.l.p.k(3, new ExoPlayerImplInternal.SeekPosition(timeline, i, Util.D(j))).a();
            u0(k0, 0, true, 1, g0(k0), D, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v17, types: [androidx.media3.common.util.ListenerSet$Event, java.lang.Object] */
    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void a() {
        String str;
        boolean z;
        Context context;
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [AndroidXMedia3/1.11.0] [");
        sb.append(Util.a);
        sb.append("] [");
        HashSet hashSet = MediaLibraryInfo.a;
        synchronized (MediaLibraryInfo.class) {
            str = MediaLibraryInfo.b;
        }
        sb.append(str);
        sb.append("]");
        Log.e("ExoPlayerImpl", sb.toString());
        w0();
        this.x.a();
        boolean z2 = false;
        this.y.b(false);
        this.z.a(false);
        VirtualDeviceIdChangeListener virtualDeviceIdChangeListener = this.D;
        if (virtualDeviceIdChangeListener != null && Build.VERSION.SDK_INT >= 34 && (context = (Context) virtualDeviceIdChangeListener.a.get()) != null) {
            context.unregisterDeviceIdChangeListener(virtualDeviceIdChangeListener.b);
        }
        this.C.a();
        ExoPlayerImplInternal exoPlayerImplInternal = this.l;
        int i = 7;
        if (!exoPlayerImplInternal.S && exoPlayerImplInternal.r.getThread().isAlive()) {
            exoPlayerImplInternal.S = true;
            ConditionVariable conditionVariable = new ConditionVariable(exoPlayerImplInternal.x);
            exoPlayerImplInternal.p.k(7, conditionVariable).a();
            z = conditionVariable.b(exoPlayerImplInternal.C);
        } else {
            z = true;
        }
        if (!z) {
            this.m.f(10, new Object());
        }
        this.m.d();
        this.j.f();
        this.t.a(this.r);
        PlaybackInfo playbackInfo = this.n0;
        if (playbackInfo.p) {
            this.n0 = playbackInfo.a();
        }
        PlaybackInfo j0 = j0(this.n0, 1);
        this.n0 = j0;
        PlaybackInfo c = j0.c(j0.b);
        this.n0 = c;
        c.q = c.s;
        this.n0.r = 0L;
        DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) this.r;
        HandlerWrapper handlerWrapper = defaultAnalyticsCollector.q;
        handlerWrapper.getClass();
        handlerWrapper.d(new defpackage.e(i, defaultAnalyticsCollector));
        n0();
        Surface surface = this.U;
        if (surface != null) {
            surface.release();
            this.U = null;
        }
        this.d0 = CueGroup.c;
        this.h0 = true;
        if (!this.n0.a.p()) {
            PlaybackInfo playbackInfo2 = this.n0;
            if (playbackInfo2.a.b(playbackInfo2.b.a) != -1) {
                z2 = true;
            }
            Locale locale = Locale.US;
            PlaybackInfo playbackInfo3 = this.n0;
            Preconditions.m(String.format(locale, "periodUid %s not found in timeline %s with size %d", playbackInfo3.b.a, playbackInfo3.a.getClass().getName(), Integer.valueOf(this.n0.a.o())), z2);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void b(ProgressiveMediaSource progressiveMediaSource) {
        w0();
        List singletonList = Collections.singletonList(progressiveMediaSource);
        w0();
        w0();
        h0(this.n0);
        S();
        boolean z = true;
        this.I++;
        ArrayList arrayList = this.p;
        arrayList.clear();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < singletonList.size(); i++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = new MediaSourceList.MediaSourceHolder((MediaSource) singletonList.get(i), this.q);
            arrayList2.add(mediaSourceHolder);
            arrayList.add(i, new MediaSourceHolderSnapshot(mediaSourceHolder.b, mediaSourceHolder.a));
        }
        ShuffleOrder.DefaultShuffleOrder defaultShuffleOrder = this.P;
        int size = arrayList2.size();
        defaultShuffleOrder.getClass();
        this.P = new ShuffleOrder.DefaultShuffleOrder(new Random(defaultShuffleOrder.a.nextLong())).a(size);
        PlaylistTimeline playlistTimeline = new PlaylistTimeline(arrayList, this.P);
        boolean p = playlistTimeline.p();
        int i2 = playlistTimeline.e;
        if (!p && -1 >= i2) {
            throw new IllegalStateException();
        }
        int a = playlistTimeline.a(this.H);
        PlaybackInfo k0 = k0(this.n0, playlistTimeline, l0(playlistTimeline, a, -9223372036854775807L));
        int i3 = k0.e;
        if (i3 == 1) {
            i3 = 1;
        } else {
            if (!playlistTimeline.p()) {
                if (a != -1) {
                    if (a < i2) {
                        i3 = 2;
                    }
                }
            }
            i3 = 4;
        }
        PlaybackInfo j0 = j0(k0, i3);
        this.l.p.k(17, new ExoPlayerImplInternal.MediaSourceListUpdateMessage(arrayList2, this.P, a, Util.D(-9223372036854775807L))).a();
        if (this.n0.b.a.equals(j0.b.a) || this.n0.a.p()) {
            z = false;
        }
        u0(j0, 0, z, 4, g0(j0), -1, false);
    }

    @Override // androidx.media3.common.Player
    public final void c(PlaybackParameters playbackParameters) {
        w0();
        if (this.n0.o.equals(playbackParameters)) {
            return;
        }
        PlaybackInfo g = this.n0.g(playbackParameters);
        this.I++;
        this.l.p.k(4, playbackParameters).a();
        u0(g, 0, false, 5, -9223372036854775807L, -1, false);
    }

    public final MediaMetadata c0() {
        byte[] bArr;
        Timeline K = K();
        if (K.p()) {
            return this.m0;
        }
        MediaItem mediaItem = K.m(D(), this.a, 0L).b;
        MediaMetadata.Builder a = this.m0.a();
        MediaMetadata mediaMetadata = mediaItem.d;
        if (mediaMetadata != null) {
            ImmutableList immutableList = mediaMetadata.B;
            byte[] bArr2 = mediaMetadata.f;
            CharSequence charSequence = mediaMetadata.a;
            if (charSequence != null) {
                a.a = charSequence;
            }
            CharSequence charSequence2 = mediaMetadata.b;
            if (charSequence2 != null) {
                a.b = charSequence2;
            }
            CharSequence charSequence3 = mediaMetadata.c;
            if (charSequence3 != null) {
                a.c = charSequence3;
            }
            CharSequence charSequence4 = mediaMetadata.d;
            if (charSequence4 != null) {
                a.d = charSequence4;
            }
            CharSequence charSequence5 = mediaMetadata.e;
            if (charSequence5 != null) {
                a.e = charSequence5;
            }
            if (bArr2 != null) {
                Integer num = mediaMetadata.g;
                if (bArr2 == null) {
                    bArr = null;
                } else {
                    bArr = (byte[]) bArr2.clone();
                }
                a.f = bArr;
                a.g = num;
                MediaMetadata mediaMetadata2 = MediaMetadata.C;
            }
            Integer num2 = mediaMetadata.h;
            if (num2 != null) {
                a.h = num2;
            }
            Integer num3 = mediaMetadata.i;
            if (num3 != null) {
                a.i = num3;
            }
            Integer num4 = mediaMetadata.j;
            if (num4 != null) {
                a.j = num4;
            }
            Boolean bool = mediaMetadata.k;
            if (bool != null) {
                a.k = bool;
            }
            Integer num5 = mediaMetadata.l;
            if (num5 != null) {
                a.l = num5;
            }
            Integer num6 = mediaMetadata.m;
            if (num6 != null) {
                a.l = num6;
            }
            Integer num7 = mediaMetadata.n;
            if (num7 != null) {
                a.m = num7;
            }
            Integer num8 = mediaMetadata.o;
            if (num8 != null) {
                a.n = num8;
            }
            Integer num9 = mediaMetadata.p;
            if (num9 != null) {
                a.o = num9;
            }
            Integer num10 = mediaMetadata.q;
            if (num10 != null) {
                a.p = num10;
            }
            Integer num11 = mediaMetadata.r;
            if (num11 != null) {
                a.q = num11;
            }
            CharSequence charSequence6 = mediaMetadata.s;
            if (charSequence6 != null) {
                a.r = charSequence6;
            }
            CharSequence charSequence7 = mediaMetadata.t;
            if (charSequence7 != null) {
                a.s = charSequence7;
            }
            CharSequence charSequence8 = mediaMetadata.u;
            if (charSequence8 != null) {
                a.t = charSequence8;
            }
            CharSequence charSequence9 = mediaMetadata.v;
            if (charSequence9 != null) {
                a.u = charSequence9;
            }
            Integer num12 = mediaMetadata.w;
            if (num12 != null) {
                a.v = num12;
            }
            Integer num13 = mediaMetadata.x;
            if (num13 != null) {
                a.w = num13;
            }
            CharSequence charSequence10 = mediaMetadata.y;
            if (charSequence10 != null) {
                a.x = charSequence10;
            }
            CharSequence charSequence11 = mediaMetadata.z;
            if (charSequence11 != null) {
                a.y = charSequence11;
            }
            Integer num14 = mediaMetadata.A;
            if (num14 != null) {
                a.z = num14;
            }
            if (!immutableList.isEmpty()) {
                a.A = ImmutableList.m(immutableList);
            }
        }
        return new MediaMetadata(a);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void d() {
        w0();
        this.Z = 1;
        o0(2, 4, 1);
    }

    public final void d0() {
        w0();
        n0();
        q0(null);
        m0(0, 0);
    }

    @Override // androidx.media3.common.Player
    public final PlaybackParameters e() {
        w0();
        return this.n0.o;
    }

    public final PlayerMessage e0(PlayerMessage.Target target) {
        int h0 = h0(this.n0);
        Timeline timeline = this.n0.a;
        if (h0 == -1) {
            h0 = 0;
        }
        ExoPlayerImplInternal exoPlayerImplInternal = this.l;
        return new PlayerMessage(exoPlayerImplInternal, target, timeline, h0, exoPlayerImplInternal.r);
    }

    @Override // androidx.media3.common.Player
    public final boolean f() {
        w0();
        return this.n0.b.c();
    }

    public final long f0(PlaybackInfo playbackInfo) {
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.b;
        long j = playbackInfo.c;
        Timeline timeline = playbackInfo.a;
        if (mediaPeriodId.c()) {
            Object obj = playbackInfo.b.a;
            Timeline.Period period = this.o;
            timeline.g(obj, period);
            if (j == -9223372036854775807L) {
                return Util.N(timeline.m(h0(playbackInfo), this.a, 0L).j);
            }
            return Util.N(j) + Util.N(period.e);
        }
        return Util.N(g0(playbackInfo));
    }

    @Override // androidx.media3.common.Player
    public final long g() {
        w0();
        return Util.N(this.n0.r);
    }

    public final long g0(PlaybackInfo playbackInfo) {
        long j;
        if (playbackInfo.a.p()) {
            return Util.D(this.p0);
        }
        if (playbackInfo.p) {
            j = playbackInfo.l();
        } else {
            j = playbackInfo.s;
        }
        if (playbackInfo.b.c()) {
            return j;
        }
        Timeline timeline = playbackInfo.a;
        Object obj = playbackInfo.b.a;
        Timeline.Period period = this.o;
        timeline.g(obj, period);
        return j + period.e;
    }

    @Override // androidx.media3.common.Player
    public final long getDuration() {
        w0();
        if (f()) {
            PlaybackInfo playbackInfo = this.n0;
            MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.b;
            Timeline timeline = playbackInfo.a;
            Object obj = mediaPeriodId.a;
            Timeline.Period period = this.o;
            timeline.g(obj, period);
            return Util.N(period.a(mediaPeriodId.b, mediaPeriodId.c));
        }
        Timeline K = K();
        if (K.p()) {
            return -9223372036854775807L;
        }
        return Util.N(K.m(D(), this.a, 0L).k);
    }

    @Override // androidx.media3.common.Player
    public final Player.Commands h() {
        w0();
        return this.R;
    }

    public final int h0(PlaybackInfo playbackInfo) {
        if (playbackInfo.a.p()) {
            return this.o0;
        }
        return playbackInfo.a.g(playbackInfo.b.a, this.o).c;
    }

    @Override // androidx.media3.common.Player
    public final boolean i() {
        w0();
        return this.n0.l;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final boolean isScrubbingModeEnabled() {
        w0();
        return this.L;
    }

    @Override // androidx.media3.common.Player
    public final void j(final boolean z) {
        w0();
        if (this.H != z) {
            this.H = z;
            this.l.p.a(12, z ? 1 : 0, 0).a();
            ListenerSet.Event event = new ListenerSet.Event() { // from class: androidx.media3.exoplayer.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj) {
                    int i = ExoPlayerImpl.q0;
                    ((Player.Listener) obj).p(z);
                }
            };
            ListenerSet listenerSet = this.m;
            listenerSet.c(9, event);
            s0();
            listenerSet.b();
        }
    }

    @Override // androidx.media3.common.Player
    public final long k() {
        w0();
        return this.l0;
    }

    public final PlaybackInfo k0(PlaybackInfo playbackInfo, Timeline timeline, Pair pair) {
        boolean z;
        MediaSource.MediaPeriodId mediaPeriodId;
        TrackGroupArray trackGroupArray;
        TrackSelectorResult trackSelectorResult;
        List list;
        long j;
        if (!timeline.p() && pair == null) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.e(z);
        Timeline timeline2 = playbackInfo.a;
        long f0 = f0(playbackInfo);
        PlaybackInfo j2 = playbackInfo.j(timeline);
        if (timeline.p()) {
            MediaSource.MediaPeriodId mediaPeriodId2 = PlaybackInfo.u;
            long D = Util.D(this.p0);
            PlaybackInfo c = j2.d(mediaPeriodId2, D, D, D, 0L, TrackGroupArray.d, this.b, ImmutableList.r()).c(mediaPeriodId2);
            c.q = c.s;
            return c;
        }
        Object obj = j2.b.a;
        boolean equals = obj.equals(pair.first);
        if (!equals) {
            mediaPeriodId = new MediaSource.MediaPeriodId(pair.first);
        } else {
            mediaPeriodId = j2.b;
        }
        long longValue = ((Long) pair.second).longValue();
        long D2 = Util.D(f0);
        if (!timeline2.p()) {
            D2 -= timeline2.g(obj, this.o).e;
            if (equals && D2 - longValue == 1 && D2 == timeline2.g(obj, this.o).d) {
                D2--;
            }
        }
        if (!equals || longValue < D2) {
            MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodId;
            Preconditions.n(!mediaPeriodId3.c());
            if (!equals) {
                trackGroupArray = TrackGroupArray.d;
            } else {
                trackGroupArray = j2.h;
            }
            TrackGroupArray trackGroupArray2 = trackGroupArray;
            if (!equals) {
                trackSelectorResult = this.b;
            } else {
                trackSelectorResult = j2.i;
            }
            TrackSelectorResult trackSelectorResult2 = trackSelectorResult;
            if (!equals) {
                list = ImmutableList.r();
            } else {
                list = j2.j;
            }
            PlaybackInfo c2 = j2.d(mediaPeriodId3, longValue, longValue, longValue, 0L, trackGroupArray2, trackSelectorResult2, list).c(mediaPeriodId3);
            c2.q = longValue;
            return c2;
        }
        if (longValue == D2) {
            int b = timeline.b(j2.k.a);
            if (b != -1 && timeline.f(b, this.o, false).c == timeline.g(mediaPeriodId.a, this.o).c) {
                return j2;
            }
            timeline.g(mediaPeriodId.a, this.o);
            boolean c3 = mediaPeriodId.c();
            Timeline.Period period = this.o;
            if (c3) {
                j = period.a(mediaPeriodId.b, mediaPeriodId.c);
            } else {
                j = period.d;
            }
            MediaSource.MediaPeriodId mediaPeriodId4 = mediaPeriodId;
            PlaybackInfo c4 = j2.d(mediaPeriodId4, j2.s, j2.s, j2.d, j - j2.s, j2.h, j2.i, j2.j).c(mediaPeriodId4);
            c4.q = j;
            return c4;
        }
        MediaSource.MediaPeriodId mediaPeriodId5 = mediaPeriodId;
        Preconditions.n(!mediaPeriodId5.c());
        long max = Math.max(0L, j2.r - (longValue - D2));
        long j3 = j2.q;
        if (j2.k.equals(j2.b)) {
            j3 = longValue + max;
        }
        PlaybackInfo d = j2.d(mediaPeriodId5, longValue, longValue, longValue, max, j2.h, j2.i, j2.j);
        d.q = j3;
        return d;
    }

    @Override // androidx.media3.common.Player
    public final int l() {
        w0();
        if (this.n0.a.p()) {
            int i = this.o0;
            if (i == -1) {
                return 0;
            }
            return i;
        }
        PlaybackInfo playbackInfo = this.n0;
        return playbackInfo.a.b(playbackInfo.b.a);
    }

    public final Pair l0(Timeline timeline, int i, long j) {
        if (timeline.p()) {
            this.o0 = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.p0 = j;
            return null;
        }
        if (i == -1 || i >= timeline.o()) {
            i = timeline.a(this.H);
            j = Util.N(timeline.m(i, this.a, 0L).j);
        }
        return timeline.i(this.a, this.o, i, Util.D(j));
    }

    @Override // androidx.media3.common.Player
    public final void m(TextureView textureView) {
        w0();
        if (textureView != null && textureView == this.Y) {
            d0();
        }
    }

    public final void m0(final int i, final int i2) {
        Size size = this.a0;
        if (i == size.a && i2 == size.b) {
            return;
        }
        this.a0 = new Size(i, i2);
        this.m.f(24, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.d
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void b(Object obj) {
                int i3 = ExoPlayerImpl.q0;
                ((Player.Listener) obj).C(i, i2);
            }
        });
        o0(2, 14, new Size(i, i2));
    }

    @Override // androidx.media3.common.Player
    public final VideoSize n() {
        w0();
        return this.i0;
    }

    public final void n0() {
        SphericalGLSurfaceView sphericalGLSurfaceView = this.W;
        ComponentListener componentListener = this.v;
        if (sphericalGLSurfaceView != null) {
            PlayerMessage e0 = e0(this.w);
            Preconditions.n(!e0.f);
            e0.c = 10000;
            Preconditions.n(!e0.f);
            e0.d = null;
            e0.b();
            this.W.j.remove(componentListener);
            this.W = null;
        }
        TextureView textureView = this.Y;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != componentListener) {
                Log.f("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.Y.setSurfaceTextureListener(null);
            }
            this.Y = null;
        }
        SurfaceHolder surfaceHolder = this.V;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(componentListener);
            this.V = null;
        }
    }

    @Override // androidx.media3.common.Player
    public final void o() {
        int i;
        w0();
        PlaybackInfo playbackInfo = this.n0;
        if (playbackInfo.e != 1) {
            return;
        }
        PlaybackInfo f = playbackInfo.f(null);
        if (f.a.p()) {
            i = 4;
        } else {
            i = 2;
        }
        PlaybackInfo j0 = j0(f, i);
        this.I++;
        this.l.p.e(29).a();
        u0(j0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    public final void o0(int i, int i2, Object obj) {
        for (Renderer renderer : this.g) {
            if (i == -1 || ((BaseRenderer) renderer).k == i) {
                PlayerMessage e0 = e0(renderer);
                Preconditions.n(!e0.f);
                e0.c = i2;
                Preconditions.n(!e0.f);
                e0.d = obj;
                e0.b();
            }
        }
        for (Renderer renderer2 : this.h) {
            if (renderer2 != null && (i == -1 || ((BaseRenderer) renderer2).k == i)) {
                PlayerMessage e02 = e0(renderer2);
                Preconditions.n(!e02.f);
                e02.c = i2;
                Preconditions.n(!e02.f);
                e02.d = obj;
                e02.b();
            }
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void p(SeekParameters seekParameters) {
        w0();
        if (seekParameters == null) {
            seekParameters = SeekParameters.e;
        }
        if (!this.O.equals(seekParameters)) {
            this.O = seekParameters;
            this.l.p.k(5, seekParameters).a();
        }
    }

    public final void p0(SurfaceHolder surfaceHolder) {
        this.X = false;
        this.V = surfaceHolder;
        surfaceHolder.addCallback(this.v);
        Surface surface = this.V.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceFrame = this.V.getSurfaceFrame();
            m0(surfaceFrame.width(), surfaceFrame.height());
        } else {
            m0(0, 0);
        }
    }

    @Override // androidx.media3.common.Player
    public final int q() {
        w0();
        if (f()) {
            return this.n0.b.c;
        }
        return -1;
    }

    public final void q0(Object obj) {
        boolean z;
        long j;
        Object obj2 = this.T;
        boolean z2 = true;
        if (obj2 != null && obj2 != obj) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            j = this.A;
        } else {
            j = -9223372036854775807L;
        }
        ExoPlayerImplInternal exoPlayerImplInternal = this.l;
        if (!exoPlayerImplInternal.S && exoPlayerImplInternal.r.getThread().isAlive()) {
            ConditionVariable conditionVariable = new ConditionVariable(exoPlayerImplInternal.x);
            exoPlayerImplInternal.p.k(30, new Pair(obj, conditionVariable)).a();
            if (j != -9223372036854775807L) {
                z2 = conditionVariable.b(j);
            }
        }
        if (z) {
            Object obj3 = this.T;
            Surface surface = this.U;
            if (obj3 == surface) {
                surface.release();
                this.U = null;
            }
        }
        this.T = obj;
        if (!z2) {
            r0(new ExoPlaybackException(2, new RuntimeException("Detaching surface timed out."), 1003));
        }
    }

    @Override // androidx.media3.common.Player
    public final void r(SurfaceView surfaceView) {
        SurfaceHolder holder;
        w0();
        if (surfaceView instanceof VideoDecoderOutputBufferRenderer) {
            n0();
            q0(surfaceView);
            p0(surfaceView.getHolder());
            return;
        }
        boolean z = surfaceView instanceof SphericalGLSurfaceView;
        ComponentListener componentListener = this.v;
        if (z) {
            n0();
            this.W = (SphericalGLSurfaceView) surfaceView;
            PlayerMessage e0 = e0(this.w);
            Preconditions.n(!e0.f);
            e0.c = 10000;
            SphericalGLSurfaceView sphericalGLSurfaceView = this.W;
            Preconditions.n(true ^ e0.f);
            e0.d = sphericalGLSurfaceView;
            e0.b();
            this.W.j.add(componentListener);
            q0(this.W.getVideoSurface());
            p0(surfaceView.getHolder());
            return;
        }
        if (surfaceView == null) {
            holder = null;
        } else {
            holder = surfaceView.getHolder();
        }
        w0();
        if (holder == null) {
            d0();
            return;
        }
        n0();
        this.X = true;
        this.V = holder;
        holder.addCallback(componentListener);
        Surface surface = holder.getSurface();
        if (surface != null && surface.isValid()) {
            q0(surface);
            Rect surfaceFrame = holder.getSurfaceFrame();
            m0(surfaceFrame.width(), surfaceFrame.height());
        } else {
            q0(null);
            m0(0, 0);
        }
    }

    public final void r0(ExoPlaybackException exoPlaybackException) {
        PlaybackInfo playbackInfo = this.n0;
        PlaybackInfo c = playbackInfo.c(playbackInfo.b);
        c.q = c.s;
        c.r = 0L;
        PlaybackInfo f = j0(c, 1).f(exoPlaybackException);
        this.I++;
        this.l.p.e(6).a();
        u0(f, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void s() {
        w0();
        if (this.Q) {
            return;
        }
        this.Q = true;
        this.l.p.a(23, 1, 0).a();
    }

    public final void s0() {
        boolean z;
        int k;
        boolean z2;
        int e;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        Player.Commands commands = this.R;
        String str = Util.a;
        ExoPlayerImpl exoPlayerImpl = (ExoPlayerImpl) this.f;
        boolean f = exoPlayerImpl.f();
        Timeline.Window window = exoPlayerImpl.a;
        Timeline K = exoPlayerImpl.K();
        boolean z11 = true;
        if (!K.p() && K.m(exoPlayerImpl.D(), window, 0L).f) {
            z = true;
        } else {
            z = false;
        }
        Timeline K2 = exoPlayerImpl.K();
        if (K2.p()) {
            k = -1;
        } else {
            int D = exoPlayerImpl.D();
            int J = exoPlayerImpl.J();
            if (J == 1) {
                J = 0;
            }
            k = K2.k(D, J, exoPlayerImpl.N());
        }
        if (k != -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        Timeline K3 = exoPlayerImpl.K();
        if (K3.p()) {
            e = -1;
        } else {
            int D2 = exoPlayerImpl.D();
            int J2 = exoPlayerImpl.J();
            if (J2 == 1) {
                J2 = 0;
            }
            e = K3.e(D2, J2, exoPlayerImpl.N());
        }
        if (e != -1) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean W = exoPlayerImpl.W();
        Timeline K4 = exoPlayerImpl.K();
        if (!K4.p() && K4.m(exoPlayerImpl.D(), window, 0L).g) {
            z4 = true;
        } else {
            z4 = false;
        }
        boolean p = exoPlayerImpl.K().p();
        Player.Commands.Builder builder = new Player.Commands.Builder();
        SparseBooleanArray sparseBooleanArray = this.c.a.a;
        FlagSet.Builder builder2 = builder.a;
        builder2.getClass();
        for (int i = 0; i < sparseBooleanArray.size(); i++) {
            Preconditions.h(i, sparseBooleanArray.size());
            builder2.a(sparseBooleanArray.keyAt(i));
        }
        boolean z12 = !f;
        builder.a(4, z12);
        if (z && !f) {
            z5 = true;
        } else {
            z5 = false;
        }
        builder.a(5, z5);
        if (z2 && !f) {
            z6 = true;
        } else {
            z6 = false;
        }
        builder.a(6, z6);
        if (!p && ((z2 || !W || z) && !f)) {
            z7 = true;
        } else {
            z7 = false;
        }
        builder.a(7, z7);
        if (z3 && !f) {
            z8 = true;
        } else {
            z8 = false;
        }
        builder.a(8, z8);
        if (!p && ((z3 || (W && z4)) && !f)) {
            z9 = true;
        } else {
            z9 = false;
        }
        builder.a(9, z9);
        builder.a(10, z12);
        if (z && !f) {
            z10 = true;
        } else {
            z10 = false;
        }
        builder.a(11, z10);
        if (!z || f) {
            z11 = false;
        }
        builder.a(12, z11);
        Player.Commands commands2 = new Player.Commands(builder2.b());
        this.R = commands2;
        if (!commands2.equals(commands)) {
            this.m.c(13, new g(this));
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setImageOutput(ImageOutput imageOutput) {
        w0();
        o0(4, 15, imageOutput);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.media3.common.TrackSelectionParameters] */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.media3.exoplayer.trackselection.DefaultTrackSelector$Parameters$Builder, androidx.media3.common.TrackSelectionParameters$Builder] */
    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setScrubbingModeEnabled(boolean z) {
        DefaultTrackSelector.Parameters parameters;
        w0();
        if (z == this.L) {
            return;
        }
        this.L = z;
        ScrubbingModeParameters scrubbingModeParameters = this.N;
        if (!scrubbingModeParameters.a.isEmpty()) {
            TrackSelector trackSelector = this.i;
            trackSelector.getClass();
            DefaultTrackSelector defaultTrackSelector = (DefaultTrackSelector) trackSelector;
            DefaultTrackSelector.Parameters parameters2 = defaultTrackSelector.e;
            if (z) {
                this.M = parameters2.w;
                ImmutableSet immutableSet = scrubbingModeParameters.a;
                TrackSelectionParameters.Builder a = parameters2.a();
                UnmodifiableIterator it = immutableSet.iterator();
                while (it.hasNext()) {
                    a.i(((Integer) it.next()).intValue(), true);
                }
                parameters = a.a();
            } else {
                parameters2.getClass();
                DefaultTrackSelector.Parameters.Builder builder = new DefaultTrackSelector.Parameters.Builder(parameters2);
                builder.j(this.M);
                DefaultTrackSelector.Parameters parameters3 = new DefaultTrackSelector.Parameters(builder);
                this.M = null;
                parameters = parameters3;
            }
            if (!parameters.equals(parameters2)) {
                if (parameters instanceof DefaultTrackSelector.Parameters) {
                    defaultTrackSelector.l(parameters);
                }
                ?? builder2 = new DefaultTrackSelector.Parameters.Builder(defaultTrackSelector.e);
                builder2.c(parameters);
                defaultTrackSelector.l(new DefaultTrackSelector.Parameters(builder2));
            }
        }
        this.l.p.k(36, Boolean.valueOf(z)).a();
        PlaybackInfo playbackInfo = this.n0;
        t0(playbackInfo.m, playbackInfo.l);
    }

    @Override // androidx.media3.common.Player
    public final ExoPlaybackException t() {
        w0();
        return this.n0.f;
    }

    public final void t0(int i, boolean z) {
        int i2;
        if (this.L) {
            i2 = 4;
        } else if (this.n0.n == 1 && !z) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        PlaybackInfo playbackInfo = this.n0;
        if (playbackInfo.l == z && playbackInfo.n == i2 && playbackInfo.m == i) {
            return;
        }
        this.I++;
        if (playbackInfo.p) {
            playbackInfo = playbackInfo.a();
        }
        PlaybackInfo e = playbackInfo.e(i, i2, z);
        this.l.p.a(1, z ? 1 : 0, i | (i2 << 4)).a();
        u0(e, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public final void u(boolean z) {
        w0();
        t0(1, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u0(final PlaybackInfo playbackInfo, final int i, boolean z, final int i2, long j, int i3, boolean z2) {
        Pair pair;
        int i4;
        final MediaItem mediaItem;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        final int i5;
        int i6;
        int i7;
        Object obj;
        MediaItem mediaItem2;
        Object obj2;
        long j2;
        long i0;
        Object obj3;
        MediaItem mediaItem3;
        Object obj4;
        long j3;
        boolean z9;
        PlaybackInfo playbackInfo2 = this.n0;
        this.n0 = playbackInfo;
        if (!playbackInfo.a.p()) {
            if (playbackInfo.a.b(playbackInfo.b.a) != -1) {
                z9 = true;
            } else {
                z9 = false;
            }
            Preconditions.m(String.format(Locale.US, "periodUid %s not found in timeline %s with size %d", playbackInfo.b.a, playbackInfo.a.getClass().getName(), Integer.valueOf(playbackInfo.a.o())), z9);
        }
        boolean equals = playbackInfo2.a.equals(playbackInfo.a);
        Timeline.Window window = this.a;
        Timeline.Period period = this.o;
        Timeline timeline = playbackInfo2.a;
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo2.b;
        Timeline timeline2 = playbackInfo.a;
        MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.b;
        final int i8 = 0;
        if (timeline2.p() && timeline.p()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (timeline2.p() != timeline.p()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else if (!timeline.m(timeline.g(mediaPeriodId.a, period).c, window, 0L).a.equals(timeline2.m(timeline2.g(mediaPeriodId2.a, period).c, window, 0L).a)) {
            if (z && i2 == 0) {
                i4 = 1;
            } else if (z && i2 == 1) {
                i4 = 2;
            } else if (!equals) {
                i4 = 3;
            } else {
                io.sentry.d.d();
                return;
            }
            pair = new Pair(Boolean.TRUE, Integer.valueOf(i4));
        } else if (z && i2 == 0 && mediaPeriodId.d < mediaPeriodId2.d) {
            pair = new Pair(Boolean.TRUE, 0);
        } else if (z && i2 == 1 && z2) {
            pair = new Pair(Boolean.TRUE, 2);
        } else {
            pair = new Pair(Boolean.FALSE, -1);
        }
        boolean booleanValue = ((Boolean) pair.first).booleanValue();
        final int intValue = ((Integer) pair.second).intValue();
        if (booleanValue) {
            if (!playbackInfo.a.p()) {
                mediaItem = playbackInfo.a.m(playbackInfo.a.g(playbackInfo.b.a, this.o).c, this.a, 0L).b;
            } else {
                mediaItem = null;
            }
            this.m0 = MediaMetadata.C;
        } else {
            mediaItem = null;
        }
        if (booleanValue || !playbackInfo2.j.equals(playbackInfo.j)) {
            MediaMetadata.Builder a = this.m0.a();
            List list = playbackInfo.j;
            for (int i9 = 0; i9 < list.size(); i9++) {
                Metadata metadata = (Metadata) list.get(i9);
                int i10 = 0;
                while (true) {
                    Metadata.Entry[] entryArr = metadata.a;
                    if (i10 < entryArr.length) {
                        entryArr[i10].b(a);
                        i10++;
                    }
                }
            }
            this.m0 = new MediaMetadata(a);
        }
        MediaMetadata c0 = c0();
        boolean equals2 = c0.equals(this.S);
        this.S = c0;
        if (playbackInfo2.l != playbackInfo.l) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (playbackInfo2.e != playbackInfo.e) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z4 || z3) {
            v0();
        }
        if (playbackInfo2.g != playbackInfo.g) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (!equals) {
            this.m.c(0, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.a
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj5) {
                    int i11 = i8;
                    int i12 = i;
                    Object obj6 = playbackInfo;
                    switch (i11) {
                        case 0:
                            int i13 = ExoPlayerImpl.q0;
                            Timeline timeline3 = ((PlaybackInfo) obj6).a;
                            ((Player.Listener) obj5).r(i12);
                            return;
                        default:
                            int i14 = ExoPlayerImpl.q0;
                            ((Player.Listener) obj5).x((MediaItem) obj6, i12);
                            return;
                    }
                }
            });
        }
        if (z) {
            Timeline.Period period2 = new Timeline.Period();
            if (!playbackInfo2.a.p()) {
                Object obj5 = playbackInfo2.b.a;
                playbackInfo2.a.g(obj5, period2);
                int i11 = period2.c;
                int b = playbackInfo2.a.b(obj5);
                z6 = z3;
                z7 = equals2;
                z8 = booleanValue;
                obj = playbackInfo2.a.m(i11, this.a, 0L).a;
                mediaItem2 = this.a.b;
                obj2 = obj5;
                i6 = i11;
                i7 = b;
            } else {
                z6 = z3;
                z7 = equals2;
                z8 = booleanValue;
                i6 = i3;
                i7 = i6;
                obj = null;
                mediaItem2 = null;
                obj2 = null;
            }
            MediaSource.MediaPeriodId mediaPeriodId3 = playbackInfo2.b;
            if (i2 == 0) {
                boolean c = mediaPeriodId3.c();
                MediaSource.MediaPeriodId mediaPeriodId4 = playbackInfo2.b;
                if (c) {
                    j2 = period2.a(mediaPeriodId4.b, mediaPeriodId4.c);
                    i0 = i0(playbackInfo2);
                    long N = Util.N(j2);
                    long N2 = Util.N(i0);
                    MediaSource.MediaPeriodId mediaPeriodId5 = playbackInfo2.b;
                    final Player.PositionInfo positionInfo = new Player.PositionInfo(obj, i6, mediaItem2, obj2, i7, N, N2, mediaPeriodId5.b, mediaPeriodId5.c);
                    Timeline.Window window2 = this.a;
                    int D = D();
                    int l = l();
                    if (this.n0.a.p()) {
                        PlaybackInfo playbackInfo3 = this.n0;
                        Object obj6 = playbackInfo3.b.a;
                        playbackInfo3.a.g(obj6, this.o);
                        l = this.n0.a.b(obj6);
                        Object obj7 = this.n0.a.m(D, window2, 0L).a;
                        mediaItem3 = window2.b;
                        obj4 = obj6;
                        obj3 = obj7;
                    } else {
                        obj3 = null;
                        mediaItem3 = null;
                        obj4 = null;
                    }
                    int i12 = l;
                    long N3 = Util.N(j);
                    if (!this.n0.b.c()) {
                        j3 = Util.N(i0(this.n0));
                    } else {
                        j3 = N3;
                    }
                    MediaSource.MediaPeriodId mediaPeriodId6 = this.n0.b;
                    final Player.PositionInfo positionInfo2 = new Player.PositionInfo(obj3, D, mediaItem3, obj4, i12, N3, j3, mediaPeriodId6.b, mediaPeriodId6.c);
                    this.m.c(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.k
                        @Override // androidx.media3.common.util.ListenerSet.Event
                        public final void b(Object obj8) {
                            Player.Listener listener = (Player.Listener) obj8;
                            int i13 = ExoPlayerImpl.q0;
                            listener.getClass();
                            listener.j(i2, positionInfo, positionInfo2);
                        }
                    });
                } else {
                    if (mediaPeriodId4.e != -1) {
                        j2 = i0(this.n0);
                    } else {
                        j2 = period2.e + period2.d;
                    }
                    i0 = j2;
                    long N4 = Util.N(j2);
                    long N22 = Util.N(i0);
                    MediaSource.MediaPeriodId mediaPeriodId52 = playbackInfo2.b;
                    final Player.PositionInfo positionInfo3 = new Player.PositionInfo(obj, i6, mediaItem2, obj2, i7, N4, N22, mediaPeriodId52.b, mediaPeriodId52.c);
                    Timeline.Window window22 = this.a;
                    int D2 = D();
                    int l2 = l();
                    if (this.n0.a.p()) {
                    }
                    int i122 = l2;
                    long N32 = Util.N(j);
                    if (!this.n0.b.c()) {
                    }
                    MediaSource.MediaPeriodId mediaPeriodId62 = this.n0.b;
                    final Player.PositionInfo positionInfo22 = new Player.PositionInfo(obj3, D2, mediaItem3, obj4, i122, N32, j3, mediaPeriodId62.b, mediaPeriodId62.c);
                    this.m.c(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.k
                        @Override // androidx.media3.common.util.ListenerSet.Event
                        public final void b(Object obj8) {
                            Player.Listener listener = (Player.Listener) obj8;
                            int i13 = ExoPlayerImpl.q0;
                            listener.getClass();
                            listener.j(i2, positionInfo3, positionInfo22);
                        }
                    });
                }
            } else if (mediaPeriodId3.c()) {
                j2 = playbackInfo2.s;
                i0 = i0(playbackInfo2);
                long N42 = Util.N(j2);
                long N222 = Util.N(i0);
                MediaSource.MediaPeriodId mediaPeriodId522 = playbackInfo2.b;
                final Player.PositionInfo positionInfo32 = new Player.PositionInfo(obj, i6, mediaItem2, obj2, i7, N42, N222, mediaPeriodId522.b, mediaPeriodId522.c);
                Timeline.Window window222 = this.a;
                int D22 = D();
                int l22 = l();
                if (this.n0.a.p()) {
                }
                int i1222 = l22;
                long N322 = Util.N(j);
                if (!this.n0.b.c()) {
                }
                MediaSource.MediaPeriodId mediaPeriodId622 = this.n0.b;
                final Player.PositionInfo positionInfo222 = new Player.PositionInfo(obj3, D22, mediaItem3, obj4, i1222, N322, j3, mediaPeriodId622.b, mediaPeriodId622.c);
                this.m.c(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.k
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void b(Object obj8) {
                        Player.Listener listener = (Player.Listener) obj8;
                        int i13 = ExoPlayerImpl.q0;
                        listener.getClass();
                        listener.j(i2, positionInfo32, positionInfo222);
                    }
                });
            } else {
                j2 = period2.e + playbackInfo2.s;
                i0 = j2;
                long N422 = Util.N(j2);
                long N2222 = Util.N(i0);
                MediaSource.MediaPeriodId mediaPeriodId5222 = playbackInfo2.b;
                final Player.PositionInfo positionInfo322 = new Player.PositionInfo(obj, i6, mediaItem2, obj2, i7, N422, N2222, mediaPeriodId5222.b, mediaPeriodId5222.c);
                Timeline.Window window2222 = this.a;
                int D222 = D();
                int l222 = l();
                if (this.n0.a.p()) {
                }
                int i12222 = l222;
                long N3222 = Util.N(j);
                if (!this.n0.b.c()) {
                }
                MediaSource.MediaPeriodId mediaPeriodId6222 = this.n0.b;
                final Player.PositionInfo positionInfo2222 = new Player.PositionInfo(obj3, D222, mediaItem3, obj4, i12222, N3222, j3, mediaPeriodId6222.b, mediaPeriodId6222.c);
                this.m.c(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.k
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void b(Object obj8) {
                        Player.Listener listener = (Player.Listener) obj8;
                        int i13 = ExoPlayerImpl.q0;
                        listener.getClass();
                        listener.j(i2, positionInfo322, positionInfo2222);
                    }
                });
            }
        } else {
            z6 = z3;
            z7 = equals2;
            z8 = booleanValue;
        }
        if (z8) {
            final int i13 = 1;
            this.m.c(1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.a
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj52) {
                    int i112 = i13;
                    int i123 = intValue;
                    Object obj62 = mediaItem;
                    switch (i112) {
                        case 0:
                            int i132 = ExoPlayerImpl.q0;
                            Timeline timeline3 = ((PlaybackInfo) obj62).a;
                            ((Player.Listener) obj52).r(i123);
                            return;
                        default:
                            int i14 = ExoPlayerImpl.q0;
                            ((Player.Listener) obj52).x((MediaItem) obj62, i123);
                            return;
                    }
                }
            });
        }
        final int i14 = 7;
        if (playbackInfo2.f != playbackInfo.f) {
            this.m.c(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj8) {
                    int i15 = i14;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj8;
                    switch (i15) {
                        case 0:
                            int i16 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i17 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i18 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i19 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i20 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i21 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i22 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
            if (playbackInfo.f != null) {
                final int i15 = 8;
                this.m.c(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void b(Object obj8) {
                        int i152 = i15;
                        PlaybackInfo playbackInfo4 = playbackInfo;
                        Player.Listener listener = (Player.Listener) obj8;
                        switch (i152) {
                            case 0:
                                int i16 = ExoPlayerImpl.q0;
                                boolean z10 = playbackInfo4.g;
                                listener.getClass();
                                listener.l(playbackInfo4.g);
                                return;
                            case 1:
                                int i17 = ExoPlayerImpl.q0;
                                listener.y(playbackInfo4.e, playbackInfo4.l);
                                return;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                int i18 = ExoPlayerImpl.q0;
                                listener.n(playbackInfo4.e);
                                return;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                int i19 = ExoPlayerImpl.q0;
                                listener.m(playbackInfo4.m, playbackInfo4.l);
                                return;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                int i20 = ExoPlayerImpl.q0;
                                listener.i(playbackInfo4.n);
                                return;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                int i21 = ExoPlayerImpl.q0;
                                listener.F(playbackInfo4.m());
                                return;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                int i22 = ExoPlayerImpl.q0;
                                listener.q(playbackInfo4.o);
                                return;
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                int i23 = ExoPlayerImpl.q0;
                                listener.A(playbackInfo4.f);
                                return;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                int i24 = ExoPlayerImpl.q0;
                                listener.h(playbackInfo4.f);
                                return;
                            default:
                                int i25 = ExoPlayerImpl.q0;
                                listener.w(playbackInfo4.i.d);
                                return;
                        }
                    }
                });
            }
        }
        TrackSelectorResult trackSelectorResult = playbackInfo2.i;
        TrackSelectorResult trackSelectorResult2 = playbackInfo.i;
        if (trackSelectorResult != trackSelectorResult2) {
            TrackSelector trackSelector = this.i;
            Object obj8 = trackSelectorResult2.e;
            ((MappingTrackSelector) trackSelector).getClass();
            final int i16 = 9;
            this.m.c(2, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i16;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i17 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i18 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i19 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i20 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i21 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i22 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        if (!z7) {
            i5 = 0;
            this.m.c(14, new b(i5, this.S));
        } else {
            i5 = 0;
        }
        if (z5) {
            this.m.c(3, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i5;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i17 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i18 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i19 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i20 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i21 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i22 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        if (z4 || z6) {
            final int i17 = 1;
            this.m.c(-1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i17;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i172 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i18 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i19 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i20 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i21 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i22 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        final int i18 = 4;
        if (z4) {
            final int i19 = 2;
            this.m.c(4, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i19;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i172 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i182 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i192 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i20 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i21 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i22 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        final int i20 = 5;
        if (z6 || playbackInfo2.m != playbackInfo.m) {
            final int i21 = 3;
            this.m.c(5, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i21;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i172 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i182 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i192 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i202 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i212 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i22 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        final int i22 = 6;
        if (playbackInfo2.n != playbackInfo.n) {
            this.m.c(6, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i18;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i172 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i182 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i192 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i202 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i212 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i222 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        if (playbackInfo2.m() != playbackInfo.m()) {
            this.m.c(7, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i20;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i172 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i182 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i192 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i202 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i212 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i222 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        if (!playbackInfo2.o.equals(playbackInfo.o)) {
            this.m.c(12, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj82) {
                    int i152 = i22;
                    PlaybackInfo playbackInfo4 = playbackInfo;
                    Player.Listener listener = (Player.Listener) obj82;
                    switch (i152) {
                        case 0:
                            int i162 = ExoPlayerImpl.q0;
                            boolean z10 = playbackInfo4.g;
                            listener.getClass();
                            listener.l(playbackInfo4.g);
                            return;
                        case 1:
                            int i172 = ExoPlayerImpl.q0;
                            listener.y(playbackInfo4.e, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            int i182 = ExoPlayerImpl.q0;
                            listener.n(playbackInfo4.e);
                            return;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            int i192 = ExoPlayerImpl.q0;
                            listener.m(playbackInfo4.m, playbackInfo4.l);
                            return;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            int i202 = ExoPlayerImpl.q0;
                            listener.i(playbackInfo4.n);
                            return;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            int i212 = ExoPlayerImpl.q0;
                            listener.F(playbackInfo4.m());
                            return;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            int i222 = ExoPlayerImpl.q0;
                            listener.q(playbackInfo4.o);
                            return;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i23 = ExoPlayerImpl.q0;
                            listener.A(playbackInfo4.f);
                            return;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            int i24 = ExoPlayerImpl.q0;
                            listener.h(playbackInfo4.f);
                            return;
                        default:
                            int i25 = ExoPlayerImpl.q0;
                            listener.w(playbackInfo4.i.d);
                            return;
                    }
                }
            });
        }
        s0();
        this.m.b();
        if (playbackInfo2.p != playbackInfo.p) {
            Iterator it = this.n.iterator();
            while (it.hasNext()) {
                ExoPlayerImpl.this.v0();
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final long v() {
        w0();
        return this.k0;
    }

    public final void v0() {
        int y = y();
        WifiLockManager wifiLockManager = this.z;
        WakeLockManager wakeLockManager = this.y;
        boolean z = false;
        if (y != 1) {
            if (y != 2 && y != 3) {
                if (y != 4) {
                    io.sentry.d.d();
                    return;
                }
            } else {
                w0();
                boolean z2 = this.n0.p;
                if (i() && !z2) {
                    z = true;
                }
                wakeLockManager.b(z);
                wifiLockManager.a(i());
                return;
            }
        }
        wakeLockManager.b(false);
        wifiLockManager.a(false);
    }

    @Override // androidx.media3.common.Player
    public final long w() {
        w0();
        return f0(this.n0);
    }

    public final void w0() {
        IllegalStateException illegalStateException;
        this.d.a();
        Thread currentThread = Thread.currentThread();
        Looper looper = this.s;
        if (currentThread != looper.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = looper.getThread().getName();
            String str = Util.a;
            Locale locale = Locale.US;
            String h = jb.h("Player is accessed on the wrong thread.\nCurrent thread: '", name, "'\nExpected thread: '", name2, "'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread");
            if (!this.e0) {
                if (this.f0) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                Log.g("ExoPlayerImpl", h, illegalStateException);
                this.f0 = true;
                return;
            }
            u2.l(h);
        }
    }

    @Override // androidx.media3.common.Player
    public final long x() {
        w0();
        if (f()) {
            PlaybackInfo playbackInfo = this.n0;
            if (playbackInfo.k.equals(playbackInfo.b)) {
                return Util.N(this.n0.q);
            }
            return getDuration();
        }
        return P();
    }

    @Override // androidx.media3.common.Player
    public final int y() {
        w0();
        return this.n0.e;
    }

    @Override // androidx.media3.common.Player
    public final Tracks z() {
        w0();
        return this.n0.i.d;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.VideoSurfaceListener, AudioBecomingNoisyManager.Listener, ExoPlayer.AudioOffloadListener, StuckPlayerDetector.Callback {
        public ComponentListener() {
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void A(Exception exc) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1030, new b7(12));
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void B(long j, Object obj) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) exoPlayerImpl.r;
            AnalyticsListener.EventTime L = defaultAnalyticsCollector.L();
            defaultAnalyticsCollector.N(L, 26, new n5(L, obj, j));
            if (exoPlayerImpl.T == obj) {
                exoPlayerImpl.m.f(26, new f7(25));
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void C(long j, long j2, String str) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1016, new b7(23));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void D(int i, long j, long j2) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1011, new f7(2));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void E(DecoderCounters decoderCounters) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.K(), 1013, new b7(16));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void F(long j, long j2, String str) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1008, new u2(27));
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void a(VideoSize videoSize) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.i0 = videoSize;
            exoPlayerImpl.m.f(25, new g7(videoSize));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void b(int i) {
            ExoPlayerImpl.this.B.d(new d7(i, 1), new d7(i, 2));
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public final void c(CueGroup cueGroup) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.d0 = cueGroup;
            exoPlayerImpl.m.f(27, new defpackage.p(7, cueGroup));
        }

        @Override // androidx.media3.exoplayer.metadata.MetadataOutput
        public final void d(Metadata metadata) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            ListenerSet listenerSet = exoPlayerImpl.m;
            MediaMetadata.Builder a = exoPlayerImpl.m0.a();
            int i = 0;
            while (true) {
                Metadata.Entry[] entryArr = metadata.a;
                if (i >= entryArr.length) {
                    break;
                }
                entryArr[i].b(a);
                i++;
            }
            exoPlayerImpl.m0 = new MediaMetadata(a);
            MediaMetadata c0 = exoPlayerImpl.c0();
            if (!c0.equals(exoPlayerImpl.S)) {
                exoPlayerImpl.S = c0;
                listenerSet.c(14, new b(2, this));
            }
            listenerSet.c(28, new defpackage.p(8, metadata));
            listenerSet.b();
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void e(final boolean z) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            if (exoPlayerImpl.c0 == z) {
                return;
            }
            exoPlayerImpl.c0 = z;
            exoPlayerImpl.m.f(23, new ListenerSet.Event() { // from class: f8
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void b(Object obj) {
                    ((Player.Listener) obj).e(z);
                }
            });
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public final void f(List list) {
            ExoPlayerImpl.this.m.f(27, new defpackage.p(9, list));
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void g(DecoderCounters decoderCounters) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            AnalyticsListener.EventTime K = defaultAnalyticsCollector.K();
            defaultAnalyticsCollector.N(K, 1020, new defpackage.p(K, decoderCounters, 4));
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void h(String str) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1019, new b7(13));
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void i(CodecParameters codecParameters) {
            CodecParameterListenerManager.a(ExoPlayerImpl.this.F, codecParameters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void j(int i, long j) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.K(), 1021, new b7(15));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void k(AudioSink$AudioTrackConfig audioSink$AudioTrackConfig) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1031, new b7(18));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void l(String str) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1012, new f7(5));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void m(AudioSink$AudioTrackConfig audioSink$AudioTrackConfig) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1032, new f7(4));
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void n(int i, long j) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.K(), 1018, new b7(14));
        }

        @Override // androidx.media3.common.audio.AudioBecomingNoisyManager.Listener
        public final void o() {
            int i = ExoPlayerImpl.q0;
            ExoPlayerImpl.this.t0(3, false);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            int i3 = ExoPlayerImpl.q0;
            Surface surface = new Surface(surfaceTexture);
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.q0(surface);
            exoPlayerImpl.U = surface;
            exoPlayerImpl.m0(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            int i = ExoPlayerImpl.q0;
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.q0(null);
            exoPlayerImpl.m0(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            int i3 = ExoPlayerImpl.q0;
            ExoPlayerImpl.this.m0(i, i2);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void p(CodecParameters codecParameters) {
            CodecParameterListenerManager.a(ExoPlayerImpl.this.E, codecParameters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void q(DecoderCounters decoderCounters) {
            int i = ExoPlayerImpl.q0;
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1007, new b7(11));
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public final void r() {
            int i = ExoPlayerImpl.q0;
            ExoPlayerImpl.this.q0(null);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void s(DecoderCounters decoderCounters) {
            int i = ExoPlayerImpl.q0;
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1015, new b7(22));
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            int i4 = ExoPlayerImpl.q0;
            ExoPlayerImpl.this.m0(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            if (exoPlayerImpl.X) {
                exoPlayerImpl.q0(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            if (exoPlayerImpl.X) {
                exoPlayerImpl.q0(null);
            }
            exoPlayerImpl.m0(0, 0);
        }

        @Override // androidx.media3.common.util.StuckPlayerDetector.Callback
        public final void t(StuckPlayerException stuckPlayerException) {
            ExoPlaybackException exoPlaybackException = new ExoPlaybackException(2, stuckPlayerException, 1003);
            int i = ExoPlayerImpl.q0;
            ExoPlayerImpl.this.r0(exoPlaybackException);
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public final void u(Surface surface) {
            int i = ExoPlayerImpl.q0;
            ExoPlayerImpl.this.q0(surface);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public final void v(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            int i = ExoPlayerImpl.q0;
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1017, new b7(17));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void w(Exception exc) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1014, new b7(24));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void x(long j) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1010, new f7(3));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void y(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            int i = ExoPlayerImpl.q0;
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1009, new b7(21));
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public final void z(Exception exc) {
            DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ExoPlayerImpl.this.r;
            defaultAnalyticsCollector.N(defaultAnalyticsCollector.L(), 1029, new b7(7));
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }
}
