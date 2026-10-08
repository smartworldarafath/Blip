package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.util.ParsableByteArray;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public final long a;
    public final long b;

    public TimeSignalCommand(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public static long d(long j, ParsableByteArray parsableByteArray) {
        long z = parsableByteArray.z();
        if ((128 & z) != 0) {
            return 8589934591L & ((((z & 1) << 32) | parsableByteArray.B()) + j);
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 TimeSignalCommand { ptsTime=");
        sb.append(this.a);
        sb.append(", playbackPositionUs= ");
        return q.k(sb, this.b, " }");
    }
}
