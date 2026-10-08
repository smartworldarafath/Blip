package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.audio.AudioProcessingPipeline;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.audio.SonicAudioProcessor;
import androidx.media3.common.audio.ToInt16PcmAudioProcessor;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.ExtractorUtil;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.fe;
import defpackage.h7;
import defpackage.q;
import defpackage.q3;
import defpackage.s3;
import defpackage.u2;
import defpackage.w2;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultAudioSink {
    public static final AtomicInteger d0 = new AtomicInteger();
    public long A;
    public long B;
    public long C;
    public int D;
    public boolean E;
    public boolean F;
    public long G;
    public long H;
    public float I;
    public ByteBuffer J;
    public int K;
    public ByteBuffer L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public int R;
    public boolean S;
    public AuxEffectInfo T;
    public AudioDeviceInfo U;
    public int V;
    public boolean W;
    public long X;
    public boolean Y;
    public boolean Z;
    public final Context a;
    public long a0;
    public final DefaultAudioProcessorChain b;
    public long b0;
    public final ChannelMappingAudioProcessor c;
    public Handler c0;
    public final TrimmingAudioProcessor d;
    public final ToInt16PcmAudioProcessor e;
    public final ToFloatPcmAudioProcessor f;
    public final ImmutableList g;
    public final ArrayDeque h;
    public int i;
    public AudioOutputListener j;
    public final PendingExceptionHolder k;
    public final PendingExceptionHolder l;
    public PlayerId m;
    public AudioSink$Listener n;
    public Configuration o;
    public Configuration p;
    public AudioProcessingPipeline q;
    public AudioOutputProvider r;
    public h7 s;
    public AudioTrackAudioOutput t;
    public AudioAttributes u;
    public MediaPositionParameters v;
    public MediaPositionParameters w;
    public PlaybackParameters x;
    public boolean y;
    public long z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface AudioOffloadSupportProvider {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AudioOutputListener implements AudioOutput$Listener {
        public AudioOutputListener(AudioOutputProvider.OutputConfig outputConfig) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface AudioTrackBufferSizeProvider {
        public static final DefaultAudioTrackBufferSizeProvider a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Context a;
        public final AudioCapabilities b = AudioCapabilities.f;
        public DefaultAudioProcessorChain c;
        public boolean d;
        public DefaultAudioTrackBufferSizeProvider e;
        public AudioTrackAudioOutputProvider f;
        public DefaultAudioOffloadSupportProvider g;

        public Builder(Context context) {
            this.a = context;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Configuration {
        public final Format a;
        public final Format b;
        public final int c;
        public final int d;
        public final AudioOutputProvider.OutputConfig e;
        public final AudioProcessingPipeline f;
        public final Timeline g;
        public final Object h;

        public Configuration(Format format, Format format2, int i, int i2, AudioOutputProvider.OutputConfig outputConfig, AudioProcessingPipeline audioProcessingPipeline, Timeline timeline, Object obj) {
            this.a = format;
            this.b = format2;
            this.c = i;
            this.d = i2;
            this.e = outputConfig;
            this.f = audioProcessingPipeline;
            this.g = timeline;
            this.h = obj;
        }

        public static Configuration a(Configuration configuration, AudioOutputProvider.OutputConfig outputConfig) {
            return new Configuration(configuration.a, configuration.b, configuration.c, configuration.d, outputConfig, configuration.f, configuration.g, configuration.h);
        }

        public static boolean b(Configuration configuration) {
            return Objects.equals(configuration.a.p, "audio/raw");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DefaultAudioProcessorChain {
        public final AudioProcessor[] a;
        public final SilenceSkippingAudioProcessor b;
        public final SonicAudioProcessor c;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, androidx.media3.common.audio.SonicAudioProcessor] */
        public DefaultAudioProcessorChain(AudioProcessor... audioProcessorArr) {
            SilenceSkippingAudioProcessor silenceSkippingAudioProcessor = new SilenceSkippingAudioProcessor();
            ?? obj = new Object();
            obj.c = 1.0f;
            obj.d = 1.0f;
            AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.e;
            obj.e = audioFormat;
            obj.f = audioFormat;
            obj.g = audioFormat;
            obj.h = audioFormat;
            ByteBuffer byteBuffer = AudioProcessor.a;
            obj.k = byteBuffer;
            obj.l = byteBuffer;
            obj.b = -1;
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.b = silenceSkippingAudioProcessor;
            this.c = obj;
            audioProcessorArr2[audioProcessorArr.length] = silenceSkippingAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length + 1] = obj;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaPositionParameters {
        public final PlaybackParameters a;
        public final long b;
        public final long c;
        public long d;

        public MediaPositionParameters(PlaybackParameters playbackParameters, long j, long j2) {
            this.a = playbackParameters;
            this.b = j;
            this.c = j2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PendingExceptionHolder<T extends Exception> {
        public Exception a;
        public long b = -9223372036854775807L;
        public long c = -9223372036854775807L;

        public final void a(Exception exc) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.a == null) {
                this.a = exc;
            }
            if (this.b == -9223372036854775807L && DefaultAudioSink.d0.get() <= 0) {
                this.b = 200 + elapsedRealtime;
            }
            long j = this.b;
            if (j != -9223372036854775807L && elapsedRealtime >= j) {
                Exception exc2 = this.a;
                if (exc2 != exc) {
                    exc2.addSuppressed(exc);
                }
                Exception exc3 = this.a;
                this.a = null;
                this.b = -9223372036854775807L;
                this.c = -9223372036854775807L;
                throw exc3;
            }
            this.c = elapsedRealtime + 50;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0081, code lost:
    
        r9 = r0.getDeviceId();
     */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.exoplayer.audio.TrimmingAudioProcessor, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.ToInt16PcmAudioProcessor] */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.exoplayer.audio.ToFloatPcmAudioProcessor] */
    /* JADX WARN: Type inference failed for: r9v2, types: [androidx.media3.common.audio.BaseAudioProcessor, java.lang.Object, androidx.media3.exoplayer.audio.ChannelMappingAudioProcessor] */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.media3.common.AuxEffectInfo, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DefaultAudioSink(Builder builder) {
        Context applicationContext;
        int deviceId;
        Context context = builder.a;
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.a = applicationContext;
        this.u = AudioAttributes.b;
        this.b = builder.c;
        this.i = 0;
        this.r = builder.f;
        ?? baseAudioProcessor = new BaseAudioProcessor();
        this.c = baseAudioProcessor;
        ?? baseAudioProcessor2 = new BaseAudioProcessor();
        baseAudioProcessor2.m = Util.b;
        this.d = baseAudioProcessor2;
        this.e = new BaseAudioProcessor();
        this.f = new BaseAudioProcessor();
        this.g = ImmutableList.u(baseAudioProcessor2, baseAudioProcessor);
        this.I = 1.0f;
        this.R = 0;
        this.T = new Object();
        PlaybackParameters playbackParameters = PlaybackParameters.d;
        this.w = new MediaPositionParameters(playbackParameters, 0L, 0L);
        this.x = playbackParameters;
        this.y = false;
        this.h = new ArrayDeque();
        this.k = new PendingExceptionHolder();
        this.l = new PendingExceptionHolder();
        int i = -1;
        if (Build.VERSION.SDK_INT >= 34 && context != null && deviceId != 0 && deviceId != -1) {
            i = deviceId;
        }
        this.V = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00ec A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int i(int i, ByteBuffer byteBuffer) {
        int i2;
        int i3;
        byte b;
        int i4;
        byte b2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b3 = 0;
        if (i != 20) {
            if (i != 30) {
                int i10 = 3;
                switch (i) {
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        break;
                    case KeyModifiers.a /* 9 */:
                        int position = byteBuffer.position();
                        String str = Util.a;
                        int i11 = byteBuffer.getInt(position);
                        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                            i11 = Integer.reverseBytes(i11);
                        }
                        if ((i11 & (-2097152)) == -2097152 && (i6 = (i11 >>> 19) & 3) != 1 && (i7 = (i11 >>> 17) & 3) != 0) {
                            int i12 = (i11 >>> 12) & 15;
                            int i13 = (i11 >>> 10) & 3;
                            if (i12 != 0 && i12 != 15 && i13 != 3) {
                                i5 = 1152;
                                if (i7 != 1) {
                                    if (i7 != 2) {
                                        if (i7 == 3) {
                                            i5 = 384;
                                        } else {
                                            fe.h();
                                            return 0;
                                        }
                                    }
                                } else if (i6 != 3) {
                                    i5 = 576;
                                }
                                if (i5 == -1) {
                                    return i5;
                                }
                                fe.h();
                                return 0;
                            }
                        }
                        i5 = -1;
                        if (i5 == -1) {
                        }
                        break;
                    case KeyModifiers.b /* 10 */:
                        return 1024;
                    case 11:
                    case KeyModifiers.c /* 12 */:
                        return 2048;
                    default:
                        switch (i) {
                            case 14:
                                int position2 = byteBuffer.position();
                                int limit = byteBuffer.limit() - 10;
                                int i14 = position2;
                                while (true) {
                                    if (i14 <= limit) {
                                        String str2 = Util.a;
                                        int i15 = byteBuffer.getInt(i14 + 4);
                                        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                            i15 = Integer.reverseBytes(i15);
                                        }
                                        if ((i15 & (-2)) == -126718022) {
                                            i8 = i14 - position2;
                                        } else {
                                            i14++;
                                        }
                                    } else {
                                        i8 = -1;
                                    }
                                }
                                if (i8 == -1) {
                                    return 0;
                                }
                                if ((byteBuffer.get(byteBuffer.position() + i8 + 7) & 255) == 187) {
                                    b3 = 1;
                                }
                                int position3 = byteBuffer.position() + i8;
                                if (b3 != 0) {
                                    i9 = 9;
                                } else {
                                    i9 = 8;
                                }
                                return (40 << ((byteBuffer.get(position3 + i9) >> 4) & 7)) * 16;
                            case 15:
                                return 512;
                            case 16:
                                return 1024;
                            case 17:
                                byte[] bArr = new byte[16];
                                int position4 = byteBuffer.position();
                                byteBuffer.get(bArr);
                                byteBuffer.position(position4);
                                return Ac4Util.c(new ParsableBitArray(16, bArr)).c;
                            case 18:
                                break;
                            default:
                                u2.l(q.g(i, "Unexpected audio encoding: "));
                                return 0;
                        }
                }
                if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
                    if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                        i10 = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
                    }
                    return Ac3Util.a[i10] * 256;
                }
                return 1536;
            }
            if (byteBuffer.getInt(0) != -233094848 && byteBuffer.getInt(0) != -398277519) {
                if (byteBuffer.getInt(0) == 622876772) {
                    return 4096;
                }
                int position5 = byteBuffer.position();
                byte b4 = byteBuffer.get(position5);
                if (b4 != -2) {
                    if (b4 != -1) {
                        if (b4 != 31) {
                            i3 = (byteBuffer.get(position5 + 4) & 1) << 6;
                            b = byteBuffer.get(position5 + 5);
                        } else {
                            i3 = (byteBuffer.get(position5 + 5) & 7) << 4;
                            b2 = byteBuffer.get(position5 + 6);
                        }
                    } else {
                        i3 = (byteBuffer.get(position5 + 4) & 7) << 4;
                        b2 = byteBuffer.get(position5 + 7);
                    }
                    i4 = b2 & 60;
                    return (((i4 >> 2) | i3) + 1) * 32;
                }
                i3 = (byteBuffer.get(position5 + 5) & 1) << 6;
                b = byteBuffer.get(position5 + 4);
                i4 = b & 252;
                return (((i4 >> 2) | i3) + 1) * 32;
            }
            return 1024;
        }
        if ((byteBuffer.get(5) & 2) == 0) {
            i2 = 0;
        } else {
            byte b5 = byteBuffer.get(26);
            int i16 = 28;
            int i17 = 28;
            for (int i18 = 0; i18 < b5; i18++) {
                i17 += byteBuffer.get(i18 + 27);
            }
            byte b6 = byteBuffer.get(i17 + 26);
            for (int i19 = 0; i19 < b6; i19++) {
                i16 += byteBuffer.get(i17 + 27 + i19);
            }
            i2 = i17 + i16;
        }
        int i20 = byteBuffer.get(i2 + 26) + 27 + i2;
        byte b7 = byteBuffer.get(i20);
        if (byteBuffer.limit() - i20 > 1) {
            b3 = byteBuffer.get(i20 + 1);
        }
        return (int) ((OpusUtil.b(b7, b3) * 48000) / 1000000);
    }

    public final void a(long j) {
        PlaybackParameters playbackParameters;
        boolean z;
        boolean z2;
        boolean w = w();
        boolean z3 = false;
        DefaultAudioProcessorChain defaultAudioProcessorChain = this.b;
        if (!w) {
            if (!this.W && Configuration.b(this.p)) {
                int i = this.p.a.M;
                playbackParameters = this.x;
                SonicAudioProcessor sonicAudioProcessor = defaultAudioProcessorChain.c;
                float f = playbackParameters.a;
                sonicAudioProcessor.getClass();
                if (f > 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.e(z);
                if (sonicAudioProcessor.c != f) {
                    sonicAudioProcessor.c = f;
                    sonicAudioProcessor.i = true;
                }
                float f2 = playbackParameters.b;
                if (f2 > 0.0f) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.e(z2);
                if (sonicAudioProcessor.d != f2) {
                    sonicAudioProcessor.d = f2;
                    sonicAudioProcessor.i = true;
                }
            } else {
                playbackParameters = PlaybackParameters.d;
            }
            this.x = playbackParameters;
        } else {
            playbackParameters = PlaybackParameters.d;
        }
        PlaybackParameters playbackParameters2 = playbackParameters;
        if (!this.W && Configuration.b(this.p)) {
            int i2 = this.p.a.M;
            z3 = this.y;
            defaultAudioProcessorChain.b.o = z3;
        }
        this.y = z3;
        this.h.add(new MediaPositionParameters(playbackParameters2, Math.max(0L, j), Util.H(this.p.e.b, j())));
        v(j);
        AudioSink$Listener audioSink$Listener = this.n;
        if (audioSink$Listener != null) {
            final boolean z4 = this.y;
            final AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.R0;
            Handler handler = eventDispatcher.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: t3
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener audioRendererEventListener = AudioRendererEventListener.EventDispatcher.this.b;
                        String str = Util.a;
                        audioRendererEventListener.e(z4);
                    }
                });
            }
        }
    }

    public final AudioTrackAudioOutput b(AudioOutputProvider.OutputConfig outputConfig) {
        try {
            return ((AudioTrackAudioOutputProvider) this.r).a(outputConfig);
        } catch (AudioOutputProvider.InitializationException e) {
            AudioSink$InitializationException audioSink$InitializationException = new AudioSink$InitializationException(outputConfig.b, outputConfig.c, outputConfig.a, outputConfig.f, this.p.a, outputConfig.e, e);
            AudioSink$Listener audioSink$Listener = this.n;
            if (audioSink$Listener != null) {
                ((MediaCodecAudioRenderer.AudioSinkListener) audioSink$Listener).a(audioSink$InitializationException);
                throw audioSink$InitializationException;
            }
            throw audioSink$InitializationException;
        }
    }

    public final void c(AudioSink$AudioSinkConfig audioSink$AudioSinkConfig) {
        AudioProcessingPipeline audioProcessingPipeline;
        Format format;
        int i;
        Object obj;
        if (this.s == null && this.a != null) {
            h7 h7Var = new h7(this);
            this.s = h7Var;
            AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = (AudioTrackAudioOutputProvider) this.r;
            audioTrackAudioOutputProvider.f();
            if (audioTrackAudioOutputProvider.f == null) {
                audioTrackAudioOutputProvider.f = new ListenerSet(Thread.currentThread());
            }
            audioTrackAudioOutputProvider.f.a(h7Var);
        }
        Format format2 = audioSink$AudioSinkConfig.a;
        String str = format2.p;
        int i2 = format2.J;
        int i3 = format2.M;
        int i4 = -1;
        if ("audio/raw".equals(str)) {
            Preconditions.e(Util.A(i3));
            int n = Util.n(i3) * i2;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            builder.f(this.g);
            builder.d(this.e);
            builder.h(this.b.a);
            audioProcessingPipeline = new AudioProcessingPipeline(builder.i());
            if (audioProcessingPipeline.equals(this.q)) {
                audioProcessingPipeline = this.q;
            }
            int i5 = format2.N;
            int i6 = format2.O;
            TrimmingAudioProcessor trimmingAudioProcessor = this.d;
            trimmingAudioProcessor.i = i5;
            trimmingAudioProcessor.j = i6;
            this.c.i = audioSink$AudioSinkConfig.b;
            AudioProcessor.AudioFormat audioFormat = new AudioProcessor.AudioFormat(format2.L, i2, i3);
            try {
                ImmutableList immutableList = audioProcessingPipeline.a;
                if (!audioFormat.equals(AudioProcessor.AudioFormat.e)) {
                    for (int i7 = 0; i7 < immutableList.size(); i7++) {
                        AudioProcessor audioProcessor = (AudioProcessor) immutableList.get(i7);
                        AudioProcessor.AudioFormat m = audioProcessor.m(audioFormat);
                        if (audioProcessor.h()) {
                            Preconditions.n(!m.equals(AudioProcessor.AudioFormat.e));
                            audioFormat = m;
                        }
                    }
                    int i8 = audioFormat.b;
                    int i9 = audioFormat.c;
                    Format.Builder a = format2.a();
                    a.L = i9;
                    a.K = audioFormat.a;
                    a.I = i8;
                    if (i8 == i2) {
                        i4 = format2.K;
                    }
                    a.J = i4;
                    format = new Format(a);
                    i = Util.n(i9) * i8;
                    i4 = n;
                } else {
                    throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
                }
            } catch (AudioProcessor.UnhandledAudioFormatException e) {
                throw new AudioSink$ConfigurationException(e, format2);
            }
        } else {
            audioProcessingPipeline = new AudioProcessingPipeline(ImmutableList.r());
            format = format2;
            i = -1;
        }
        AudioProcessingPipeline audioProcessingPipeline2 = audioProcessingPipeline;
        AudioOutputProvider.FormatConfig g = g(format);
        Format format3 = g.a;
        try {
            AudioOutputProvider.OutputConfig c = ((AudioTrackAudioOutputProvider) this.r).c(g);
            boolean z = c.e;
            if (c.a != 0) {
                if (c.c != 0) {
                    this.Y = false;
                    Timeline timeline = audioSink$AudioSinkConfig.c;
                    MediaSource.MediaPeriodId mediaPeriodId = audioSink$AudioSinkConfig.d;
                    if (mediaPeriodId != null) {
                        obj = mediaPeriodId.a;
                    } else {
                        obj = null;
                    }
                    Configuration configuration = new Configuration(format2, format, i4, i, c, audioProcessingPipeline2, timeline, obj);
                    if (n()) {
                        this.o = configuration;
                        return;
                    } else {
                        this.p = configuration;
                        return;
                    }
                }
                throw new AudioSink$ConfigurationException(format3, "Invalid output channel config (isOffload=" + z + ")");
            }
            throw new AudioSink$ConfigurationException(format3, "Invalid output encoding (isOffload=" + z + ")");
        } catch (AudioOutputProvider.ConfigurationException e2) {
            throw new AudioSink$ConfigurationException(e2, format2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(long j) {
        AudioSink$Listener audioSink$Listener;
        AudioSink$Listener audioSink$Listener2;
        Renderer.WakeupListener wakeupListener;
        if (this.L != null) {
            PendingExceptionHolder pendingExceptionHolder = this.l;
            if (pendingExceptionHolder.a == null || (d0.get() <= 0 && SystemClock.elapsedRealtime() >= pendingExceptionHolder.c)) {
                int remaining = this.L.remaining();
                boolean z = true;
                try {
                    boolean d = this.t.d(this.K, j, this.L);
                    this.X = SystemClock.elapsedRealtime();
                    pendingExceptionHolder.a = null;
                    pendingExceptionHolder.b = -9223372036854775807L;
                    pendingExceptionHolder.c = -9223372036854775807L;
                    if (this.t.c()) {
                        if (this.C > 0) {
                            this.Z = false;
                        }
                        if (this.P && (audioSink$Listener2 = this.n) != null && !d && !this.Z && (wakeupListener = MediaCodecAudioRenderer.this.R) != null) {
                            wakeupListener.a();
                        }
                    }
                    if (Configuration.b(this.p)) {
                        this.B += remaining - this.L.remaining();
                    }
                    if (d) {
                        if (!Configuration.b(this.p)) {
                            if (this.L != this.J) {
                                z = false;
                            }
                            Preconditions.n(z);
                            this.C = (this.D * this.K) + this.C;
                        }
                        this.L = null;
                    }
                } catch (AudioOutput$WriteException e) {
                    boolean z2 = e.k;
                    if (z2) {
                        if (j() <= 0) {
                            if (this.t.c()) {
                                if (this.p.e.e) {
                                    this.Y = true;
                                }
                            }
                        }
                        AudioSink$WriteException audioSink$WriteException = new AudioSink$WriteException(e.j, this.p.a, z);
                        audioSink$Listener = this.n;
                        if (audioSink$Listener != null) {
                            ((MediaCodecAudioRenderer.AudioSinkListener) audioSink$Listener).a(audioSink$WriteException);
                        }
                        if (z2) {
                            pendingExceptionHolder.a(audioSink$WriteException);
                            return;
                        }
                        throw audioSink$WriteException;
                    }
                    z = false;
                    AudioSink$WriteException audioSink$WriteException2 = new AudioSink$WriteException(e.j, this.p.a, z);
                    audioSink$Listener = this.n;
                    if (audioSink$Listener != null) {
                    }
                    if (z2) {
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0043 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e() {
        ByteBuffer byteBuffer;
        if (!this.q.c()) {
            d(Long.MIN_VALUE);
            if (this.L != null) {
                return false;
            }
            return true;
        }
        AudioProcessingPipeline audioProcessingPipeline = this.q;
        if (audioProcessingPipeline.c() && !audioProcessingPipeline.d) {
            audioProcessingPipeline.d = true;
            ((AudioProcessor) audioProcessingPipeline.b.get(0)).l();
        }
        q(Long.MIN_VALUE);
        if (!this.q.b() || ((byteBuffer = this.L) != null && byteBuffer.hasRemaining())) {
        }
    }

    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    public final void f() {
        if (n()) {
            this.z = 0L;
            this.A = 0L;
            this.B = 0L;
            this.C = 0L;
            this.Z = false;
            this.D = 0;
            this.w = new MediaPositionParameters(this.x, 0L, 0L);
            this.G = 0L;
            this.v = null;
            this.h.clear();
            this.J = null;
            this.K = 0;
            this.L = null;
            this.N = false;
            this.M = false;
            this.O = false;
            this.d.o = 0L;
            v(-9223372036854775807L);
            this.j = null;
            Configuration configuration = this.o;
            if (configuration != null) {
                this.p = configuration;
                this.o = null;
            }
            d0.incrementAndGet();
            AudioTrackAudioOutput audioTrackAudioOutput = this.t;
            if (audioTrackAudioOutput.f.d.getPlayState() == 3) {
                audioTrackAudioOutput.a.pause();
            }
            if (Build.VERSION.SDK_INT >= 29 && audioTrackAudioOutput.c()) {
                AudioTrackAudioOutput.StreamEventCallbackV29 streamEventCallbackV29 = audioTrackAudioOutput.i;
                streamEventCallbackV29.getClass();
                AudioTrackAudioOutput.this.a.unregisterStreamEventCallback(streamEventCallbackV29.b);
                streamEventCallbackV29.a.removeCallbacksAndMessages(null);
            }
            AudioTrackAudioOutput.OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = audioTrackAudioOutput.e;
            if (onRoutingChangedListenerApi24 != null) {
                AudioTrack audioTrack = onRoutingChangedListenerApi24.a;
                b bVar = onRoutingChangedListenerApi24.d;
                bVar.getClass();
                audioTrack.removeOnRoutingChangedListener(bVar);
                onRoutingChangedListenerApi24.d = null;
                audioTrackAudioOutput.e = null;
            }
            AudioTrack audioTrack2 = audioTrackAudioOutput.a;
            ListenerSet listenerSet = audioTrackAudioOutput.j;
            Handler k = Util.k(null);
            synchronized (AudioTrackAudioOutput.q) {
                try {
                    if (AudioTrackAudioOutput.r == null) {
                        AudioTrackAudioOutput.r = Executors.newSingleThreadScheduledExecutor(new Object());
                    }
                    AudioTrackAudioOutput.s++;
                    AudioTrackAudioOutput.r.schedule(new s3(audioTrack2, k, listenerSet, 1), 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.t = null;
        }
        PendingExceptionHolder pendingExceptionHolder = this.l;
        pendingExceptionHolder.a = null;
        pendingExceptionHolder.b = -9223372036854775807L;
        pendingExceptionHolder.c = -9223372036854775807L;
        PendingExceptionHolder pendingExceptionHolder2 = this.k;
        pendingExceptionHolder2.a = null;
        pendingExceptionHolder2.b = -9223372036854775807L;
        pendingExceptionHolder2.c = -9223372036854775807L;
        this.a0 = 0L;
        this.b0 = 0L;
        Handler handler = this.c0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public final AudioOutputProvider.FormatConfig g(Format format) {
        boolean z;
        AudioOutputProvider.FormatConfig.Builder builder = new AudioOutputProvider.FormatConfig.Builder(format);
        builder.b = this.u;
        if (this.i != 0) {
            z = true;
        } else {
            z = false;
        }
        builder.d = z;
        builder.c = this.U;
        builder.e = this.R;
        builder.g = this.W;
        builder.h = -1;
        builder.f = this.V;
        return new AudioOutputProvider.FormatConfig(builder);
    }

    public final int h(Format format) {
        boolean z;
        if (Util.A(format.M) && format.M != 2) {
            Format.Builder a = format.a();
            a.L = 2;
            format = new Format(a);
            z = true;
        } else {
            z = false;
        }
        int i = ((AudioTrackAudioOutputProvider) this.r).b(g(format)).d;
        if (i != 1) {
            if (i != 2) {
                return 0;
            }
            if (!z) {
                return 2;
            }
        }
        return 1;
    }

    public final long j() {
        if (Configuration.b(this.p)) {
            long j = this.B;
            long j2 = this.p.d;
            return ((j + j2) - 1) / j2;
        }
        return this.C;
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x00aa, code lost:
    
        if (m() == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0117, code lost:
    
        if (r5 == 0) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(int i, long j, ByteBuffer byteBuffer) {
        boolean z;
        long j2;
        long j3;
        boolean z2;
        long j4;
        ByteBuffer byteBuffer2 = this.J;
        if (byteBuffer2 != null && byteBuffer != byteBuffer2) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.e(z);
        if (this.o != null) {
            if (e()) {
                if (this.t != null) {
                    AudioOutputProvider.OutputConfig outputConfig = this.p.e;
                    g(this.o.b);
                    if (!this.o.e.equals(outputConfig)) {
                        p();
                        if (!l()) {
                            f();
                            a(j);
                        }
                    }
                }
                this.p = this.o;
                this.o = null;
                AudioTrackAudioOutput audioTrackAudioOutput = this.t;
                if (audioTrackAudioOutput != null && audioTrackAudioOutput.c() && this.p.e.k) {
                    AudioTrackAudioOutput audioTrackAudioOutput2 = this.t;
                    AudioTrack audioTrack = audioTrackAudioOutput2.a;
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 29 && audioTrack.getPlayState() == 3) {
                        audioTrack.setOffloadEndOfStream();
                        AudioTrackPositionTracker audioTrackPositionTracker = audioTrackAudioOutput2.f;
                        audioTrackPositionTracker.A = true;
                        audioTrackPositionTracker.h.a.f = true;
                    }
                    AudioTrackAudioOutput audioTrackAudioOutput3 = this.t;
                    Format format = this.p.a;
                    int i3 = format.N;
                    int i4 = format.O;
                    if (i2 >= 29) {
                        audioTrackAudioOutput3.a.setOffloadDelayPadding(i3, i4);
                    } else {
                        audioTrackAudioOutput3.getClass();
                    }
                    this.Z = true;
                }
                a(j);
            }
            return false;
        }
        boolean n = n();
        PendingExceptionHolder pendingExceptionHolder = this.k;
        if (!n) {
            try {
            } catch (AudioSink$InitializationException e) {
                if (!e.j) {
                    pendingExceptionHolder.a(e);
                    return false;
                }
                throw e;
            }
        }
        pendingExceptionHolder.a = null;
        pendingExceptionHolder.b = -9223372036854775807L;
        pendingExceptionHolder.c = -9223372036854775807L;
        if (this.F) {
            this.G = Math.max(0L, j);
            this.E = false;
            this.F = false;
            if (w()) {
                t();
            }
            a(j);
            if (this.P) {
                o();
            }
        }
        if (this.J == null) {
            if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.e(z2);
            if (byteBuffer.hasRemaining()) {
                if (!Configuration.b(this.p) && this.D == 0) {
                    int i5 = i(this.p.e.a, byteBuffer);
                    this.D = i5;
                }
                if (this.v != null) {
                    if (e()) {
                        a(j);
                        this.v = null;
                    }
                    return false;
                }
                long j5 = this.G;
                Configuration configuration = this.p;
                if (Configuration.b(configuration)) {
                    j2 = -9223372036854775807L;
                    j3 = 0;
                    j4 = this.z / this.p.c;
                } else {
                    j2 = -9223372036854775807L;
                    j3 = 0;
                    j4 = this.A;
                }
                long H = Util.H(configuration.a.L, j4 - this.d.o) + j5;
                if (!this.E && Math.abs(H - j) > 200000) {
                    AudioSink$Listener audioSink$Listener = this.n;
                    if (audioSink$Listener != null) {
                        ((MediaCodecAudioRenderer.AudioSinkListener) audioSink$Listener).a(new Exception("Unexpected audio track timestamp discontinuity: expected " + H + ", got " + j));
                    }
                    this.E = true;
                }
                if (this.E) {
                    if (e()) {
                        long j6 = j - H;
                        this.G += j6;
                        this.E = false;
                        a(j);
                        AudioSink$Listener audioSink$Listener2 = this.n;
                        if (audioSink$Listener2 != null && j6 != j3) {
                            MediaCodecAudioRenderer.this.Z0 = true;
                        }
                    }
                    return false;
                }
                if (Configuration.b(this.p)) {
                    this.z += byteBuffer.remaining();
                } else {
                    this.A = (this.D * i) + this.A;
                }
                this.J = byteBuffer;
                this.K = i;
            }
            return true;
        }
        j2 = -9223372036854775807L;
        j3 = 0;
        q(j);
        if (!this.J.hasRemaining()) {
            this.J = null;
            this.K = 0;
            return true;
        }
        AudioTrackAudioOutput audioTrackAudioOutput4 = this.t;
        AudioTrackPositionTracker audioTrackPositionTracker2 = audioTrackAudioOutput4.f;
        long b = audioTrackAudioOutput4.b();
        if (audioTrackPositionTracker2.v != j2 && b > j3) {
            ((androidx.media3.common.util.SystemClock) audioTrackPositionTracker2.b).getClass();
            if (SystemClock.elapsedRealtime() - audioTrackPositionTracker2.v >= 200) {
                Log.f("DefaultAudioSink", "Resetting stalled audio output");
                f();
                return true;
            }
        }
        return false;
    }

    public final boolean l() {
        if (n()) {
            if (Build.VERSION.SDK_INT < 29 || !this.t.c() || !this.O) {
                long j = j();
                long a = this.t.a();
                this.t.getClass();
                if (j > Util.J(a, r10.a.getSampleRate(), 1000000L, RoundingMode.UP)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r4v8, types: [androidx.media3.exoplayer.audio.AudioSink$AudioTrackConfig, java.lang.Object] */
    public final boolean m() {
        int b;
        AudioTrackAudioOutput audioTrackAudioOutput;
        LoudnessCodecController loudnessCodecController;
        boolean equals;
        LogSessionId unused;
        PendingExceptionHolder pendingExceptionHolder = this.k;
        boolean z = false;
        if (pendingExceptionHolder.a != null && (d0.get() > 0 || SystemClock.elapsedRealtime() < pendingExceptionHolder.c)) {
            return false;
        }
        try {
            audioTrackAudioOutput = b(this.p.e);
        } catch (AudioSink$InitializationException e) {
            AudioOutputProvider.OutputConfig outputConfig = this.p.e;
            int i = outputConfig.f;
            boolean A = Util.A(outputConfig.a);
            Configuration configuration = this.p;
            if (A) {
                b = configuration.e.b * configuration.d;
            } else {
                int i2 = configuration.a.k;
                if (i2 != -1) {
                    b = i2 / 8;
                } else {
                    b = ExtractorUtil.b(configuration.e.a);
                    if (b == -2147483647) {
                        b = 1000000;
                    }
                }
            }
            AudioOutputProvider.OutputConfig outputConfig2 = this.p.e;
            int max = Math.max(b, AudioTrack.getMinBufferSize(outputConfig2.b, outputConfig2.c, outputConfig2.a));
            int i3 = this.p.d;
            if (i3 == -1) {
                i3 = 1;
            }
            while (i > max) {
                i = Math.max(max, i / 2);
                int i4 = i % i3;
                if (i4 != 0) {
                    i = (i3 - i4) + i;
                }
                AudioOutputProvider.OutputConfig.Builder a = this.p.e.a();
                a.f = i;
                AudioOutputProvider.OutputConfig outputConfig3 = new AudioOutputProvider.OutputConfig(a);
                try {
                    AudioTrackAudioOutput b2 = b(outputConfig3);
                    this.p = Configuration.a(this.p, outputConfig3);
                    audioTrackAudioOutput = b2;
                } catch (AudioSink$InitializationException e2) {
                    e.addSuppressed(e2);
                }
            }
            if (this.p.e.e) {
                this.Y = true;
                throw e;
            }
            throw e;
        }
        this.t = audioTrackAudioOutput;
        AudioOutputListener audioOutputListener = new AudioOutputListener(this.p.e);
        this.j = audioOutputListener;
        audioTrackAudioOutput.j.a(audioOutputListener);
        if (this.t.c()) {
            Configuration configuration2 = this.p;
            if (configuration2.e.k) {
                AudioTrackAudioOutput audioTrackAudioOutput2 = this.t;
                Format format = configuration2.a;
                int i5 = format.N;
                int i6 = format.O;
                if (Build.VERSION.SDK_INT >= 29) {
                    audioTrackAudioOutput2.a.setOffloadDelayPadding(i5, i6);
                } else {
                    audioTrackAudioOutput2.getClass();
                }
            }
        }
        PlayerId playerId = this.m;
        if (playerId != null) {
            AudioTrackAudioOutput audioTrackAudioOutput3 = this.t;
            audioTrackAudioOutput3.getClass();
            if (Build.VERSION.SDK_INT >= 31) {
                LogSessionId a2 = playerId.a();
                unused = LogSessionId.LOG_SESSION_ID_NONE;
                equals = a2.equals(LogSessionId.LOG_SESSION_ID_NONE);
                if (!equals) {
                    audioTrackAudioOutput3.a.setLogSessionId(a2);
                }
            }
        }
        if (n()) {
            this.t.a.setVolume(this.I);
        }
        this.T.getClass();
        AudioDeviceInfo audioDeviceInfo = this.U;
        if (audioDeviceInfo != null) {
            this.t.a.setPreferredDevice(audioDeviceInfo);
        }
        this.F = true;
        int audioSessionId = this.t.a.getAudioSessionId();
        if (audioSessionId != this.R) {
            z = true;
        }
        this.R = audioSessionId;
        AudioSink$Listener audioSink$Listener = this.n;
        if (audioSink$Listener != null) {
            AudioOutputProvider.OutputConfig outputConfig4 = this.p.e;
            ?? obj = new Object();
            AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.R0;
            Handler handler = eventDispatcher.a;
            if (handler != null) {
                handler.post(new q3(eventDispatcher, obj, 1));
            }
            if (z) {
                this.S = true;
                Configuration configuration3 = this.p;
                AudioOutputProvider.OutputConfig.Builder a3 = configuration3.e.a();
                a3.h = this.R;
                this.p = Configuration.a(configuration3, new AudioOutputProvider.OutputConfig(a3));
                Configuration configuration4 = this.o;
                if (configuration4 != null) {
                    AudioOutputProvider.OutputConfig.Builder a4 = configuration4.e.a();
                    a4.h = this.R;
                    this.o = Configuration.a(configuration4, new AudioOutputProvider.OutputConfig(a4));
                }
                AudioSink$Listener audioSink$Listener2 = this.n;
                int i7 = this.R;
                MediaCodecAudioRenderer mediaCodecAudioRenderer = MediaCodecAudioRenderer.this;
                if (Build.VERSION.SDK_INT >= 35 && (loudnessCodecController = mediaCodecAudioRenderer.T0) != null) {
                    loudnessCodecController.b(i7);
                }
                AudioRendererEventListener.EventDispatcher eventDispatcher2 = mediaCodecAudioRenderer.R0;
                Handler handler2 = eventDispatcher2.a;
                if (handler2 != null) {
                    handler2.post(new w2(i7, 1, eventDispatcher2));
                }
            }
        }
        return true;
    }

    public final boolean n() {
        if (this.t != null) {
            return true;
        }
        return false;
    }

    public final void o() {
        this.P = true;
        if (n()) {
            AudioTrackAudioOutput audioTrackAudioOutput = this.t;
            AudioTrackPositionTracker audioTrackPositionTracker = audioTrackAudioOutput.f;
            if (audioTrackPositionTracker.u != -9223372036854775807L) {
                ((androidx.media3.common.util.SystemClock) audioTrackPositionTracker.b).getClass();
                audioTrackPositionTracker.u = Util.D(SystemClock.elapsedRealtime());
            }
            audioTrackPositionTracker.j = Util.H(audioTrackPositionTracker.e, audioTrackPositionTracker.a());
            audioTrackPositionTracker.h.a(0);
            if (!audioTrackAudioOutput.k || audioTrackAudioOutput.c()) {
                audioTrackAudioOutput.a.play();
            }
        }
    }

    public final void p() {
        if (!this.N) {
            this.N = true;
            if (this.t.c()) {
                this.O = false;
            }
            AudioTrackAudioOutput audioTrackAudioOutput = this.t;
            if (!audioTrackAudioOutput.k) {
                audioTrackAudioOutput.k = true;
                AudioTrackPositionTracker audioTrackPositionTracker = audioTrackAudioOutput.f;
                long b = audioTrackAudioOutput.b();
                audioTrackPositionTracker.w = audioTrackPositionTracker.a();
                ((androidx.media3.common.util.SystemClock) audioTrackPositionTracker.b).getClass();
                audioTrackPositionTracker.u = Util.D(SystemClock.elapsedRealtime());
                audioTrackPositionTracker.x = b;
                audioTrackAudioOutput.a.stop();
            }
        }
    }

    public final void q(long j) {
        ByteBuffer byteBuffer;
        d(j);
        if (this.L == null) {
            if (!this.q.c()) {
                ByteBuffer byteBuffer2 = this.J;
                if (byteBuffer2 != null) {
                    u(byteBuffer2);
                    d(j);
                    return;
                }
                return;
            }
            while (!this.q.b()) {
                do {
                    AudioProcessingPipeline audioProcessingPipeline = this.q;
                    if (!audioProcessingPipeline.c()) {
                        byteBuffer = AudioProcessor.a;
                    } else {
                        ByteBuffer byteBuffer3 = audioProcessingPipeline.c[audioProcessingPipeline.a()];
                        if (byteBuffer3.hasRemaining()) {
                            byteBuffer = byteBuffer3;
                        } else {
                            audioProcessingPipeline.d(AudioProcessor.a);
                            byteBuffer = audioProcessingPipeline.c[audioProcessingPipeline.a()];
                        }
                    }
                    if (byteBuffer.hasRemaining()) {
                        u(byteBuffer);
                        d(j);
                    } else {
                        ByteBuffer byteBuffer4 = this.J;
                        if (byteBuffer4 != null && byteBuffer4.hasRemaining()) {
                            AudioProcessingPipeline audioProcessingPipeline2 = this.q;
                            ByteBuffer byteBuffer5 = this.J;
                            if (audioProcessingPipeline2.c() && !audioProcessingPipeline2.d) {
                                audioProcessingPipeline2.d(byteBuffer5);
                            }
                        } else {
                            return;
                        }
                    }
                } while (this.L == null);
                return;
            }
        }
    }

    public final void r() {
        if (this.p != null) {
            Configuration configuration = this.o;
            if (configuration != null) {
                this.p = configuration;
                this.o = null;
            }
            try {
                this.p = Configuration.a(this.p, ((AudioTrackAudioOutputProvider) this.r).c(g(this.p.b)));
            } catch (AudioOutputProvider.ConfigurationException e) {
                throw new IllegalStateException(new AudioSink$ConfigurationException(e, this.p.a));
            }
        }
        f();
    }

    public final void s() {
        f();
        UnmodifiableListIterator listIterator = this.g.listIterator(0);
        while (listIterator.hasNext()) {
            ((AudioProcessor) listIterator.next()).reset();
        }
        this.e.reset();
        this.f.reset();
        AudioProcessingPipeline audioProcessingPipeline = this.q;
        if (audioProcessingPipeline != null) {
            ImmutableList immutableList = audioProcessingPipeline.a;
            for (int i = 0; i < immutableList.size(); i++) {
                AudioProcessor audioProcessor = (AudioProcessor) immutableList.get(i);
                audioProcessor.k(AudioProcessor.StreamMetadata.d);
                audioProcessor.reset();
            }
            audioProcessingPipeline.b.clear();
            audioProcessingPipeline.c = new ByteBuffer[0];
            AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.e;
            audioProcessingPipeline.d = false;
        }
        this.P = false;
        this.Y = false;
    }

    public final void t() {
        if (n()) {
            AudioTrackAudioOutput audioTrackAudioOutput = this.t;
            PlaybackParameters playbackParameters = this.x;
            AudioTrack audioTrack = audioTrackAudioOutput.a;
            try {
                audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(Util.f(playbackParameters.a, 0.1f, audioTrackAudioOutput.c)).setPitch(Util.f(playbackParameters.b, 0.1f, 8.0f)).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                Log.g("AudioTrackAudioOutput", "Failed to set playback params", e);
            }
            AudioTrackPositionTracker audioTrackPositionTracker = audioTrackAudioOutput.f;
            audioTrackPositionTracker.i = audioTrack.getPlaybackParams().getSpeed();
            audioTrackPositionTracker.h.a(0);
            audioTrackPositionTracker.e();
            PlaybackParams playbackParams = this.t.a.getPlaybackParams();
            this.x = new PlaybackParameters(playbackParams.getSpeed(), playbackParams.getPitch());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00f5, code lost:
    
        if (r9 < 0.0d) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0187, code lost:
    
        if (r9 < 0.0f) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bb, code lost:
    
        if (r9 < 0.0d) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bd, code lost:
    
        r9 = (-r9) * (-2.147483648E9d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00c3, code lost:
    
        r9 = r9 * 2.147483647E9d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00dc, code lost:
    
        if (r9 < 0.0f) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00de, code lost:
    
        r9 = (-r9) * (-2.14748365E9f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00e4, code lost:
    
        r9 = r9 * 2.14748365E9f;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x028e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(ByteBuffer byteBuffer) {
        boolean z;
        ByteBuffer byteBuffer2;
        int i;
        byte b;
        int i2;
        int i3;
        float f;
        double d;
        float f2;
        float f3;
        double max;
        double d2;
        if (this.L == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        if (Configuration.b(this.p)) {
            int J = (int) Util.J(Util.D(20L), this.p.e.b, 1000000L, RoundingMode.UP);
            long j = j();
            long j2 = J;
            if (j < j2) {
                Configuration configuration = this.p;
                int i4 = configuration.e.a;
                int i5 = configuration.d;
                int i6 = (int) j;
                byteBuffer2 = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
                int position = byteBuffer.position();
                while (byteBuffer.hasRemaining() && i6 < J) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 != 4) {
                                if (i4 != 21) {
                                    if (i4 != 22) {
                                        if (i4 != 268435456) {
                                            if (i4 != 1342177280) {
                                                if (i4 != 1610612736) {
                                                    if (i4 != 1879048192) {
                                                        if (i4 != 1895825408) {
                                                            if (i4 == 1912602624) {
                                                                max = Math.max(-1.0d, Math.min(Double.longBitsToDouble(Long.reverseBytes(byteBuffer.getLong())), 1.0d));
                                                            } else {
                                                                io.sentry.d.d();
                                                                return;
                                                            }
                                                        } else {
                                                            f2 = Util.f(Float.intBitsToFloat(Integer.reverseBytes(byteBuffer.getInt())), -1.0f, 1.0f);
                                                        }
                                                    } else {
                                                        max = Math.max(-1.0d, Math.min(byteBuffer.getDouble(), 1.0d));
                                                    }
                                                    i3 = (int) d2;
                                                } else {
                                                    i = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 8);
                                                    i2 = byteBuffer.get() & 255;
                                                }
                                            } else {
                                                i = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
                                                i2 = (byteBuffer.get() & 255) << 8;
                                            }
                                        } else {
                                            i = (byteBuffer.get() & 255) << 24;
                                            i2 = (byteBuffer.get() & 255) << 16;
                                        }
                                        i3 = i | i2;
                                    } else {
                                        i = (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                        b = byteBuffer.get();
                                    }
                                } else {
                                    i = ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                    b = byteBuffer.get();
                                }
                            } else {
                                f2 = Util.f(byteBuffer.getFloat(), -1.0f, 1.0f);
                            }
                            i3 = (int) f3;
                        } else {
                            i3 = (byteBuffer.get() & 255) << 24;
                        }
                        int i7 = (int) ((i3 * i6) / j2);
                        if (i4 == 2) {
                            if (i4 != 3) {
                                if (i4 != 4) {
                                    if (i4 != 21) {
                                        if (i4 != 22) {
                                            if (i4 != 268435456) {
                                                if (i4 != 1342177280) {
                                                    if (i4 != 1610612736) {
                                                        if (i4 != 1879048192) {
                                                            if (i4 != 1895825408) {
                                                                if (i4 == 1912602624) {
                                                                    if (i7 < 0) {
                                                                        d = (-i7) / (-2.147483648E9d);
                                                                    } else {
                                                                        d = i7 / 2.147483647E9d;
                                                                    }
                                                                    byteBuffer2.putLong(Long.reverseBytes(Double.doubleToLongBits(d)));
                                                                } else {
                                                                    io.sentry.d.d();
                                                                    return;
                                                                }
                                                            } else {
                                                                if (i7 < 0) {
                                                                    f = (-i7) / (-2.14748365E9f);
                                                                } else {
                                                                    f = i7 / 2.14748365E9f;
                                                                }
                                                                byteBuffer2.putInt(Integer.reverseBytes(Float.floatToIntBits(f)));
                                                            }
                                                        } else if (i7 < 0) {
                                                            byteBuffer2.putDouble((-i7) / (-2.147483648E9d));
                                                        } else {
                                                            byteBuffer2.putDouble(i7 / 2.147483647E9d);
                                                        }
                                                    } else {
                                                        byteBuffer2.put((byte) (i7 >> 24));
                                                        byteBuffer2.put((byte) (i7 >> 16));
                                                        byteBuffer2.put((byte) (i7 >> 8));
                                                        byteBuffer2.put((byte) i7);
                                                    }
                                                } else {
                                                    byteBuffer2.put((byte) (i7 >> 24));
                                                    byteBuffer2.put((byte) (i7 >> 16));
                                                    byteBuffer2.put((byte) (i7 >> 8));
                                                }
                                            } else {
                                                byteBuffer2.put((byte) (i7 >> 24));
                                                byteBuffer2.put((byte) (i7 >> 16));
                                            }
                                        } else {
                                            byteBuffer2.put((byte) i7);
                                            byteBuffer2.put((byte) (i7 >> 8));
                                            byteBuffer2.put((byte) (i7 >> 16));
                                            byteBuffer2.put((byte) (i7 >> 24));
                                        }
                                    } else {
                                        byteBuffer2.put((byte) (i7 >> 8));
                                        byteBuffer2.put((byte) (i7 >> 16));
                                        byteBuffer2.put((byte) (i7 >> 24));
                                    }
                                } else if (i7 < 0) {
                                    byteBuffer2.putFloat((-i7) / (-2.14748365E9f));
                                } else {
                                    byteBuffer2.putFloat(i7 / 2.14748365E9f);
                                }
                            } else {
                                byteBuffer2.put((byte) (i7 >> 24));
                            }
                        } else {
                            byteBuffer2.put((byte) (i7 >> 16));
                            byteBuffer2.put((byte) (i7 >> 24));
                        }
                        if (byteBuffer.position() != position + i5) {
                            i6++;
                            position = byteBuffer.position();
                        }
                    } else {
                        i = (byteBuffer.get() & 255) << 16;
                        b = byteBuffer.get();
                    }
                    i2 = (b & 255) << 24;
                    i3 = i | i2;
                    int i72 = (int) ((i3 * i6) / j2);
                    if (i4 == 2) {
                    }
                    if (byteBuffer.position() != position + i5) {
                    }
                }
                byteBuffer2.put(byteBuffer);
                byteBuffer2.flip();
                this.L = byteBuffer2;
            }
        }
        byteBuffer2 = byteBuffer;
        this.L = byteBuffer2;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.media3.common.audio.AudioProcessor$StreamMetadata$Builder, java.lang.Object] */
    public final void v(long j) {
        long j2;
        Configuration configuration = this.p;
        this.q = configuration.f;
        if (j == -9223372036854775807L) {
            j2 = 0;
        } else {
            j2 = j - this.H;
            if (configuration.g != Timeline.a && configuration.h != null) {
                Timeline.Period period = new Timeline.Period();
                Configuration configuration2 = this.p;
                configuration2.g.g(configuration2.h, period);
                j2 += period.e;
            }
        }
        AudioProcessingPipeline audioProcessingPipeline = this.q;
        AudioProcessor.StreamMetadata.Builder builder = new AudioProcessor.StreamMetadata.Builder();
        Configuration configuration3 = this.p;
        builder.b = configuration3.g;
        builder.c = configuration3.h;
        builder.a = j2;
        AudioProcessor.StreamMetadata a = builder.a();
        ImmutableList immutableList = audioProcessingPipeline.a;
        ArrayList arrayList = audioProcessingPipeline.b;
        arrayList.clear();
        audioProcessingPipeline.d = false;
        for (int i = 0; i < immutableList.size(); i++) {
            AudioProcessor audioProcessor = (AudioProcessor) immutableList.get(i);
            audioProcessor.k(a);
            if (audioProcessor.h()) {
                ?? obj = new Object();
                long j3 = a.a;
                obj.a = j3;
                obj.b = a.b;
                obj.c = a.c;
                obj.a = audioProcessor.n(j3);
                a = obj.a();
                arrayList.add(audioProcessor);
            }
        }
        audioProcessingPipeline.c = new ByteBuffer[arrayList.size()];
        for (int i2 = 0; i2 <= audioProcessingPipeline.a(); i2++) {
            audioProcessingPipeline.c[i2] = ((AudioProcessor) arrayList.get(i2)).i();
        }
    }

    public final boolean w() {
        Configuration configuration = this.p;
        if (configuration != null && configuration.e.j) {
            return true;
        }
        return false;
    }
}
