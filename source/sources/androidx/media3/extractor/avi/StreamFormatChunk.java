package androidx.media3.extractor.avi;

import androidx.media3.common.Format;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class StreamFormatChunk implements AviChunk {
    public final Format a;

    public StreamFormatChunk(Format format) {
        this.a = format;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int a() {
        return 1718776947;
    }
}
