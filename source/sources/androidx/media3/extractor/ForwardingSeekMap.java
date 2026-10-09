package androidx.media3.extractor;

import androidx.media3.extractor.SeekMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingSeekMap implements SeekMap {
    public final SeekMap a;

    public ForwardingSeekMap(SeekMap seekMap) {
        this.a = seekMap;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return this.a.b();
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean d() {
        return this.a.d();
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints e(long j) {
        return this.a.e(j);
    }

    @Override // androidx.media3.extractor.SeekMap
    public long g() {
        return this.a.g();
    }
}
