package androidx.media3.exoplayer.source;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EmptySampleStream implements SampleStream {
    @Override // androidx.media3.exoplayer.source.SampleStream
    public final boolean a() {
        return true;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int d(long j) {
        return 0;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int e(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        decoderInputBuffer.j = 4;
        return -4;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final void c() {
    }
}
