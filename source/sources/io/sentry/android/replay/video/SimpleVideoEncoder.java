package io.sentry.android.replay.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Build;
import android.util.Range;
import android.view.Surface;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.replay.util.SystemProperties;
import java.nio.ByteBuffer;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseRequiresApi"})
@TargetApi(26)
/* loaded from: classes.dex */
public final class SimpleVideoEncoder {
    public final SentryOptions a;
    public final MuxerConfig b;
    public final MediaCodec c;
    public final Lazy d;
    public final MediaCodec.BufferInfo e;
    public final SimpleMp4FrameMuxer f;
    public Surface g;

    public SimpleVideoEncoder(SentryOptions sentryOptions, MuxerConfig muxerConfig) {
        MediaCodec createEncoderByType;
        sentryOptions.getClass();
        this.a = sentryOptions;
        this.b = muxerConfig;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        if (((Boolean) LazyKt.a(lazyThreadSafetyMode, SimpleVideoEncoder$hasExynosCodec$2.k).getValue()).booleanValue()) {
            createEncoderByType = MediaCodec.createByCodecName("c2.android.avc.encoder");
        } else {
            createEncoderByType = MediaCodec.createEncoderByType(muxerConfig.f);
        }
        createEncoderByType.getClass();
        this.c = createEncoderByType;
        this.d = LazyKt.a(lazyThreadSafetyMode, new Function0<MediaFormat>() { // from class: io.sentry.android.replay.video.SimpleVideoEncoder$mediaFormat$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                SimpleVideoEncoder simpleVideoEncoder = SimpleVideoEncoder.this;
                MuxerConfig muxerConfig2 = simpleVideoEncoder.b;
                SentryOptions sentryOptions2 = simpleVideoEncoder.a;
                String str = muxerConfig2.f;
                int i = muxerConfig2.e;
                try {
                    MediaCodecInfo.VideoCapabilities videoCapabilities = simpleVideoEncoder.c.getCodecInfo().getCapabilitiesForType(str).getVideoCapabilities();
                    if (!videoCapabilities.getBitrateRange().contains((Range<Integer>) Integer.valueOf(i))) {
                        sentryOptions2.getLogger().c(SentryLevel.DEBUG, "Encoder doesn't support the provided bitRate: " + i + ", the value will be clamped to the closest one", new Object[0]);
                        Integer clamp = videoCapabilities.getBitrateRange().clamp(Integer.valueOf(i));
                        clamp.getClass();
                        i = clamp.intValue();
                    }
                } catch (Throwable th) {
                    sentryOptions2.getLogger().b(SentryLevel.DEBUG, "Could not retrieve MediaCodec info", th);
                }
                MediaFormat createVideoFormat = MediaFormat.createVideoFormat(str, muxerConfig2.b, muxerConfig2.c);
                createVideoFormat.getClass();
                createVideoFormat.setInteger("color-format", 2130708361);
                createVideoFormat.setInteger("bitrate", i);
                createVideoFormat.setFloat("frame-rate", muxerConfig2.d);
                createVideoFormat.setInteger("i-frame-interval", 6);
                return createVideoFormat;
            }
        });
        this.e = new MediaCodec.BufferInfo();
        String absolutePath = muxerConfig.a.getAbsolutePath();
        absolutePath.getClass();
        this.f = new SimpleMp4FrameMuxer(absolutePath, muxerConfig.d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0172, code lost:
    
        defpackage.u2.n(defpackage.jb.d("encoderOutputBuffer ", r4, " was null"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x017d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(boolean z) {
        ByteBuffer byteBuffer;
        SentryOptions sentryOptions = this.a;
        if (sentryOptions.getSessionReplay().m) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "[Encoder]: drainCodec(" + z + ')', new Object[0]);
        }
        MediaCodec mediaCodec = this.c;
        if (z) {
            if (sentryOptions.getSessionReplay().m) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "[Encoder]: sending EOS to encoder", new Object[0]);
            }
            mediaCodec.signalEndOfInputStream();
        }
        ByteBuffer[] outputBuffers = mediaCodec.getOutputBuffers();
        while (true) {
            MediaCodec.BufferInfo bufferInfo = this.e;
            int dequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(bufferInfo, 100000L);
            if (dequeueOutputBuffer == -1) {
                if (z) {
                    if (sentryOptions.getSessionReplay().m) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "[Encoder]: no output available, spinning to await EOS", new Object[0]);
                    }
                } else {
                    return;
                }
            } else if (dequeueOutputBuffer == -3) {
                outputBuffers = mediaCodec.getOutputBuffers();
            } else {
                SimpleMp4FrameMuxer simpleMp4FrameMuxer = this.f;
                if (dequeueOutputBuffer == -2) {
                    if (!simpleMp4FrameMuxer.c) {
                        MediaFormat outputFormat = mediaCodec.getOutputFormat();
                        outputFormat.getClass();
                        if (sentryOptions.getSessionReplay().m) {
                            sentryOptions.getLogger().c(SentryLevel.DEBUG, "[Encoder]: encoder output format changed: " + outputFormat, new Object[0]);
                        }
                        MediaMuxer mediaMuxer = simpleMp4FrameMuxer.b;
                        simpleMp4FrameMuxer.d = mediaMuxer.addTrack(outputFormat);
                        mediaMuxer.start();
                        simpleMp4FrameMuxer.c = true;
                    } else {
                        u2.n("format changed twice");
                        return;
                    }
                } else if (dequeueOutputBuffer < 0) {
                    if (sentryOptions.getSessionReplay().m) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, q.g(dequeueOutputBuffer, "[Encoder]: unexpected result from encoder.dequeueOutputBuffer: "), new Object[0]);
                    }
                } else {
                    if (outputBuffers == null || (byteBuffer = outputBuffers[dequeueOutputBuffer]) == null) {
                        break;
                    }
                    if ((bufferInfo.flags & 2) != 0) {
                        if (sentryOptions.getSessionReplay().m) {
                            sentryOptions.getLogger().c(SentryLevel.DEBUG, "[Encoder]: ignoring BUFFER_FLAG_CODEC_CONFIG", new Object[0]);
                        }
                        bufferInfo.size = 0;
                    }
                    if (bufferInfo.size != 0) {
                        if (simpleMp4FrameMuxer.c) {
                            long j = simpleMp4FrameMuxer.a;
                            int i = simpleMp4FrameMuxer.e;
                            simpleMp4FrameMuxer.e = i + 1;
                            long j2 = j * i;
                            simpleMp4FrameMuxer.f = j2;
                            bufferInfo.presentationTimeUs = j2;
                            simpleMp4FrameMuxer.b.writeSampleData(simpleMp4FrameMuxer.d, byteBuffer, bufferInfo);
                            if (sentryOptions.getSessionReplay().m) {
                                sentryOptions.getLogger().c(SentryLevel.DEBUG, jb.i(new StringBuilder("[Encoder]: sent "), bufferInfo.size, " bytes to muxer"), new Object[0]);
                            }
                        } else {
                            u2.n("muxer hasn't started");
                            return;
                        }
                    }
                    mediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                    if ((bufferInfo.flags & 4) != 0) {
                        if (sentryOptions.getSessionReplay().m) {
                            if (!z) {
                                sentryOptions.getLogger().c(SentryLevel.DEBUG, "[Encoder]: reached end of stream unexpectedly", new Object[0]);
                                return;
                            } else {
                                sentryOptions.getLogger().c(SentryLevel.DEBUG, "[Encoder]: end of stream reached", new Object[0]);
                                return;
                            }
                        }
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(Bitmap bitmap) {
        Canvas lockCanvas;
        Surface surface;
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!StringsKt.i(str, "xiaomi", true) && !StringsKt.i(str, "motorola", true)) {
            SystemProperties.Property property = SystemProperties.Property.SOC_MANUFACTURER;
            if (!SystemProperties.a(property).equalsIgnoreCase("spreadtrum") && !SystemProperties.a(property).equalsIgnoreCase("unisoc")) {
                Surface surface2 = this.g;
                if (surface2 != null) {
                    lockCanvas = surface2.lockHardwareCanvas();
                    if (lockCanvas != null) {
                        lockCanvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                    }
                    surface = this.g;
                    if (surface != null) {
                        surface.unlockCanvasAndPost(lockCanvas);
                    }
                    a(false);
                }
                lockCanvas = null;
                if (lockCanvas != null) {
                }
                surface = this.g;
                if (surface != null) {
                }
                a(false);
            }
        }
        Surface surface3 = this.g;
        if (surface3 != null) {
            lockCanvas = surface3.lockCanvas(null);
            if (lockCanvas != null) {
            }
            surface = this.g;
            if (surface != null) {
            }
            a(false);
        }
        lockCanvas = null;
        if (lockCanvas != null) {
        }
        surface = this.g;
        if (surface != null) {
        }
        a(false);
    }

    public final void c() {
        MediaCodec mediaCodec = this.c;
        try {
            a(true);
            mediaCodec.stop();
            mediaCodec.release();
            Surface surface = this.g;
            if (surface != null) {
                surface.release();
            }
            MediaMuxer mediaMuxer = this.f.b;
            mediaMuxer.stop();
            mediaMuxer.release();
        } catch (Throwable th) {
            this.a.getLogger().b(SentryLevel.DEBUG, "Failed to properly release video encoder", th);
        }
    }
}
