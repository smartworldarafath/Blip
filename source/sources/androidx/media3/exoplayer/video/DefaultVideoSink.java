package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.video.VideoFrameReleaseHelper;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.base.Preconditions;
import defpackage.p;
import defpackage.z2;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultVideoSink implements VideoSink {
    public final VideoFrameReleaseControl a;
    public final VideoFrameReleaseEarlyTimeForecaster b;
    public final VideoFrameRenderControl c;
    public final ArrayDeque d;
    public final FixedFrameRateEstimator e;
    public Surface f;
    public Format g;
    public long h;
    public VideoSink.Listener i;
    public Executor j;
    public VideoFrameMetadataListener k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class FrameRendererImpl {
        public Format a;

        public FrameRendererImpl() {
        }
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, androidx.media3.exoplayer.video.VideoFrameMetadataListener] */
    public DefaultVideoSink(VideoFrameReleaseControl videoFrameReleaseControl, VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster, Clock clock) {
        this.a = videoFrameReleaseControl;
        this.b = videoFrameReleaseEarlyTimeForecaster;
        videoFrameReleaseControl.k = clock;
        FixedFrameRateEstimator fixedFrameRateEstimator = new FixedFrameRateEstimator(new p(6, videoFrameReleaseControl));
        this.e = fixedFrameRateEstimator;
        this.c = new VideoFrameRenderControl(new FrameRendererImpl(), videoFrameReleaseControl, videoFrameReleaseEarlyTimeForecaster, fixedFrameRateEstimator);
        this.d = new ArrayDeque();
        this.g = new Format(new Format.Builder());
        this.h = -9223372036854775807L;
        this.i = VideoSink.Listener.a;
        this.j = new z2(1);
        this.k = new Object();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean b() {
        VideoFrameRenderControl videoFrameRenderControl = this.c;
        long j = videoFrameRenderControl.k;
        if (j != -9223372036854775807L && videoFrameRenderControl.j == j) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean c() {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void d(long j, long j2) {
        try {
            this.c.a(j, j2);
        } catch (ExoPlaybackException e) {
            throw new VideoSink.VideoSinkException(e, this.g);
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final Surface e() {
        Surface surface = this.f;
        surface.getClass();
        return surface;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void f(Surface surface, Size size) {
        this.f = surface;
        this.a.f(surface);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void g() {
        this.b.b();
        VideoFrameReleaseControl videoFrameReleaseControl = this.a;
        videoFrameReleaseControl.d = false;
        videoFrameReleaseControl.h = -9223372036854775807L;
        VideoFrameReleaseHelper videoFrameReleaseHelper = videoFrameReleaseControl.b;
        videoFrameReleaseHelper.d = false;
        VideoFrameReleaseHelper.VSyncSampler vSyncSampler = videoFrameReleaseHelper.c;
        if (vSyncSampler != null) {
            vSyncSampler.b();
        }
        videoFrameReleaseHelper.a();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean h(long j, VideoSink.VideoFrameHandler videoFrameHandler) {
        this.d.add(videoFrameHandler);
        VideoFrameRenderControl videoFrameRenderControl = this.c;
        LongArrayQueue longArrayQueue = videoFrameRenderControl.f;
        int i = longArrayQueue.c;
        long[] jArr = longArrayQueue.d;
        if (i == jArr.length) {
            int length = jArr.length << 1;
            if (length >= 0) {
                long[] jArr2 = new long[length];
                int length2 = jArr.length;
                int i2 = longArrayQueue.a;
                int i3 = length2 - i2;
                System.arraycopy(jArr, i2, jArr2, 0, i3);
                System.arraycopy(longArrayQueue.d, 0, jArr2, i3, i2);
                longArrayQueue.a = 0;
                longArrayQueue.b = longArrayQueue.c - 1;
                longArrayQueue.d = jArr2;
                longArrayQueue.e = length - 1;
            } else {
                io.sentry.d.d();
                return false;
            }
        }
        int i4 = (longArrayQueue.b + 1) & longArrayQueue.e;
        longArrayQueue.b = i4;
        longArrayQueue.d[i4] = j;
        longArrayQueue.c++;
        videoFrameRenderControl.i = j;
        videoFrameRenderControl.k = -9223372036854775807L;
        this.j.execute(new a(0, this));
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void i() {
        this.b.b();
        this.a.d();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void j(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void k(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.k = videoFrameMetadataListener;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void l() {
        VideoFrameRenderControl videoFrameRenderControl = this.c;
        if (videoFrameRenderControl.i == -9223372036854775807L) {
            videoFrameRenderControl.i = Long.MIN_VALUE;
            videoFrameRenderControl.j = Long.MIN_VALUE;
        }
        videoFrameRenderControl.k = videoFrameRenderControl.i;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void m(int i) {
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.a.b;
        if (videoFrameReleaseHelper.i == i) {
            return;
        }
        videoFrameReleaseHelper.i = i;
        videoFrameReleaseHelper.c(true);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void n(float f) {
        this.a.g(f);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void o() {
        this.f = null;
        this.a.f(null);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void p(Format format, long j, int i, List list) {
        long j2;
        long j3;
        Preconditions.n(list.isEmpty());
        int i2 = format.w;
        int i3 = format.x;
        Format format2 = this.g;
        int i4 = format2.w;
        VideoFrameRenderControl videoFrameRenderControl = this.c;
        if (i2 != i4 || i3 != format2.x) {
            TimedValueQueue timedValueQueue = videoFrameRenderControl.d;
            long j4 = videoFrameRenderControl.i;
            if (j4 == -9223372036854775807L) {
                j2 = 0;
            } else {
                j2 = j4 + 1;
            }
            timedValueQueue.a(j2, new VideoSize(i2, i3));
        }
        float f = format.B;
        if (f != this.g.B) {
            FixedFrameRateEstimator fixedFrameRateEstimator = this.e;
            fixedFrameRateEstimator.f = f;
            fixedFrameRateEstimator.a.c();
            fixedFrameRateEstimator.b.c();
            fixedFrameRateEstimator.c = false;
            fixedFrameRateEstimator.d = -9223372036854775807L;
            fixedFrameRateEstimator.e = 0;
            fixedFrameRateEstimator.c();
        }
        this.g = format;
        if (j != this.h) {
            if (videoFrameRenderControl.f.c == 0) {
                videoFrameRenderControl.b.e(i);
                videoFrameRenderControl.m = j;
            } else {
                TimedValueQueue timedValueQueue2 = videoFrameRenderControl.e;
                long j5 = videoFrameRenderControl.i;
                if (j5 == -9223372036854775807L) {
                    j3 = -4611686018427387904L;
                } else {
                    j3 = j5 + 1;
                }
                timedValueQueue2.a(j3, Long.valueOf(j));
            }
            this.h = j;
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void q(boolean z) {
        boolean z2;
        boolean z3 = false;
        if (z) {
            VideoFrameReleaseControl videoFrameReleaseControl = this.a;
            videoFrameReleaseControl.b.b();
            videoFrameReleaseControl.f = -9223372036854775807L;
            videoFrameReleaseControl.e = Math.min(videoFrameReleaseControl.e, 1);
            videoFrameReleaseControl.h = -9223372036854775807L;
            videoFrameReleaseControl.m = false;
        }
        this.b.b();
        VideoFrameRenderControl videoFrameRenderControl = this.c;
        TimedValueQueue timedValueQueue = videoFrameRenderControl.d;
        LongArrayQueue longArrayQueue = videoFrameRenderControl.f;
        longArrayQueue.a = 0;
        longArrayQueue.b = -1;
        longArrayQueue.c = 0;
        videoFrameRenderControl.i = -9223372036854775807L;
        videoFrameRenderControl.j = -9223372036854775807L;
        videoFrameRenderControl.k = -9223372036854775807L;
        TimedValueQueue timedValueQueue2 = videoFrameRenderControl.e;
        if (timedValueQueue2.h() > 0) {
            if (timedValueQueue2.h() > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.e(z2);
            while (timedValueQueue2.h() > 1) {
                timedValueQueue2.e();
            }
            Object e = timedValueQueue2.e();
            e.getClass();
            videoFrameRenderControl.m = ((Long) e).longValue();
        }
        if (timedValueQueue.h() > 0) {
            if (timedValueQueue.h() > 0) {
                z3 = true;
            }
            Preconditions.e(z3);
            while (timedValueQueue.h() > 1) {
                timedValueQueue.e();
            }
            Object e2 = timedValueQueue.e();
            e2.getClass();
            timedValueQueue.a(0L, (VideoSize) e2);
        }
        this.d.clear();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void r(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void s(boolean z) {
        this.a.c(z);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean t(boolean z) {
        return this.a.b(z);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void u() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void v(VideoSink.Listener listener, Executor executor) {
        this.i = listener;
        this.j = executor;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean w(Format format) {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void x() {
        VideoFrameReleaseControl videoFrameReleaseControl = this.a;
        if (videoFrameReleaseControl.e == 0) {
            videoFrameReleaseControl.e = 1;
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void a() {
    }
}
