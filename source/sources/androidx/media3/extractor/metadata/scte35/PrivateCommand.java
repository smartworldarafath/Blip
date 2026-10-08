package androidx.media3.extractor.metadata.scte35;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PrivateCommand extends SpliceCommand {
    public final long a;
    public final long b;

    public PrivateCommand(long j, long j2) {
        this.a = j2;
        this.b = j;
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 PrivateCommand { ptsAdjustment=");
        sb.append(this.a);
        sb.append(", identifier= ");
        return q.k(sb, this.b, " }");
    }
}
