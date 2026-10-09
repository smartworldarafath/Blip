package androidx.media3.extractor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingExtractorInput implements ExtractorInput {
    public final ExtractorInput a;

    public ForwardingExtractorInput(ExtractorInput extractorInput) {
        this.a = extractorInput;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean a(byte[] bArr, int i, int i2, boolean z) {
        return this.a.a(bArr, 0, i2, z);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean c(int i, boolean z) {
        return this.a.c(i, true);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean d(byte[] bArr, int i, int i2, boolean z) {
        return this.a.d(bArr, i, i2, z);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void f(int i) {
        this.a.f(i);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int h(byte[] bArr, int i, int i2) {
        return this.a.h(bArr, i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void j() {
        this.a.j();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void k(int i) {
        this.a.k(i);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void n(byte[] bArr, int i, int i2) {
        this.a.n(bArr, i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int o() {
        return this.a.o();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        return this.a.read(bArr, i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void readFully(byte[] bArr, int i, int i2) {
        this.a.readFully(bArr, i, i2);
    }
}
