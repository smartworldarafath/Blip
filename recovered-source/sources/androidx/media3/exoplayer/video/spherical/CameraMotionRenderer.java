package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CameraMotionRenderer extends BaseRenderer {
    public final DecoderInputBuffer C;
    public final ParsableByteArray D;
    public CameraMotionListener E;
    public long F;

    public CameraMotionRenderer() {
        super(6);
        this.C = new DecoderInputBuffer(1);
        this.D = new ParsableByteArray();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean a() {
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void d(long j, long j2) {
        boolean z;
        float[] fArr;
        while (!s() && this.F < 100000 + j) {
            DecoderInputBuffer decoderInputBuffer = this.C;
            decoderInputBuffer.f();
            FormatHolder formatHolder = this.l;
            formatHolder.a();
            if (C(formatHolder, decoderInputBuffer, 0) == -4 && !decoderInputBuffer.e(4)) {
                long j3 = decoderInputBuffer.n;
                this.F = j3;
                if (j3 < this.u) {
                    z = true;
                } else {
                    z = false;
                }
                if (this.E != null && !z) {
                    decoderInputBuffer.i();
                    ByteBuffer byteBuffer = decoderInputBuffer.m;
                    String str = Util.a;
                    if (byteBuffer.remaining() != 16) {
                        fArr = null;
                    } else {
                        byte[] array = byteBuffer.array();
                        int limit = byteBuffer.limit();
                        ParsableByteArray parsableByteArray = this.D;
                        parsableByteArray.K(limit, array);
                        parsableByteArray.M(byteBuffer.arrayOffset() + 4);
                        float[] fArr2 = new float[3];
                        for (int i = 0; i < 3; i++) {
                            fArr2[i] = Float.intBitsToFloat(parsableByteArray.o());
                        }
                        fArr = fArr2;
                    }
                    if (fArr != null) {
                        this.E.c(this.F - this.t, fArr);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int f(Format format) {
        if ("application/x-camera-motion".equals(format.p)) {
            return RendererCapabilities.j(4, 0, 0, 0);
        }
        return RendererCapabilities.j(0, 0, 0, 0);
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "CameraMotionRenderer";
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void o(int i, Object obj) {
        if (i == 8) {
            this.E = (CameraMotionListener) obj;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void t() {
        CameraMotionListener cameraMotionListener = this.E;
        if (cameraMotionListener != null) {
            cameraMotionListener.e();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void v(long j, boolean z, boolean z2) {
        this.F = Long.MIN_VALUE;
        CameraMotionListener cameraMotionListener = this.E;
        if (cameraMotionListener != null) {
            cameraMotionListener.e();
        }
    }
}
