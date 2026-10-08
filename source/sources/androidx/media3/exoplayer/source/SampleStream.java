package androidx.media3.exoplayer.source;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SampleStream {
    boolean a();

    default int b() {
        return 0;
    }

    void c();

    int d(long j);

    int e(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i);
}
