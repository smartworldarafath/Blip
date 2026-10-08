package androidx.media3.exoplayer.text;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DelegatingSubtitleDecoder extends SimpleSubtitleDecoder {
    public final SubtitleParser n;

    public DelegatingSubtitleDecoder(SubtitleParser subtitleParser) {
        super(new SubtitleInputBuffer[2], new SubtitleOutputBuffer[2]);
        boolean z;
        int i = this.g;
        DecoderInputBuffer[] decoderInputBufferArr = this.e;
        if (i == decoderInputBufferArr.length) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        for (DecoderInputBuffer decoderInputBuffer : decoderInputBufferArr) {
            decoderInputBuffer.h(1024);
        }
        this.n = subtitleParser;
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    public final Subtitle o(byte[] bArr, int i, boolean z) {
        SubtitleParser subtitleParser = this.n;
        if (z) {
            subtitleParser.reset();
        }
        return subtitleParser.a(bArr, 0, i);
    }
}
