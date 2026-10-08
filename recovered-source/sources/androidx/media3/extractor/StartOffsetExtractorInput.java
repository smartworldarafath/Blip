package androidx.media3.extractor;

import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StartOffsetExtractorInput extends ForwardingExtractorInput {
    public final long b;

    public StartOffsetExtractorInput(ExtractorInput extractorInput, long j) {
        super(extractorInput);
        boolean z;
        if (extractorInput.getPosition() >= j) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.b = j;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long e() {
        return this.a.e() - this.b;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long g() {
        return this.a.g() - this.b;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long getPosition() {
        return this.a.getPosition() - this.b;
    }
}
