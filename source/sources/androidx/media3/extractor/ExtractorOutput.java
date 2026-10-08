package androidx.media3.extractor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ExtractorOutput {
    public static final ExtractorOutput f = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.extractor.ExtractorOutput$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ExtractorOutput {
        @Override // androidx.media3.extractor.ExtractorOutput
        public final void f(SeekMap seekMap) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public final void n() {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public final TrackOutput s(int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    void f(SeekMap seekMap);

    void n();

    TrackOutput s(int i, int i2);
}
