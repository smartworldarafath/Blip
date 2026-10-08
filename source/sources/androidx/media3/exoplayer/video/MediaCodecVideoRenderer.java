package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Trace;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Display;
import android.view.Surface;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.EGLSurfaceTexture;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.container.ObuParser;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.ScrubbingModeParameters;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.mediacodec.e;
import androidx.media3.exoplayer.mediacodec.g;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import androidx.media3.exoplayer.video.VideoFrameReleaseHelper;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.f3;
import defpackage.k8;
import defpackage.li;
import defpackage.mi;
import defpackage.ni;
import defpackage.p;
import defpackage.r3;
import defpackage.s3;
import defpackage.u2;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {
    public static final int[] L1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    public static boolean M1;
    public static boolean N1;
    public long A1;
    public VideoSize B1;
    public VideoSize C1;
    public int D1;
    public boolean E1;
    public int F1;
    public OnFrameRenderedListener G1;
    public VideoFrameMetadataListener H1;
    public long I1;
    public boolean J1;
    public int K1;
    public final Context Q0;
    public final boolean R0;
    public final VideoRendererEventListener.EventDispatcher S0;
    public final int T0;
    public final boolean U0;
    public final VideoFrameReleaseControl V0;
    public final VideoFrameReleaseControl.FrameReleaseInfo W0;
    public final FixedFrameRateEstimator X0;
    public final Av1SampleDependencyParser Y0;
    public final long Z0;
    public final VideoFrameReleaseEarlyTimeForecaster a1;
    public final PriorityQueue b1;
    public CodecMaxValues c1;
    public boolean d1;
    public boolean e1;
    public boolean f1;
    public boolean g1;
    public VideoSink h1;
    public boolean i1;
    public int j1;
    public List k1;
    public Surface l1;
    public PlaceholderSurface m1;
    public Size n1;
    public boolean o1;
    public int p1;
    public int q1;
    public long r1;
    public int s1;
    public int t1;
    public int u1;
    public ScrubbingModeParameters v1;
    public long w1;
    public boolean x1;
    public long y1;
    public int z1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.exoplayer.video.MediaCodecVideoRenderer$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements VideoSink.VideoFrameHandler {
        public final /* synthetic */ MediaCodecAdapter a;
        public final /* synthetic */ int b;

        public AnonymousClass2(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
            this.a = mediaCodecAdapter;
            this.b = i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api26 {
        public static boolean a(Context context) {
            Display display;
            Display.HdrCapabilities hdrCapabilities;
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            } else {
                display = null;
            }
            if (display == null || !display.isHdr() || (hdrCapabilities = display.getHdrCapabilities()) == null) {
                return false;
            }
            for (int i : hdrCapabilities.getSupportedHdrTypes()) {
                if (i == 1) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Context a;
        public boolean b;
        public MediaCodecAdapter.Factory c;
        public long d;
        public Handler e;
        public VideoRendererEventListener f;
        public int g;

        public Builder(Context context) {
            this.a = context;
            this.c = new DefaultMediaCodecAdapterFactory(context);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CodecMaxValues {
        public final int a;
        public final int b;
        public final int c;

        public CodecMaxValues(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class OnFrameRenderedListener implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        public final Handler j;

        public OnFrameRenderedListener(MediaCodecAdapter mediaCodecAdapter) {
            Handler k = Util.k(this);
            this.j = k;
            mediaCodecAdapter.g(this, k);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public final void a(long j) {
            if (Build.VERSION.SDK_INT < 30) {
                Handler handler = this.j;
                handler.sendMessageAtFrontOfQueue(Message.obtain(handler, 0, (int) (j >> 32), (int) j));
            } else {
                b(j);
            }
        }

        public final void b(long j) {
            boolean z;
            Surface surface;
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            VideoRendererEventListener.EventDispatcher eventDispatcher = mediaCodecVideoRenderer.S0;
            if (this == mediaCodecVideoRenderer.G1 && mediaCodecVideoRenderer.W != null) {
                if (j == Long.MAX_VALUE) {
                    mediaCodecVideoRenderer.D0 = true;
                    return;
                }
                try {
                    mediaCodecVideoRenderer.H0(j);
                    VideoSize videoSize = mediaCodecVideoRenderer.B1;
                    if (!videoSize.equals(VideoSize.d) && !videoSize.equals(mediaCodecVideoRenderer.C1)) {
                        mediaCodecVideoRenderer.C1 = videoSize;
                        eventDispatcher.a(videoSize);
                    }
                    mediaCodecVideoRenderer.F0.e++;
                    VideoFrameReleaseControl videoFrameReleaseControl = mediaCodecVideoRenderer.V0;
                    if (videoFrameReleaseControl.e != 3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    videoFrameReleaseControl.e = 3;
                    ((SystemClock) videoFrameReleaseControl.k).getClass();
                    videoFrameReleaseControl.g = Util.D(android.os.SystemClock.elapsedRealtime());
                    if (z && (surface = mediaCodecVideoRenderer.l1) != null) {
                        Handler handler = eventDispatcher.a;
                        if (handler != null) {
                            handler.post(new mi(eventDispatcher, surface, android.os.SystemClock.elapsedRealtime()));
                        }
                        mediaCodecVideoRenderer.o1 = true;
                    }
                    mediaCodecVideoRenderer.m0(j);
                } catch (ExoPlaybackException e) {
                    mediaCodecVideoRenderer.E0 = e;
                }
            }
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            int i = message.arg1;
            int i2 = message.arg2;
            String str = Util.a;
            b(((i & 4294967295L) << 32) | (4294967295L & i2));
            return true;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MediaCodecVideoRenderer(Builder builder) {
        super(r0.getApplicationContext(), 2, builder.c);
        boolean z;
        Context context = builder.a;
        Context applicationContext = context.getApplicationContext();
        this.Q0 = applicationContext;
        this.T0 = builder.g;
        this.h1 = null;
        this.S0 = new VideoRendererEventListener.EventDispatcher(builder.e, builder.f);
        if (this.h1 == null) {
            z = true;
        } else {
            z = false;
        }
        this.R0 = z;
        this.V0 = new VideoFrameReleaseControl(applicationContext, this, builder.d);
        this.W0 = new VideoFrameReleaseControl.FrameReleaseInfo();
        this.X0 = new FixedFrameRateEstimator(new p(13, this));
        HashSet hashSet = MediaLibraryInfo.a;
        this.U0 = "NVIDIA".equals(Build.MANUFACTURER);
        this.n1 = Size.c;
        this.p1 = 1;
        this.q1 = 0;
        this.B1 = VideoSize.d;
        this.F1 = 0;
        this.C1 = null;
        this.D1 = -1000;
        this.I1 = -9223372036854775807L;
        this.Y0 = new Av1SampleDependencyParser();
        this.b1 = new PriorityQueue();
        this.Z0 = -15000L;
        this.a1 = new VideoFrameReleaseEarlyTimeForecaster();
        this.v1 = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b0, code lost:
    
        if (r1.equals("AFTSO001") == false) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean I0(String str) {
        boolean z;
        boolean z2 = false;
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            try {
                if (!M1) {
                    HashSet hashSet = MediaLibraryInfo.a;
                    char c = 7;
                    if (Build.VERSION.SDK_INT <= 28) {
                        String str2 = Build.DEVICE;
                        str2.getClass();
                        switch (str2.hashCode()) {
                            case -1339091551:
                                if (str2.equals("dangal")) {
                                    z = false;
                                    break;
                                }
                                z = -1;
                                break;
                            case -1220081023:
                                if (str2.equals("dangalFHD")) {
                                    z = true;
                                    break;
                                }
                                z = -1;
                                break;
                            case -1220066608:
                                if (str2.equals("dangalUHD")) {
                                    z = 2;
                                    break;
                                }
                                z = -1;
                                break;
                            case -1012436106:
                                if (str2.equals("oneday")) {
                                    z = 3;
                                    break;
                                }
                                z = -1;
                                break;
                            case -760312546:
                                if (str2.equals("aquaman")) {
                                    z = 4;
                                    break;
                                }
                                z = -1;
                                break;
                            case -64886864:
                                if (str2.equals("magnolia")) {
                                    z = 5;
                                    break;
                                }
                                z = -1;
                                break;
                            case 3415681:
                                if (str2.equals("once")) {
                                    z = 6;
                                    break;
                                }
                                z = -1;
                                break;
                            case 825323514:
                                if (str2.equals("machuca")) {
                                    z = 7;
                                    break;
                                }
                                z = -1;
                                break;
                            default:
                                z = -1;
                                break;
                        }
                        switch (z) {
                            case false:
                            case true:
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                z2 = true;
                                break;
                        }
                        N1 = z2;
                        M1 = true;
                    }
                    String str3 = Build.MODEL;
                    str3.getClass();
                    switch (str3.hashCode()) {
                        case -349662828:
                            if (str3.equals("AFTJMST12")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case -321033677:
                            if (str3.equals("AFTKMST12")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 2006354:
                            if (str3.equals("AFTA")) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 2006367:
                            if (str3.equals("AFTN")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case 2006371:
                            if (str3.equals("AFTR")) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1785421873:
                            if (str3.equals("AFTEU011")) {
                                c = 5;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1785421876:
                            if (str3.equals("AFTEU014")) {
                                c = 6;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1798172390:
                            break;
                        case 2119412532:
                            if (str3.equals("AFTEUFF014")) {
                                c = '\b';
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    switch (c) {
                    }
                    N1 = z2;
                    M1 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return N1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0082, code lost:
    
        if (r3.equals("video/av01") == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int J0(MediaCodecInfo mediaCodecInfo, Format format) {
        int i = format.w;
        int i2 = format.x;
        if (i != -1 && i2 != -1) {
            String str = format.p;
            str.getClass();
            char c = 1;
            if ("video/dolby-vision".equals(str)) {
                Pair b = CodecSpecificDataUtil.b(format);
                if (b != null) {
                    int intValue = ((Integer) b.first).intValue();
                    if (intValue == 512 || intValue == 1 || intValue == 2) {
                        str = "video/avc";
                    } else if (intValue == 1024) {
                        str = "video/av01";
                    }
                }
                str = "video/hevc";
            }
            switch (str.hashCode()) {
                case -1664118616:
                    if (str.equals("video/3gpp")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1662735862:
                    break;
                case -1662541442:
                    if (str.equals("video/hevc")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1187890754:
                    if (str.equals("video/mp4v-es")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1331836730:
                    if (str.equals("video/avc")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1599127256:
                    if (str.equals("video/x-vnd.on2.vp8")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1599127257:
                    if (str.equals("video/x-vnd.on2.vp9")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    return ((i * i2) * 3) / 4;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    return Math.max(2097152, ((i * i2) * 3) / 4);
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    HashSet hashSet = MediaLibraryInfo.a;
                    String str2 = Build.MODEL;
                    if (!"BRAVIA 4K 2015".equals(str2) && (!"Amazon".equals(Build.MANUFACTURER) || (!"KFSOWI".equals(str2) && (!"AFTS".equals(str2) || !mediaCodecInfo.f)))) {
                        return ((Util.e(i2, 16) * Util.e(i, 16)) * 768) / 4;
                    }
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    return ((i * i2) * 3) / 8;
            }
        }
        return -1;
    }

    public static List K0(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) {
        List c;
        String str = format.p;
        if (str == null) {
            return ImmutableList.r();
        }
        if ("video/dolby-vision".equals(str) && !Api26.a(context)) {
            String c2 = MediaCodecUtil.c(format);
            if (c2 == null) {
                c = ImmutableList.r();
            } else {
                c = mediaCodecSelector.c(c2, z, z2);
            }
            if (!c.isEmpty()) {
                return c;
            }
        }
        return MediaCodecUtil.g(mediaCodecSelector, format, z, z2);
    }

    public static int L0(MediaCodecInfo mediaCodecInfo, Format format) {
        int i = format.q;
        List list = format.s;
        if (i != -1) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += ((byte[]) list.get(i3)).length;
            }
            return format.q + i2;
        }
        return J0(mediaCodecInfo, format);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void A(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
        super.A(formatArr, j, j2, mediaPeriodId);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.a1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean A0() {
        boolean z;
        ScrubbingModeParameters scrubbingModeParameters;
        if (this.v0) {
            Format format = this.X;
            long j = this.A;
            if (j != -9223372036854775807L) {
                if (this.L0 + 1 + j <= Long.MAX_VALUE - (X() + j)) {
                    z = false;
                    scrubbingModeParameters = this.v1;
                    if (scrubbingModeParameters != null || !scrubbingModeParameters.c || this.x1 || this.E1 || ((format != null && format.r > 0) || z || U() != -9223372036854775807L)) {
                        return true;
                    }
                }
            }
            z = true;
            scrubbingModeParameters = this.v1;
            if (scrubbingModeParameters != null) {
            }
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean B0(MediaCodecInfo mediaCodecInfo) {
        return N0(mediaCodecInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean C0() {
        MediaCodecInfo mediaCodecInfo = this.d0;
        if (this.h1 != null && mediaCodecInfo != null) {
            String str = mediaCodecInfo.a;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder") || str.equals("c2.mtk.vp9.decoder")) {
                return true;
            }
        }
        return super.C0();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final int E0(k8 k8Var, Format format) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (!MimeTypes.k(format.p)) {
            return RendererCapabilities.j(0, 0, 0, 0);
        }
        if (format.t != null) {
            z = true;
        } else {
            z = false;
        }
        Context context = this.Q0;
        List K0 = K0(context, k8Var, format, z, false);
        if (z && K0.isEmpty()) {
            K0 = K0(context, k8Var, format, false, false);
        }
        if (K0.isEmpty()) {
            return RendererCapabilities.j(1, 0, 0, 0);
        }
        int i6 = format.T;
        if (i6 != 0 && i6 != 2) {
            return RendererCapabilities.j(2, 0, 0, 0);
        }
        MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) K0.get(0);
        boolean e = mediaCodecInfo.e(context, format);
        if (!e) {
            for (int i7 = 1; i7 < K0.size(); i7++) {
                MediaCodecInfo mediaCodecInfo2 = (MediaCodecInfo) K0.get(i7);
                if (mediaCodecInfo2.e(context, format)) {
                    z2 = false;
                    e = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
            }
        }
        z2 = true;
        if (e) {
            i = 4;
        } else {
            i = 3;
        }
        if (mediaCodecInfo.f(format)) {
            i2 = 16;
        } else {
            i2 = 8;
        }
        if (mediaCodecInfo.g) {
            i3 = 64;
        } else {
            i3 = 0;
        }
        if (z2) {
            i4 = 128;
        } else {
            i4 = 0;
        }
        if ("video/dolby-vision".equals(format.p) && !Api26.a(context)) {
            i4 = 256;
        }
        if (e) {
            List K02 = K0(context, k8Var, format, z, true);
            if (!K02.isEmpty()) {
                HashMap hashMap = MediaCodecUtil.a;
                ArrayList arrayList = new ArrayList(K02);
                Collections.sort(arrayList, new g(new e(context, format)));
                MediaCodecInfo mediaCodecInfo3 = (MediaCodecInfo) arrayList.get(0);
                if (mediaCodecInfo3.e(context, format) && mediaCodecInfo3.f(format)) {
                    i5 = 32;
                }
            }
        }
        return i | i2 | i5 | i3 | i4;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation I(MediaCodecInfo mediaCodecInfo, Format format, Format format2, boolean z) {
        int i;
        int i2;
        DecoderReuseEvaluation b = mediaCodecInfo.b(format, format2);
        float f = format.B;
        float f2 = format2.B;
        int i3 = b.e;
        CodecMaxValues codecMaxValues = this.c1;
        codecMaxValues.getClass();
        if (format2.w > codecMaxValues.a || format2.x > codecMaxValues.b) {
            i3 |= 256;
        }
        if (L0(mediaCodecInfo, format2) > codecMaxValues.c) {
            i3 |= 64;
        }
        if (this.q1 != Integer.MIN_VALUE && (i2 = Build.VERSION.SDK_INT) < 31 && ((i2 != 30 || Build.MODEL.startsWith("MiTV")) && f != -1.0f && f2 != -1.0f && (!mediaCodecInfo.f || !z))) {
            if (Math.abs((Math.max(f2, f) / Math.min(f2, f)) - Math.round(r10)) > 0.01f) {
                i3 |= 65536;
            }
        }
        int i4 = i3;
        String str = mediaCodecInfo.a;
        if (i4 != 0) {
            i = 0;
        } else {
            i = b.d;
        }
        return new DecoderReuseEvaluation(str, format, format2, i, i4);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final MediaCodecDecoderException J(IllegalStateException illegalStateException, MediaCodecInfo mediaCodecInfo) {
        Surface surface = this.l1;
        MediaCodecDecoderException mediaCodecDecoderException = new MediaCodecDecoderException(illegalStateException, mediaCodecInfo);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
        return mediaCodecDecoderException;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0057  */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.os.HandlerThread, java.lang.Thread, android.os.Handler$Callback, java.lang.Object, androidx.media3.exoplayer.video.PlaceholderSurface$PlaceholderSurfaceThread] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Surface M0(MediaCodecInfo mediaCodecInfo) {
        boolean z;
        ?? handlerThread;
        int i;
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            return videoSink.e();
        }
        Surface surface = this.l1;
        if (surface != null) {
            return surface;
        }
        if (Build.VERSION.SDK_INT >= 35 && mediaCodecInfo.h) {
            return null;
        }
        Preconditions.n(U0(mediaCodecInfo));
        PlaceholderSurface placeholderSurface = this.m1;
        if (placeholderSurface != null && placeholderSurface.j != mediaCodecInfo.f && placeholderSurface != null) {
            placeholderSurface.release();
            this.m1 = null;
        }
        if (this.m1 == null) {
            boolean z2 = mediaCodecInfo.f;
            boolean z3 = false;
            if (z2) {
                if (!PlaceholderSurface.a()) {
                    z = false;
                    Preconditions.n(z);
                    handlerThread = new HandlerThread("ExoPlayer:PlaceholderSurface");
                    if (!z2) {
                        i = PlaceholderSurface.m;
                    } else {
                        i = 0;
                    }
                    handlerThread.start();
                    Handler handler = new Handler(handlerThread.getLooper(), handlerThread);
                    handlerThread.k = handler;
                    handlerThread.j = new EGLSurfaceTexture(handler);
                    synchronized (handlerThread) {
                        handlerThread.k.obtainMessage(1, i, 0).sendToTarget();
                        while (handlerThread.n == null && handlerThread.m == null && handlerThread.l == null) {
                            try {
                                handlerThread.wait();
                            } catch (InterruptedException unused) {
                                z3 = true;
                            }
                        }
                    }
                    if (z3) {
                        Thread.currentThread().interrupt();
                    }
                    RuntimeException runtimeException = handlerThread.m;
                    if (runtimeException == null) {
                        Error error = handlerThread.l;
                        if (error == null) {
                            PlaceholderSurface placeholderSurface2 = handlerThread.n;
                            placeholderSurface2.getClass();
                            this.m1 = placeholderSurface2;
                        } else {
                            throw error;
                        }
                    } else {
                        throw runtimeException;
                    }
                }
            } else {
                int i2 = PlaceholderSurface.m;
            }
            z = true;
            Preconditions.n(z);
            handlerThread = new HandlerThread("ExoPlayer:PlaceholderSurface");
            if (!z2) {
            }
            handlerThread.start();
            Handler handler2 = new Handler(handlerThread.getLooper(), handlerThread);
            handlerThread.k = handler2;
            handlerThread.j = new EGLSurfaceTexture(handler2);
            synchronized (handlerThread) {
            }
        }
        return this.m1;
    }

    public final boolean N0(MediaCodecInfo mediaCodecInfo) {
        if (this.h1 == null) {
            Surface surface = this.l1;
            if (surface == null || !surface.isValid()) {
                if ((Build.VERSION.SDK_INT < 35 || !mediaCodecInfo.h) && !U0(mediaCodecInfo)) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final boolean O0(DecoderInputBuffer decoderInputBuffer) {
        if (s() || decoderInputBuffer.e(536870912) || this.A == -9223372036854775807L) {
            return true;
        }
        if (this.A - (decoderInputBuffer.n - X()) <= 100000) {
            return true;
        }
        return false;
    }

    public final void P0() {
        if (this.s1 > 0) {
            this.p.getClass();
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.r1;
            int i = this.s1;
            VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
            Handler handler = eventDispatcher.a;
            if (handler != null) {
                handler.post(new li(eventDispatcher, i, j));
            }
            this.s1 = 0;
            this.r1 = elapsedRealtime;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final int Q(DecoderInputBuffer decoderInputBuffer) {
        if (Build.VERSION.SDK_INT >= 34) {
            ScrubbingModeParameters scrubbingModeParameters = this.v1;
            if (((scrubbingModeParameters != null && scrubbingModeParameters.e) || this.E1) && decoderInputBuffer.n < this.u && !O0(decoderInputBuffer)) {
                return 32;
            }
            return 0;
        }
        return 0;
    }

    public final void Q0() {
        MediaCodecAdapter mediaCodecAdapter;
        if (this.E1 && (mediaCodecAdapter = this.W) != null) {
            this.G1 = new OnFrameRenderedListener(mediaCodecAdapter);
            if (Build.VERSION.SDK_INT >= 33) {
                Bundle bundle = new Bundle();
                bundle.putInt("tunnel-peek", 1);
                mediaCodecAdapter.c(bundle);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final float R(float f, Format format, Format[] formatArr) {
        float f2;
        MediaCodecInfo mediaCodecInfo;
        float f3 = -1.0f;
        for (Format format2 : formatArr) {
            float f4 = format2.B;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f && this.W != null) {
            FixedFrameRateEstimator fixedFrameRateEstimator = this.X0;
            if (fixedFrameRateEstimator.a() != -9223372036854775807L) {
                f3 = 1.0E9f / ((float) fixedFrameRateEstimator.a());
            }
        }
        if (f3 == -1.0f) {
            f2 = -1.0f;
        } else {
            f2 = f3 * f;
        }
        if (this.v1 != null && (mediaCodecInfo = this.d0) != null) {
            int i = format.w;
            int i2 = format.x;
            float f5 = -3.4028235E38f;
            if (mediaCodecInfo.i) {
                float f6 = mediaCodecInfo.l;
                if (f6 != -3.4028235E38f && mediaCodecInfo.j == i && mediaCodecInfo.k == i2) {
                    f5 = f6;
                } else {
                    f5 = 1024.0f;
                    if (!mediaCodecInfo.g(i, i2, 1024.0d)) {
                        float f7 = 0.0f;
                        while (true) {
                            float f8 = f5 - f7;
                            if (Math.abs(f8) <= 5.0f) {
                                break;
                            }
                            float f9 = (f8 / 2.0f) + f7;
                            if (mediaCodecInfo.g(i, i2, f9)) {
                                f7 = f9;
                            } else {
                                f5 = f9;
                            }
                        }
                        f5 = f7;
                    }
                    mediaCodecInfo.l = f5;
                    mediaCodecInfo.j = i;
                    mediaCodecInfo.k = i2;
                }
            }
            if (f2 != -1.0f) {
                return Math.max(f2, f5);
            }
            return f5;
        }
        return f2;
    }

    public final void R0(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.j(i, j);
        Trace.endSection();
        this.F0.e++;
        boolean z = false;
        this.t1 = 0;
        if (this.h1 == null) {
            VideoSize videoSize = this.B1;
            boolean equals = videoSize.equals(VideoSize.d);
            VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
            if (!equals && !videoSize.equals(this.C1)) {
                this.C1 = videoSize;
                eventDispatcher.a(videoSize);
            }
            VideoFrameReleaseControl videoFrameReleaseControl = this.V0;
            if (videoFrameReleaseControl.e != 3) {
                z = true;
            }
            videoFrameReleaseControl.e = 3;
            ((SystemClock) videoFrameReleaseControl.k).getClass();
            videoFrameReleaseControl.g = Util.D(android.os.SystemClock.elapsedRealtime());
            if (z && (surface = this.l1) != null) {
                Handler handler = eventDispatcher.a;
                if (handler != null) {
                    handler.post(new mi(eventDispatcher, surface, android.os.SystemClock.elapsedRealtime()));
                }
                this.o1 = true;
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final ArrayList S(k8 k8Var, Format format, boolean z) {
        boolean z2 = this.E1;
        Context context = this.Q0;
        List K0 = K0(context, k8Var, format, z, z2);
        HashMap hashMap = MediaCodecUtil.a;
        ArrayList arrayList = new ArrayList(K0);
        Collections.sort(arrayList, new g(new e(context, format)));
        return arrayList;
    }

    public final void S0(Object obj) {
        Surface surface;
        Handler handler;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            surface = null;
        }
        Surface surface2 = this.l1;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        if (surface2 != surface) {
            this.l1 = surface;
            VideoSink videoSink = this.h1;
            VideoFrameReleaseControl videoFrameReleaseControl = this.V0;
            if (videoSink == null) {
                videoFrameReleaseControl.f(surface);
            }
            boolean z = false;
            this.o1 = false;
            int i = this.q;
            MediaCodecAdapter mediaCodecAdapter = this.W;
            if (mediaCodecAdapter != null) {
                if (this.h1 == null) {
                    MediaCodecInfo mediaCodecInfo = this.d0;
                    mediaCodecInfo.getClass();
                    if (N0(mediaCodecInfo) && !this.d1) {
                        Surface M0 = M0(mediaCodecInfo);
                        if (M0 != null) {
                            mediaCodecAdapter.p(M0);
                        } else if (Build.VERSION.SDK_INT >= 35) {
                            mediaCodecAdapter.i();
                        } else {
                            io.sentry.d.d();
                            return;
                        }
                    } else {
                        s0();
                        c0();
                    }
                }
                z = true;
            }
            if (surface != null) {
                VideoSize videoSize = this.C1;
                if (videoSize != null) {
                    eventDispatcher.a(videoSize);
                }
            } else {
                this.C1 = null;
                VideoSink videoSink2 = this.h1;
                if (videoSink2 != null) {
                    videoSink2.o();
                }
            }
            if (i == 2) {
                VideoSink videoSink3 = this.h1;
                if (videoSink3 != null) {
                    videoSink3.s(z);
                } else {
                    videoFrameReleaseControl.c(z);
                }
            }
            Q0();
            return;
        }
        if (surface != null) {
            VideoSize videoSize2 = this.C1;
            if (videoSize2 != null) {
                eventDispatcher.a(videoSize2);
            }
            Surface surface3 = this.l1;
            if (surface3 != null && this.o1 && (handler = eventDispatcher.a) != null) {
                handler.post(new mi(eventDispatcher, surface3, android.os.SystemClock.elapsedRealtime()));
            }
        }
    }

    public final boolean T0(long j, long j2, boolean z, boolean z2) {
        boolean z3;
        if (this.h1 != null && this.R0) {
            j2 -= -this.I1;
        }
        if (j < -500000 && !z) {
            SampleStream sampleStream = this.r;
            sampleStream.getClass();
            int d = sampleStream.d(j2 - this.t);
            if (d != 0) {
                this.w1 = j2;
                if (this.V0.h != -9223372036854775807L) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                PriorityQueue priorityQueue = this.b1;
                Iterator it = priorityQueue.iterator();
                int i = 0;
                int i2 = 0;
                while (it.hasNext()) {
                    if (((Long) it.next()).longValue() >= this.u && !z3) {
                        i++;
                    } else {
                        i2++;
                    }
                }
                priorityQueue.clear();
                DecoderCounters decoderCounters = this.F0;
                if (z2) {
                    int i3 = decoderCounters.d + d;
                    decoderCounters.f += this.u1;
                    decoderCounters.d = i3 + i + i2;
                } else {
                    decoderCounters.j++;
                    W0(d + i, this.u1);
                    this.F0.d += i2;
                }
                if (O()) {
                    c0();
                }
                VideoSink videoSink = this.h1;
                if (videoSink != null) {
                    videoSink.q(false);
                }
                return true;
            }
        }
        return false;
    }

    public final boolean U0(MediaCodecInfo mediaCodecInfo) {
        if (!this.E1 && !I0(mediaCodecInfo.a)) {
            if (!mediaCodecInfo.f || PlaceholderSurface.a()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void V0(MediaCodecAdapter mediaCodecAdapter, int i) {
        Trace.beginSection("skipVideoBuffer");
        mediaCodecAdapter.f(i);
        Trace.endSection();
        this.F0.f++;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final MediaCodecAdapter.Configuration W(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f) {
        ColorInfo colorInfo;
        int i;
        CodecMaxValues codecMaxValues;
        boolean z;
        int i2;
        int i3;
        Point point;
        int i4;
        int i5;
        char c;
        boolean z2;
        int i6;
        boolean z3;
        Pair b;
        int J0;
        String str = mediaCodecInfo.c;
        Format[] formatArr = this.s;
        formatArr.getClass();
        int i7 = format.w;
        float f2 = format.B;
        ColorInfo colorInfo2 = format.H;
        int i8 = format.x;
        int L0 = L0(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (L0 != -1 && (J0 = J0(mediaCodecInfo, format)) != -1) {
                L0 = Math.min((int) (L0 * 1.5f), J0);
            }
            codecMaxValues = new CodecMaxValues(i7, i8, L0);
            colorInfo = colorInfo2;
            i = i8;
        } else {
            int length = formatArr.length;
            int i9 = i7;
            int i10 = i8;
            int i11 = 0;
            boolean z4 = false;
            while (i11 < length) {
                Format format2 = formatArr[i11];
                Format[] formatArr2 = formatArr;
                if (colorInfo2 != null && format2.H == null) {
                    Format.Builder a = format2.a();
                    a.G = colorInfo2;
                    format2 = new Format(a);
                }
                DecoderReuseEvaluation b2 = mediaCodecInfo.b(format, format2);
                int i12 = length;
                int i13 = format2.x;
                if (b2.d != 0) {
                    int i14 = format2.w;
                    i5 = i11;
                    c = 65535;
                    if (i14 != -1 && i13 != -1) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    z4 |= z2;
                    i9 = Math.max(i9, i14);
                    i10 = Math.max(i10, i13);
                    L0 = Math.max(L0, L0(mediaCodecInfo, format2));
                } else {
                    i5 = i11;
                    c = 65535;
                }
                length = i12;
                i11 = i5 + 1;
                formatArr = formatArr2;
            }
            if (z4) {
                Log.f("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i9 + "x" + i10);
                if (i8 > i7) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i2 = i8;
                } else {
                    i2 = i7;
                }
                boolean z5 = z;
                if (z) {
                    i3 = i7;
                } else {
                    i3 = i8;
                }
                float f3 = i3 / i2;
                int i15 = 0;
                while (true) {
                    colorInfo = colorInfo2;
                    if (i15 >= 9) {
                        break;
                    }
                    int i16 = L1[i15];
                    int i17 = i15;
                    int i18 = (int) (i16 * f3);
                    if (i16 <= i2 || i18 <= i3) {
                        break;
                    }
                    if (!z5) {
                        i18 = i16;
                    }
                    if (!z5) {
                        i16 = i18;
                    }
                    int i19 = i3;
                    MediaCodecInfo.VideoCapabilities videoCapabilities = mediaCodecInfo.d.getVideoCapabilities();
                    if (videoCapabilities == null) {
                        i4 = i2;
                        point = null;
                    } else {
                        int widthAlignment = videoCapabilities.getWidthAlignment();
                        i4 = i2;
                        int heightAlignment = videoCapabilities.getHeightAlignment();
                        point = new Point(Util.e(i18, widthAlignment) * widthAlignment, Util.e(i16, heightAlignment) * heightAlignment);
                    }
                    if (point != null) {
                        i = i8;
                        if (mediaCodecInfo.g(point.x, point.y, f2)) {
                            break;
                        }
                    } else {
                        i = i8;
                    }
                    i15 = i17 + 1;
                    i8 = i;
                    colorInfo2 = colorInfo;
                    i3 = i19;
                    i2 = i4;
                }
                i = i8;
                point = null;
                if (point != null) {
                    i9 = Math.max(i9, point.x);
                    i10 = Math.max(i10, point.y);
                    Format.Builder a2 = format.a();
                    a2.v = i9;
                    a2.w = i10;
                    L0 = Math.max(L0, J0(mediaCodecInfo, new Format(a2)));
                    Log.f("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i9 + "x" + i10);
                }
            } else {
                colorInfo = colorInfo2;
                i = i8;
            }
            codecMaxValues = new CodecMaxValues(i9, i10, L0);
        }
        this.c1 = codecMaxValues;
        if (this.E1) {
            i6 = this.F1;
        } else {
            i6 = 0;
        }
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", i7);
        mediaFormat.setInteger("height", i);
        MediaFormatUtil.b(mediaFormat, format.s);
        if (f2 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f2);
        }
        MediaFormatUtil.a(mediaFormat, "rotation-degrees", format.C);
        if (colorInfo != null) {
            ColorInfo colorInfo3 = colorInfo;
            MediaFormatUtil.a(mediaFormat, "color-transfer", colorInfo3.c);
            MediaFormatUtil.a(mediaFormat, "color-standard", colorInfo3.a);
            MediaFormatUtil.a(mediaFormat, "color-range", colorInfo3.b);
            byte[] bArr = colorInfo3.d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(format.p) && (b = CodecSpecificDataUtil.b(format)) != null) {
            MediaFormatUtil.a(mediaFormat, "profile", ((Integer) b.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.a);
        mediaFormat.setInteger("max-height", codecMaxValues.b);
        MediaFormatUtil.a(mediaFormat, "max-input-size", codecMaxValues.c);
        mediaFormat.setInteger("priority", 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        if (this.U0) {
            z3 = true;
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            z3 = true;
        }
        if (i6 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", z3);
            mediaFormat.setInteger("audio-session-id", i6);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.D1));
        }
        G(mediaFormat);
        Surface M0 = M0(mediaCodecInfo);
        if (this.h1 != null && !Util.B(this.Q0)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return new MediaCodecAdapter.Configuration(mediaCodecInfo, mediaFormat, format, M0, mediaCrypto, null);
    }

    public final void W0(int i, int i2) {
        DecoderCounters decoderCounters = this.F0;
        decoderCounters.h += i;
        int i3 = i + i2;
        decoderCounters.g += i3;
        this.s1 += i3;
        int i4 = this.t1 + i3;
        this.t1 = i4;
        decoderCounters.i = Math.max(i4, decoderCounters.i);
        int i5 = this.T0;
        if (i5 > 0 && this.s1 >= i5) {
            P0();
        }
    }

    public final void X0(long j) {
        DecoderCounters decoderCounters = this.F0;
        decoderCounters.k += j;
        decoderCounters.l++;
        this.y1 += j;
        this.z1++;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void Z(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer = decoderInputBuffer.o;
        if (byteBuffer != null && byteBuffer.remaining() >= 7) {
            byte b = byteBuffer.get();
            short s = byteBuffer.getShort();
            short s2 = byteBuffer.getShort();
            byte b2 = byteBuffer.get();
            byte b3 = byteBuffer.get();
            boolean z = false;
            byteBuffer.position(0);
            if (b == -75 && s == 60 && s2 == 1 && b2 == 4 && (b3 == 0 || b3 == 1)) {
                if (this.f1) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    MediaCodecAdapter mediaCodecAdapter = this.W;
                    mediaCodecAdapter.getClass();
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("hdr10-plus-info", bArr);
                    mediaCodecAdapter.c(bundle);
                    return;
                }
                return;
            }
            if (Build.VERSION.SDK_INT >= 37 && b == -75 && s == 144 && s2 == 1) {
                byteBuffer.position(5);
                int remaining = byteBuffer.remaining();
                byte[] bArr2 = new byte[remaining];
                byteBuffer.get(bArr2);
                byteBuffer.position(0);
                if (remaining > 0) {
                    z = true;
                }
                this.g1 = z;
                if (z) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putByteArray("hdr-st2094-50-info", bArr2);
                    MediaCodecAdapter mediaCodecAdapter2 = this.W;
                    mediaCodecAdapter2.getClass();
                    mediaCodecAdapter2.c(bundle2);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
    
        if (android.os.SystemClock.elapsedRealtime() < r7.k0) goto L18;
     */
    @Override // androidx.media3.exoplayer.Renderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a() {
        boolean a;
        boolean z;
        boolean z2 = false;
        if (this.N != null) {
            if (s()) {
                a = this.w;
            } else {
                SampleStream sampleStream = this.r;
                sampleStream.getClass();
                a = sampleStream.a();
            }
            if (!a) {
                if (this.m0 >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    if (this.k0 != -9223372036854775807L) {
                        this.p.getClass();
                    }
                }
            }
            z2 = true;
        }
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            return videoSink.t(z2);
        }
        if (z2 && (this.W == null || this.E1)) {
            return true;
        }
        return this.V0.b(z2);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean b() {
        if (this.B0) {
            VideoSink videoSink = this.h1;
            if (videoSink == null || videoSink.b()) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public final void d(long j, long j2) {
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            try {
                videoSink.d(j, j2);
            } catch (VideoSink.VideoSinkException e) {
                throw r(e, e.j, false, 7001);
            }
        }
        super.d(j, j2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean e0(Format format) {
        VideoSink videoSink = this.h1;
        if (videoSink != null && !videoSink.c()) {
            try {
                return this.h1.w(format);
            } catch (VideoSink.VideoSinkException e) {
                throw this.r(e, format, false, 7000);
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void f0(Exception exc) {
        Log.d("MediaCodecVideoRenderer", "Video codec error", exc);
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new f3(25, eventDispatcher, exc));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void g0(long j, long j2, String str) {
        String str2;
        boolean z;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            str2 = str;
            handler.post(new r3(eventDispatcher, str2, j, j2, 1));
        } else {
            str2 = str;
        }
        this.d1 = I0(str2);
        androidx.media3.exoplayer.mediacodec.MediaCodecInfo mediaCodecInfo = this.d0;
        mediaCodecInfo.getClass();
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(mediaCodecInfo.b)) {
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = mediaCodecInfo.d.profileLevels;
            if (codecProfileLevelArr == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                if (codecProfileLevel.profile == 16384) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        this.f1 = z;
        if (Build.VERSION.SDK_INT < 37) {
            androidx.media3.exoplayer.mediacodec.MediaCodecInfo mediaCodecInfo2 = this.d0;
            mediaCodecInfo2.getClass();
            if (mediaCodecInfo2.b.equals("video/av01")) {
                z2 = true;
            }
        }
        this.e1 = z2;
        Q0();
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void h0(CodecParameters codecParameters) {
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new f3(26, eventDispatcher, codecParameters));
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void i() {
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            int i = this.j1;
            if (i != 0 && i != 1) {
                videoSink.x();
                return;
            } else {
                this.j1 = 0;
                return;
            }
        }
        VideoFrameReleaseControl videoFrameReleaseControl = this.V0;
        if (videoFrameReleaseControl.e == 0) {
            videoFrameReleaseControl.e = 1;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void i0(String str) {
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new f3(23, eventDispatcher, str));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation j0(FormatHolder formatHolder) {
        DecoderReuseEvaluation j0 = super.j0(formatHolder);
        this.g1 = false;
        Format format = formatHolder.b;
        format.getClass();
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new s3(eventDispatcher, format, j0, 7));
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.a1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
        return j0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void k0(Format format, MediaFormat mediaFormat) {
        boolean z;
        int integer;
        int integer2;
        int i;
        int i2;
        MediaCodecAdapter mediaCodecAdapter = this.W;
        if (mediaCodecAdapter != null) {
            mediaCodecAdapter.n(this.p1);
        }
        if (this.E1) {
            i2 = format.w;
            i = format.x;
        } else {
            mediaFormat.getClass();
            if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            if (z) {
                integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            int i3 = integer;
            i = integer2;
            i2 = i3;
        }
        float f = format.E;
        int i4 = format.C;
        if (i4 == 90 || i4 == 270) {
            f = 1.0f / f;
            int i5 = i;
            i = i2;
            i2 = i5;
        }
        this.B1 = new VideoSize(f, i2, i);
        VideoSink videoSink = this.h1;
        if (videoSink != null && this.J1) {
            if (i2 > 0 && i > 0) {
                Format.Builder a = format.a();
                a.v = i2;
                a.w = i;
                a.D = f;
                Format format2 = new Format(a);
                int i6 = this.j1;
                List list = this.k1;
                if (list == null) {
                    list = ImmutableList.r();
                }
                videoSink.p(format2, Y(), i6, list);
                this.j1 = 2;
            } else {
                return;
            }
        } else {
            float f2 = format.B;
            FixedFrameRateEstimator fixedFrameRateEstimator = this.X0;
            fixedFrameRateEstimator.f = f2;
            fixedFrameRateEstimator.a.c();
            fixedFrameRateEstimator.b.c();
            fixedFrameRateEstimator.c = false;
            fixedFrameRateEstimator.d = -9223372036854775807L;
            fixedFrameRateEstimator.e = 0;
            fixedFrameRateEstimator.c();
        }
        this.J1 = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public final void l(float f, float f2) {
        super.l(f, f2);
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            videoSink.n(f);
        } else {
            this.V0.g(f);
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.a1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.c(f);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void m0(long j) {
        super.m0(j);
        if (!this.E1) {
            this.u1--;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void n0() {
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            videoSink.l();
            if (this.I1 == -9223372036854775807L) {
                this.I1 = Y();
            }
            this.h1.j(-this.I1);
        } else {
            this.V0.e(2);
        }
        this.J1 = true;
        Q0();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void o(int i, Object obj) {
        boolean z;
        boolean z2 = true;
        if (i != 1) {
            if (i != 7) {
                if (i != 10) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 13) {
                                if (i != 14) {
                                    switch (i) {
                                        case 16:
                                            obj.getClass();
                                            this.D1 = ((Integer) obj).intValue();
                                            MediaCodecAdapter mediaCodecAdapter = this.W;
                                            if (mediaCodecAdapter != null && Build.VERSION.SDK_INT >= 35) {
                                                Bundle bundle = new Bundle();
                                                bundle.putInt("importance", Math.max(0, -this.D1));
                                                mediaCodecAdapter.c(bundle);
                                                return;
                                            }
                                            return;
                                        case 17:
                                            Surface surface = this.l1;
                                            S0(null);
                                            obj.getClass();
                                            ((MediaCodecVideoRenderer) obj).o(1, surface);
                                            return;
                                        case 18:
                                            ScrubbingModeParameters scrubbingModeParameters = this.v1;
                                            if (scrubbingModeParameters != null && scrubbingModeParameters.b) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            ScrubbingModeParameters scrubbingModeParameters2 = (ScrubbingModeParameters) obj;
                                            this.v1 = scrubbingModeParameters2;
                                            if (scrubbingModeParameters2 == null || !scrubbingModeParameters2.b) {
                                                z2 = false;
                                            }
                                            if (z != z2) {
                                                F0(this.X);
                                                return;
                                            }
                                            return;
                                        default:
                                            super.o(i, obj);
                                            return;
                                    }
                                }
                                obj.getClass();
                                Size size = (Size) obj;
                                if (size.a != 0 && size.b != 0) {
                                    this.n1 = size;
                                    VideoSink videoSink = this.h1;
                                    if (videoSink != null) {
                                        Surface surface2 = this.l1;
                                        surface2.getClass();
                                        videoSink.f(surface2, size);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            obj.getClass();
                            List list = (List) obj;
                            if (list.equals(VideoFrameProcessor.a)) {
                                VideoSink videoSink2 = this.h1;
                                if (videoSink2 != null && videoSink2.c()) {
                                    this.h1.u();
                                    return;
                                }
                                return;
                            }
                            this.k1 = list;
                            VideoSink videoSink3 = this.h1;
                            if (videoSink3 != null) {
                                videoSink3.r(list);
                                return;
                            }
                            return;
                        }
                        obj.getClass();
                        int intValue = ((Integer) obj).intValue();
                        this.q1 = intValue;
                        VideoSink videoSink4 = this.h1;
                        if (videoSink4 != null) {
                            videoSink4.m(intValue);
                            return;
                        }
                        VideoFrameReleaseHelper videoFrameReleaseHelper = this.V0.b;
                        if (videoFrameReleaseHelper.i != intValue) {
                            videoFrameReleaseHelper.i = intValue;
                            videoFrameReleaseHelper.c(true);
                            return;
                        }
                        return;
                    }
                    obj.getClass();
                    int intValue2 = ((Integer) obj).intValue();
                    this.p1 = intValue2;
                    MediaCodecAdapter mediaCodecAdapter2 = this.W;
                    if (mediaCodecAdapter2 != null) {
                        mediaCodecAdapter2.n(intValue2);
                        return;
                    }
                    return;
                }
                obj.getClass();
                int intValue3 = ((Integer) obj).intValue();
                if (this.F1 != intValue3) {
                    this.F1 = intValue3;
                    if (this.E1) {
                        s0();
                        return;
                    }
                    return;
                }
                return;
            }
            obj.getClass();
            VideoFrameMetadataListener videoFrameMetadataListener = (VideoFrameMetadataListener) obj;
            this.H1 = videoFrameMetadataListener;
            VideoSink videoSink5 = this.h1;
            if (videoSink5 != null) {
                videoSink5.k(videoFrameMetadataListener);
                return;
            }
            return;
        }
        S0(obj);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void o0(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        int i;
        int i2;
        ByteBuffer byteBuffer2;
        boolean z;
        ColorInfo colorInfo;
        androidx.media3.exoplayer.mediacodec.MediaCodecInfo mediaCodecInfo = this.d0;
        mediaCodecInfo.getClass();
        String str = mediaCodecInfo.b;
        if (str.equals("video/av01") && (byteBuffer2 = decoderInputBuffer.m) != null) {
            Format format = this.X;
            if (format != null && (colorInfo = format.H) != null && colorInfo.e > 8) {
                z = true;
            } else {
                z = false;
            }
            if (this.g1 && !byteBuffer2.isReadOnly()) {
                Av1ObuUtil.a(byteBuffer2, false);
            } else if (z && this.e1 && !byteBuffer2.isReadOnly()) {
                Av1ObuUtil.a(byteBuffer2, true);
            }
            Av1SampleDependencyParser av1SampleDependencyParser = this.Y0;
            if (av1SampleDependencyParser != null && decoderInputBuffer.e(1)) {
                int position = byteBuffer2.position();
                int limit = byteBuffer2.limit();
                byteBuffer2.limit(Math.min(limit, position + 500));
                ByteBuffer byteBuffer3 = av1SampleDependencyParser.a;
                byteBuffer3.clear();
                byteBuffer3.put(byteBuffer2);
                byteBuffer3.flip();
                byteBuffer2.position(position);
                byteBuffer2.limit(limit);
            }
        } else if (str.equals("video/hevc") && (byteBuffer = decoderInputBuffer.m) != null && this.g1 && !byteBuffer.isReadOnly()) {
            ByteBuffer byteBuffer4 = decoderInputBuffer.m;
            int position2 = byteBuffer4.position();
            int limit2 = byteBuffer4.limit();
            if (limit2 - position2 >= 4) {
                while (position2 < limit2) {
                    int a = HevcSeiUtil.a(byteBuffer4, position2, limit2);
                    if (a == limit2 || (i = a + 3) >= limit2 || ((i2 = (byteBuffer4.get(i) & 126) >> 1) >= 0 && i2 <= 31)) {
                        break;
                    }
                    if (i2 == 39) {
                        int i3 = a + 5;
                        i = HevcSeiUtil.a(byteBuffer4, i3, limit2);
                        int i4 = 0;
                        while (i3 < i) {
                            int i5 = 0;
                            while (true) {
                                if (i3 >= i) {
                                    break;
                                }
                                int i6 = byteBuffer4.get(i3) & 255;
                                if (i6 == 3 && i4 >= 2) {
                                    i3++;
                                    i4 = 0;
                                } else {
                                    if (i6 == 0) {
                                        i4++;
                                    } else {
                                        i4 = 0;
                                    }
                                    int i7 = i3 + 1;
                                    i5 += i6;
                                    if (i6 != 255) {
                                        if (i5 == 4) {
                                            byteBuffer4.put(i3, (byte) -2);
                                        }
                                        i3 = i7;
                                    } else {
                                        i3 = i7;
                                    }
                                }
                            }
                            if (i3 >= i) {
                                break;
                            }
                            int i8 = 0;
                            while (i3 < i) {
                                int i9 = byteBuffer4.get(i3) & 255;
                                if (i9 == 3 && i4 >= 2) {
                                    i3++;
                                    i4 = 0;
                                } else {
                                    if (i9 == 0) {
                                        i4++;
                                    } else {
                                        i4 = 0;
                                    }
                                    i3++;
                                    i8 += i9;
                                    if (i9 != 255) {
                                        break;
                                    }
                                }
                            }
                            int i10 = 0;
                            while (i10 < i8 && i3 < i) {
                                int i11 = i3 + 1;
                                int i12 = byteBuffer4.get(i3) & 255;
                                if (i12 == 3 && i4 >= 2) {
                                    i10--;
                                } else if (i12 == 0) {
                                    i4++;
                                    i10++;
                                    i3 = i11;
                                }
                                i4 = 0;
                                i10++;
                                i3 = i11;
                            }
                        }
                    }
                    position2 = i;
                }
            }
        }
        this.K1 = 0;
        int Q = Q(decoderInputBuffer);
        if ((Build.VERSION.SDK_INT < 34 || (Q & 32) == 0) && !this.E1) {
            this.u1++;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean p(long j) {
        if (this.y0 == -9223372036854775807L || j < this.w1) {
            return false;
        }
        long j2 = this.H0;
        if (j2 != -9223372036854775807L && j <= j2) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean q0(long j, long j2, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) {
        boolean z3;
        FixedFrameRateEstimator fixedFrameRateEstimator;
        mediaCodecAdapter.getClass();
        long X = j3 - X();
        if (this.V0.h != -9223372036854775807L) {
            z3 = true;
        } else {
            z3 = false;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.b1;
            Long l = (Long) priorityQueue.peek();
            fixedFrameRateEstimator = this.X0;
            if (l == null || l.longValue() >= j3) {
                break;
            }
            priorityQueue.poll();
            fixedFrameRateEstimator.b(1000 * l.longValue());
            if (l.longValue() >= this.u && !z3) {
                i4++;
            } else {
                i5++;
            }
        }
        W0(i4, 0);
        this.F0.d += i5;
        fixedFrameRateEstimator.b(j3 * 1000);
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            if (z && !z2) {
                V0(mediaCodecAdapter, i);
                return true;
            }
            return videoSink.h(j3, new AnonymousClass2(mediaCodecAdapter, i, X));
        }
        int a = this.V0.a(j3, j, j2, Y(), z, z2, fixedFrameRateEstimator.a(), fixedFrameRateEstimator.h, this.W0);
        VideoFrameReleaseControl.FrameReleaseInfo frameReleaseInfo = this.W0;
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.a1;
        if (videoFrameReleaseEarlyTimeForecaster != null && a != 5 && a != 4) {
            videoFrameReleaseEarlyTimeForecaster.a(j3, frameReleaseInfo.a);
        }
        if (a != 0) {
            if (a != 1) {
                if (a != 2) {
                    if (a != 3) {
                        if (a == 4 || a == 5) {
                            return false;
                        }
                        u2.l(String.valueOf(a));
                        return false;
                    }
                    V0(mediaCodecAdapter, i);
                    X0(frameReleaseInfo.a);
                    return true;
                }
                Trace.beginSection("dropVideoBuffer");
                mediaCodecAdapter.f(i);
                Trace.endSection();
                W0(0, 1);
                X0(frameReleaseInfo.a);
                return true;
            }
            long j4 = frameReleaseInfo.b;
            long j5 = frameReleaseInfo.a;
            if (j4 == this.A1) {
                V0(mediaCodecAdapter, i);
            } else {
                VideoFrameMetadataListener videoFrameMetadataListener = this.H1;
                if (videoFrameMetadataListener != null) {
                    videoFrameMetadataListener.f(X, j4, format, this.Y);
                }
                R0(mediaCodecAdapter, i, j4);
            }
            X0(j5);
            this.A1 = j4;
            return true;
        }
        this.p.getClass();
        long nanoTime = System.nanoTime();
        VideoFrameMetadataListener videoFrameMetadataListener2 = this.H1;
        if (videoFrameMetadataListener2 != null) {
            videoFrameMetadataListener2.f(X, nanoTime, format, this.Y);
        }
        R0(mediaCodecAdapter, i, nanoTime);
        X0(frameReleaseInfo.a);
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void t() {
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        this.C1 = null;
        Q0();
        this.o1 = false;
        this.G1 = null;
        this.x1 = A0();
        try {
            super.t();
            DecoderCounters decoderCounters = this.F0;
            eventDispatcher.getClass();
            synchronized (decoderCounters) {
            }
            Handler handler = eventDispatcher.a;
            if (handler != null) {
                handler.post(new ni(eventDispatcher, decoderCounters, 1));
            }
            eventDispatcher.a(VideoSize.d);
        } catch (Throwable th) {
            DecoderCounters decoderCounters2 = this.F0;
            eventDispatcher.getClass();
            synchronized (decoderCounters2) {
                Handler handler2 = eventDispatcher.a;
                if (handler2 != null) {
                    handler2.post(new ni(eventDispatcher, decoderCounters2, 1));
                }
                eventDispatcher.a(VideoSize.d);
                throw th;
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void t0() {
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            videoSink.l();
        } else if (U() != -9223372036854775807L) {
            U();
        }
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.media3.exoplayer.DecoderCounters, java.lang.Object] */
    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void u(boolean z, boolean z2) {
        boolean z3;
        VideoSink videoSink;
        this.F0 = new Object();
        RendererConfiguration rendererConfiguration = this.m;
        rendererConfiguration.getClass();
        boolean z4 = rendererConfiguration.b;
        if (z4 && this.F1 == 0) {
            z3 = false;
        } else {
            z3 = true;
        }
        Preconditions.n(z3);
        if (this.E1 != z4) {
            this.E1 = z4;
            s0();
        }
        DecoderCounters decoderCounters = this.F0;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
        Handler handler = eventDispatcher.a;
        if (handler != null) {
            handler.post(new ni(eventDispatcher, decoderCounters, 0));
        }
        boolean z5 = this.i1;
        VideoFrameReleaseControl videoFrameReleaseControl = this.V0;
        if (!z5) {
            if (this.k1 != null && this.h1 == null) {
                PlaybackVideoGraphWrapper.Builder builder = new PlaybackVideoGraphWrapper.Builder(this.Q0, videoFrameReleaseControl);
                builder.d = true;
                long j = this.Z0;
                long j2 = -9223372036854775807L;
                if (j != -9223372036854775807L) {
                    j2 = -j;
                }
                builder.g = j2;
                Clock clock = this.p;
                clock.getClass();
                builder.e = clock;
                Preconditions.n(!builder.f);
                if (builder.c == null) {
                    builder.c = new PlaybackVideoGraphWrapper.ReflectiveSingleInputVideoGraphFactory();
                }
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = new PlaybackVideoGraphWrapper(builder);
                builder.f = true;
                if (1 >= playbackVideoGraphWrapper.p) {
                    playbackVideoGraphWrapper.p = 1;
                }
                SparseArray sparseArray = playbackVideoGraphWrapper.c;
                if (Util.i(sparseArray, 0)) {
                    videoSink = (VideoSink) sparseArray.get(0);
                } else {
                    PlaybackVideoGraphWrapper.InputVideoSink inputVideoSink = new PlaybackVideoGraphWrapper.InputVideoSink(playbackVideoGraphWrapper.a);
                    playbackVideoGraphWrapper.g.add(inputVideoSink);
                    sparseArray.put(0, inputVideoSink);
                    videoSink = inputVideoSink;
                }
                this.h1 = videoSink;
            }
            this.i1 = true;
        }
        VideoSink videoSink2 = this.h1;
        if (videoSink2 != null) {
            videoSink2.v(new VideoSink.Listener() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.1
                @Override // androidx.media3.exoplayer.video.VideoSink.Listener
                public final void b() {
                    MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
                    Surface surface = mediaCodecVideoRenderer.l1;
                    if (surface != null) {
                        VideoRendererEventListener.EventDispatcher eventDispatcher2 = mediaCodecVideoRenderer.S0;
                        Handler handler2 = eventDispatcher2.a;
                        if (handler2 != null) {
                            handler2.post(new mi(eventDispatcher2, surface, android.os.SystemClock.elapsedRealtime()));
                        }
                        mediaCodecVideoRenderer.o1 = true;
                    }
                }

                @Override // androidx.media3.exoplayer.video.VideoSink.Listener
                public final void c() {
                    MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
                    if (mediaCodecVideoRenderer.l1 != null) {
                        mediaCodecVideoRenderer.W0(0, 1);
                    }
                }

                @Override // androidx.media3.exoplayer.video.VideoSink.Listener
                public final void d() {
                    Renderer.WakeupListener wakeupListener = MediaCodecVideoRenderer.this.R;
                    if (wakeupListener != null) {
                        wakeupListener.b();
                    }
                }

                @Override // androidx.media3.exoplayer.video.VideoSink.Listener
                public final void a(VideoSize videoSize) {
                }
            }, MoreExecutors.a());
            VideoFrameMetadataListener videoFrameMetadataListener = this.H1;
            if (videoFrameMetadataListener != null) {
                this.h1.k(videoFrameMetadataListener);
            }
            if (this.l1 != null && !this.n1.equals(Size.c)) {
                this.h1.f(this.l1, this.n1);
            }
            this.h1.m(this.q1);
            this.h1.n(this.U);
            List list = this.k1;
            if (list != null) {
                this.h1.r(list);
            }
            this.j1 = !z2 ? 1 : 0;
            this.J0 = true;
            return;
        }
        Clock clock2 = this.p;
        clock2.getClass();
        videoFrameReleaseControl.k = clock2;
        videoFrameReleaseControl.e(!z2 ? 1 : 0);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void v(long j, boolean z, boolean z2) {
        VideoSink videoSink = this.h1;
        if (videoSink != null && !z) {
            videoSink.q(true);
        }
        if (z2) {
            this.w1 = j;
        }
        super.v(j, z, z2);
        VideoSink videoSink2 = this.h1;
        VideoFrameReleaseControl videoFrameReleaseControl = this.V0;
        if (videoSink2 == null) {
            videoFrameReleaseControl.b.b();
            videoFrameReleaseControl.f = -9223372036854775807L;
            videoFrameReleaseControl.e = Math.min(videoFrameReleaseControl.e, 1);
            videoFrameReleaseControl.h = -9223372036854775807L;
            videoFrameReleaseControl.m = false;
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.a1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
        if (z) {
            VideoSink videoSink3 = this.h1;
            if (videoSink3 != null) {
                videoSink3.s(false);
            } else {
                videoFrameReleaseControl.c(false);
            }
        }
        Q0();
        this.t1 = 0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void v0() {
        super.v0();
        this.b1.clear();
        this.u1 = 0;
        this.K1 = 0;
        this.x1 = false;
        Av1SampleDependencyParser av1SampleDependencyParser = this.Y0;
        if (av1SampleDependencyParser != null) {
            av1SampleDependencyParser.b = null;
            ByteBuffer byteBuffer = av1SampleDependencyParser.a;
            byteBuffer.position(byteBuffer.limit());
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void w() {
        VideoSink videoSink = this.h1;
        if (videoSink != null && this.R0) {
            videoSink.a();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void x() {
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
            this.i1 = false;
            this.I1 = -9223372036854775807L;
            this.g1 = false;
            PlaceholderSurface placeholderSurface = this.m1;
            if (placeholderSurface != null) {
                placeholderSurface.release();
                this.m1 = null;
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void y() {
        this.s1 = 0;
        this.p.getClass();
        this.r1 = android.os.SystemClock.elapsedRealtime();
        this.y1 = 0L;
        this.z1 = 0;
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            videoSink.i();
        } else {
            this.V0.d();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void z() {
        P0();
        int i = this.z1;
        if (i != 0) {
            long j = this.y1;
            VideoRendererEventListener.EventDispatcher eventDispatcher = this.S0;
            Handler handler = eventDispatcher.a;
            if (handler != null) {
                handler.post(new li(eventDispatcher, j, i, 1));
            }
            this.y1 = 0L;
            this.z1 = 0;
        }
        VideoSink videoSink = this.h1;
        if (videoSink != null) {
            videoSink.g();
        } else {
            VideoFrameReleaseControl videoFrameReleaseControl = this.V0;
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
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.a1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f0, code lost:
    
        if ((r7 + 1) < 8) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f3, code lost:
    
        if (r7 < 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f5, code lost:
    
        r2 = ((androidx.media3.container.ObuParser.Obu) r3.get(r7)).b.limit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0102, code lost:
    
        r2 = r5.position();
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0058  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean z0(DecoderInputBuffer decoderInputBuffer) {
        boolean z;
        boolean z2;
        ByteBuffer byteBuffer;
        boolean z3;
        ObuParser.SequenceHeader sequenceHeader;
        ObuParser.FrameHeader frameHeader;
        long j;
        boolean z4 = false;
        if (!O0(decoderInputBuffer)) {
            if (decoderInputBuffer.n < this.u) {
                z = true;
            } else {
                z = false;
            }
            VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.a1;
            if (videoFrameReleaseEarlyTimeForecaster != null) {
                if (videoFrameReleaseEarlyTimeForecaster.a == -9223372036854775807L) {
                    j = -9223372036854775807L;
                } else {
                    j = (long) (((r2 - r6) * videoFrameReleaseEarlyTimeForecaster.c) + videoFrameReleaseEarlyTimeForecaster.b);
                }
                if (j != -9223372036854775807L && j < this.Z0) {
                    z2 = true;
                    if ((!z || z2) && !decoderInputBuffer.e(268435456)) {
                        if (!decoderInputBuffer.e(67108864)) {
                            decoderInputBuffer.f();
                        } else {
                            Av1SampleDependencyParser av1SampleDependencyParser = this.Y0;
                            if (av1SampleDependencyParser != null) {
                                ByteBuffer byteBuffer2 = av1SampleDependencyParser.a;
                                androidx.media3.exoplayer.mediacodec.MediaCodecInfo mediaCodecInfo = this.d0;
                                mediaCodecInfo.getClass();
                                if (mediaCodecInfo.b.equals("video/av01") && (byteBuffer = decoderInputBuffer.m) != null) {
                                    if (!z && this.K1 > 0) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                    ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                                    asReadOnlyBuffer.flip();
                                    if (byteBuffer2.hasRemaining()) {
                                        av1SampleDependencyParser.a(ObuParser.b(byteBuffer2));
                                        byteBuffer2.position(byteBuffer2.limit());
                                    }
                                    ArrayList b = ObuParser.b(asReadOnlyBuffer);
                                    av1SampleDependencyParser.a(b);
                                    int size = b.size() - 1;
                                    int i = 0;
                                    while (size >= 0) {
                                        ObuParser.Obu obu = (ObuParser.Obu) b.get(size);
                                        int i2 = obu.a;
                                        if (i2 != 2 && i2 != 15) {
                                            if ((i2 == 3 && !z3) || ((i2 != 6 && i2 != 3) || (sequenceHeader = av1SampleDependencyParser.b) == null)) {
                                                break;
                                            }
                                            try {
                                                frameHeader = new ObuParser.FrameHeader(sequenceHeader, obu);
                                            } catch (ObuParser.NotYetImplementedException unused) {
                                                frameHeader = null;
                                            }
                                            if (frameHeader != null) {
                                                if (frameHeader.a) {
                                                    break;
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                        if (((ObuParser.Obu) b.get(size)).a == 6 || ((ObuParser.Obu) b.get(size)).a == 3) {
                                            i++;
                                        }
                                        size--;
                                    }
                                    int limit = asReadOnlyBuffer.limit();
                                    if (limit == 0) {
                                        decoderInputBuffer.f();
                                    } else if (limit != asReadOnlyBuffer.limit()) {
                                        CodecMaxValues codecMaxValues = this.c1;
                                        codecMaxValues.getClass();
                                        if (codecMaxValues.c + limit < asReadOnlyBuffer.capacity() && !decoderInputBuffer.e(1073741824)) {
                                            ByteBuffer byteBuffer3 = decoderInputBuffer.m;
                                            byteBuffer3.getClass();
                                            byteBuffer3.position(limit);
                                        }
                                    }
                                }
                            }
                            if (z4) {
                                if (!z) {
                                    this.K1++;
                                }
                                this.b1.add(Long.valueOf(decoderInputBuffer.n));
                            }
                            return z4;
                        }
                        z4 = true;
                        if (z4) {
                        }
                        return z4;
                    }
                }
            }
            z2 = false;
            if (!z) {
            }
            if (!decoderInputBuffer.e(67108864)) {
            }
            z4 = true;
            if (z4) {
            }
            return z4;
        }
        return false;
    }
}
