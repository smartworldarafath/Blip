package androidx.media3.exoplayer.video;

import android.os.Trace;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.video.DefaultVideoSink;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import androidx.media3.exoplayer.video.VideoSink;
import defpackage.k8;
import defpackage.u2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VideoFrameRenderControl {
    public final DefaultVideoSink.FrameRendererImpl a;
    public final VideoFrameReleaseControl b;
    public final VideoFrameReleaseControl.FrameReleaseInfo c = new VideoFrameReleaseControl.FrameReleaseInfo();
    public final TimedValueQueue d = new TimedValueQueue();
    public final TimedValueQueue e = new TimedValueQueue();
    public final LongArrayQueue f;
    public final VideoFrameReleaseEarlyTimeForecaster g;
    public final FixedFrameRateEstimator h;
    public long i;
    public long j;
    public long k;
    public VideoSize l;
    public long m;

    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.media3.common.util.LongArrayQueue, java.lang.Object] */
    public VideoFrameRenderControl(DefaultVideoSink.FrameRendererImpl frameRendererImpl, VideoFrameReleaseControl videoFrameReleaseControl, VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster, FixedFrameRateEstimator fixedFrameRateEstimator) {
        this.a = frameRendererImpl;
        this.b = videoFrameReleaseControl;
        this.g = videoFrameReleaseEarlyTimeForecaster;
        this.h = fixedFrameRateEstimator;
        ?? obj = new Object();
        int highestOneBit = Integer.bitCount(16) != 1 ? Integer.highestOneBit(15) << 1 : 16;
        obj.a = 0;
        obj.b = -1;
        obj.c = 0;
        obj.d = new long[highestOneBit];
        obj.e = highestOneBit - 1;
        this.f = obj;
        this.i = -9223372036854775807L;
        this.l = VideoSize.d;
        this.j = -9223372036854775807L;
        this.k = -9223372036854775807L;
    }

    public final void a(long j, long j2) {
        boolean z;
        long j3;
        Format format;
        final DefaultVideoSink.FrameRendererImpl frameRendererImpl = this.a;
        DefaultVideoSink defaultVideoSink = DefaultVideoSink.this;
        while (true) {
            LongArrayQueue longArrayQueue = this.f;
            int i = longArrayQueue.c;
            if (i == 0) {
                return;
            }
            if (i != 0) {
                long j4 = longArrayQueue.d[longArrayQueue.a];
                Long l = (Long) this.e.f(j4);
                VideoFrameReleaseControl videoFrameReleaseControl = this.b;
                if (l != null && l.longValue() != this.m) {
                    this.m = l.longValue();
                    videoFrameReleaseControl.e(2);
                }
                FixedFrameRateEstimator fixedFrameRateEstimator = this.h;
                fixedFrameRateEstimator.b(1000 * j4);
                long j5 = this.m;
                long a = fixedFrameRateEstimator.a();
                long j6 = fixedFrameRateEstimator.h;
                VideoFrameReleaseControl videoFrameReleaseControl2 = this.b;
                VideoFrameReleaseControl.FrameReleaseInfo frameReleaseInfo = this.c;
                int a2 = videoFrameReleaseControl2.a(j4, j, j2, j5, false, false, a, j6, frameReleaseInfo);
                if (a2 != 5 && a2 != 4) {
                    this.g.a(j4, frameReleaseInfo.a);
                }
                final int i2 = 0;
                final int i3 = 1;
                if (a2 != 0 && a2 != 1) {
                    if (a2 != 2 && a2 != 3) {
                        if (a2 != 4) {
                            if (a2 == 5) {
                                return;
                            }
                            u2.l(String.valueOf(a2));
                            return;
                        }
                        this.j = j4;
                    } else {
                        this.j = j4;
                        longArrayQueue.a();
                        defaultVideoSink.j.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i4 = i3;
                                DefaultVideoSink.FrameRendererImpl frameRendererImpl2 = frameRendererImpl;
                                switch (i4) {
                                    case 0:
                                        DefaultVideoSink.this.i.b();
                                        return;
                                    default:
                                        DefaultVideoSink.this.i.c();
                                        return;
                                }
                            }
                        });
                        MediaCodecVideoRenderer.AnonymousClass2 anonymousClass2 = (MediaCodecVideoRenderer.AnonymousClass2) ((VideoSink.VideoFrameHandler) defaultVideoSink.d.remove());
                        MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
                        MediaCodecAdapter mediaCodecAdapter = anonymousClass2.a;
                        int i4 = anonymousClass2.b;
                        Trace.beginSection("dropVideoBuffer");
                        mediaCodecAdapter.f(i4);
                        Trace.endSection();
                        mediaCodecVideoRenderer.W0(0, 1);
                    }
                } else {
                    this.j = j4;
                    if (a2 == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    long a3 = longArrayQueue.a();
                    final VideoSize videoSize = (VideoSize) this.d.f(a3);
                    if (videoSize != null && !videoSize.equals(VideoSize.d) && !videoSize.equals(this.l)) {
                        this.l = videoSize;
                        Format.Builder builder = new Format.Builder();
                        builder.v = videoSize.a;
                        builder.w = videoSize.b;
                        builder.o = MimeTypes.l("video/raw");
                        frameRendererImpl.a = new Format(builder);
                        defaultVideoSink.j.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                DefaultVideoSink.this.i.a(videoSize);
                            }
                        });
                    }
                    if (z) {
                        j3 = System.nanoTime();
                    } else {
                        j3 = frameReleaseInfo.b;
                    }
                    long j7 = j3;
                    if (videoFrameReleaseControl.e == 3) {
                        i3 = 0;
                    }
                    videoFrameReleaseControl.e = 3;
                    ((SystemClock) videoFrameReleaseControl.k).getClass();
                    videoFrameReleaseControl.g = Util.D(android.os.SystemClock.elapsedRealtime());
                    if (i3 != 0 && defaultVideoSink.f != null) {
                        defaultVideoSink.j.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i42 = i2;
                                DefaultVideoSink.FrameRendererImpl frameRendererImpl2 = frameRendererImpl;
                                switch (i42) {
                                    case 0:
                                        DefaultVideoSink.this.i.b();
                                        return;
                                    default:
                                        DefaultVideoSink.this.i.c();
                                        return;
                                }
                            }
                        });
                    }
                    Format format2 = frameRendererImpl.a;
                    if (format2 == null) {
                        format = new Format(new Format.Builder());
                    } else {
                        format = format2;
                    }
                    defaultVideoSink.k.f(a3, j7, format, null);
                    MediaCodecVideoRenderer.AnonymousClass2 anonymousClass22 = (MediaCodecVideoRenderer.AnonymousClass2) ((VideoSink.VideoFrameHandler) defaultVideoSink.d.remove());
                    MediaCodecVideoRenderer.this.R0(anonymousClass22.a, anonymousClass22.b, j7);
                }
            } else {
                k8.o();
                return;
            }
        }
    }
}
