package androidx.media3.exoplayer.mediacodec;

import androidx.media3.decoder.DecoderInputBuffer;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BatchBuffer extends DecoderInputBuffer {
    public long q;
    public int r;
    public int s;

    @Override // androidx.media3.decoder.DecoderInputBuffer
    public final void f() {
        super.f();
        this.r = 0;
    }

    public final boolean j(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        Preconditions.e(!decoderInputBuffer.e(1073741824));
        Preconditions.e(!decoderInputBuffer.e(268435456));
        Preconditions.e(!decoderInputBuffer.e(4));
        if (k()) {
            if (this.r < this.s) {
                ByteBuffer byteBuffer2 = decoderInputBuffer.m;
                if (byteBuffer2 != null && (byteBuffer = this.m) != null) {
                    if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                        return false;
                    }
                }
            } else {
                return false;
            }
        }
        int i = this.r;
        this.r = i + 1;
        if (i == 0) {
            this.n = decoderInputBuffer.n;
            if (decoderInputBuffer.e(1)) {
                this.j = 1;
            }
        }
        ByteBuffer byteBuffer3 = decoderInputBuffer.m;
        if (byteBuffer3 != null) {
            h(byteBuffer3.remaining());
            this.m.put(byteBuffer3);
        }
        this.q = decoderInputBuffer.n;
        return true;
    }

    public final boolean k() {
        if (this.r > 0) {
            return true;
        }
        return false;
    }
}
