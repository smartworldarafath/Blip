package androidx.media3.exoplayer.video;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.Trace;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph$Factory;
import androidx.media3.common.VideoGraph$Listener;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.base.Preconditions;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import defpackage.e;
import defpackage.u3;
import defpackage.z2;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlaybackVideoGraphWrapper implements VideoGraph$Listener {
    public static final z2 q = new z2(1);
    public final Context a;
    public final VideoGraph$Factory b;
    public final SparseArray c;
    public final boolean d;
    public final VideoSink e;
    public final Clock f;
    public final CopyOnWriteArraySet g;
    public final long h;
    public final VideoFrameReleaseEarlyTimeForecaster i;
    public TimedValueQueue j = new TimedValueQueue();
    public HandlerWrapper k;
    public Pair l;
    public int m;
    public int n;
    public long o;
    public int p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Context a;
        public final VideoFrameReleaseControl b;
        public VideoGraph$Factory c;
        public boolean d;
        public boolean f;
        public long g = 15000;
        public final VideoFrameReleaseEarlyTimeForecaster h = new VideoFrameReleaseEarlyTimeForecaster();
        public Clock e = Clock.a;

        public Builder(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
            this.a = context.getApplicationContext();
            this.b = videoFrameReleaseControl;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReflectiveDefaultVideoFrameProcessorFactory implements VideoFrameProcessor.Factory {
        public static final /* synthetic */ int a = 0;

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.Supplier, java.lang.Object] */
        static {
            Suppliers.a(new Object());
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReflectiveSingleInputVideoGraphFactory implements VideoGraph$Factory {
        public final VideoFrameProcessor.Factory a = new Object();

        public final void a(Context context, ColorInfo colorInfo, VideoGraph$Listener videoGraph$Listener, u3 u3Var) {
            try {
                ((ReflectiveSingleInputVideoGraphFactory) ((VideoGraph$Factory) Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(VideoFrameProcessor.Factory.class).newInstance(this.a))).a(context, colorInfo, videoGraph$Listener, u3Var);
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StreamChangeInfo {
    }

    public PlaybackVideoGraphWrapper(Builder builder) {
        long j;
        this.a = builder.a;
        VideoGraph$Factory videoGraph$Factory = builder.c;
        videoGraph$Factory.getClass();
        this.b = videoGraph$Factory;
        this.c = new SparseArray();
        ImmutableList.r();
        this.d = builder.d;
        Clock clock = builder.e;
        this.f = clock;
        long j2 = builder.g;
        if (j2 != -9223372036854775807L) {
            j = -j2;
        } else {
            j = -9223372036854775807L;
        }
        this.h = j;
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = builder.h;
        this.i = videoFrameReleaseEarlyTimeForecaster;
        this.e = new DefaultVideoSink(builder.b, videoFrameReleaseEarlyTimeForecaster, clock);
        this.g = new CopyOnWriteArraySet();
        new Format(new Format.Builder());
        this.o = -9223372036854775807L;
        this.p = -1;
        this.n = 0;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class InputVideoSink implements VideoSink {
        public ImmutableList a;
        public Format b;
        public long c;
        public long d;
        public int e;
        public Executor f;

        public InputVideoSink(Context context) {
            Util.B(context);
            this.a = ImmutableList.r();
            this.d = -9223372036854775807L;
            this.f = PlaybackVideoGraphWrapper.q;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void a() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.n == 2) {
                return;
            }
            HandlerWrapper handlerWrapper = playbackVideoGraphWrapper.k;
            if (handlerWrapper != null) {
                handlerWrapper.f();
            }
            playbackVideoGraphWrapper.l = null;
            playbackVideoGraphWrapper.n = 2;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean b() {
            return false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean c() {
            return false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void d(long j, long j2) {
            ((DefaultVideoSink) PlaybackVideoGraphWrapper.this.e).d(j + this.c, j2);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final Surface e() {
            Preconditions.n(false);
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void f(Surface surface, Size size) {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            Pair pair = playbackVideoGraphWrapper.l;
            if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) playbackVideoGraphWrapper.l.second).equals(size)) {
                return;
            }
            playbackVideoGraphWrapper.l = Pair.create(surface, size);
            int i = size.a;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void g() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.d) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.e).g();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean h(long j, VideoSink.VideoFrameHandler videoFrameHandler) {
            long j2;
            int i;
            Preconditions.n(false);
            long j3 = j + this.c;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = playbackVideoGraphWrapper.i;
            if (videoFrameReleaseEarlyTimeForecaster.a == -9223372036854775807L) {
                j2 = -9223372036854775807L;
            } else {
                j2 = (long) (((j3 - r3) * videoFrameReleaseEarlyTimeForecaster.c) + videoFrameReleaseEarlyTimeForecaster.b);
            }
            if (j2 != -9223372036854775807L) {
                long j4 = playbackVideoGraphWrapper.h;
                if (j4 != -9223372036854775807L && j2 < j4 && (i = this.e) < 2) {
                    this.e = i + 1;
                    MediaCodecVideoRenderer.AnonymousClass2 anonymousClass2 = (MediaCodecVideoRenderer.AnonymousClass2) videoFrameHandler;
                    MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
                    MediaCodecAdapter mediaCodecAdapter = anonymousClass2.a;
                    int i2 = anonymousClass2.b;
                    Trace.beginSection("dropVideoBuffer");
                    mediaCodecAdapter.f(i2);
                    Trace.endSection();
                    mediaCodecVideoRenderer.W0(0, 1);
                    return true;
                }
            }
            int i3 = playbackVideoGraphWrapper.p;
            if (i3 == -1 || i3 != 0) {
                return false;
            }
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void i() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.d) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.e).i();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void j(long j) {
            this.c = j;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void k(VideoFrameMetadataListener videoFrameMetadataListener) {
            ((DefaultVideoSink) PlaybackVideoGraphWrapper.this.e).k = videoFrameMetadataListener;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void l() {
            long j = this.d;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.o >= j) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.e).l();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void m(int i) {
            ((DefaultVideoSink) PlaybackVideoGraphWrapper.this.e).m(i);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void n(float f) {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            playbackVideoGraphWrapper.i.c(f);
            ((DefaultVideoSink) playbackVideoGraphWrapper.e).n(f);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void o() {
            int i = Size.c.a;
            PlaybackVideoGraphWrapper.this.l = null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void p(Format format, long j, int i, List list) {
            Preconditions.n(false);
            this.a = ImmutableList.m(list);
            this.b = format;
            Format.Builder a = format.a();
            ColorInfo colorInfo = format.H;
            if (colorInfo == null || !colorInfo.d()) {
                colorInfo = ColorInfo.h;
            }
            a.G = colorInfo;
            a.a();
            throw null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void q(boolean z) {
            TimedValueQueue timedValueQueue;
            this.d = -9223372036854775807L;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            VideoSink videoSink = playbackVideoGraphWrapper.e;
            if (playbackVideoGraphWrapper.n == 1) {
                playbackVideoGraphWrapper.m++;
                ((DefaultVideoSink) videoSink).q(z);
                while (true) {
                    int h = playbackVideoGraphWrapper.j.h();
                    timedValueQueue = playbackVideoGraphWrapper.j;
                    if (h <= 1) {
                        break;
                    } else {
                        timedValueQueue.e();
                    }
                }
                if (timedValueQueue.h() != 1) {
                    playbackVideoGraphWrapper.o = -9223372036854775807L;
                    HandlerWrapper handlerWrapper = playbackVideoGraphWrapper.k;
                    handlerWrapper.getClass();
                    handlerWrapper.d(new e(11, playbackVideoGraphWrapper));
                    return;
                }
                ((StreamChangeInfo) playbackVideoGraphWrapper.j.e()).getClass();
                throw null;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void r(List list) {
            if (!this.a.equals(list)) {
                this.a = ImmutableList.m(list);
                Format format = this.b;
                if (format == null) {
                    return;
                }
                Format.Builder a = format.a();
                ColorInfo colorInfo = format.H;
                if (colorInfo == null || !colorInfo.d()) {
                    colorInfo = ColorInfo.h;
                }
                a.G = colorInfo;
                a.a();
                throw null;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void s(boolean z) {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.d) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.e).s(z);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean t(boolean z) {
            return ((DefaultVideoSink) PlaybackVideoGraphWrapper.this.e).a.b(false);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void v(VideoSink.Listener listener, Executor executor) {
            this.f = executor;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
        
            if (r4 != 10) goto L45;
         */
        /* JADX WARN: Type inference failed for: r0v8, types: [androidx.media3.common.ColorInfo$Builder, java.lang.Object] */
        @Override // androidx.media3.exoplayer.video.VideoSink
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean w(Format format) {
            boolean z;
            int i;
            boolean z2;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            boolean z3 = true;
            if (playbackVideoGraphWrapper.n == 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            ColorInfo colorInfo = format.H;
            if (colorInfo == null || !colorInfo.d()) {
                colorInfo = ColorInfo.h;
            }
            try {
                int i2 = colorInfo.c;
                if (i2 == 7 && (i = Build.VERSION.SDK_INT) < 34) {
                    if (i >= 33 && GlUtil.d("EGL_EXT_gl_colorspace_bt2020_pq")) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        ?? obj = new Object();
                        obj.a = colorInfo.a;
                        obj.b = colorInfo.b;
                        obj.d = colorInfo.d;
                        obj.e = colorInfo.e;
                        obj.f = colorInfo.f;
                        obj.c = 6;
                        colorInfo = obj.a();
                        Clock clock = playbackVideoGraphWrapper.f;
                        Looper myLooper = Looper.myLooper();
                        myLooper.getClass();
                        HandlerWrapper a = ((SystemClock) clock).a(myLooper, null);
                        playbackVideoGraphWrapper.k = a;
                        ((ReflectiveSingleInputVideoGraphFactory) playbackVideoGraphWrapper.b).a(playbackVideoGraphWrapper.a, colorInfo, playbackVideoGraphWrapper, new u3(2, a));
                        throw null;
                    }
                }
                if (i2 == 6) {
                    if (Build.VERSION.SDK_INT < 33 || !GlUtil.d("EGL_EXT_gl_colorspace_bt2020_pq")) {
                        z3 = false;
                    }
                } else if (i2 == 7) {
                    z3 = GlUtil.d("EGL_EXT_gl_colorspace_bt2020_hlg");
                }
                if (!z3 && Build.VERSION.SDK_INT >= 29) {
                    Locale locale = Locale.US;
                    Log.f("PlaybackVidGraphWrapper", "Color transfer " + i2 + " is not supported. Falling back to OpenGl tone mapping.");
                    colorInfo = ColorInfo.h;
                    Clock clock2 = playbackVideoGraphWrapper.f;
                    Looper myLooper2 = Looper.myLooper();
                    myLooper2.getClass();
                    HandlerWrapper a2 = ((SystemClock) clock2).a(myLooper2, null);
                    playbackVideoGraphWrapper.k = a2;
                    ((ReflectiveSingleInputVideoGraphFactory) playbackVideoGraphWrapper.b).a(playbackVideoGraphWrapper.a, colorInfo, playbackVideoGraphWrapper, new u3(2, a2));
                    throw null;
                }
                colorInfo = ColorInfo.h;
                Clock clock22 = playbackVideoGraphWrapper.f;
                Looper myLooper22 = Looper.myLooper();
                myLooper22.getClass();
                HandlerWrapper a22 = ((SystemClock) clock22).a(myLooper22, null);
                playbackVideoGraphWrapper.k = a22;
                ((ReflectiveSingleInputVideoGraphFactory) playbackVideoGraphWrapper.b).a(playbackVideoGraphWrapper.a, colorInfo, playbackVideoGraphWrapper, new u3(2, a22));
                throw null;
            } catch (GlUtil.GlException e) {
                throw new VideoSink.VideoSinkException(e, format);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void x() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.j.h() == 0) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.e).x();
                return;
            }
            TimedValueQueue timedValueQueue = new TimedValueQueue();
            if (playbackVideoGraphWrapper.j.h() <= 0) {
                playbackVideoGraphWrapper.j = timedValueQueue;
            } else {
                ((StreamChangeInfo) playbackVideoGraphWrapper.j.e()).getClass();
                throw null;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void u() {
        }
    }
}
