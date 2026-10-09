package androidx.media3.exoplayer.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.metadata.MetadataDecoderFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import com.google.common.base.Preconditions;
import io.sentry.d;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MetadataRenderer extends BaseRenderer implements Handler.Callback {
    public final MetadataDecoderFactory C;
    public final MetadataOutput D;
    public final Handler E;
    public final MetadataInputBuffer F;
    public SimpleMetadataDecoder G;
    public boolean H;
    public boolean I;
    public long J;
    public Metadata K;
    public long L;

    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.media3.decoder.DecoderInputBuffer, androidx.media3.extractor.metadata.MetadataInputBuffer] */
    public MetadataRenderer(MetadataOutput metadataOutput, Looper looper) {
        super(5);
        Handler handler;
        this.D = metadataOutput;
        if (looper == null) {
            handler = null;
        } else {
            handler = new Handler(looper, this);
        }
        this.E = handler;
        this.C = MetadataDecoderFactory.a;
        this.F = new DecoderInputBuffer(1);
        this.L = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void A(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
        this.G = ((MetadataDecoderFactory.AnonymousClass1) this.C).a(formatArr[0]);
        Metadata metadata = this.K;
        if (metadata != null) {
            long j3 = metadata.b;
            long j4 = (this.L + j3) - j2;
            if (j3 != j4) {
                metadata = new Metadata(j4, metadata.a);
            }
            this.K = metadata;
        }
        this.L = j2;
    }

    public final void G(Metadata metadata, ArrayList arrayList) {
        int i = 0;
        while (true) {
            Metadata.Entry[] entryArr = metadata.a;
            if (i < entryArr.length) {
                Format a = entryArr[i].a();
                if (a != null) {
                    MetadataDecoderFactory.AnonymousClass1 anonymousClass1 = (MetadataDecoderFactory.AnonymousClass1) this.C;
                    if (anonymousClass1.b(a)) {
                        SimpleMetadataDecoder a2 = anonymousClass1.a(a);
                        byte[] c = entryArr[i].c();
                        c.getClass();
                        MetadataInputBuffer metadataInputBuffer = this.F;
                        metadataInputBuffer.f();
                        metadataInputBuffer.h(c.length);
                        metadataInputBuffer.m.put(c);
                        metadataInputBuffer.i();
                        Metadata a3 = a2.a(metadataInputBuffer);
                        if (a3 != null) {
                            G(a3, arrayList);
                        }
                        i++;
                    }
                }
                arrayList.add(entryArr[i]);
                i++;
            } else {
                return;
            }
        }
    }

    public final long H(long j) {
        boolean z;
        boolean z2 = false;
        if (j != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        if (this.L != -9223372036854775807L) {
            z2 = true;
        }
        Preconditions.n(z2);
        return j - this.L;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean a() {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean b() {
        return this.I;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r15 < (r1.n - 1000000)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0053, code lost:
    
        if (r10 >= (r4 - 1000000)) goto L27;
     */
    @Override // androidx.media3.exoplayer.Renderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(long j, long j2) {
        boolean z = true;
        while (z) {
            if (!this.H && this.K == null) {
                MetadataInputBuffer metadataInputBuffer = this.F;
                metadataInputBuffer.f();
                FormatHolder formatHolder = this.l;
                formatHolder.a();
                int C = C(formatHolder, metadataInputBuffer, 5);
                if (C != -3 || metadataInputBuffer.e(4)) {
                    if (C != -4 || metadataInputBuffer.e(4)) {
                        if (C == -4 || C == -3) {
                            long j3 = this.A;
                            long j4 = j - this.t;
                            if (j3 != -9223372036854775807L) {
                            }
                        }
                        int C2 = C(formatHolder, metadataInputBuffer, 0);
                        if (C2 == -4) {
                            if (metadataInputBuffer.e(4)) {
                                this.H = true;
                            } else if (metadataInputBuffer.n >= this.u) {
                                metadataInputBuffer.q = this.J;
                                metadataInputBuffer.i();
                                SimpleMetadataDecoder simpleMetadataDecoder = this.G;
                                String str = Util.a;
                                Metadata a = simpleMetadataDecoder.a(metadataInputBuffer);
                                if (a != null) {
                                    ArrayList arrayList = new ArrayList(a.a.length);
                                    G(a, arrayList);
                                    if (!arrayList.isEmpty()) {
                                        this.K = new Metadata(H(metadataInputBuffer.n), (Metadata.Entry[]) arrayList.toArray(new Metadata.Entry[0]));
                                    }
                                }
                            }
                        } else if (C2 == -5) {
                            Format format = formatHolder.b;
                            format.getClass();
                            this.J = format.u;
                        }
                    }
                }
            }
            Metadata metadata = this.K;
            if (metadata != null && metadata.b <= H(j)) {
                Metadata metadata2 = this.K;
                Handler handler = this.E;
                if (handler != null) {
                    handler.obtainMessage(1, metadata2).sendToTarget();
                } else {
                    this.D.d(metadata2);
                }
                this.K = null;
                z = true;
            } else {
                z = false;
            }
            if (this.H && this.K == null) {
                this.I = true;
            }
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int f(Format format) {
        int i;
        if (((MetadataDecoderFactory.AnonymousClass1) this.C).b(format)) {
            if (format.T == 0) {
                i = 4;
            } else {
                i = 2;
            }
            return RendererCapabilities.j(i, 0, 0, 0);
        }
        return RendererCapabilities.j(0, 0, 0, 0);
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            this.D.d((Metadata) message.obj);
            return true;
        }
        d.d();
        return false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void t() {
        this.K = null;
        this.G = null;
        this.L = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void v(long j, boolean z, boolean z2) {
        this.K = null;
        this.H = false;
        this.I = false;
    }
}
