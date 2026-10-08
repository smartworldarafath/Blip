package androidx.media3.extractor.text;

import androidx.media3.decoder.DecoderOutputBuffer;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SubtitleOutputBuffer extends DecoderOutputBuffer implements Subtitle {
    public Subtitle m;
    public long n;

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j) {
        Subtitle subtitle = this.m;
        subtitle.getClass();
        return subtitle.a(j - this.n);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long b(int i) {
        Subtitle subtitle = this.m;
        subtitle.getClass();
        return subtitle.b(i) + this.n;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final List c(long j) {
        Subtitle subtitle = this.m;
        subtitle.getClass();
        return subtitle.c(j - this.n);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        Subtitle subtitle = this.m;
        subtitle.getClass();
        return subtitle.d();
    }

    @Override // androidx.media3.decoder.DecoderOutputBuffer
    public final void f() {
        this.j = 0;
        this.k = 0L;
        this.l = false;
        this.m = null;
    }
}
