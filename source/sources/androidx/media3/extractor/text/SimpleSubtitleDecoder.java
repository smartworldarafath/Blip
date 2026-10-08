package androidx.media3.extractor.text;

import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SimpleSubtitleDecoder extends SimpleDecoder<SubtitleInputBuffer, SubtitleOutputBuffer, SubtitleDecoderException> implements SubtitleDecoder {
    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderInputBuffer g() {
        return new DecoderInputBuffer(1);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderOutputBuffer h() {
        return new SubtitleOutputBuffer() { // from class: androidx.media3.extractor.text.SimpleSubtitleDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public final void g() {
                SimpleSubtitleDecoder.this.n(this);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException i(Throwable th) {
        return new Exception("Unexpected decode error", th);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException j(DecoderInputBuffer decoderInputBuffer, DecoderOutputBuffer decoderOutputBuffer, boolean z) {
        SubtitleInputBuffer subtitleInputBuffer = (SubtitleInputBuffer) decoderInputBuffer;
        SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) decoderOutputBuffer;
        try {
            ByteBuffer byteBuffer = subtitleInputBuffer.m;
            byteBuffer.getClass();
            Subtitle o = o(byteBuffer.array(), byteBuffer.limit(), z);
            long j = subtitleInputBuffer.n;
            long j2 = subtitleInputBuffer.q;
            subtitleOutputBuffer.k = j;
            subtitleOutputBuffer.m = o;
            if (j2 != Long.MAX_VALUE) {
                j = j2;
            }
            subtitleOutputBuffer.n = j;
            subtitleOutputBuffer.l = false;
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }

    public abstract Subtitle o(byte[] bArr, int i, boolean z);

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public final void c(long j) {
    }
}
