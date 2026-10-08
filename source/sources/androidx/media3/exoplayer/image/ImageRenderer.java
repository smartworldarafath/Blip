package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;
import android.os.Trace;
import androidx.media3.common.Format;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import androidx.media3.exoplayer.p;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import io.sentry.d;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ImageRenderer extends BaseRenderer {
    public final BitmapFactoryImageDecoder.Factory C;
    public final DecoderInputBuffer D;
    public final ArrayDeque E;
    public boolean F;
    public boolean G;
    public OutputStreamInfo H;
    public long I;
    public long J;
    public int K;
    public int L;
    public Format M;
    public BitmapFactoryImageDecoder N;
    public DecoderInputBuffer O;
    public ImageOutput P;
    public ImageMetadataListener Q;
    public Bitmap R;
    public boolean S;
    public TileInfo T;
    public TileInfo U;
    public int V;
    public boolean W;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OutputStreamInfo {
        public static final OutputStreamInfo c = new OutputStreamInfo(-9223372036854775807L, -9223372036854775807L);
        public final long a;
        public final long b;

        public OutputStreamInfo(long j, long j2) {
            this.a = j;
            this.b = j2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class TileInfo {
        public final int a;
        public final long b;
        public Bitmap c;

        public TileInfo(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public ImageRenderer(BitmapFactoryImageDecoder.Factory factory) {
        super(4);
        this.C = factory;
        this.P = ImageOutput.a;
        this.D = new DecoderInputBuffer(0);
        this.H = OutputStreamInfo.c;
        this.E = new ArrayDeque();
        this.J = -9223372036854775807L;
        this.I = -9223372036854775807L;
        this.K = 0;
        this.L = 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
    
        if (r2 >= r6) goto L15;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
        if (this.H.b != -9223372036854775807L) {
            ArrayDeque arrayDeque = this.E;
            if (arrayDeque.isEmpty()) {
                long j3 = this.J;
                if (j3 != -9223372036854775807L) {
                    long j4 = this.I;
                    if (j4 != -9223372036854775807L) {
                    }
                }
            }
            arrayDeque.add(new OutputStreamInfo(this.J, j2));
            return;
        }
        this.H = new OutputStreamInfo(-9223372036854775807L, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0152, code lost:
    
        if (r14 == ((r0 * r1.R) - 1)) goto L82;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean G(long j) {
        boolean z;
        boolean z2;
        boolean z3;
        Bitmap bitmap;
        Bitmap bitmap2 = this.R;
        if ((bitmap2 == null || this.T != null) && (this.L != 0 || this.q == 2)) {
            ArrayDeque arrayDeque = this.E;
            if (bitmap2 == null) {
                this.N.getClass();
                ImageOutputBuffer imageOutputBuffer = (ImageOutputBuffer) this.N.d();
                if (imageOutputBuffer != null) {
                    if (imageOutputBuffer.e(4)) {
                        if (this.K == 3) {
                            J();
                            this.M.getClass();
                            I();
                            return false;
                        }
                        imageOutputBuffer.g();
                        if (arrayDeque.isEmpty()) {
                            this.G = true;
                            return false;
                        }
                    } else {
                        Preconditions.j(imageOutputBuffer.m, "Non-EOS buffer came back from the decoder without bitmap.");
                        this.R = imageOutputBuffer.m;
                        imageOutputBuffer.g();
                    }
                }
            }
            if (this.S && this.R != null && this.T != null) {
                this.M.getClass();
                Format format = this.M;
                int i = format.R;
                int i2 = format.S;
                if ((i != 1 || i2 != 1) && i != -1 && i2 != -1) {
                    z = true;
                } else {
                    z = false;
                }
                TileInfo tileInfo = this.T;
                if (tileInfo.c == null) {
                    if (z) {
                        int i3 = tileInfo.a;
                        this.R.getClass();
                        int width = this.R.getWidth();
                        Format format2 = this.M;
                        format2.getClass();
                        int i4 = width / format2.R;
                        int height = this.R.getHeight();
                        Format format3 = this.M;
                        format3.getClass();
                        int i5 = height / format3.S;
                        int i6 = this.M.R;
                        bitmap = Bitmap.createBitmap(this.R, (i3 % i6) * i4, (i3 / i6) * i5, i4, i5);
                    } else {
                        bitmap = this.R;
                        bitmap.getClass();
                    }
                    tileInfo.c = bitmap;
                }
                Bitmap bitmap3 = this.T.c;
                bitmap3.getClass();
                long j2 = this.T.b;
                long j3 = j2 - j;
                if (this.q == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i7 = this.L;
                if (i7 != 0) {
                    if (i7 != 1) {
                        if (i7 == 3) {
                            z2 = false;
                        } else {
                            d.d();
                            return false;
                        }
                    } else {
                        z2 = true;
                    }
                }
                if (!z2 && j3 >= 30000) {
                    z3 = false;
                } else {
                    ImageMetadataListener imageMetadataListener = this.Q;
                    if (imageMetadataListener != null) {
                        long j4 = this.H.b;
                        this.M.getClass();
                        ((p) imageMetadataListener).a();
                    }
                    this.P.onImageAvailable(j2 - this.H.b, bitmap3);
                    z3 = true;
                }
                if (z3) {
                    TileInfo tileInfo2 = this.T;
                    tileInfo2.getClass();
                    long j5 = tileInfo2.b;
                    this.I = j5;
                    while (!arrayDeque.isEmpty() && j5 >= ((OutputStreamInfo) arrayDeque.peek()).a) {
                        this.H = (OutputStreamInfo) arrayDeque.removeFirst();
                    }
                    this.L = 3;
                    if (z) {
                        TileInfo tileInfo3 = this.T;
                        tileInfo3.getClass();
                        int i8 = tileInfo3.a;
                        Format format4 = this.M;
                        format4.getClass();
                        int i9 = format4.S;
                        Format format5 = this.M;
                        format5.getClass();
                    }
                    this.R = null;
                    this.T = this.U;
                    this.U = null;
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if (r2 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0106, code lost:
    
        if (r2 == false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean H(long j) {
        boolean z;
        DecoderInputBuffer decoderInputBuffer;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        Format format;
        int i;
        DecoderInputBuffer decoderInputBuffer2;
        if (!this.S || this.T == null) {
            FormatHolder formatHolder = this.l;
            formatHolder.a();
            BitmapFactoryImageDecoder bitmapFactoryImageDecoder = this.N;
            if (bitmapFactoryImageDecoder != null && this.K != 3 && !this.F) {
                if (this.O == null) {
                    DecoderInputBuffer decoderInputBuffer3 = (DecoderInputBuffer) bitmapFactoryImageDecoder.e();
                    this.O = decoderInputBuffer3;
                }
                int i2 = this.K;
                DecoderInputBuffer decoderInputBuffer4 = this.O;
                if (i2 == 2) {
                    decoderInputBuffer4.getClass();
                    this.O.j = 4;
                    BitmapFactoryImageDecoder bitmapFactoryImageDecoder2 = this.N;
                    bitmapFactoryImageDecoder2.getClass();
                    bitmapFactoryImageDecoder2.f(this.O);
                    this.O = null;
                    this.K = 3;
                    return false;
                }
                int C = C(formatHolder, decoderInputBuffer4, 0);
                if (C != -5) {
                    if (C != -4) {
                        if (C != -3) {
                            d.d();
                            return false;
                        }
                    } else {
                        this.O.i();
                        ByteBuffer byteBuffer = this.O.m;
                        if (byteBuffer == null || byteBuffer.remaining() <= 0) {
                            DecoderInputBuffer decoderInputBuffer5 = this.O;
                            decoderInputBuffer5.getClass();
                            if (!decoderInputBuffer5.e(4)) {
                                z = false;
                                if (z) {
                                    DecoderInputBuffer decoderInputBuffer6 = this.O;
                                    decoderInputBuffer6.getClass();
                                    decoderInputBuffer6.k = this.M;
                                    BitmapFactoryImageDecoder bitmapFactoryImageDecoder3 = this.N;
                                    bitmapFactoryImageDecoder3.getClass();
                                    DecoderInputBuffer decoderInputBuffer7 = this.O;
                                    decoderInputBuffer7.getClass();
                                    bitmapFactoryImageDecoder3.f(decoderInputBuffer7);
                                    this.V = 0;
                                }
                                decoderInputBuffer = this.O;
                                decoderInputBuffer.getClass();
                                if (!decoderInputBuffer.e(4)) {
                                    this.S = true;
                                } else {
                                    int i3 = this.V;
                                    long j2 = decoderInputBuffer.n;
                                    this.U = new TileInfo(i3, j2);
                                    this.V = i3 + 1;
                                    if (!this.S) {
                                        if (j2 - 30000 <= j && j <= 30000 + j2) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        TileInfo tileInfo = this.T;
                                        if (tileInfo != null && tileInfo.b <= j && j < j2) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        Format format2 = this.M;
                                        format2.getClass();
                                        if (format2.R != -1 && (i = (format = this.M).S) != -1 && i3 != (i * format.R) - 1) {
                                            z4 = false;
                                        } else {
                                            z4 = true;
                                        }
                                        if (!z2 && !z3 && !z4) {
                                            z5 = false;
                                        } else {
                                            z5 = true;
                                        }
                                        this.S = z5;
                                        if (z3) {
                                        }
                                    }
                                    this.T = this.U;
                                    this.U = null;
                                }
                                decoderInputBuffer2 = this.O;
                                decoderInputBuffer2.getClass();
                                if (!decoderInputBuffer2.e(4)) {
                                    this.F = true;
                                    this.O = null;
                                    return false;
                                }
                                long j3 = this.J;
                                DecoderInputBuffer decoderInputBuffer8 = this.O;
                                decoderInputBuffer8.getClass();
                                this.J = Math.max(j3, decoderInputBuffer8.n);
                                if (z) {
                                    this.O = null;
                                } else {
                                    DecoderInputBuffer decoderInputBuffer9 = this.O;
                                    decoderInputBuffer9.getClass();
                                    decoderInputBuffer9.f();
                                }
                                return !this.S;
                            }
                        }
                        z = true;
                        if (z) {
                        }
                        decoderInputBuffer = this.O;
                        decoderInputBuffer.getClass();
                        if (!decoderInputBuffer.e(4)) {
                        }
                        decoderInputBuffer2 = this.O;
                        decoderInputBuffer2.getClass();
                        if (!decoderInputBuffer2.e(4)) {
                        }
                    }
                } else {
                    Format format3 = formatHolder.b;
                    format3.getClass();
                    this.M = format3;
                    this.W = true;
                    this.K = 2;
                    return true;
                }
            }
        }
        return false;
    }

    public final void I() {
        if (!this.W) {
            return;
        }
        Format format = this.M;
        format.getClass();
        BitmapFactoryImageDecoder.Factory factory = this.C;
        int a = factory.a(format);
        if (a != RendererCapabilities.j(4, 0, 0, 0) && a != RendererCapabilities.j(3, 0, 0, 0)) {
            throw r(new Exception("Provided decoder factory can't create decoder for format."), this.M, false, 4005);
        }
        BitmapFactoryImageDecoder bitmapFactoryImageDecoder = this.N;
        if (bitmapFactoryImageDecoder != null) {
            bitmapFactoryImageDecoder.a();
        }
        this.N = new BitmapFactoryImageDecoder(factory.a);
        this.W = false;
    }

    public final void J() {
        this.O = null;
        this.K = 0;
        this.J = -9223372036854775807L;
        BitmapFactoryImageDecoder bitmapFactoryImageDecoder = this.N;
        if (bitmapFactoryImageDecoder != null) {
            bitmapFactoryImageDecoder.a();
            this.N = null;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean a() {
        int i = this.L;
        if (i != 3) {
            if (i != 0 || !this.S) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean b() {
        return this.G;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void d(long j, long j2) {
        if (!this.G) {
            if (this.M == null) {
                FormatHolder formatHolder = this.l;
                formatHolder.a();
                DecoderInputBuffer decoderInputBuffer = this.D;
                decoderInputBuffer.f();
                int C = C(formatHolder, decoderInputBuffer, 2);
                if (C == -5) {
                    Format format = formatHolder.b;
                    format.getClass();
                    this.M = format;
                    this.W = true;
                } else {
                    if (C == -4) {
                        Preconditions.n(decoderInputBuffer.e(4));
                        this.F = true;
                        this.G = true;
                        return;
                    }
                    return;
                }
            }
            if (this.N == null) {
                I();
            }
            try {
                Trace.beginSection("drainAndFeedDecoder");
                do {
                } while (G(j));
                do {
                } while (H(j));
                Trace.endSection();
            } catch (ImageDecoderException e) {
                throw r(e, null, false, 4003);
            }
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int f(Format format) {
        return this.C.a(format);
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "ImageRenderer";
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void o(int i, Object obj) {
        ImageOutput imageOutput;
        if (i != 15) {
            if (i != 23) {
                return;
            }
            this.Q = (ImageMetadataListener) obj;
        } else {
            if (obj instanceof ImageOutput) {
                imageOutput = (ImageOutput) obj;
            } else {
                imageOutput = null;
            }
            if (imageOutput == null) {
                imageOutput = ImageOutput.a;
            }
            this.P = imageOutput;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void t() {
        this.M = null;
        this.H = OutputStreamInfo.c;
        this.E.clear();
        J();
        this.P.a();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void u(boolean z, boolean z2) {
        this.L = z2 ? 1 : 0;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void v(long j, boolean z, boolean z2) {
        this.L = Math.min(this.L, 1);
        this.G = false;
        this.F = false;
        this.R = null;
        this.T = null;
        this.U = null;
        this.S = false;
        this.O = null;
        BitmapFactoryImageDecoder bitmapFactoryImageDecoder = this.N;
        if (bitmapFactoryImageDecoder != null) {
            bitmapFactoryImageDecoder.flush();
        }
        this.E.clear();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void w() {
        J();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void x() {
        J();
        this.L = Math.min(this.L, 1);
    }
}
