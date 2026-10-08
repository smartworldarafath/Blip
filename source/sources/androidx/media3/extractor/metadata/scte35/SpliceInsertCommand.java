package androidx.media3.extractor.metadata.scte35;

import defpackage.q;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public final long a;
    public final long b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ComponentSplice {
    }

    public SpliceInsertCommand(long j, long j2, List list) {
        this.a = j;
        this.b = j2;
        Collections.unmodifiableList(list);
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
        sb.append(this.a);
        sb.append(", programSplicePlaybackPositionUs= ");
        return q.k(sb, this.b, " }");
    }
}
