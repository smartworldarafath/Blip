package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.audio.SonicAudioProcessor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.MediaClock;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink$AudioSinkConfig;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.mediacodec.g;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.VorbisUtil;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.ImmutableIntArray;
import defpackage.f3;
import defpackage.h7;
import defpackage.k8;
import defpackage.m3;
import defpackage.n3;
import defpackage.r3;
import defpackage.s3;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MediaCodecAudioRenderer extends MediaCodecRenderer implements MediaClock {
    public final Context Q0;
    public final AudioRendererEventListener.EventDispatcher R0;
    public final DefaultAudioSink S0;
    public final LoudnessCodecController T0;
    public int U0;
    public boolean V0;
    public Format W0;
    public Format X0;
    public long Y0;
    public boolean Z0;
    public boolean a1;
    public boolean b1;
    public boolean c1;
    public int d1;
    public boolean e1;
    public long f1;
    public long g1;
    public boolean h1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AudioSinkListener implements AudioSink$Listener {
        public AudioSinkListener() {
        }

        public final void a(Exception exc) {
            Log.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.R0;
            Handler handler = eventDispatcher.a;
            if (handler != null) {
                handler.post(new m3(eventDispatcher, exc, 1));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaCodecAudioRenderer(Context context, MediaCodecAdapter.Factory factory, Handler handler, AudioRendererEventListener audioRendererEventListener, DefaultAudioSink defaultAudioSink) {
        super(context.getApplicationContext(), 1, factory);
        LoudnessCodecController loudnessCodecController;
        if (Build.VERSION.SDK_INT >= 35) {
            loudnessCodecController = new LoudnessCodecController();
        } else {
            loudnessCodecController = null;
        }
        this.Q0 = context.getApplicationContext();
        this.S0 = defaultAudioSink;
        this.T0 = loudnessCodecController;
        this.d1 = -1000;
        this.R0 = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        this.f1 = -9223372036854775807L;
        this.g1 = -9223372036854775807L;
        this.h1 = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean D0(Format format) {
        RendererConfiguration rendererConfiguration = this.m;
        rendererConfiguration.getClass();
        if (rendererConfiguration.a != 0) {
            int I0 = I0(format);
            if ((I0 & 512) != 0) {
                RendererConfiguration rendererConfiguration2 = this.m;
                rendererConfiguration2.getClass();
                if (rendererConfiguration2.a == 2 || (I0 & 1024) != 0 || (format.N == 0 && format.O == 0)) {
                    return true;
                }
            }
        }
        if (this.S0.h(format) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r7 != null) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0088  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int E0(k8 k8Var, Format format) {
        boolean z;
        boolean z2;
        int i;
        Format.Builder builder;
        List g;
        MediaCodecInfo mediaCodecInfo;
        boolean z3;
        boolean z4;
        int i2;
        MediaCodecInfo mediaCodecInfo2;
        int i3 = 0;
        int j = RendererCapabilities.j(1, 0, 0, 0);
        String str = format.p;
        String str2 = format.p;
        if (!MimeTypes.h(str)) {
            return RendererCapabilities.j(0, 0, 0, 0);
        }
        int i4 = format.T;
        if (i4 != 0) {
            z = true;
        } else {
            z = false;
        }
        if (i4 != 0 && i4 != 2) {
            z2 = false;
        } else {
            z2 = true;
        }
        int i5 = 8;
        int i6 = 4;
        DefaultAudioSink defaultAudioSink = this.S0;
        if (z2) {
            if (z) {
                List e = MediaCodecUtil.e("audio/raw", false, false);
                if (e.isEmpty()) {
                    mediaCodecInfo2 = null;
                } else {
                    mediaCodecInfo2 = (MediaCodecInfo) e.get(0);
                }
            }
            i = I0(format);
            if (defaultAudioSink.h(format) != 0) {
                return RendererCapabilities.j(4, 8, 32, i);
            }
            if ("audio/raw".equals(str2) || defaultAudioSink.h(format) != 0) {
                int i7 = format.J;
                int i8 = format.L;
                builder = new Format.Builder();
                builder.o = MimeTypes.l("audio/raw");
                builder.I = i7;
                builder.K = i8;
                builder.L = 2;
                if (defaultAudioSink.h(new Format(builder)) != 0) {
                    if (str2 == null) {
                        g = ImmutableList.r();
                    } else {
                        if (defaultAudioSink.h(format) != 0) {
                            List e2 = MediaCodecUtil.e("audio/raw", false, false);
                            if (e2.isEmpty()) {
                                mediaCodecInfo = null;
                            } else {
                                mediaCodecInfo = (MediaCodecInfo) e2.get(0);
                            }
                            if (mediaCodecInfo != null) {
                                g = ImmutableList.t(mediaCodecInfo);
                            }
                        }
                        g = MediaCodecUtil.g(k8Var, format, false, false);
                    }
                    if (!((AbstractCollection) g).isEmpty()) {
                        if (!z2) {
                            return RendererCapabilities.j(2, 0, 0, 0);
                        }
                        MediaCodecInfo mediaCodecInfo3 = (MediaCodecInfo) g.get(0);
                        Context context = this.Q0;
                        boolean e3 = mediaCodecInfo3.e(context, format);
                        if (!e3) {
                            for (int i9 = 1; i9 < g.size(); i9++) {
                                MediaCodecInfo mediaCodecInfo4 = (MediaCodecInfo) g.get(i9);
                                if (mediaCodecInfo4.e(context, format)) {
                                    z4 = false;
                                    mediaCodecInfo3 = mediaCodecInfo4;
                                    z3 = true;
                                    break;
                                }
                            }
                        }
                        z3 = e3;
                        z4 = true;
                        if (!z3) {
                            i6 = 3;
                        }
                        if (z3 && mediaCodecInfo3.f(format)) {
                            i5 = 16;
                        }
                        if (mediaCodecInfo3.g) {
                            i2 = 64;
                        } else {
                            i2 = 0;
                        }
                        if (z4) {
                            i3 = 128;
                        }
                        return i2 | i6 | i5 | 32 | i3 | i;
                    }
                }
            }
            return j;
        }
        i = 0;
        if ("audio/raw".equals(str2)) {
        }
        int i72 = format.J;
        int i82 = format.L;
        builder = new Format.Builder();
        builder.o = MimeTypes.l("audio/raw");
        builder.I = i72;
        builder.K = i82;
        builder.L = 2;
        if (defaultAudioSink.h(new Format(builder)) != 0) {
        }
        return j;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation I(MediaCodecInfo mediaCodecInfo, Format format, Format format2, boolean z) {
        int i;
        DecoderReuseEvaluation b = mediaCodecInfo.b(format, format2);
        int i2 = b.e;
        if (this.Q == null && D0(format2)) {
            i2 |= 32768;
        }
        "OMX.google.raw.decoder".equals(mediaCodecInfo.a);
        if (format2.q > this.U0) {
            i2 |= 64;
        }
        int i3 = i2;
        String str = mediaCodecInfo.a;
        if (i3 != 0) {
            i = 0;
        } else {
            i = b.d;
        }
        return new DecoderReuseEvaluation(str, format, format2, i, i3);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.media3.exoplayer.audio.AudioOffloadSupport$Builder, java.lang.Object] */
    public final int I0(Format format) {
        AudioOffloadSupport a;
        int i;
        DefaultAudioSink defaultAudioSink = this.S0;
        if (defaultAudioSink.Y) {
            a = AudioOffloadSupport.d;
        } else {
            AudioOutputProvider.FormatSupport b = ((AudioTrackAudioOutputProvider) defaultAudioSink.r).b(defaultAudioSink.g(format));
            ?? obj = new Object();
            obj.a = b.a;
            obj.b = b.b;
            obj.c = b.c;
            a = obj.a();
        }
        if (!a.a) {
            return 0;
        }
        if (a.b) {
            i = 1536;
        } else {
            i = 512;
        }
        if (a.c) {
            return i | 2048;
        }
        return i;
    }

    public final void J0() {
        long j;
        long j2;
        b();
        final DefaultAudioSink defaultAudioSink = this.S0;
        DefaultAudioSink.DefaultAudioProcessorChain defaultAudioProcessorChain = defaultAudioSink.b;
        if (defaultAudioSink.n() && !defaultAudioSink.F) {
            long min = Math.min(defaultAudioSink.t.a(), Util.H(defaultAudioSink.p.e.b, defaultAudioSink.j()));
            ArrayDeque arrayDeque = defaultAudioSink.h;
            while (!arrayDeque.isEmpty() && min >= ((DefaultAudioSink.MediaPositionParameters) arrayDeque.getFirst()).c) {
                defaultAudioSink.w = (DefaultAudioSink.MediaPositionParameters) arrayDeque.remove();
            }
            DefaultAudioSink.MediaPositionParameters mediaPositionParameters = defaultAudioSink.w;
            long j3 = min - mediaPositionParameters.c;
            long s = Util.s(j3, mediaPositionParameters.a.a);
            if (arrayDeque.isEmpty()) {
                SonicAudioProcessor sonicAudioProcessor = defaultAudioProcessorChain.c;
                if (sonicAudioProcessor.h()) {
                    j3 = sonicAudioProcessor.a(j3);
                }
                DefaultAudioSink.MediaPositionParameters mediaPositionParameters2 = defaultAudioSink.w;
                j2 = mediaPositionParameters2.b + j3;
                mediaPositionParameters2.d = j3 - s;
            } else {
                DefaultAudioSink.MediaPositionParameters mediaPositionParameters3 = defaultAudioSink.w;
                j2 = mediaPositionParameters3.b + s + mediaPositionParameters3.d;
            }
            long j4 = defaultAudioProcessorChain.b.q;
            j = Util.H(defaultAudioSink.p.e.b, j4) + j2;
            long j5 = defaultAudioSink.a0;
            if (j4 > j5) {
                long H = Util.H(defaultAudioSink.p.e.b, j4 - j5);
                defaultAudioSink.a0 = j4;
                defaultAudioSink.b0 += H;
                if (defaultAudioSink.c0 == null) {
                    defaultAudioSink.c0 = new Handler(Looper.myLooper());
                }
                defaultAudioSink.c0.removeCallbacksAndMessages(null);
                defaultAudioSink.c0.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.audio.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultAudioSink defaultAudioSink2 = DefaultAudioSink.this;
                        if (defaultAudioSink2.b0 >= 300000) {
                            MediaCodecAudioRenderer.this.b1 = true;
                            defaultAudioSink2.b0 = 0L;
                        }
                    }
                }, 100L);
            }
        } else {
            j = Long.MIN_VALUE;
        }
        if (j != Long.MIN_VALUE) {
            if (!this.Z0) {
                j = Math.max(this.Y0, j);
            }
            this.Y0 = j;
            this.Z0 = false;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final float R(float f, Format format, Format[] formatArr) {
        MediaFormat mediaFormat;
        int i = -1;
        for (Format format2 : formatArr) {
            int i2 = format2.L;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1 && (mediaFormat = this.Y) != null && mediaFormat.containsKey("sample-rate")) {
            i = mediaFormat.getInteger("sample-rate");
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final ArrayList S(k8 k8Var, Format format, boolean z) {
        Collection g;
        MediaCodecInfo mediaCodecInfo;
        if (format.p == null) {
            g = ImmutableList.r();
        } else {
            if (this.S0.h(format) != 0) {
                List e = MediaCodecUtil.e("audio/raw", false, false);
                if (e.isEmpty()) {
                    mediaCodecInfo = null;
                } else {
                    mediaCodecInfo = (MediaCodecInfo) e.get(0);
                }
                if (mediaCodecInfo != null) {
                    g = ImmutableList.t(mediaCodecInfo);
                }
            }
            g = MediaCodecUtil.g(k8Var, format, z, false);
        }
        HashMap hashMap = MediaCodecUtil.a;
        ArrayList arrayList = new ArrayList(g);
        Collections.sort(arrayList, new g(new androidx.media3.exoplayer.mediacodec.e(this.Q0, format)));
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final long T(long j, long j2, boolean z) {
        boolean z2;
        long J;
        float f;
        DefaultAudioSink defaultAudioSink = this.S0;
        boolean z3 = false;
        if (defaultAudioSink.l() && this.f1 != -9223372036854775807L) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!this.e1) {
            if (z2 || this.B0) {
                return 1000000L;
            }
        } else {
            if (!defaultAudioSink.n()) {
                J = -9223372036854775807L;
            } else if (DefaultAudioSink.Configuration.b(defaultAudioSink.p)) {
                J = Util.H(defaultAudioSink.p.e.b, defaultAudioSink.t.a.getBufferSizeInFrames());
            } else {
                long bufferSizeInFrames = defaultAudioSink.t.a.getBufferSizeInFrames();
                int b = ExtractorUtil.b(defaultAudioSink.p.e.a);
                if (b != -2147483647) {
                    z3 = true;
                }
                Preconditions.n(z3);
                J = Util.J(bufferSizeInFrames, 1000000L, b, RoundingMode.DOWN);
            }
            if (this.c1 && z2 && J != -9223372036854775807L) {
                float min = (float) Math.min(J, this.f1 - j);
                PlaybackParameters playbackParameters = defaultAudioSink.x;
                if (playbackParameters != null) {
                    f = playbackParameters.a;
                } else {
                    f = 1.0f;
                }
                return Math.max(10000L, (min / f) / 2.0f);
            }
        }
        return 10000L;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final MediaCodecAdapter.Configuration W(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f) {
        boolean z;
        AudioCapabilities audioCapabilities;
        int i;
        Format[] formatArr = this.s;
        formatArr.getClass();
        String str = mediaCodecInfo.a;
        "OMX.google.raw.decoder".equals(str);
        int i2 = format.q;
        String str2 = format.p;
        int i3 = format.J;
        int i4 = 0;
        if (formatArr.length != 1) {
            for (Format format2 : formatArr) {
                if (mediaCodecInfo.b(format, format2).d != 0) {
                    "OMX.google.raw.decoder".equals(str);
                    i2 = Math.max(i2, format2.q);
                }
            }
        }
        this.U0 = i2;
        HashSet hashSet = MediaLibraryInfo.a;
        if (!str.equals("OMX.google.opus.decoder") && !str.equals("c2.android.opus.decoder") && !str.equals("OMX.google.vorbis.decoder") && !str.equals("c2.android.vorbis.decoder")) {
            z = false;
        } else {
            z = true;
        }
        this.V0 = z;
        String str3 = mediaCodecInfo.c;
        int i5 = this.U0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str3);
        mediaFormat.setInteger("channel-count", i3);
        int i6 = format.L;
        mediaFormat.setInteger("sample-rate", i6);
        MediaFormatUtil.b(mediaFormat, format.s);
        MediaFormatUtil.a(mediaFormat, "max-input-size", i5);
        mediaFormat.setInteger("priority", 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        if ("audio/ac4".equals(str2)) {
            Pair b = CodecSpecificDataUtil.b(format);
            if (b != null) {
                MediaFormatUtil.a(mediaFormat, "profile", ((Integer) b.first).intValue());
                MediaFormatUtil.a(mediaFormat, "level", ((Integer) b.second).intValue());
            }
            if (Build.VERSION.SDK_INT <= 28) {
                mediaFormat.setInteger("ac4-is-sync", 1);
            }
        }
        Format.Builder builder = new Format.Builder();
        builder.o = MimeTypes.l("audio/raw");
        builder.I = i3;
        builder.K = i6;
        builder.L = 4;
        Format format3 = new Format(builder);
        DefaultAudioSink defaultAudioSink = this.S0;
        if (defaultAudioSink.h(format3) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i7 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.d1));
        }
        Format format4 = null;
        if (Objects.equals(str2, "audio/iamf")) {
            AudioOutputProvider audioOutputProvider = defaultAudioSink.r;
            if (audioOutputProvider instanceof AudioTrackAudioOutputProvider) {
                audioCapabilities = ((AudioTrackAudioOutputProvider) audioOutputProvider).h;
            } else {
                audioCapabilities = null;
            }
            int i8 = 12;
            if (audioCapabilities == null) {
                Log.f("MediaCodecAudioRenderer", "AudioCapabilities from the AudioSink are null, using default stereo output layout.");
                mediaFormat.setInteger("channel-mask", 12);
                mediaFormat.setInteger("max-output-channel-count", 2);
            } else {
                ImmutableSet immutableSet = IamfUtil.a;
                Iterator<E> it = audioCapabilities.d.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        i = num.intValue();
                        if (IamfUtil.a.contains(num)) {
                            break;
                        }
                    } else {
                        i = 0;
                        break;
                    }
                }
                if (i != 0) {
                    i8 = i;
                } else {
                    Iterator<E> it2 = audioCapabilities.c.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Integer num2 = (Integer) it2.next();
                        int intValue = num2.intValue();
                        if (IamfUtil.a.contains(num2)) {
                            i4 = intValue;
                            break;
                        }
                    }
                    if (i4 != 0) {
                        i8 = i4;
                    }
                }
                int bitCount = Integer.bitCount(i8);
                mediaFormat.setInteger("channel-mask", i8);
                mediaFormat.setInteger("max-output-channel-count", bitCount);
            }
        }
        G(mediaFormat);
        if ("audio/raw".equals(mediaCodecInfo.b) && !"audio/raw".equals(str2)) {
            format4 = format;
        }
        this.X0 = format4;
        return new MediaCodecAdapter.Configuration(mediaCodecInfo, mediaFormat, format, null, mediaCrypto, this.T0);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void Z(DecoderInputBuffer decoderInputBuffer) {
        Format format;
        DefaultAudioSink.Configuration configuration;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29 && (format = decoderInputBuffer.k) != null && Objects.equals(format.p, "audio/opus") && this.o0) {
            ByteBuffer byteBuffer = decoderInputBuffer.o;
            byteBuffer.getClass();
            Format format2 = decoderInputBuffer.k;
            format2.getClass();
            int i2 = format2.N;
            if (byteBuffer.remaining() == 8) {
                int i3 = (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000);
                DefaultAudioSink defaultAudioSink = this.S0;
                AudioTrackAudioOutput audioTrackAudioOutput = defaultAudioSink.t;
                if (audioTrackAudioOutput != null && audioTrackAudioOutput.c() && (configuration = defaultAudioSink.p) != null && configuration.e.k) {
                    AudioTrackAudioOutput audioTrackAudioOutput2 = defaultAudioSink.t;
                    if (i >= 29) {
                        audioTrackAudioOutput2.a.setOffloadDelayPadding(i2, i3);
                    } else {
                        audioTrackAudioOutput2.getClass();
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean a() {
        boolean a;
        if (this.S0.l()) {
            this.g1 = -9223372036854775807L;
            this.h1 = true;
            return true;
        }
        if (this.h1 && this.e1) {
            if (s()) {
                a = this.w;
            } else {
                SampleStream sampleStream = this.r;
                sampleStream.getClass();
                a = sampleStream.a();
            }
            if (a && !s()) {
                this.p.getClass();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = this.g1;
                if (j == -9223372036854775807L) {
                    this.g1 = elapsedRealtime;
                    return true;
                }
                if (elapsedRealtime - j < 100) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean b() {
        if (this.B0) {
            DefaultAudioSink defaultAudioSink = this.S0;
            if (defaultAudioSink.n()) {
                if (defaultAudioSink.M && !defaultAudioSink.l()) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final void c(PlaybackParameters playbackParameters) {
        DefaultAudioSink defaultAudioSink = this.S0;
        if (defaultAudioSink.w()) {
            defaultAudioSink.x = playbackParameters;
            defaultAudioSink.t();
            return;
        }
        PlaybackParameters playbackParameters2 = new PlaybackParameters(Util.f(playbackParameters.a, 0.1f, 8.0f), Util.f(playbackParameters.b, 0.1f, 8.0f));
        defaultAudioSink.x = playbackParameters2;
        DefaultAudioSink.MediaPositionParameters mediaPositionParameters = new DefaultAudioSink.MediaPositionParameters(playbackParameters2, -9223372036854775807L, -9223372036854775807L);
        if (defaultAudioSink.n()) {
            defaultAudioSink.v = mediaPositionParameters;
        } else {
            defaultAudioSink.w = mediaPositionParameters;
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final PlaybackParameters e() {
        return this.S0.x;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void f0(Exception exc) {
        Log.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.R0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new m3(eventDispatcher, exc, 0));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void g0(long j, long j2, String str) {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.R0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new r3(eventDispatcher, str, j, j2, 0));
        }
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void h0(CodecParameters codecParameters) {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.R0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new f3(2, eventDispatcher, codecParameters));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void i0(String str) {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.R0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new f3(1, eventDispatcher, str));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation j0(FormatHolder formatHolder) {
        Format format = formatHolder.b;
        format.getClass();
        this.W0 = format;
        DecoderReuseEvaluation j0 = super.j0(formatHolder);
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.R0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new s3(eventDispatcher, format, j0, 0));
        }
        return j0;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final long k() {
        if (this.q == 2) {
            J0();
        }
        return this.Y0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void k0(Format format, MediaFormat mediaFormat) {
        int i;
        int integer;
        MediaSource.MediaPeriodId mediaPeriodId;
        boolean z;
        boolean z2;
        Format format2 = this.X0;
        ImmutableIntArray immutableIntArray = null;
        if (format2 != null) {
            format = format2;
        } else if (this.W != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(format.p)) {
                i = format.M;
            } else if (mediaFormat.containsKey("pcm-encoding")) {
                i = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i = Util.t(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN);
            } else {
                i = 2;
            }
            int integer2 = mediaFormat.getInteger("channel-count");
            int i2 = format.K;
            if (i2 == -1 || format.J != integer2) {
                i2 = -1;
            }
            if (mediaFormat.containsKey("channel-mask") && (integer = mediaFormat.getInteger("channel-mask")) != 0 && Integer.bitCount(integer) == integer2) {
                i2 = integer;
            }
            Format.Builder builder = new Format.Builder();
            builder.o = MimeTypes.l("audio/raw");
            builder.L = i;
            builder.M = format.N;
            builder.N = format.O;
            builder.l = format.m;
            builder.a = format.a;
            builder.b = format.b;
            builder.c = ImmutableList.m(format.c);
            builder.d = format.d;
            builder.e = format.e;
            builder.f = format.f;
            builder.I = integer2;
            builder.J = i2;
            builder.K = mediaFormat.getInteger("sample-rate");
            format = new Format(builder);
            if (this.V0) {
                int i3 = format.J;
                if (i3 != 3) {
                    if (i3 != 5) {
                        if (i3 != 6) {
                            if (i3 != 7) {
                                if (i3 != 8) {
                                    ImmutableIntArray immutableIntArray2 = VorbisUtil.a;
                                } else {
                                    immutableIntArray = VorbisUtil.e;
                                }
                            } else {
                                immutableIntArray = VorbisUtil.d;
                            }
                        } else {
                            immutableIntArray = VorbisUtil.c;
                        }
                    } else {
                        immutableIntArray = VorbisUtil.b;
                    }
                } else {
                    immutableIntArray = VorbisUtil.a;
                }
            }
        }
        try {
            int i4 = Build.VERSION.SDK_INT;
            boolean z3 = true;
            DefaultAudioSink defaultAudioSink = this.S0;
            if (i4 >= 29) {
                if (this.o0) {
                    RendererConfiguration rendererConfiguration = this.m;
                    rendererConfiguration.getClass();
                    if (rendererConfiguration.a != 0) {
                        RendererConfiguration rendererConfiguration2 = this.m;
                        rendererConfiguration2.getClass();
                        int i5 = rendererConfiguration2.a;
                        defaultAudioSink.getClass();
                        if (i4 >= 29) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.n(z2);
                        defaultAudioSink.i = i5;
                    }
                }
                defaultAudioSink.getClass();
                if (i4 >= 29) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.n(z);
                defaultAudioSink.i = 0;
            }
            AudioSink$AudioSinkConfig.Builder builder2 = new AudioSink$AudioSinkConfig.Builder(format);
            builder2.b = immutableIntArray;
            Timeline timeline = this.y;
            builder2.c = timeline;
            builder2.d = this.z;
            if (!timeline.p() && (mediaPeriodId = builder2.d) != null) {
                if (builder2.c.b(mediaPeriodId.a) == -1) {
                    z3 = false;
                }
                Preconditions.e(z3);
            }
            defaultAudioSink.c(new AudioSink$AudioSinkConfig(builder2));
            F0(this.X);
        } catch (AudioSink$ConfigurationException e) {
            throw r(e, e.j, false, 5001);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void l0(long j) {
        this.S0.H = j;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final boolean m() {
        boolean z = this.b1;
        this.b1 = false;
        return z;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void n0() {
        this.S0.E = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void o(int i, Object obj) {
        PlaybackParameters playbackParameters;
        LoudnessCodecController loudnessCodecController;
        DefaultAudioSink defaultAudioSink = this.S0;
        if (i != 2) {
            if (i != 3) {
                if (i != 6) {
                    if (i != 12) {
                        boolean z = false;
                        if (i != 16) {
                            if (i != 9) {
                                if (i != 10) {
                                    if (i != 19) {
                                        if (i != 20) {
                                            super.o(i, obj);
                                            return;
                                        }
                                        obj.getClass();
                                        AudioOutputProvider audioOutputProvider = (AudioOutputProvider) obj;
                                        if (!audioOutputProvider.equals(defaultAudioSink.r)) {
                                            ((AudioTrackAudioOutputProvider) defaultAudioSink.r).d();
                                            defaultAudioSink.r = audioOutputProvider;
                                            h7 h7Var = defaultAudioSink.s;
                                            if (h7Var != null) {
                                                AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = (AudioTrackAudioOutputProvider) audioOutputProvider;
                                                audioTrackAudioOutputProvider.f();
                                                if (audioTrackAudioOutputProvider.f == null) {
                                                    audioTrackAudioOutputProvider.f = new ListenerSet(Thread.currentThread());
                                                }
                                                audioTrackAudioOutputProvider.f.a(h7Var);
                                            }
                                            defaultAudioSink.r();
                                            return;
                                        }
                                        return;
                                    }
                                    obj.getClass();
                                    int intValue = ((Integer) obj).intValue();
                                    AtomicInteger atomicInteger = DefaultAudioSink.d0;
                                    if (intValue == 0 || intValue == -1) {
                                        intValue = -1;
                                    }
                                    if (defaultAudioSink.V != intValue) {
                                        defaultAudioSink.V = intValue;
                                        defaultAudioSink.r();
                                        return;
                                    }
                                    return;
                                }
                                obj.getClass();
                                int intValue2 = ((Integer) obj).intValue();
                                if (defaultAudioSink.S) {
                                    if (defaultAudioSink.R == intValue2) {
                                        defaultAudioSink.S = false;
                                    }
                                    if (Build.VERSION.SDK_INT < 35 && (loudnessCodecController = this.T0) != null) {
                                        loudnessCodecController.b(intValue2);
                                        return;
                                    }
                                    return;
                                }
                                if (defaultAudioSink.R != intValue2) {
                                    defaultAudioSink.R = intValue2;
                                    if (intValue2 != 0) {
                                        z = true;
                                    }
                                    defaultAudioSink.Q = z;
                                    defaultAudioSink.r();
                                }
                                if (Build.VERSION.SDK_INT < 35) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            obj.getClass();
                            defaultAudioSink.y = ((Boolean) obj).booleanValue();
                            if (defaultAudioSink.w()) {
                                playbackParameters = PlaybackParameters.d;
                            } else {
                                playbackParameters = defaultAudioSink.x;
                            }
                            DefaultAudioSink.MediaPositionParameters mediaPositionParameters = new DefaultAudioSink.MediaPositionParameters(playbackParameters, -9223372036854775807L, -9223372036854775807L);
                            if (defaultAudioSink.n()) {
                                defaultAudioSink.v = mediaPositionParameters;
                                return;
                            } else {
                                defaultAudioSink.w = mediaPositionParameters;
                                return;
                            }
                        }
                        obj.getClass();
                        this.d1 = ((Integer) obj).intValue();
                        MediaCodecAdapter mediaCodecAdapter = this.W;
                        if (mediaCodecAdapter != null && Build.VERSION.SDK_INT >= 35) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("importance", Math.max(0, -this.d1));
                            mediaCodecAdapter.c(bundle);
                            return;
                        }
                        return;
                    }
                    AudioDeviceInfo audioDeviceInfo = (AudioDeviceInfo) obj;
                    defaultAudioSink.U = audioDeviceInfo;
                    AudioTrackAudioOutput audioTrackAudioOutput = defaultAudioSink.t;
                    if (audioTrackAudioOutput != null) {
                        audioTrackAudioOutput.a.setPreferredDevice(audioDeviceInfo);
                        return;
                    }
                    return;
                }
                AuxEffectInfo auxEffectInfo = (AuxEffectInfo) obj;
                auxEffectInfo.getClass();
                if (!defaultAudioSink.T.equals(auxEffectInfo)) {
                    if (defaultAudioSink.t != null) {
                        defaultAudioSink.T.getClass();
                    }
                    defaultAudioSink.T = auxEffectInfo;
                    return;
                }
                return;
            }
            AudioAttributes audioAttributes = (AudioAttributes) obj;
            audioAttributes.getClass();
            if (!defaultAudioSink.u.equals(audioAttributes)) {
                defaultAudioSink.u = audioAttributes;
                if (!defaultAudioSink.W) {
                    defaultAudioSink.r();
                    return;
                }
                return;
            }
            return;
        }
        obj.getClass();
        float floatValue = ((Float) obj).floatValue();
        if (defaultAudioSink.I != floatValue) {
            defaultAudioSink.I = floatValue;
            if (defaultAudioSink.n()) {
                defaultAudioSink.t.a.setVolume(defaultAudioSink.I);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean q0(long j, long j2, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) {
        int i4;
        int i5;
        byteBuffer.getClass();
        this.f1 = -9223372036854775807L;
        if (this.X0 != null && (i2 & 2) != 0) {
            mediaCodecAdapter.getClass();
            mediaCodecAdapter.f(i);
            return true;
        }
        DefaultAudioSink defaultAudioSink = this.S0;
        if (z) {
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.f(i);
            }
            this.F0.f += i3;
            defaultAudioSink.E = true;
            return true;
        }
        try {
            if (defaultAudioSink.k(i3, j3, byteBuffer)) {
                if (mediaCodecAdapter != null) {
                    mediaCodecAdapter.f(i);
                }
                this.F0.e += i3;
                return true;
            }
            this.f1 = j3;
            return false;
        } catch (AudioSink$InitializationException e) {
            Format format2 = this.W0;
            if (this.o0) {
                RendererConfiguration rendererConfiguration = this.m;
                rendererConfiguration.getClass();
                if (rendererConfiguration.a != 0) {
                    i5 = 5004;
                    throw r(e, format2, e.j, i5);
                }
            }
            i5 = 5001;
            throw r(e, format2, e.j, i5);
        } catch (AudioSink$WriteException e2) {
            if (this.o0) {
                RendererConfiguration rendererConfiguration2 = this.m;
                rendererConfiguration2.getClass();
                if (rendererConfiguration2.a != 0) {
                    i4 = 5003;
                    throw r(e2, format, e2.k, i4);
                }
            }
            i4 = 5002;
            throw r(e2, format, e2.k, i4);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void t() {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.R0;
        this.a1 = true;
        this.W0 = null;
        this.f1 = -9223372036854775807L;
        this.c1 = false;
        try {
            this.S0.f();
            try {
                super.t();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.t();
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void t0() {
        int i;
        try {
            DefaultAudioSink defaultAudioSink = this.S0;
            if (!defaultAudioSink.M && defaultAudioSink.n() && defaultAudioSink.e()) {
                defaultAudioSink.p();
                defaultAudioSink.M = true;
            }
            if (U() != -9223372036854775807L) {
                this.f1 = U();
            }
        } catch (AudioSink$WriteException e) {
            if (this.o0) {
                i = 5003;
            } else {
                i = 5002;
            }
            throw r(e, e.l, e.k, i);
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.media3.exoplayer.DecoderCounters, java.lang.Object] */
    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void u(boolean z, boolean z2) {
        ?? obj = new Object();
        this.F0 = obj;
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.R0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new n3(eventDispatcher, obj, 1));
        }
        RendererConfiguration rendererConfiguration = this.m;
        rendererConfiguration.getClass();
        boolean z3 = rendererConfiguration.b;
        DefaultAudioSink defaultAudioSink = this.S0;
        if (z3) {
            Preconditions.n(defaultAudioSink.Q);
            if (!defaultAudioSink.W) {
                defaultAudioSink.W = true;
                defaultAudioSink.r();
            }
        } else if (defaultAudioSink.W) {
            defaultAudioSink.W = false;
            defaultAudioSink.r();
        }
        PlayerId playerId = this.o;
        playerId.getClass();
        defaultAudioSink.m = playerId;
        Clock clock = this.p;
        clock.getClass();
        ((AudioTrackAudioOutputProvider) defaultAudioSink.r).g = clock;
        defaultAudioSink.n = new AudioSinkListener();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void v(long j, boolean z, boolean z2) {
        super.v(j, z, z2);
        this.S0.f();
        this.Y0 = j;
        this.f1 = -9223372036854775807L;
        this.g1 = -9223372036854775807L;
        this.h1 = false;
        this.b1 = false;
        this.c1 = false;
        this.Z0 = true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void w() {
        LoudnessCodecController loudnessCodecController;
        ((AudioTrackAudioOutputProvider) this.S0.r).d();
        if (Build.VERSION.SDK_INT >= 35 && (loudnessCodecController = this.T0) != null) {
            loudnessCodecController.a.clear();
            android.media.LoudnessCodecController loudnessCodecController2 = loudnessCodecController.c;
            if (loudnessCodecController2 != null) {
                loudnessCodecController2.close();
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void x() {
        DefaultAudioSink defaultAudioSink = this.S0;
        this.b1 = false;
        this.c1 = false;
        this.f1 = -9223372036854775807L;
        try {
            try {
                this.o0 = false;
                u0();
                s0();
                DrmSession drmSession = this.Q;
                if (drmSession != null) {
                    drmSession.d(null);
                }
                this.Q = null;
            } catch (Throwable th) {
                DrmSession drmSession2 = this.Q;
                if (drmSession2 != null) {
                    drmSession2.d(null);
                }
                this.Q = null;
                throw th;
            }
        } finally {
            if (this.a1) {
                this.a1 = false;
                defaultAudioSink.s();
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void y() {
        this.S0.o();
        this.e1 = true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void z() {
        J0();
        this.e1 = false;
        DefaultAudioSink defaultAudioSink = this.S0;
        defaultAudioSink.P = false;
        if (defaultAudioSink.n()) {
            AudioTrackAudioOutput audioTrackAudioOutput = defaultAudioSink.t;
            AudioTrackPositionTracker audioTrackPositionTracker = audioTrackAudioOutput.f;
            audioTrackPositionTracker.e();
            if (audioTrackPositionTracker.u == -9223372036854775807L) {
                audioTrackPositionTracker.h.a(0);
            }
            audioTrackPositionTracker.w = audioTrackPositionTracker.a();
            if (!audioTrackAudioOutput.k || audioTrackAudioOutput.c()) {
                audioTrackAudioOutput.a.pause();
            }
        }
        this.c1 = false;
        this.g1 = -9223372036854775807L;
        this.h1 = false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final MediaClock q() {
        return this;
    }
}
