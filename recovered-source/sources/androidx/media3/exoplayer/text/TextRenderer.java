package androidx.media3.exoplayer.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Log;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.text.SubtitleDecoderFactory;
import androidx.media3.extractor.text.CueDecoder;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.cea.Cea608Decoder;
import androidx.media3.extractor.text.cea.Cea708Decoder;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import defpackage.jb;
import defpackage.u2;
import io.sentry.d;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextRenderer extends BaseRenderer implements Handler.Callback {
    public final CueDecoder C;
    public final DecoderInputBuffer D;
    public CuesResolver E;
    public final SubtitleDecoderFactory F;
    public boolean G;
    public int H;
    public SubtitleDecoder I;
    public SubtitleInputBuffer J;
    public SubtitleOutputBuffer K;
    public SubtitleOutputBuffer L;
    public int M;
    public final Handler N;
    public final TextOutput O;
    public final FormatHolder P;
    public boolean Q;
    public boolean R;
    public Format S;
    public long T;
    public long U;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.media3.extractor.text.CueDecoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v5, types: [androidx.media3.exoplayer.FormatHolder, java.lang.Object] */
    public TextRenderer(TextOutput textOutput, Looper looper) {
        super(3);
        Handler handler;
        SubtitleDecoderFactory subtitleDecoderFactory = SubtitleDecoderFactory.a;
        this.O = textOutput;
        if (looper == null) {
            handler = null;
        } else {
            handler = new Handler(looper, this);
        }
        this.N = handler;
        this.F = subtitleDecoderFactory;
        this.C = new Object();
        this.D = new DecoderInputBuffer(1);
        this.P = new Object();
        this.U = -9223372036854775807L;
        this.T = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void A(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
        CuesResolver replacingCuesResolver;
        Format format = formatArr[0];
        this.S = format;
        if (!Objects.equals(format.p, "application/x-media3-cues")) {
            G();
            if (this.I != null) {
                this.H = 1;
                return;
            } else {
                K();
                return;
            }
        }
        if (this.S.Q == 1) {
            replacingCuesResolver = new MergingCuesResolver();
        } else {
            replacingCuesResolver = new ReplacingCuesResolver();
        }
        this.E = replacingCuesResolver;
    }

    public final void G() {
        boolean z;
        if (!Objects.equals(this.S.p, "application/cea-608") && !Objects.equals(this.S.p, "application/x-mp4-cea-608") && !Objects.equals(this.S.p, "application/cea-708")) {
            z = false;
        } else {
            z = true;
        }
        String str = this.S.p;
        if (z) {
            return;
        }
        u2.l(Strings.a("Legacy decoding is disabled, can't handle %s samples (expected %s).", str, "application/x-media3-cues"));
    }

    public final void H() {
        ImmutableList r = ImmutableList.r();
        J(this.T);
        CueGroup cueGroup = new CueGroup(r);
        Handler handler = this.N;
        if (handler != null) {
            handler.obtainMessage(1, cueGroup).sendToTarget();
            return;
        }
        ImmutableList immutableList = cueGroup.a;
        TextOutput textOutput = this.O;
        textOutput.f(immutableList);
        textOutput.c(cueGroup);
    }

    public final long I() {
        if (this.M == -1) {
            return Long.MAX_VALUE;
        }
        this.K.getClass();
        if (this.M >= this.K.d()) {
            return Long.MAX_VALUE;
        }
        return this.K.b(this.M);
    }

    public final long J(long j) {
        boolean z;
        if (j != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        return j - this.t;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r3.equals("application/cea-608") == false) goto L6;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x003c. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void K() {
        SubtitleDecoder delegatingSubtitleDecoder;
        char c = 1;
        this.G = true;
        Format format = this.S;
        format.getClass();
        DefaultSubtitleParserFactory defaultSubtitleParserFactory = ((SubtitleDecoderFactory.AnonymousClass1) this.F).b;
        String str = format.p;
        int i = format.P;
        if (str != null) {
            switch (str.hashCode()) {
                case 930165504:
                    if (str.equals("application/x-mp4-cea-608")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1566015601:
                    break;
                case 1566016562:
                    if (str.equals("application/cea-708")) {
                        c = 2;
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
                    delegatingSubtitleDecoder = new Cea608Decoder(str, i);
                    this.I = delegatingSubtitleDecoder;
                    delegatingSubtitleDecoder.b(this.u);
                    return;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    delegatingSubtitleDecoder = new Cea708Decoder(i, format.s);
                    this.I = delegatingSubtitleDecoder;
                    delegatingSubtitleDecoder.b(this.u);
                    return;
            }
        }
        if (defaultSubtitleParserFactory.f(format)) {
            SubtitleParser b = defaultSubtitleParserFactory.b(format);
            b.getClass().getSimpleName().concat("Decoder");
            delegatingSubtitleDecoder = new DelegatingSubtitleDecoder(b);
            this.I = delegatingSubtitleDecoder;
            delegatingSubtitleDecoder.b(this.u);
            return;
        }
        u2.g(jb.f("Attempted to create decoder for unsupported MIME type: ", str));
    }

    public final void L() {
        this.J = null;
        this.M = -1;
        SubtitleOutputBuffer subtitleOutputBuffer = this.K;
        if (subtitleOutputBuffer != null) {
            subtitleOutputBuffer.g();
            this.K = null;
        }
        SubtitleOutputBuffer subtitleOutputBuffer2 = this.L;
        if (subtitleOutputBuffer2 != null) {
            subtitleOutputBuffer2.g();
            this.L = null;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean a() {
        Format format = this.S;
        if (format != null) {
            if (Objects.equals(format.p, "application/x-media3-cues")) {
                CuesResolver cuesResolver = this.E;
                cuesResolver.getClass();
                if (cuesResolver.a(this.T) == Long.MIN_VALUE) {
                    try {
                        SampleStream sampleStream = this.r;
                        sampleStream.getClass();
                        sampleStream.c();
                        return true;
                    } catch (IOException unused) {
                        return false;
                    }
                }
            } else if (!this.R) {
                if (this.Q) {
                    SubtitleOutputBuffer subtitleOutputBuffer = this.K;
                    long j = this.T;
                    if (subtitleOutputBuffer == null || subtitleOutputBuffer.d() <= 0 || subtitleOutputBuffer.b(subtitleOutputBuffer.d() - 1) <= j) {
                        SubtitleOutputBuffer subtitleOutputBuffer2 = this.L;
                        long j2 = this.T;
                        if ((subtitleOutputBuffer2 == null || subtitleOutputBuffer2.d() <= 0 || subtitleOutputBuffer2.b(subtitleOutputBuffer2.d() - 1) <= j2) && this.J != null) {
                            return false;
                        }
                    }
                }
            } else {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean b() {
        return this.R;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
    
        if (r25 < (r0.n - 1000000)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0082, code lost:
    
        if (r4 >= (r5 - 1000000)) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0320 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02ec A[SYNTHETIC] */
    @Override // androidx.media3.exoplayer.Renderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(long j, long j2) {
        boolean z;
        int C;
        long j3;
        DecoderInputBuffer decoderInputBuffer;
        int C2;
        if (this.w) {
            long j4 = this.U;
            if (j4 != -9223372036854775807L && j >= j4) {
                L();
                this.R = true;
            }
        }
        if (!this.R) {
            Format format = this.S;
            format.getClass();
            boolean equals = Objects.equals(format.p, "application/x-media3-cues");
            TextOutput textOutput = this.O;
            Handler handler = this.N;
            boolean z2 = false;
            z2 = false;
            z2 = false;
            z2 = false;
            z2 = false;
            z2 = false;
            z2 = false;
            FormatHolder formatHolder = this.P;
            if (equals) {
                this.E.getClass();
                if (!this.Q && ((C2 = C(formatHolder, (decoderInputBuffer = this.D), 5)) != -3 || decoderInputBuffer.e(4))) {
                    if (C2 != -4 || decoderInputBuffer.e(4)) {
                        if (C2 == -4 || C2 == -3) {
                            long j5 = this.A;
                            long j6 = j - this.t;
                            if (j5 != -9223372036854775807L) {
                            }
                        }
                        if (C(formatHolder, decoderInputBuffer, 0) == -4) {
                            if (decoderInputBuffer.e(4)) {
                                this.Q = true;
                            } else {
                                decoderInputBuffer.i();
                                ByteBuffer byteBuffer = decoderInputBuffer.m;
                                byteBuffer.getClass();
                                long j7 = decoderInputBuffer.n;
                                byte[] array = byteBuffer.array();
                                int arrayOffset = byteBuffer.arrayOffset();
                                int limit = byteBuffer.limit();
                                this.C.getClass();
                                Parcel obtain = Parcel.obtain();
                                obtain.unmarshall(array, arrayOffset, limit);
                                obtain.setDataPosition(0);
                                Bundle readBundle = obtain.readBundle(Bundle.class.getClassLoader());
                                obtain.recycle();
                                ArrayList parcelableArrayList = readBundle.getParcelableArrayList("c");
                                parcelableArrayList.getClass();
                                ImmutableList.Builder k = ImmutableList.k();
                                for (int i = 0; i < parcelableArrayList.size(); i++) {
                                    Bundle bundle = (Bundle) parcelableArrayList.get(i);
                                    bundle.getClass();
                                    k.d(Cue.b(bundle));
                                }
                                CuesWithTiming cuesWithTiming = new CuesWithTiming(j7, readBundle.getLong("d"), k.i());
                                decoderInputBuffer.f();
                                z2 = this.E.c(cuesWithTiming, j);
                            }
                        }
                    }
                }
                long a = this.E.a(this.T);
                if (a == Long.MIN_VALUE && this.Q && !z2) {
                    this.R = true;
                }
                if (a != Long.MIN_VALUE && a <= j) {
                    z2 = true;
                }
                if (z2) {
                    ImmutableList b = this.E.b(j);
                    long d = this.E.d(j);
                    J(d);
                    CueGroup cueGroup = new CueGroup(b);
                    if (handler != null) {
                        handler.obtainMessage(1, cueGroup).sendToTarget();
                    } else {
                        textOutput.f(cueGroup.a);
                        textOutput.c(cueGroup);
                    }
                    this.E.e(d);
                }
                this.T = j;
                return;
            }
            G();
            this.T = j;
            if (this.L == null) {
                SubtitleDecoder subtitleDecoder = this.I;
                subtitleDecoder.getClass();
                subtitleDecoder.c(j);
                try {
                    SubtitleDecoder subtitleDecoder2 = this.I;
                    subtitleDecoder2.getClass();
                    this.L = (SubtitleOutputBuffer) subtitleDecoder2.d();
                } catch (SubtitleDecoderException e) {
                    Log.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.S, e);
                    H();
                    L();
                    SubtitleDecoder subtitleDecoder3 = this.I;
                    subtitleDecoder3.getClass();
                    subtitleDecoder3.a();
                    this.I = null;
                    this.H = 0;
                    K();
                    return;
                }
            }
            if (this.q == 2) {
                if (this.K != null) {
                    long I = I();
                    z = false;
                    while (I <= j) {
                        this.M++;
                        I = I();
                        z = true;
                    }
                } else {
                    z = false;
                }
                SubtitleOutputBuffer subtitleOutputBuffer = this.L;
                if (subtitleOutputBuffer != null) {
                    if (subtitleOutputBuffer.e(4)) {
                        if (!z && I() == Long.MAX_VALUE) {
                            if (this.H == 2) {
                                L();
                                SubtitleDecoder subtitleDecoder4 = this.I;
                                subtitleDecoder4.getClass();
                                subtitleDecoder4.a();
                                this.I = null;
                                this.H = 0;
                                K();
                            } else {
                                L();
                                this.R = true;
                            }
                        }
                    } else if (subtitleOutputBuffer.k <= j) {
                        SubtitleOutputBuffer subtitleOutputBuffer2 = this.K;
                        if (subtitleOutputBuffer2 != null) {
                            subtitleOutputBuffer2.g();
                        }
                        this.M = subtitleOutputBuffer.a(j);
                        this.K = subtitleOutputBuffer;
                        this.L = null;
                        z = true;
                    }
                }
                if (z) {
                    this.K.getClass();
                    int a2 = this.K.a(j);
                    if (a2 != 0 && this.K.d() != 0) {
                        SubtitleOutputBuffer subtitleOutputBuffer3 = this.K;
                        if (a2 == -1) {
                            j3 = subtitleOutputBuffer3.b(subtitleOutputBuffer3.d() - 1);
                        } else {
                            j3 = subtitleOutputBuffer3.b(a2 - 1);
                        }
                    } else {
                        j3 = this.K.k;
                    }
                    J(j3);
                    CueGroup cueGroup2 = new CueGroup(this.K.c(j));
                    if (handler != null) {
                        handler.obtainMessage(1, cueGroup2).sendToTarget();
                    } else {
                        textOutput.f(cueGroup2.a);
                        textOutput.c(cueGroup2);
                    }
                }
                if (this.H != 2) {
                    while (!this.Q) {
                        try {
                            SubtitleInputBuffer subtitleInputBuffer = this.J;
                            if (subtitleInputBuffer == null) {
                                SubtitleDecoder subtitleDecoder5 = this.I;
                                subtitleDecoder5.getClass();
                                subtitleInputBuffer = (SubtitleInputBuffer) subtitleDecoder5.e();
                                if (subtitleInputBuffer != null) {
                                    this.J = subtitleInputBuffer;
                                } else {
                                    return;
                                }
                            }
                            if (this.H == 1) {
                                subtitleInputBuffer.j = 4;
                                SubtitleDecoder subtitleDecoder6 = this.I;
                                subtitleDecoder6.getClass();
                                subtitleDecoder6.f(subtitleInputBuffer);
                                this.J = null;
                                this.H = 2;
                                return;
                            }
                            int C3 = C(formatHolder, subtitleInputBuffer, 5);
                            if (C3 != -3 || subtitleInputBuffer.e(4)) {
                                int i2 = -4;
                                if (C3 == -4) {
                                    if (!subtitleInputBuffer.e(4)) {
                                        if (j < subtitleInputBuffer.n - 1000000) {
                                            return;
                                        }
                                        C = C(formatHolder, subtitleInputBuffer, 0);
                                        if (C != -4) {
                                            if (subtitleInputBuffer.e(4)) {
                                                this.Q = true;
                                                this.G = false;
                                            } else {
                                                Format format2 = formatHolder.b;
                                                if (format2 != null) {
                                                    subtitleInputBuffer.q = format2.u;
                                                    subtitleInputBuffer.i();
                                                    this.G &= !subtitleInputBuffer.e(1);
                                                } else {
                                                    return;
                                                }
                                            }
                                            if (!this.G) {
                                                SubtitleDecoder subtitleDecoder7 = this.I;
                                                subtitleDecoder7.getClass();
                                                subtitleDecoder7.f(subtitleInputBuffer);
                                                this.J = null;
                                            }
                                        } else if (C == -3) {
                                            return;
                                        }
                                    } else {
                                        i2 = -4;
                                    }
                                }
                                if (C3 == i2 || C3 == -3) {
                                    long j8 = this.A;
                                    long j9 = j - this.t;
                                    if (j8 != -9223372036854775807L) {
                                        if (j9 < j8 - 1000000) {
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                                C = C(formatHolder, subtitleInputBuffer, 0);
                                if (C != -4) {
                                }
                            } else {
                                return;
                            }
                        } catch (SubtitleDecoderException e2) {
                            Log.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.S, e2);
                            H();
                            L();
                            SubtitleDecoder subtitleDecoder8 = this.I;
                            subtitleDecoder8.getClass();
                            subtitleDecoder8.a();
                            this.I = null;
                            this.H = 0;
                            K();
                            return;
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int f(Format format) {
        int i;
        boolean equals = Objects.equals(format.p, "application/x-media3-cues");
        String str = format.p;
        if (!equals) {
            SubtitleDecoderFactory.AnonymousClass1 anonymousClass1 = (SubtitleDecoderFactory.AnonymousClass1) this.F;
            anonymousClass1.getClass();
            if (!anonymousClass1.b.f(format) && !Objects.equals(str, "application/cea-608") && !Objects.equals(str, "application/x-mp4-cea-608") && !Objects.equals(str, "application/cea-708")) {
                if (MimeTypes.j(str)) {
                    return RendererCapabilities.j(1, 0, 0, 0);
                }
                return RendererCapabilities.j(0, 0, 0, 0);
            }
        }
        if (format.T == 0) {
            i = 4;
        } else {
            i = 2;
        }
        return RendererCapabilities.j(i, 0, 0, 0);
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            CueGroup cueGroup = (CueGroup) message.obj;
            ImmutableList immutableList = cueGroup.a;
            TextOutput textOutput = this.O;
            textOutput.f(immutableList);
            textOutput.c(cueGroup);
            return true;
        }
        d.d();
        return false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void t() {
        this.S = null;
        this.U = -9223372036854775807L;
        H();
        this.T = -9223372036854775807L;
        if (this.I != null) {
            L();
            SubtitleDecoder subtitleDecoder = this.I;
            subtitleDecoder.getClass();
            subtitleDecoder.a();
            this.I = null;
            this.H = 0;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void v(long j, boolean z, boolean z2) {
        this.T = j;
        CuesResolver cuesResolver = this.E;
        if (cuesResolver != null) {
            cuesResolver.clear();
        }
        H();
        this.Q = false;
        this.R = false;
        this.U = -9223372036854775807L;
        Format format = this.S;
        if (format != null && !Objects.equals(format.p, "application/x-media3-cues")) {
            if (this.H != 0) {
                L();
                SubtitleDecoder subtitleDecoder = this.I;
                subtitleDecoder.getClass();
                subtitleDecoder.a();
                this.I = null;
                this.H = 0;
                K();
                return;
            }
            L();
            SubtitleDecoder subtitleDecoder2 = this.I;
            subtitleDecoder2.getClass();
            subtitleDecoder2.flush();
            subtitleDecoder2.b(this.u);
        }
    }
}
