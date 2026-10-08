package androidx.media3.extractor;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.source.SampleQueue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingTrackOutput implements TrackOutput {
    public final SampleQueue a;

    public ForwardingTrackOutput(SampleQueue sampleQueue) {
        this.a = sampleQueue;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void e(Format format) {
        this.a.e(format);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void d(long j) {
    }
}
