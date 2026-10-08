package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AtomSizeTooSmallSniffFailure implements SniffFailure {
    public final int a;
    public final long b;
    public final int c;

    public AtomSizeTooSmallSniffFailure(int i, int i2, long j) {
        this.a = i;
        this.b = j;
        this.c = i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AtomSizeTooSmall{type=");
        sb.append(Util.M(this.a));
        sb.append(", size=");
        sb.append(this.b);
        sb.append(", minHeaderSize=");
        return jb.i(sb, this.c, "}");
    }
}
