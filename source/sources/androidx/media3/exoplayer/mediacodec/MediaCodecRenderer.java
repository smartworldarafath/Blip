package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.OggOpusAudioPacketizer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.FrameworkCryptoConfig;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.UnsignedBytes;
import defpackage.f3;
import defpackage.jb;
import defpackage.k8;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MediaCodecRenderer extends BaseRenderer {
    public static final byte[] P0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    public boolean A0;
    public boolean B0;
    public final Context C;
    public boolean C0;
    public final MediaCodecAdapter.Factory D;
    public boolean D0;
    public final k8 E;
    public ExoPlaybackException E0;
    public final DecoderInputBuffer F;
    public DecoderCounters F0;
    public final DecoderInputBuffer G;
    public OutputStreamInfo G0;
    public final DecoderInputBuffer H;
    public long H0;
    public final BatchBuffer I;
    public boolean I0;
    public final MediaCodec.BufferInfo J;
    public boolean J0;
    public final ArrayDeque K;
    public boolean K0;
    public final OggOpusAudioPacketizer L;
    public long L0;
    public final AtomicInteger M;
    public CodecParameters M0;
    public Format N;
    public CodecParameters N0;
    public Format O;
    public ImmutableSet O0;
    public DrmSession P;
    public DrmSession Q;
    public Renderer.WakeupListener R;
    public MediaCrypto S;
    public final long T;
    public float U;
    public float V;
    public MediaCodecAdapter W;
    public Format X;
    public MediaFormat Y;
    public boolean Z;
    public float a0;
    public ArrayDeque b0;
    public DecoderInitializationException c0;
    public MediaCodecInfo d0;
    public boolean e0;
    public boolean f0;
    public boolean g0;
    public boolean h0;
    public long i0;
    public boolean j0;
    public long k0;
    public int l0;
    public int m0;
    public ByteBuffer n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;
    public boolean r0;
    public int s0;
    public int t0;
    public int u0;
    public boolean v0;
    public boolean w0;
    public boolean x0;
    public long y0;
    public long z0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class MediaCodecRendererCodecAdapterListener implements MediaCodecAdapter.OnBufferAvailableListener {
        public MediaCodecRendererCodecAdapterListener() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OutputStreamInfo {
        public static final OutputStreamInfo i = new OutputStreamInfo(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, 0);
        public final long a;
        public final long b;
        public final long c;
        public long e;
        public int f;
        public boolean g;
        public final TimedValueQueue d = new TimedValueQueue();
        public long h = -9223372036854775807L;

        public OutputStreamInfo(long j, long j2, long j3, long j4, int i2) {
            this.a = j;
            this.b = j2;
            this.c = j3;
            this.e = j4;
            this.f = i2;
        }
    }

    /* JADX WARN: Type inference failed for: r4v12, types: [androidx.media3.exoplayer.DecoderCounters, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.media3.decoder.DecoderInputBuffer, androidx.media3.exoplayer.mediacodec.BatchBuffer] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object, androidx.media3.exoplayer.audio.OggOpusAudioPacketizer] */
    public MediaCodecRenderer(Context context, int i, MediaCodecAdapter.Factory factory) {
        super(i);
        this.C = context.getApplicationContext();
        this.D = factory;
        this.E = MediaCodecSelector.e;
        this.M = new AtomicInteger();
        this.F = new DecoderInputBuffer(0);
        this.G = new DecoderInputBuffer(0);
        this.H = new DecoderInputBuffer(2);
        ?? decoderInputBuffer = new DecoderInputBuffer(2);
        decoderInputBuffer.s = 32;
        this.I = decoderInputBuffer;
        this.J = new MediaCodec.BufferInfo();
        this.U = 1.0f;
        this.V = 1.0f;
        this.T = -9223372036854775807L;
        this.K = new ArrayDeque();
        this.G0 = OutputStreamInfo.i;
        decoderInputBuffer.h(0);
        decoderInputBuffer.m.order(ByteOrder.nativeOrder());
        ?? obj = new Object();
        obj.a = AudioProcessor.a;
        obj.c = 0;
        obj.b = 2;
        this.L = obj;
        this.a0 = -1.0f;
        this.s0 = 0;
        this.l0 = -1;
        this.m0 = -1;
        this.k0 = -9223372036854775807L;
        this.y0 = -9223372036854775807L;
        this.z0 = -9223372036854775807L;
        this.H0 = -9223372036854775807L;
        this.i0 = -9223372036854775807L;
        this.t0 = 0;
        this.u0 = 0;
        this.F0 = new Object();
        this.K0 = false;
        this.L0 = 0L;
        this.O0 = ImmutableSet.r();
        CodecParameters codecParameters = CodecParameters.b;
        this.M0 = codecParameters;
        this.N0 = codecParameters;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
    
        if (r2 >= r0) goto L16;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void A(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
        long j3 = this.A;
        SampleStream sampleStream = this.r;
        sampleStream.getClass();
        int b = sampleStream.b();
        if (this.G0.c == -9223372036854775807L) {
            y0(new OutputStreamInfo(-9223372036854775807L, j, j2, j3, b));
            if (this.J0) {
                n0();
                return;
            }
            return;
        }
        ArrayDeque arrayDeque = this.K;
        if (arrayDeque.isEmpty()) {
            long j4 = this.y0;
            if (j4 != -9223372036854775807L) {
                long j5 = this.H0;
                if (j5 != -9223372036854775807L) {
                }
            }
            y0(new OutputStreamInfo(-9223372036854775807L, j, j2, j3, b));
            if (this.G0.c != -9223372036854775807L) {
                n0();
                return;
            }
            return;
        }
        arrayDeque.add(new OutputStreamInfo(this.y0, j, j2, j3, b));
    }

    public boolean A0() {
        return this.v0;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void B() {
        V().e = this.A;
    }

    public boolean B0(MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    public boolean C0() {
        int i = this.u0;
        if (i == 3 || (this.e0 && !this.x0)) {
            return true;
        }
        if (i == 2) {
            try {
                G0();
                return false;
            } catch (ExoPlaybackException e) {
                Log.g("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                return true;
            }
        }
        return false;
    }

    public boolean D0(Format format) {
        return false;
    }

    public abstract int E0(k8 k8Var, Format format);

    public final void F0(Format format) {
        if (this.W != null && this.u0 != 3 && this.q != 0) {
            float f = this.V;
            format.getClass();
            Format[] formatArr = this.s;
            formatArr.getClass();
            float R = R(f, format, formatArr);
            float f2 = this.a0;
            if (f2 != R && R != -1.0f) {
                if (f2 != -1.0f || R > 0.0f) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", R);
                    MediaCodecAdapter mediaCodecAdapter = this.W;
                    mediaCodecAdapter.getClass();
                    mediaCodecAdapter.c(bundle);
                    this.a0 = R;
                }
            }
        }
    }

    public final void G(MediaFormat mediaFormat) {
        if (Build.VERSION.SDK_INT >= 29) {
            for (Map.Entry entry : this.M0.a.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    mediaFormat.setString(str, null);
                } else if (value instanceof Integer) {
                    mediaFormat.setInteger(str, ((Integer) value).intValue());
                } else if (value instanceof Long) {
                    mediaFormat.setLong(str, ((Long) value).longValue());
                } else if (value instanceof Float) {
                    mediaFormat.setFloat(str, ((Float) value).floatValue());
                } else if (value instanceof String) {
                    mediaFormat.setString(str, (String) value);
                } else if (value instanceof ByteBuffer) {
                    mediaFormat.setByteBuffer(str, (ByteBuffer) value);
                }
            }
        }
    }

    public final void G0() {
        DrmSession drmSession = this.Q;
        drmSession.getClass();
        if (drmSession.g() instanceof FrameworkCryptoConfig) {
            try {
                MediaCrypto mediaCrypto = this.S;
                mediaCrypto.getClass();
                mediaCrypto.setMediaDrmSession(null);
            } catch (MediaCryptoException e) {
                throw r(e, this.N, false, 6006);
            }
        }
        x0(this.Q);
        this.t0 = 0;
        this.u0 = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0314, code lost:
    
        r24.p0 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean H(long j, long j2) {
        BatchBuffer batchBuffer;
        int i;
        int i2;
        int i3;
        byte b;
        Preconditions.n(!this.B0);
        BatchBuffer batchBuffer2 = this.I;
        if (batchBuffer2.k()) {
            ByteBuffer byteBuffer = batchBuffer2.m;
            int i4 = this.m0;
            int i5 = batchBuffer2.r;
            long j3 = batchBuffer2.n;
            boolean b0 = b0(this.u, batchBuffer2.q);
            boolean e = batchBuffer2.e(4);
            Format format = this.O;
            format.getClass();
            batchBuffer = batchBuffer2;
            if (q0(j, j2, null, byteBuffer, i4, 0, i5, j3, b0, e, format)) {
                m0(batchBuffer.q);
                batchBuffer.f();
            }
            return false;
        }
        batchBuffer = batchBuffer2;
        if (this.A0) {
            this.B0 = true;
            return false;
        }
        ?? r2 = 0;
        boolean z = this.p0;
        DecoderInputBuffer decoderInputBuffer = this.H;
        if (z) {
            Preconditions.n(batchBuffer.j(decoderInputBuffer));
            this.p0 = false;
        }
        if (this.q0) {
            if (batchBuffer.k()) {
                return true;
            }
            this.o0 = false;
            u0();
            this.q0 = false;
            c0();
            if (!this.o0) {
                return false;
            }
        }
        Preconditions.n(!this.A0);
        FormatHolder formatHolder = this.l;
        formatHolder.a();
        decoderInputBuffer.f();
        while (true) {
            decoderInputBuffer.f();
            int C = C(formatHolder, decoderInputBuffer, r2);
            if (C != -5) {
                if (C != -4) {
                    if (C == -3) {
                        if (s()) {
                            V().h = this.y0;
                        }
                    } else {
                        io.sentry.d.d();
                        return r2;
                    }
                } else {
                    if (decoderInputBuffer.e(4)) {
                        this.A0 = true;
                        V().h = this.y0;
                        break;
                    }
                    this.y0 = Math.max(this.y0, decoderInputBuffer.n);
                    if (s() || this.G.e(536870912)) {
                        V().h = this.y0;
                    }
                    byte[] bArr = null;
                    if (this.C0) {
                        Format format2 = this.N;
                        format2.getClass();
                        this.O = format2;
                        if (Objects.equals(format2.p, "audio/opus") && !this.O.s.isEmpty()) {
                            byte[] bArr2 = (byte[]) this.O.s.get(r2);
                            int i6 = (bArr2[10] & 255) | ((bArr2[11] & 255) << 8);
                            Format.Builder a = this.O.a();
                            a.M = i6;
                            this.O = new Format(a);
                        }
                        k0(this.O, null);
                        this.C0 = r2;
                    }
                    decoderInputBuffer.i();
                    Format format3 = this.O;
                    if (format3 != null && Objects.equals(format3.p, "audio/opus")) {
                        if (decoderInputBuffer.e(268435456)) {
                            decoderInputBuffer.k = this.O;
                            Z(decoderInputBuffer);
                        }
                        if (this.u - decoderInputBuffer.n <= 80000) {
                            List list = this.O.s;
                            OggOpusAudioPacketizer oggOpusAudioPacketizer = this.L;
                            oggOpusAudioPacketizer.getClass();
                            decoderInputBuffer.m.getClass();
                            if (decoderInputBuffer.m.limit() - decoderInputBuffer.m.position() != 0) {
                                if (oggOpusAudioPacketizer.b == 2 && (list.size() == 1 || list.size() == 3)) {
                                    bArr = (byte[]) list.get(r2);
                                }
                                ByteBuffer byteBuffer2 = decoderInputBuffer.m;
                                int position = byteBuffer2.position();
                                int limit = byteBuffer2.limit();
                                int i7 = limit - position;
                                int i8 = (i7 + 255) / 255;
                                int i9 = i8 + 27 + i7;
                                if (oggOpusAudioPacketizer.b == 2) {
                                    if (bArr != null) {
                                        i = bArr.length + 28;
                                    } else {
                                        i = 47;
                                    }
                                    i9 = i + 44 + i9;
                                } else {
                                    i = r2;
                                }
                                if (oggOpusAudioPacketizer.a.capacity() < i9) {
                                    oggOpusAudioPacketizer.a = ByteBuffer.allocate(i9).order(ByteOrder.LITTLE_ENDIAN);
                                } else {
                                    oggOpusAudioPacketizer.a.clear();
                                }
                                ByteBuffer byteBuffer3 = oggOpusAudioPacketizer.a;
                                if (oggOpusAudioPacketizer.b == 2) {
                                    if (bArr != null) {
                                        OggOpusAudioPacketizer.a(byteBuffer3, 0L, 0, 1, true);
                                        i3 = limit;
                                        byteBuffer3.put(UnsignedBytes.a(bArr.length));
                                        byteBuffer3.put(bArr);
                                        i2 = i;
                                        byteBuffer3.putInt(22, Util.j(byteBuffer3.arrayOffset(), bArr.length + 28, 0, byteBuffer3.array()));
                                        byteBuffer3.position(bArr.length + 28);
                                    } else {
                                        i2 = i;
                                        i3 = limit;
                                        byteBuffer3.put(OggOpusAudioPacketizer.d);
                                    }
                                    byteBuffer3.put(OggOpusAudioPacketizer.e);
                                } else {
                                    i2 = i;
                                    i3 = limit;
                                }
                                byte b2 = byteBuffer2.get(0);
                                if (byteBuffer2.limit() > 1) {
                                    b = byteBuffer2.get(1);
                                } else {
                                    b = 0;
                                }
                                int b3 = oggOpusAudioPacketizer.c + ((int) ((OpusUtil.b(b2, b) * 48000) / 1000000));
                                oggOpusAudioPacketizer.c = b3;
                                OggOpusAudioPacketizer.a(byteBuffer3, b3, oggOpusAudioPacketizer.b, i8, false);
                                for (int i10 = 0; i10 < i8; i10++) {
                                    if (i7 >= 255) {
                                        byteBuffer3.put((byte) -1);
                                        i7 -= 255;
                                    } else {
                                        byteBuffer3.put((byte) i7);
                                        i7 = 0;
                                    }
                                }
                                int i11 = i3;
                                while (position < i11) {
                                    byteBuffer3.put(byteBuffer2.get(position));
                                    position++;
                                }
                                byteBuffer2.position(byteBuffer2.limit());
                                byteBuffer3.flip();
                                if (oggOpusAudioPacketizer.b == 2) {
                                    byteBuffer3.putInt(i2 + 66, Util.j(byteBuffer3.arrayOffset() + i2 + 44, byteBuffer3.limit() - byteBuffer3.position(), 0, byteBuffer3.array()));
                                } else {
                                    byteBuffer3.putInt(22, Util.j(byteBuffer3.arrayOffset(), byteBuffer3.limit() - byteBuffer3.position(), 0, byteBuffer3.array()));
                                }
                                oggOpusAudioPacketizer.b++;
                                oggOpusAudioPacketizer.a = byteBuffer3;
                                decoderInputBuffer.f();
                                decoderInputBuffer.h(oggOpusAudioPacketizer.a.remaining());
                                decoderInputBuffer.m.put(oggOpusAudioPacketizer.a);
                                decoderInputBuffer.i();
                            }
                        }
                    }
                    if (batchBuffer.k()) {
                        long j4 = this.u;
                        if (b0(j4, batchBuffer.q) != b0(j4, decoderInputBuffer.n)) {
                            break;
                        }
                    }
                    if (!batchBuffer.j(decoderInputBuffer)) {
                        break;
                    }
                    r2 = 0;
                }
            } else {
                j0(formatHolder);
                break;
            }
        }
        if (batchBuffer.k()) {
            batchBuffer.i();
        }
        if (!batchBuffer.k() && !this.A0 && !this.q0) {
            return false;
        }
        return true;
    }

    public final void H0(long j) {
        Format format = (Format) this.G0.d.f(j);
        if (format == null && this.I0 && this.Y != null) {
            format = (Format) this.G0.d.e();
        }
        if (format != null) {
            this.O = format;
        } else if (!this.Z || this.O == null) {
            return;
        }
        Format format2 = this.O;
        format2.getClass();
        k0(format2, this.Y);
        this.Z = false;
        this.I0 = false;
    }

    public abstract DecoderReuseEvaluation I(MediaCodecInfo mediaCodecInfo, Format format, Format format2, boolean z);

    public MediaCodecDecoderException J(IllegalStateException illegalStateException, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecDecoderException(illegalStateException, mediaCodecInfo);
    }

    public final boolean K() {
        if (this.v0) {
            this.t0 = 1;
            if (C0()) {
                this.u0 = 3;
                return false;
            }
            this.u0 = 2;
            return true;
        }
        G0();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:124:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean L(long j, long j2) {
        boolean z;
        boolean z2;
        long j3;
        boolean z3;
        boolean z4;
        ByteBuffer byteBuffer;
        int i;
        int i2;
        long j4;
        Format format;
        boolean z5;
        HashMap hashMap;
        int valueTypeForKey;
        MediaCodecAdapter mediaCodecAdapter = this.W;
        mediaCodecAdapter.getClass();
        int i3 = this.m0;
        MediaCodec.BufferInfo bufferInfo = this.J;
        if (i3 < 0) {
            int m = mediaCodecAdapter.m(bufferInfo);
            if (m < 0) {
                if (m == -2) {
                    this.x0 = true;
                    MediaCodecAdapter mediaCodecAdapter2 = this.W;
                    mediaCodecAdapter2.getClass();
                    MediaFormat h = mediaCodecAdapter2.h();
                    if (Build.VERSION.SDK_INT >= 29 && !this.O0.isEmpty()) {
                        ImmutableSet immutableSet = this.O0;
                        CodecParameters codecParameters = CodecParameters.b;
                        CodecParameters.Builder builder = new CodecParameters.Builder();
                        Iterator<E> it = immutableSet.iterator();
                        while (true) {
                            boolean hasNext = it.hasNext();
                            hashMap = builder.a;
                            if (!hasNext) {
                                break;
                            }
                            String str = (String) it.next();
                            if (h.containsKey(str)) {
                                valueTypeForKey = h.getValueTypeForKey(str);
                                if (valueTypeForKey != 1) {
                                    if (valueTypeForKey != 2) {
                                        if (valueTypeForKey != 3) {
                                            if (valueTypeForKey != 4) {
                                                if (valueTypeForKey == 5) {
                                                    ByteBuffer byteBuffer2 = h.getByteBuffer(str);
                                                    if (byteBuffer2 == null) {
                                                        hashMap.put(str, null);
                                                    } else {
                                                        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer2.remaining());
                                                        allocate.put(byteBuffer2.duplicate());
                                                        allocate.flip();
                                                        hashMap.put(str, allocate);
                                                    }
                                                }
                                            } else {
                                                hashMap.put(str, h.getString(str));
                                            }
                                        } else {
                                            hashMap.put(str, Float.valueOf(h.getFloat(str)));
                                        }
                                    } else {
                                        hashMap.put(str, Long.valueOf(h.getLong(str)));
                                    }
                                } else {
                                    hashMap.put(str, Integer.valueOf(h.getInteger(str)));
                                }
                            }
                        }
                        CodecParameters codecParameters2 = new CodecParameters(hashMap);
                        if (!codecParameters2.equals(this.N0)) {
                            this.N0 = codecParameters2;
                            h0(codecParameters2);
                        }
                    }
                    this.Y = h;
                    this.Z = true;
                    return true;
                }
                if (this.h0 && (this.A0 || this.t0 == 2)) {
                    p0();
                }
                long j5 = this.i0;
                if (j5 != -9223372036854775807L) {
                    long j6 = j5 + 100;
                    this.p.getClass();
                    if (j6 < System.currentTimeMillis()) {
                        p0();
                        return false;
                    }
                }
                return false;
            }
            bufferInfo.presentationTimeUs -= this.L0;
            if (this.g0) {
                this.g0 = false;
                mediaCodecAdapter.f(m);
                return true;
            }
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                p0();
                return false;
            }
            this.m0 = m;
            ByteBuffer q = mediaCodecAdapter.q(m);
            this.n0 = q;
            if (q != null) {
                q.position(bufferInfo.offset);
                this.n0.limit(bufferInfo.offset + bufferInfo.size);
            }
            H0(bufferInfo.presentationTimeUs);
        }
        OutputStreamInfo outputStreamInfo = this.G0;
        if ((outputStreamInfo.f & 1) != 0) {
            long j7 = outputStreamInfo.e;
            if (j7 != -9223372036854775807L && bufferInfo.presentationTimeUs - outputStreamInfo.c >= j7) {
                z = true;
                if (this.K0 && bufferInfo.presentationTimeUs >= this.u && !z) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                j3 = outputStreamInfo.h;
                if (j3 == -9223372036854775807L && j3 <= bufferInfo.presentationTimeUs && !z) {
                    z3 = true;
                    z4 = true;
                } else {
                    z3 = true;
                    z4 = false;
                }
                byteBuffer = this.n0;
                i = this.m0;
                i2 = bufferInfo.flags;
                j4 = bufferInfo.presentationTimeUs;
                format = this.O;
                format.getClass();
                boolean z6 = z3;
                if (q0(j, j2, mediaCodecAdapter, byteBuffer, i, i2, 1, j4, z2, z4, format)) {
                    return false;
                }
                m0(bufferInfo.presentationTimeUs);
                if ((bufferInfo.flags & 4) != 0) {
                    z5 = z6;
                } else {
                    z5 = false;
                }
                if (!z5 && this.w0 && z4) {
                    this.p.getClass();
                    this.i0 = System.currentTimeMillis();
                }
                this.m0 = -1;
                this.n0 = null;
                if (!z5) {
                    return z6;
                }
                p0();
                return false;
            }
        }
        z = false;
        if (this.K0) {
        }
        z2 = true;
        j3 = outputStreamInfo.h;
        if (j3 == -9223372036854775807L) {
        }
        z3 = true;
        z4 = false;
        byteBuffer = this.n0;
        i = this.m0;
        i2 = bufferInfo.flags;
        j4 = bufferInfo.presentationTimeUs;
        format = this.O;
        format.getClass();
        boolean z62 = z3;
        if (q0(j, j2, mediaCodecAdapter, byteBuffer, i, i2, 1, j4, z2, z4, format)) {
        }
    }

    public final boolean M() {
        long j;
        long j2;
        long j3;
        OutputStreamInfo V = V();
        SampleStream sampleStream = this.r;
        sampleStream.getClass();
        V.f = sampleStream.b();
        MediaCodecAdapter mediaCodecAdapter = this.W;
        if (mediaCodecAdapter != null && this.t0 != 2 && !this.A0) {
            int i = this.l0;
            DecoderInputBuffer decoderInputBuffer = this.G;
            if (i < 0) {
                int k = mediaCodecAdapter.k();
                this.l0 = k;
                if (k >= 0) {
                    decoderInputBuffer.m = mediaCodecAdapter.o(k);
                    decoderInputBuffer.f();
                }
            }
            if (this.t0 == 1) {
                if (!this.h0) {
                    this.w0 = true;
                    mediaCodecAdapter.d(this.l0, 0, 4, 0L);
                    this.l0 = -1;
                    decoderInputBuffer.m = null;
                }
                this.t0 = 2;
                return false;
            }
            if (this.f0) {
                this.f0 = false;
                ByteBuffer byteBuffer = decoderInputBuffer.m;
                byteBuffer.getClass();
                byteBuffer.put(P0);
                mediaCodecAdapter.d(this.l0, 38, 0, 0L);
                this.l0 = -1;
                decoderInputBuffer.m = null;
                this.v0 = true;
                return true;
            }
            if (this.s0 == 1) {
                int i2 = 0;
                while (true) {
                    Format format = this.X;
                    format.getClass();
                    if (i2 >= format.s.size()) {
                        break;
                    }
                    byte[] bArr = (byte[]) this.X.s.get(i2);
                    ByteBuffer byteBuffer2 = decoderInputBuffer.m;
                    byteBuffer2.getClass();
                    byteBuffer2.put(bArr);
                    i2++;
                }
                this.s0 = 2;
            }
            ByteBuffer byteBuffer3 = decoderInputBuffer.m;
            byteBuffer3.getClass();
            int position = byteBuffer3.position();
            FormatHolder formatHolder = this.l;
            formatHolder.a();
            try {
                mediaCodecAdapter.l(new f3(9, this, formatHolder));
                int i3 = this.M.get();
                if (i3 == -3) {
                    if (s()) {
                        OutputStreamInfo V2 = V();
                        if ((V().f & 1) != 0) {
                            j3 = this.z0;
                        } else {
                            j3 = this.y0;
                        }
                        V2.h = j3;
                        return false;
                    }
                } else {
                    if (i3 == -5) {
                        if (this.s0 == 2) {
                            decoderInputBuffer.f();
                            this.s0 = 1;
                        }
                        j0(formatHolder);
                        return true;
                    }
                    if (decoderInputBuffer.e(4)) {
                        OutputStreamInfo V3 = V();
                        if ((V().f & 1) != 0) {
                            j2 = this.z0;
                        } else {
                            j2 = this.y0;
                        }
                        V3.h = j2;
                        if (this.s0 == 2) {
                            decoderInputBuffer.f();
                            this.s0 = 1;
                        }
                        this.A0 = true;
                        if (!this.v0) {
                            p0();
                            return false;
                        }
                        if (!this.h0) {
                            this.w0 = true;
                            mediaCodecAdapter.d(this.l0, 0, 4, 0L);
                            this.l0 = -1;
                            decoderInputBuffer.m = null;
                            return false;
                        }
                    } else {
                        if (!this.v0 && !decoderInputBuffer.e(1)) {
                            decoderInputBuffer.f();
                            this.F0.d++;
                            if (this.s0 == 2) {
                                this.s0 = 1;
                                return true;
                            }
                        } else {
                            long j4 = decoderInputBuffer.n;
                            if (!z0(decoderInputBuffer)) {
                                boolean e = decoderInputBuffer.e(1073741824);
                                if (e) {
                                    CryptoInfo cryptoInfo = decoderInputBuffer.l;
                                    if (position == 0) {
                                        cryptoInfo.getClass();
                                    } else {
                                        if (cryptoInfo.d == null) {
                                            int[] iArr = new int[1];
                                            cryptoInfo.d = iArr;
                                            cryptoInfo.i.numBytesOfClearData = iArr;
                                        }
                                        int[] iArr2 = cryptoInfo.d;
                                        iArr2[0] = iArr2[0] + position;
                                    }
                                }
                                if (this.C0) {
                                    OutputStreamInfo V4 = V();
                                    TimedValueQueue timedValueQueue = V4.d;
                                    Format format2 = this.N;
                                    format2.getClass();
                                    timedValueQueue.a(j4, format2);
                                    V4.g = true;
                                    this.C0 = false;
                                }
                                this.y0 = Math.max(this.y0, j4);
                                long j5 = this.A;
                                if (j5 == -9223372036854775807L || j4 - V().c < j5) {
                                    this.z0 = Math.max(this.z0, j4);
                                }
                                if (s() || decoderInputBuffer.e(536870912)) {
                                    OutputStreamInfo V5 = V();
                                    if ((V().f & 1) != 0) {
                                        j = this.z0;
                                    } else {
                                        j = this.y0;
                                    }
                                    V5.h = j;
                                }
                                decoderInputBuffer.i();
                                if (decoderInputBuffer.e(268435456)) {
                                    Z(decoderInputBuffer);
                                }
                                if (this.K0) {
                                    long j6 = this.y0;
                                    if (j4 <= j6) {
                                        this.L0 = (j6 - j4) + 1 + this.L0;
                                    }
                                    this.y0 = j4;
                                    this.z0 = j4;
                                    this.K0 = false;
                                }
                                o0(decoderInputBuffer);
                                int Q = Q(decoderInputBuffer);
                                long j7 = j4 + this.L0;
                                int i4 = this.l0;
                                if (e) {
                                    mediaCodecAdapter.b(i4, decoderInputBuffer.l, j7, Q);
                                } else {
                                    ByteBuffer byteBuffer4 = decoderInputBuffer.m;
                                    byteBuffer4.getClass();
                                    mediaCodecAdapter.d(i4, byteBuffer4.limit(), Q, j7);
                                }
                                this.l0 = -1;
                                decoderInputBuffer.m = null;
                                this.v0 = true;
                                this.s0 = 0;
                                this.F0.c++;
                                return true;
                            }
                        }
                        return true;
                    }
                }
            } catch (DecoderInputBuffer.InsufficientCapacityException e2) {
                f0(e2);
                r0(0);
                N();
                return true;
            }
        }
        return false;
    }

    public final void N() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.W;
            mediaCodecAdapter.getClass();
            mediaCodecAdapter.flush();
        } finally {
            v0();
        }
    }

    public final boolean O() {
        if (this.W != null) {
            if (C0()) {
                s0();
                return true;
            }
            if (A0()) {
                N();
                return false;
            }
            if (this.v0) {
                this.K0 = true;
            }
        }
        return false;
    }

    public final List P(boolean z) {
        Format format = this.N;
        format.getClass();
        k8 k8Var = this.E;
        ArrayList S = S(k8Var, format, z);
        if (S.isEmpty() && z) {
            ArrayList S2 = S(k8Var, format, false);
            if (!S2.isEmpty()) {
                Log.f("MediaCodecRenderer", "Drm session requires secure decoder for " + format.p + ", but no secure decoder available. Trying to proceed with " + S2 + ".");
            }
            return S2;
        }
        return S;
    }

    public int Q(DecoderInputBuffer decoderInputBuffer) {
        return 0;
    }

    public abstract float R(float f, Format format, Format[] formatArr);

    public abstract ArrayList S(k8 k8Var, Format format, boolean z);

    public long T(long j, long j2, boolean z) {
        return super.g(j, j2);
    }

    public final long U() {
        return this.G0.h;
    }

    public final OutputStreamInfo V() {
        ArrayDeque arrayDeque = this.K;
        if (!arrayDeque.isEmpty()) {
            return (OutputStreamInfo) arrayDeque.getLast();
        }
        return this.G0;
    }

    public abstract MediaCodecAdapter.Configuration W(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f);

    public final long X() {
        return this.G0.c;
    }

    public final long Y() {
        return this.G0.b;
    }

    public abstract void Z(DecoderInputBuffer decoderInputBuffer);

    public final void a0(MediaCodecInfo mediaCodecInfo, MediaCrypto mediaCrypto) {
        boolean z;
        boolean equals;
        String stringId;
        LogSessionId unused;
        this.d0 = mediaCodecInfo;
        Format format = this.N;
        format.getClass();
        String str = mediaCodecInfo.a;
        float f = this.V;
        Format[] formatArr = this.s;
        formatArr.getClass();
        float R = R(f, format, formatArr);
        if (R <= 0.0f) {
            R = -1.0f;
        }
        this.p.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        MediaCodecAdapter.Configuration W = W(mediaCodecInfo, format, mediaCrypto, R);
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            PlayerId playerId = this.o;
            playerId.getClass();
            LogSessionId a = playerId.a();
            unused = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a.equals(LogSessionId.LOG_SESSION_ID_NONE);
            if (!equals) {
                MediaFormat mediaFormat = W.b;
                stringId = a.getStringId();
                mediaFormat.setString("log-session-id", stringId);
            }
        }
        try {
            Trace.beginSection("createCodec:" + str);
            MediaCodecAdapter a2 = this.D.a(W);
            this.W = a2;
            this.j0 = a2.e(new MediaCodecRendererCodecAdapterListener());
            Trace.endSection();
            this.p.getClass();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (!mediaCodecInfo.e(this.C, format)) {
                String c = Format.c(format);
                Locale locale = Locale.US;
                Log.f("MediaCodecRenderer", jb.h("Format exceeds selected codec's capabilities [", c, ", ", str, "]"));
            }
            this.a0 = R;
            this.X = format;
            HashSet hashSet = MediaLibraryInfo.a;
            boolean z2 = false;
            if (i == 29 && "c2.android.aac.decoder".equals(str)) {
                z = true;
            } else {
                z = false;
            }
            this.e0 = z;
            String str2 = mediaCodecInfo.a;
            if ((i <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str2) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str2) || "OMX.bcm.vdec.avc.tunnel".equals(str2) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str2) || "OMX.bcm.vdec.hevc.tunnel".equals(str2) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str2))) || ("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && mediaCodecInfo.f)) {
                z2 = true;
            }
            this.h0 = z2;
            this.W.getClass();
            if (this.q == 2) {
                this.p.getClass();
                this.k0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.F0.a++;
            long j = elapsedRealtime2 - elapsedRealtime;
            if (i >= 31 && !this.O0.isEmpty()) {
                MediaCodecAdapter mediaCodecAdapter = this.W;
                mediaCodecAdapter.getClass();
                mediaCodecAdapter.r(new ArrayList(this.O0));
            }
            g0(elapsedRealtime2, j, str);
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public final boolean b0(long j, long j2) {
        if (j2 < j) {
            Format format = this.O;
            if (format == null || !Objects.equals(format.p, "audio/opus") || j - j2 > 80000) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
    
        if (r2.f() != null) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c0() {
        Format format;
        MediaCrypto mediaCrypto;
        boolean z;
        if (this.W == null && !this.o0 && (format = this.N) != null) {
            String str = format.p;
            boolean z2 = true;
            if (this.Q == null && D0(format)) {
                this.o0 = false;
                u0();
                boolean equals = "audio/mp4a-latm".equals(str);
                BatchBuffer batchBuffer = this.I;
                if (!equals && !"audio/mpeg".equals(str) && !"audio/opus".equals(str)) {
                    batchBuffer.getClass();
                    batchBuffer.s = 1;
                } else {
                    batchBuffer.getClass();
                    batchBuffer.s = 32;
                }
                this.o0 = true;
                return;
            }
            x0(this.Q);
            if (this.P != null) {
                if (this.S == null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.n(z);
                DrmSession drmSession = this.P;
                drmSession.getClass();
                HashSet hashSet = MediaLibraryInfo.a;
                boolean z3 = FrameworkCryptoConfig.a;
            }
            try {
                DrmSession drmSession2 = this.P;
                if (drmSession2 != null) {
                    if (drmSession2.getState() != 3) {
                        if (this.P.getState() == 4) {
                        }
                    }
                    DrmSession drmSession3 = this.P;
                    str.getClass();
                    if (drmSession3.e(str)) {
                        d0(this.S, z2);
                        mediaCrypto = this.S;
                        if (mediaCrypto == null && this.W == null) {
                            mediaCrypto.release();
                            this.S = null;
                            return;
                        }
                    }
                }
                z2 = false;
                d0(this.S, z2);
                mediaCrypto = this.S;
                if (mediaCrypto == null) {
                }
            } catch (DecoderInitializationException e) {
                throw r(e, format, false, 4001);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0078 A[LOOP:1: B:33:0x0053->B:42:0x0078, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0079 A[EDGE_INSN: B:43:0x0079->B:44:0x0079 BREAK  A[LOOP:1: B:33:0x0053->B:42:0x0078], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0099 A[LOOP:2: B:45:0x0079->B:54:0x0099, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009a A[EDGE_INSN: B:55:0x009a->B:56:0x009a BREAK  A[LOOP:2: B:45:0x0079->B:54:0x0099], SYNTHETIC] */
    @Override // androidx.media3.exoplayer.Renderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(long j, long j2) {
        int i;
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (this.D0) {
            this.D0 = false;
            p0();
        }
        ExoPlaybackException exoPlaybackException = this.E0;
        if (exoPlaybackException == null) {
            try {
                if (this.B0) {
                    t0();
                    return;
                }
                if (this.N == null && !r0(2)) {
                    return;
                }
                c0();
                if (this.o0) {
                    Trace.beginSection("bypassRender");
                    do {
                    } while (H(j, j2));
                    Trace.endSection();
                } else if (this.W != null) {
                    this.p.getClass();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    Trace.beginSection("drainAndFeed");
                    while (L(j, j2)) {
                        long j3 = this.T;
                        if (j3 != -9223372036854775807L) {
                            this.p.getClass();
                            if (SystemClock.elapsedRealtime() - elapsedRealtime >= j3) {
                                z2 = false;
                                if (z2) {
                                    break;
                                }
                            }
                        }
                        z2 = true;
                        if (z2) {
                        }
                    }
                    while (M()) {
                        long j4 = this.T;
                        if (j4 != -9223372036854775807L) {
                            this.p.getClass();
                            if (SystemClock.elapsedRealtime() - elapsedRealtime >= j4) {
                                z = false;
                                if (z) {
                                    break;
                                }
                            }
                        }
                        z = true;
                        if (z) {
                        }
                    }
                    Trace.endSection();
                } else {
                    DecoderCounters decoderCounters = this.F0;
                    int i2 = decoderCounters.d;
                    SampleStream sampleStream = this.r;
                    sampleStream.getClass();
                    decoderCounters.d = i2 + sampleStream.d(j - this.t);
                    r0(1);
                }
                synchronized (this.F0) {
                }
                return;
            } catch (MediaCodec.CryptoException e) {
                throw r(e, this.N, false, Util.p(e.getErrorCode()));
            } catch (IllegalStateException e2) {
                boolean z4 = e2 instanceof MediaCodec.CodecException;
                if (!z4) {
                    StackTraceElement[] stackTrace = e2.getStackTrace();
                    if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                        throw e2;
                    }
                }
                f0(e2);
                if (z4 && ((MediaCodec.CodecException) e2).isRecoverable()) {
                    z3 = true;
                }
                if (z3) {
                    s0();
                }
                MediaCodecDecoderException J = J(e2, this.d0);
                if (J.j == 1101) {
                    i = 4006;
                } else {
                    i = 4003;
                }
                throw r(J, this.N, z3, i);
            }
        }
        this.E0 = null;
        throw exoPlaybackException;
    }

    public final void d0(MediaCrypto mediaCrypto, boolean z) {
        String str;
        Format format = this.N;
        format.getClass();
        if (this.b0 == null) {
            try {
                List P = P(z);
                this.b0 = new ArrayDeque();
                ArrayList arrayList = (ArrayList) P;
                if (!arrayList.isEmpty()) {
                    this.b0.add((MediaCodecInfo) arrayList.get(0));
                }
                this.c0 = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(format, e, z, -49998);
            }
        }
        if (!this.b0.isEmpty()) {
            ArrayDeque arrayDeque = this.b0;
            arrayDeque.getClass();
            while (this.W == null) {
                MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) arrayDeque.peekFirst();
                mediaCodecInfo.getClass();
                if (!e0(format) || !B0(mediaCodecInfo)) {
                    return;
                }
                try {
                    a0(mediaCodecInfo, mediaCrypto);
                } catch (Exception e2) {
                    Log.g("MediaCodecRenderer", "Failed to initialize decoder: " + mediaCodecInfo, e2);
                    arrayDeque.removeFirst();
                    String str2 = "Decoder init failed: " + mediaCodecInfo.a + ", " + format;
                    String str3 = format.p;
                    if (e2 instanceof MediaCodec.CodecException) {
                        str = ((MediaCodec.CodecException) e2).getDiagnosticInfo();
                    } else {
                        str = null;
                    }
                    DecoderInitializationException decoderInitializationException = new DecoderInitializationException(str2, e2, str3, z, mediaCodecInfo, str);
                    f0(decoderInitializationException);
                    DecoderInitializationException decoderInitializationException2 = this.c0;
                    if (decoderInitializationException2 == null) {
                        this.c0 = decoderInitializationException;
                    } else {
                        this.c0 = new DecoderInitializationException(decoderInitializationException2.getMessage(), decoderInitializationException2.getCause(), decoderInitializationException2.j, decoderInitializationException2.k, decoderInitializationException2.l, decoderInitializationException2.m);
                    }
                    if (arrayDeque.isEmpty()) {
                        throw this.c0;
                    }
                }
            }
            this.b0 = null;
            return;
        }
        throw new DecoderInitializationException(format, null, z, -49999);
    }

    public boolean e0(Format format) {
        return true;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int f(Format format) {
        try {
            return E0(this.E, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw this.r(e, format, false, 4002);
        }
    }

    public abstract void f0(Exception exc);

    @Override // androidx.media3.exoplayer.Renderer
    public final long g(long j, long j2) {
        return T(j, j2, this.j0);
    }

    public abstract void g0(long j, long j2, String str);

    public abstract void h0(CodecParameters codecParameters);

    public abstract void i0(String str);

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005f, code lost:
    
        if (java.util.Objects.equals(r2, "video/av01") == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ef, code lost:
    
        if (r7.equals(r4.b()) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x011c, code lost:
    
        if (K() == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0135, code lost:
    
        if (K() == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0143, code lost:
    
        if (K() == false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DecoderReuseEvaluation j0(FormatHolder formatHolder) {
        Format format;
        boolean z;
        int i;
        CryptoConfig g;
        CryptoConfig g2;
        Pair b;
        String str;
        this.C0 = true;
        Format format2 = formatHolder.b;
        format2.getClass();
        String str2 = format2.p;
        if (str2 != null) {
            if (!str2.equals("video/av01") && !str2.equals("video/x-vnd.on2.vp9")) {
                if (str2.equals("video/dolby-vision")) {
                    byte[] bArr = CodecSpecificDataUtil.a;
                    if (str2.equals("video/dolby-vision") && (b = CodecSpecificDataUtil.b(format2)) != null) {
                        int intValue = ((Integer) b.first).intValue();
                        if (intValue != 16 && intValue != 32 && intValue != 256) {
                            if (intValue != 512) {
                                if (intValue == 1024) {
                                    str = "video/av01";
                                }
                            } else {
                                str = "video/avc";
                            }
                        } else {
                            str = "video/hevc";
                        }
                    }
                    str = null;
                }
                format = format2;
                DrmSession drmSession = formatHolder.a;
                DrmSession drmSession2 = this.Q;
                this.Q = drmSession;
                this.N = format;
                if (this.o0) {
                    this.q0 = true;
                    return null;
                }
                MediaCodecAdapter mediaCodecAdapter = this.W;
                if (mediaCodecAdapter == null) {
                    this.b0 = null;
                    c0();
                    return null;
                }
                MediaCodecInfo mediaCodecInfo = this.d0;
                mediaCodecInfo.getClass();
                Format format3 = this.X;
                format3.getClass();
                DrmSession drmSession3 = this.P;
                DrmSession drmSession4 = this.Q;
                if (drmSession3 != drmSession4) {
                    if (drmSession4 != null && drmSession3 != null && (g = drmSession4.g()) != null && (g2 = drmSession3.g()) != null && g.getClass().equals(g2.getClass())) {
                        if (g instanceof FrameworkCryptoConfig) {
                            if (drmSession4.b().equals(drmSession3.b())) {
                                UUID uuid = C.e;
                                if (!uuid.equals(drmSession3.b())) {
                                }
                            }
                        }
                    }
                    if (this.v0) {
                        this.t0 = 1;
                        this.u0 = 3;
                    } else {
                        s0();
                        c0();
                    }
                    return new DecoderReuseEvaluation(mediaCodecInfo.a, format3, format, 0, 128);
                }
                if (this.Q != this.P) {
                    z = true;
                } else {
                    z = false;
                }
                DecoderReuseEvaluation I = I(mediaCodecInfo, format3, format, V().g);
                int i2 = I.d;
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 == 3) {
                                F0(format);
                                this.X = format;
                                if (z) {
                                }
                            } else {
                                io.sentry.d.d();
                                return null;
                            }
                        } else {
                            F0(format);
                            this.r0 = true;
                            this.s0 = 1;
                            this.f0 = false;
                            this.X = format;
                            if (z) {
                            }
                        }
                    } else {
                        F0(format);
                        this.X = format;
                        if (!z) {
                            if (this.v0) {
                                this.t0 = 1;
                                if (C0()) {
                                    this.u0 = 3;
                                    i = 2;
                                } else {
                                    this.u0 = 1;
                                }
                            }
                        }
                    }
                    if (i2 == 0 && (this.W != mediaCodecAdapter || this.u0 == 3)) {
                        return new DecoderReuseEvaluation(mediaCodecInfo.a, format3, format, 0, i);
                    }
                    return I;
                }
                if (this.v0) {
                    this.t0 = 1;
                    this.u0 = 3;
                } else {
                    s0();
                    c0();
                }
                i = 0;
                if (i2 == 0) {
                }
                return I;
            }
            if (!format2.s.isEmpty()) {
                Format.Builder a = format2.a();
                a.r = null;
                format = new Format(a);
                DrmSession drmSession5 = formatHolder.a;
                DrmSession drmSession22 = this.Q;
                this.Q = drmSession5;
                this.N = format;
                if (this.o0) {
                }
            }
            format = format2;
            DrmSession drmSession52 = formatHolder.a;
            DrmSession drmSession222 = this.Q;
            this.Q = drmSession52;
            this.N = format;
            if (this.o0) {
            }
        } else {
            throw r(new IllegalArgumentException("Sample MIME type is null."), format2, false, 4005);
        }
    }

    public abstract void k0(Format format, MediaFormat mediaFormat);

    @Override // androidx.media3.exoplayer.Renderer
    public void l(float f, float f2) {
        this.U = f;
        this.V = f2;
        F0(this.X);
    }

    public void m0(long j) {
        this.H0 = Math.max(j, this.H0);
        while (true) {
            ArrayDeque arrayDeque = this.K;
            if (!arrayDeque.isEmpty() && j >= ((OutputStreamInfo) arrayDeque.peek()).a) {
                OutputStreamInfo outputStreamInfo = (OutputStreamInfo) arrayDeque.poll();
                outputStreamInfo.getClass();
                y0(outputStreamInfo);
                n0();
            } else {
                return;
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.RendererCapabilities
    public final int n() {
        return 8;
    }

    public abstract void n0();

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void o(int i, Object obj) {
        int i2;
        if (i != 11) {
            if (i != 21) {
                if (i == 22 && (i2 = Build.VERSION.SDK_INT) >= 29) {
                    obj.getClass();
                    ImmutableSet immutableSet = (ImmutableSet) obj;
                    if (!this.O0.equals(immutableSet)) {
                        if (i2 >= 31) {
                            HashSet hashSet = new HashSet(immutableSet);
                            HashSet hashSet2 = new HashSet();
                            UnmodifiableIterator it = this.O0.iterator();
                            while (it.hasNext()) {
                                String str = (String) it.next();
                                if (!hashSet.remove(str)) {
                                    hashSet2.add(str);
                                }
                            }
                            MediaCodecAdapter mediaCodecAdapter = this.W;
                            if (mediaCodecAdapter != null) {
                                if (!hashSet2.isEmpty()) {
                                    mediaCodecAdapter.s(new ArrayList(hashSet2));
                                }
                                if (!hashSet.isEmpty()) {
                                    mediaCodecAdapter.r(new ArrayList(hashSet));
                                }
                            }
                        }
                        this.O0 = immutableSet;
                        return;
                    }
                    return;
                }
                return;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                obj.getClass();
                CodecParameters codecParameters = (CodecParameters) obj;
                this.M0 = codecParameters;
                MediaCodecAdapter mediaCodecAdapter2 = this.W;
                if (mediaCodecAdapter2 != null) {
                    Bundle bundle = new Bundle();
                    for (Map.Entry entry : codecParameters.a.entrySet()) {
                        String str2 = (String) entry.getKey();
                        Object value = entry.getValue();
                        if (value != null) {
                            if (value instanceof Integer) {
                                bundle.putInt(str2, ((Integer) value).intValue());
                            } else if (value instanceof Long) {
                                bundle.putLong(str2, ((Long) value).longValue());
                            } else if (value instanceof Float) {
                                bundle.putFloat(str2, ((Float) value).floatValue());
                            } else if (value instanceof String) {
                                bundle.putString(str2, (String) value);
                            } else if (value instanceof ByteBuffer) {
                                ByteBuffer byteBuffer = (ByteBuffer) value;
                                byte[] bArr = new byte[byteBuffer.remaining()];
                                byteBuffer.duplicate().get(bArr);
                                bundle.putByteArray(str2, bArr);
                            }
                        }
                    }
                    mediaCodecAdapter2.c(bundle);
                    return;
                }
                return;
            }
            return;
        }
        Renderer.WakeupListener wakeupListener = (Renderer.WakeupListener) obj;
        wakeupListener.getClass();
        this.R = wakeupListener;
    }

    public final void p0() {
        int i = this.u0;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    this.B0 = true;
                    t0();
                    return;
                } else {
                    s0();
                    c0();
                    return;
                }
            }
            N();
            G0();
            return;
        }
        N();
    }

    public abstract boolean q0(long j, long j2, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format);

    public final boolean r0(int i) {
        FormatHolder formatHolder = this.l;
        formatHolder.a();
        DecoderInputBuffer decoderInputBuffer = this.F;
        decoderInputBuffer.f();
        int C = C(formatHolder, decoderInputBuffer, i | 4);
        if (C == -5) {
            j0(formatHolder);
            return true;
        }
        if (C == -4 && decoderInputBuffer.e(4)) {
            this.A0 = true;
            p0();
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s0() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.W;
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.a();
                this.F0.b++;
                MediaCodecInfo mediaCodecInfo = this.d0;
                mediaCodecInfo.getClass();
                i0(mediaCodecInfo.a);
            }
            this.W = null;
            try {
                MediaCrypto mediaCrypto = this.S;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.W = null;
            try {
                MediaCrypto mediaCrypto2 = this.S;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void t() {
        this.N = null;
        y0(OutputStreamInfo.i);
        this.K.clear();
        if (this.o0) {
            this.o0 = false;
            u0();
        } else {
            O();
        }
    }

    public abstract void t0();

    public final void u0() {
        this.y0 = -9223372036854775807L;
        this.z0 = -9223372036854775807L;
        V().h = -9223372036854775807L;
        this.H0 = -9223372036854775807L;
        this.q0 = false;
        this.I.f();
        this.H.f();
        this.p0 = false;
        OggOpusAudioPacketizer oggOpusAudioPacketizer = this.L;
        oggOpusAudioPacketizer.getClass();
        oggOpusAudioPacketizer.a = AudioProcessor.a;
        oggOpusAudioPacketizer.c = 0;
        oggOpusAudioPacketizer.b = 2;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void v(long j, boolean z, boolean z2) {
        ArrayDeque arrayDeque = this.K;
        if (!arrayDeque.isEmpty()) {
            this.G0 = (OutputStreamInfo) arrayDeque.getLast();
        }
        arrayDeque.clear();
        if (!z2) {
            return;
        }
        this.A0 = false;
        this.B0 = false;
        this.D0 = false;
        if (this.o0) {
            u0();
        } else if (O()) {
            c0();
        }
        if (this.G0.d.h() > 0) {
            this.C0 = true;
        }
        this.G0.d.b();
        this.G0.g = false;
    }

    public void v0() {
        this.l0 = -1;
        this.G.m = null;
        this.m0 = -1;
        this.n0 = null;
        this.y0 = -9223372036854775807L;
        this.z0 = -9223372036854775807L;
        V().h = -9223372036854775807L;
        this.H0 = -9223372036854775807L;
        this.k0 = -9223372036854775807L;
        this.w0 = false;
        this.i0 = -9223372036854775807L;
        this.v0 = false;
        this.f0 = false;
        this.g0 = false;
        this.t0 = 0;
        this.u0 = 0;
        this.s0 = this.r0 ? 1 : 0;
        this.K0 = false;
        this.L0 = 0L;
    }

    public final void w0() {
        v0();
        this.E0 = null;
        this.b0 = null;
        this.d0 = null;
        this.X = null;
        this.Y = null;
        this.Z = false;
        this.x0 = false;
        this.a0 = -1.0f;
        this.e0 = false;
        this.h0 = false;
        this.j0 = false;
        this.r0 = false;
        this.s0 = 0;
    }

    public final void x0(DrmSession drmSession) {
        DrmSession drmSession2 = this.P;
        if (drmSession2 != drmSession) {
            if (drmSession != null) {
                drmSession.a(null);
            }
            if (drmSession2 != null) {
                drmSession2.d(null);
            }
        }
        this.P = drmSession;
    }

    public final void y0(OutputStreamInfo outputStreamInfo) {
        this.G0 = outputStreamInfo;
        long j = outputStreamInfo.c;
        if (j != -9223372036854775807L) {
            this.I0 = true;
            l0(j);
        }
    }

    public boolean z0(DecoderInputBuffer decoderInputBuffer) {
        return false;
    }

    public void l0(long j) {
    }

    public void o0(DecoderInputBuffer decoderInputBuffer) {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DecoderInitializationException extends Exception {
        public final String j;
        public final boolean k;
        public final MediaCodecInfo l;
        public final String m;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public DecoderInitializationException(Format format, MediaCodecUtil.DecoderQueryException decoderQueryException, boolean z, int i) {
            this(r3, decoderQueryException, r5, z, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + r10 + Math.abs(i));
            String str;
            String str2 = "Decoder init failed: [" + i + "], " + format;
            String str3 = format.p;
            if (i < 0) {
                str = "neg_";
            } else {
                str = "";
            }
        }

        public DecoderInitializationException(String str, Throwable th, String str2, boolean z, MediaCodecInfo mediaCodecInfo, String str3) {
            super(str, th);
            this.j = str2;
            this.k = z;
            this.l = mediaCodecInfo;
            this.m = str3;
        }
    }
}
