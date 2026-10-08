package androidx.media3.decoder;

import androidx.media3.decoder.DecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Decoder<I, O, E extends DecoderException> {
    void a();

    void b(long j);

    Object d();

    Object e();

    void f(SubtitleInputBuffer subtitleInputBuffer);

    void flush();
}
