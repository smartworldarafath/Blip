package androidx.media3.extractor.avi;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AviMainHeaderChunk implements AviChunk {
    public final int a;
    public final int b;
    public final int c;

    public AviMainHeaderChunk(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int a() {
        return 1751742049;
    }
}
